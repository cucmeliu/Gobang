unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ComCtrls, ExtCtrls, StdCtrls, Menus, Buttons, jpeg, iniFiles,
  ScktComp;

type
  TBufArray = array[0..17, 0..17] of byte;
  TWorkMode = (wmClient, wmServer);  //socket主机或从机
  TNetMode  = (nmLocal, nmNet);      //单机或局域网
  TStep     = record
    col, row: byte;
  end;

  
  TMainForm = class(TForm)
    DrawGrid1: TDrawGrid;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    mnuNew: TMenuItem;
    N3: TMenuItem;
    mnuExit: TMenuItem;
    H1: TMenuItem;
    A1: TMenuItem;
    mnuSave: TMenuItem;
    mnuLoad: TMenuItem;
    od: TOpenDialog;
    sd: TSaveDialog;
    mnuSaveSet: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    shpFirst: TShape;
    colbFirst: TColorBox;
    Panel2: TPanel;
    Label2: TLabel;
    shpSecond: TShape;
    colBSecond: TColorBox;
    Panel3: TPanel;
    bbtStart: TBitBtn;
    bbtExit: TBitBtn;
    Panel4: TPanel;
    Label3: TLabel;
    colBBg: TColorBox;
    Panel5: TPanel;
    Edit1: TEdit;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    PopupMenu1: TPopupMenu;
    N10: TMenuItem;
    N11: TMenuItem;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure colbFirstChange(Sender: TObject);
    procedure colBSecondChange(Sender: TObject);
    procedure mnuNewClick(Sender: TObject);
    procedure mnuExitClick(Sender: TObject);
    procedure colBBgChange(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure mnuSaveClick(Sender: TObject);
    procedure mnuLoadClick(Sender: TObject);
    procedure mnuSaveSetClick(Sender: TObject);
    procedure N4Click(Sender: TObject);

    procedure N5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure N6Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);

  private
    { Private declarations }
    IsBlack: Boolean;
    Tag: TBufArray;
    TwoColor: array[1..2] of TColor;
    IsStart: boolean;                   //是否正式开始
    fLastCol, fLastRow: integer;
    WorkMode: TWorkMode;                //工作模式，服务器还中客户机
    NetMode: TNetMode;                  //网络模式，局域网还是单机
    MyTurn: boolean;                    //是否该我下了
    MeStart, OpponentStart: boolean;    

    ClientSck: TClientSocket;
    ServerSck: TServerSocket;

    procedure InitAll;
    procedure SaveToFile(FileName: string);
    procedure LoadFromFile(FileName: string);
    procedure StartGame;
    procedure setStart;

    procedure opponentMove(oppStep: string);
    procedure MeMove(meStep: string);
    function GetStep(stepStr: string): TStep;
    procedure SendMsg(MsgStr: string);

    procedure ClientSckConnect(sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSckConnecting(sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSckRead(sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSckDisConnect(sender: TObject; Socket: TCustomWinSocket);

    procedure ServerSckListen(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSckClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSckClientRead(sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSckClientDisConnect(Sender: TObject; Socket: TCustomWinSocket);
  public
    { Public declarations }
    function IsWin(Tag: TBufArray; aTag: byte; row, col: integer): boolean;
  end;

var
  MainForm: TMainForm;

implementation

uses WinnerFrm;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var
  aIniFile: TIniFile;
begin
  aInifile := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Set.ini');
  try
    colbFirst.Selected := aIniFile.ReadInteger('COLOR', 'FIRST', clBlack);
    label1.Font.Color := colbFirst.Selected;
    colbSecond.Selected := aIniFile.ReadInteger('COLOR', 'Second', clWhite);
    label2.Font.Color := colbSecond.Selected;
    colbBG.Selected := aIniFile.ReadInteger('COLOR', 'BACK', clOlive);
    label3.Font.Color := colbBG.Selected; 
  finally
    aIniFile.Free;
  end;
  IsStart := False;
  fLastCol := 0;
  fLastRow := 0;
  InitAll;
  NetMode := nmLocal;    //默认的是单机
  MyTurn := true;
  MeStart := false;
  OpponentStart := false;

  self.StatusBar1.Panels[2].Text := '单机模式';

    ClientSck := TClientSocket.Create(nil);
    ServerSck := TServerSocket.Create(nil);
    ClientSck.ClientType := ctNonBlocking;
    ClientSck.Port := 5678;
    ClientSck.OnConnect := self.ClientSckConnect;//(self, ClientSck);
    ClientSck.OnConnecting := self.ClientSckConnecting;
    ClientSck.OnRead := self.ClientSckRead;
    ClientSck.OnDisconnect := self.ClientSckDisConnect;

    ServerSck.ServerType := stNonBlocking;
    ServerSck.Port := 5678;
    ServerSck.OnClientConnect := self.ServerSckClientConnect;
    ServerSck.OnListen := self.ServerSckListen;
    ServerSck.OnClientRead := self.ServerSckClientRead;
    ServerSck.OnClientDisconnect := self.ServerSckClientDisConnect;

end;

procedure TMainForm.InitAll;
var
  i, j: integer;
begin
  for i := 0 to 17 do
    for j := 0 to 17 do
    begin
      Tag[i,j] := 0;
    end;
  TwoColor[1] := colbFirst.Selected;
  TwoColor[2] := colbSecond.Selected;
  DrawGrid1.Color := colbBg.Selected;
  DrawGrid1.Canvas.Pen.Color := clNone;
  DrawGrid1.Repaint;
end; 

procedure TMainForm.StartGame;
begin
        if NetMode = nmLocal then
        begin
                IsStart := True;
                IsBlack := True;
        end else
                begin
                        meStart := true;
                        SendMsg('##');
                        setStart;
                end;
end;

procedure TMainForm.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if tag[aCol, aRow] = 0 then exit;
  DrawGrid1.Canvas.Brush.Color := TwoColor[tag[aCol, aRow]];
  DrawGrid1.Canvas.Ellipse(aCol*31+1, aRow*31+1, aCol*31+29, aRow*31+29);
end;

procedure TMainForm.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  col, row: integer;
begin
  if not IsStart then exit;
  if not MyTurn then exit;

  DrawGrid1.MouseToCell(x, y, col, row);
  if tag[col, row] = 0 then
  begin
    if NetMode = nmLocal then
    begin
    if IsBlack then tag[col, row] := 1
    else tag[col, row] := 2;
    IsBlack := not IsBlack;
    end else
        begin
                MeMove('#' + IntToStr(col) + '#' + IntToStr(row));
                exit;
        end;
    
  end;
  if IsWin(tag, tag[col,row], row, col) then
  begin
    ShowWinner(TwoColor[Tag[col, row]]);
    IsStart := False;
    mnuSave.Enabled := false;
  end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  freeAndNil(tag);
  self.ServerSck.Free;
  self.ClientSck.Free;
  Action := caFree;
end;

procedure TMainForm.DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  Col, Row: integer;
  aTag: byte;
begin
  DrawGrid1.MouseToCell(x, y, col, row);
  StatusBar1.Panels[0].Text := ' X: ' + IntToStr(X)   + ' ;Y: '  + IntToStr(Y);
  StatusBar1.Panels[1].Text := 'Col: '+ IntToStr(col) + ' ;Row: '+ IntToStr(Row);
  if IsStart then
  begin
    if not MyTurn then exit;
    if (col <> fLastCol) or (row <> fLastRow) then
    begin
      fLastCol := col;
      fLastRow := row;
      DrawGrid1.Repaint;
      if Tag[col, row] <> 0 then exit;
      if NetMode = nmLocal then
      begin
          if IsBlack then aTag := 1
          else aTag := 2;
      end else aTag := 1;   //自己用1
      DrawGrid1.Canvas.Brush.Color := TwoColor[atag];
      DrawGrid1.Canvas.Ellipse(Col*31+1, Row*31+1, Col*31+29, Row*31+29);
    end;
  end;
end;

function TMainForm.IsWin(Tag: TBufArray; aTag: byte;
  row, col: integer): boolean;
var
  i,// j, k,
  tCount: integer;
  spx, spy, epx, epy: integer;
begin
  result := False;
  if col >= 5 then spx := col - 5 else spx := 0;
  if row >= 5 then spy := row - 5 else spy := 0;
  if col <= 12 then epx := col + 5 else epx := 17;
  if row <= 12 then epy := row + 5 else epy := 17;
  //横向五子
  tCount := 0;
  for i := spx to epx do
  begin
    if Tag[i, row] = aTag then tCount := tCount + 1
    else tCount := 0;
    if tCount = 5 then
    begin
      result := True;
      exit;
    end;
  end;
  //纵向五子
  tCount := 0;
  for i := spy to epy do
  begin
    if Tag[col, i] = aTag then tCount := tCount + 1
    else tCount := 0;
    if TCount = 5 then
    begin
      result := True;
      exit;
    end;
  end;
  //斜上方向
  for i := 0 to 4 do
  begin
    spx := col - i;
    spy := row - i;
    if (spx = 0) or (spy = 0) then break;
  end;
  for i := 0 to 4 do
  begin
    epx := col + i;
    epy := row + i;
    if (epx = 17) or (epy = 17) then break;
  end;
  tCount := 0;
  for i := 0 to epx - spx do
  begin
    if Tag[spx+i, spy+i] = aTag then tCount := tCount + 1
    else tCount := 0;
    if tCount = 5 then
    begin
      result := True;
      exit;
    end;

  end;
  //斜下方向
  for i := 0 to 4 do
  begin
    spx := col - i;
    spy := row + i;
    if (spx = 0) or (spy = 17) then break;
  end;
  for i := 0 to 4 do
  begin
    epx := col + i;
    epy := row - i;
    if (epx = 17) or (epy = 0) then break;
  end;
  tCount := 0;
  for i := 0 to epx - spx do
  begin
    if Tag[spx+i, spy-i] = aTag then tCount := tCount + 1
    else tCount := 0;
    if tCount = 5 then
    begin
      result := True;
      exit;
    end;
  end;

end;

procedure TMainForm.colbFirstChange(Sender: TObject);
begin
  TwoColor[1] := colbFirst.Selected;
  shpFirst.Brush.Color := TwoColor[1];
  label1.Font.Color := TwoColor[1];
  DrawGrid1.Repaint;
end;

procedure TMainForm.colBSecondChange(Sender: TObject);
begin
  TwoColor[2] := colbSecond.Selected;
  shpSecond.Brush.Color := TwoColor[2];
  label2.Font.Color := TwoColor[2];
  DrawGrid1.Repaint;
end;

procedure TMainForm.mnuNewClick(Sender: TObject);
begin
  if IsStart then
    if MessageDlg('游戏正在进行，要重新开始吗？',
      mtInformation, [mbyes, mbNo, mbCancel], 0) <> mrYes then exit; 
  InitAll;
  StartGame;
  mnuSave.Enabled := True;
end;

procedure TMainForm.mnuExitClick(Sender: TObject);
begin
  close;
  self.ServerSck.Free;
  self.ClientSck.Free;
end;

procedure TMainForm.colBBgChange(Sender: TObject);
begin
  DrawGrid1.Color := colbBg.Selected;
  label3.Font.Color := colbBg.Selected;
end;

procedure TMainForm.A1Click(Sender: TObject);
begin
  ShowWinner(0,0);
end;

procedure TMainForm.mnuSaveClick(Sender: TObject);
begin
  if sd.Execute then
    SaveToFile(sd.FileName);
end;

procedure TMainForm.mnuLoadClick(Sender: TObject);
begin
  if IsStart then
    if MessageDlg('游戏正在进行，要重新开始吗？',
      mtInformation, [mbyes, mbNo, mbCancel], 0) <> mrYes then exit; 
  if od.Execute then
  begin
    InitAll;
    LoadFromFile(od.FileName);
  end;
  StartGame;
  mnuSave.Enabled := True;
end;

procedure TMainForm.LoadFromFile(FileName: string);
var
  sFile: File;
  aLength: integer;
  totlen: integer;
//  aFileStream: TFileStream;
begin
  AssignFile(sFile, FileName);
//  aFileStream := TFilestream.Create(filename, fmOpenRead);
  Reset(sFile);
  aLength := Sizeof(Tag);
  try
    BlockRead(sFile, Tag, aLength, totlen);
    showmessage(inttostr(totlen));
  finally
    closeFile(sFile);
  end;
end;

procedure TMainForm.SaveToFile(FileName: string);
var
  aLength: integer;
  sFile: File;
begin
  AssignFile(sFile, FileName);
  Rewrite(sFile);
  aLength := Length(Tag);
  try
    BlockWrite(sFile, Tag, aLength);     
  finally
    closeFile(sFile);
  end;

end;

procedure TMainForm.mnuSaveSetClick(Sender: TObject);
var
  aIniFile: TIniFile;
begin
  aInifile := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Set.ini');
  try
    aIniFile.WriteInteger('COLOR', 'FIRST', colbFirst.Selected);
    aIniFile.WriteInteger('COLOR', 'Second', colbSecond.Selected);
    aIniFile.WriteInteger('COLOR', 'BACK', colbBG.Selected);
  finally
    aIniFile.Free;
  end;
end;

procedure TMainForm.N4Click(Sender: TObject);
var
  sDest: string;
begin
        sDest := InputBox('目标地址', '主机或IP：', '10.10.40.130');
        try
        self.ClientSck.Close;
        self.ClientSck.Host := sDest;
        self.ClientSck.Open;
        WorkMode := wmClient;
        except
        showmessage('无法打开连接！');
        end;

end;

procedure TMainForm.ClientSckConnect(sender: TObject;
  Socket: TCustomWinSocket);
begin
        self.StatusBar1.Panels[3].Text := '建立连接成功！';
        InitAll;
        NetMode := nmNet;
        myTurn := false;
end;

procedure TMainForm.ClientSckConnecting(sender: TObject;
  Socket: TCustomWinSocket);
begin
        self.StatusBar1.Panels[3].Text := '正在建立连接...';
end;

procedure TMainForm.ServerSckClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
        self.StatusBar1.Panels[3].Text := '建立连接成功！';
        self.StatusBar1.Panels[2].Text := '等待对家开始';
        InitAll;
        self.NetMode := nmNet;
        myTurn := true;
end;

procedure TMainForm.ServerSckListen(Sender: TObject;
  Socket: TCustomWinSocket);
begin
        self.StatusBar1.Panels[3].Text := '正在监听端口：' + inttostr(self.ServerSck.Port);
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
        try
        self.ServerSck.Open;
        self.WorkMode := wmServer;
        except
        showmessage('无法打开监听口');
        end;
end;

procedure TMainForm.ClientSckRead(sender: TObject;
  Socket: TCustomWinSocket);
var
  rcvTxt: string;
begin
        rcvTxt := Socket.ReceiveText;
        if rcvTxt[1] = '#' then opponentMove(rcvTxt)
        else self.Memo1.Lines.Add(Socket.RemoteHost + '说：' + rcvTxt);
end;

procedure TMainForm.ServerSckClientRead(sender: TObject;
  Socket: TCustomWinSocket);
var
  rcvTxt: string;
begin
        rcvTxt := socket.ReceiveText;
        if rcvTxt[1] = '#' then opponentMove(rcvTxt)
        else self.Memo1.Lines.Add(Socket.RemoteHost + '说：' + rcvTxt);
end;

procedure TMainForm.MeMove(meStep: string);
var
  aStep: TStep;
begin
        aStep := GetStep(meStep);
        tag[aStep.col, aStep.row] := 1;  
        MyTurn := false;
        SendMsg(meStep);
        if IsWin(tag, tag[aStep.col, aStep.row], aStep.row, aStep.col) then
        begin
                IsStart := False;
                showmessage('你赢了！');
                exit;
        end;
        self.StatusBar1.Panels[2].Text := '等待对家走棋';
end;

procedure TMainForm.opponentMove(oppStep: string);
var
  aStep: TStep;
begin
        if oppStep[2] = '#' then
        begin
                opponentStart := true;
                setStart;  //用 ##表示开始！
                exit;
        end;
        aStep := GetStep(oppStep);
        tag[aStep.col, aStep.row] := 2; //对家用２
        DrawGrid1.Invalidate;
        MyTurn := true;
        if IsWin(tag, tag[aStep.col, aStep.row], aStep.row, aStep.col) then
        begin
                IsStart := False;
                showmessage('对家赢了！');
                exit;
        end;
        self.StatusBar1.Panels[2].Text := '该你走棋了';
end;    

(*********************************************************************
//  func：
//  Desc：将 #col#row翻译出来
//  Parm：
//  Rslt：
//  Note：
//  Auth：Loafer.Liu @ 2004.9.
//  Updt：
//********************************************************************)
function TMainForm.GetStep(stepStr: string): TStep;
var
  apos: integer;
begin
        stepStr := copy(stepStr, 2, Length(stepStr) - 1);
        apos := pos('#', stepStr);
        result.col := StrToInt(copy(stepStr, 1, apos-1));
        result.row := strtoint(copy(stepstr, apos+1, Length(stepStr)-apos+1));
end;

procedure TMainForm.SendMsg(MsgStr: string);
begin
        case WorkMode of
          wmServer:
                begin
                        if self.ServerSck.Socket.Connected then
                                self.ServerSck.Socket.Connections[0].SendText(MsgStr);
                end;
          wmClient:
                begin
                        if self.ClientSck.Socket.Connected then
                                self.ClientSck.Socket.SendText(MsgStr);
                end;
        end;
end;

procedure TMainForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Memo1.Lines.Add('你说: '+edit1.Text);
                SendMsg(edit1.Text);
        end;
end;

procedure TMainForm.ClientSckDisConnect(sender: TObject;
  Socket: TCustomWinSocket);
begin
        showmessage('对家已经退出！');
        self.StatusBar1.Panels[3].Text := '对家已经退出！';
        IsStart := false;
        NetMode := nmLocal;
        InitAll;
//        self.ServerSck.Close;
//        self.ServerSck.Open;
end;

procedure TMainForm.ServerSckClientDisConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
        showmessage('对家已经退出！');
        self.StatusBar1.Panels[3].Text := '对家已经退出！';
        IsStart := false;
        NetMode := nmLocal;
        InitAll;
        self.ServerSck.Close;
        self.ServerSck.Open;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
        self.ServerSck.Close;
        self.ClientSck.Close;
end;

procedure TMainForm.setStart;
begin
        if not meStart then self.StatusBar1.Panels[2].Text := '你还没有开始';
        if not opponentStart then self.StatusBar1.Panels[2].Text := '对家还没有开始';
        if (meStart and opponentStart) then
        begin
                InitAll;
                NetMode := nmNet;
                IsStart := true;
                isBlack := true;
                self.StatusBar1.Panels[2].Text := '游戏已经开始';
        end;
end;

procedure TMainForm.N10Click(Sender: TObject);
begin
        Memo1.Clear;
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
        Memo1.Lines.Add('你说: 老大，快点行不，慢慢腾腾的～:(');
        SendMsg('老大，快点行不，慢慢腾腾的～:(');
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
//        NetMode := nmLocal;
//        N8.Checked := true;
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
//        NetMode := nmNet;
//        N9.Checked := true;
end;

end.
