object MainForm: TMainForm
  Left = 180
  Top = 125
  Width = 720
  Height = 636
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #20915#25112#20116#23376#26827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DrawGrid1: TDrawGrid
    Left = 0
    Top = 0
    Width = 565
    Height = 563
    Cursor = crHandPoint
    Align = alClient
    Color = clOlive
    ColCount = 18
    DefaultColWidth = 30
    DefaultRowHeight = 30
    FixedColor = clSkyBlue
    FixedCols = 0
    RowCount = 18
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goVertLine, goHorzLine]
    ParentFont = False
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseMove = DrawGrid1MouseMove
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 563
    Width = 712
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 200
      end
      item
        Width = 100
      end>
  end
  object GroupBox1: TGroupBox
    Left = 565
    Top = 0
    Width = 147
    Height = 563
    Align = alRight
    TabOrder = 2
    object Image1: TImage
      Left = 2
      Top = 440
      Width = 143
      Height = 121
      Align = alBottom
      Picture.Data = {
        0A544A504547496D616765D2270000FFD8FFE000104A46494600010200006400
        640000FFEC00114475636B79000100040000003C0000FFEE000E41646F626500
        64C000000001FFDB0084000604040405040605050609060506090B080606080B
        0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B
        1C1F1F1F1F1F1F1F1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F
        1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
        1F1F1F1F1F1F1F1F1F1F1F1FFFC0001108008F009303011100021101031101FF
        C400BA0000010403010000000000000000000000040003050601070802010001
        0501010000000000000000000000000102030405060710000202010204020606
        06040B050900000102030405001121121306311441516122320771A142522315
        8191B182331662729224F0C1A2B243536373832517C254B4360893A334446484
        3575471100020102040404040405020700000000000102110321311204415113
        056122320671819114A1523307F0D1427223E115B1C1F182C22416FFDA000C03
        010002110311003F00A16E4F8EB411CBC388B4F1A85A051680168016803C4A76
        89CFF44FECD36B44C55EA474C62321361BE52E3AED3452F430B14D5E2909E4E6
        8E00C39B978EDAE4E7E6BAD1D9D9B4A6A2994EC7FCC0F98A33324667C7DCAB5A
        14B16D6CC4D5139A562AA219632EC3E03B9707573B7EC7EE62FC0CFF0072F75B
        1DBA71B6D36E45913E6365074FA980595261B992ADD89948DB8F289562E6D5C9
        7B7E6B266047DE5B478494D7FDAFF905A7CC7C7AC7BDAC4E4EB827620C0B381E
        8F185DC6DAACFB45F8BCCD2B3EE6D94D7AE9CEB804C5F32FB2581EAE41AB1079
        4F998278363F77774DBEBD56FB1BD1AE068DBEEBB697A270FA91C988F93793C8
        F9E85311264D9BABE663748EC96FBDCDCCADBE992B5B85C302DC77306EAA5165
        8A2C0D320494AF5DE99F00B69E5427F7CB8D42E7258343D51E47A971398462D0
        66678B9FECCD5EBC8BC0787C319FAF455F20A72436953BAE2D9A2BB42C72FC3D
        5AF2C64EFE3C639180FECE93017110B1DD48DCCF8FA53F1F79A1B7247F54911D
        FF005E9DAA23E8A8788F2592809E6C0DA44FB42BCB5A61BFDED84818FEAD2563
        C18CAD05F9BC5E1F936477DFFEEA3E2F1FBFE3F57B7457C4359CAFAEB91C4C38
        8B4F1A85A051680168016801B9BF84FF00D53FB34D946B162AF523A41F87C968
        FD67003FF0FAE4A9E7FA9DBED936A3F228B8F3179CCA75A3362314E2E6855439
        2A1A43F0B703ADFF006D7E94FE2717FB98DFDED9D18512232A43896C6634D3B0
        6555C515863B30BB08EB973FDE5963DF918370D6DC9A4B33926EEB9CD4E2BD6B
        15CF0C097C7A72E5F1DD1CC2DA8D31EC2CA194F34A7642960464EC1797C4EA55
        87133370F55AB95B7E6EA517E380F639F37E472FBE416F324B2B62E53D39BF08
        460A2B08CA8F8B71C74274F119B88D853B7E570545AB16B1237217AD2D547C86
        3EAABAE3E3B4C962B9733D8D899205E5079397801BEFB93A63B9CD234B6FB7B6
        A5FE3B92C654CF28FE6CC268438C9733E4BF264A2C692DC8A586431B80EC1793
        96329CAE0FB744B6D6652C62433DD6EAC5AD76EFCA54969A70F88E55CB415F15
        6F24991CCE3E0A13CD1598BCCCD3306AE7676284CA36D453D8D9945E143421DD
        FB95BBD1B6A7193946BF5F91209DE197AF22A47DD327BF1C7304B55619915261
        BC65D8469CBCC3C376D519F69B2F89A16BDCDDC22AAE0A4AB4CFFD094ADDEDDD
        2F33C515EC55E6877E78FA72C4E1878F318E49146DE9D86A29763835832CAF79
        CE2FFC96641B177FF7300864C2D5B5B8DCC956E72AFEE8963FF1EAABF6F4B816
        E3EFADAE528C93FE3C47FF00EA2E4B97FF002E59DF6DBFF8AABEBFA7FC3D5A87
        FD86E967FF00B4D97339C35B08AD0E22D3C6A168145A005A005A00F128DE361B
        EDC0F13F41D23F4B157A91D22E17FE8CAAEFBA8C0AFBDECF2FAE47FAFEA76FB6
        F4AF91ACFCD5FAD94BCD45398B454D2672864E9D779A41249C83E2E51E8D6CFB
        767453FEE39CFDC3DB5ABBB9B7D474F2603924DC94FA898F052AD94C525988C9
        53AB567745DD10824A8690F30F670D7452F32C51E7F6A3E6C25EA8EACEBE655C
        FE879C95BEDFAD1BD9B55E4AD8CC709F00254752C15C0527A7F1FD9F77F5F869
        6E412780B6AC6E64B4C649CF0B9FC7D46A5C6D06B74ACCB6DABF92AB0CC29C90
        0486C5543C1E71117E72A0F88F84FA34C51265BABAAA942BAA54AAE187885C51
        CF0D3A020CB2C6D35E4BFD2591922F2123F374B67E2576F0DF6D4AE9A514A528
        4E73D56F28E9E3EAFE61502F71A65622DD492492CCA2691FA5E58526DFA6506F
        D4E64E1C3D277D3F53A914E3B4769BD3A57C255D461EC6452A4952E568638AF5
        EB55A7B2D1B2C3E5F97DD99D1093F8BF0EFCDA815C9635427DBD8938CA337AA1
        18E1E3F35C0857C9E32F53CA492D69A952AF02D7C9324BD35B35E2764430AC8B
        BC8A150EC7836C761A8A525C51ADF6D7ADCA0A325725EA5C69F1A1E20C6E0B27
        8EC5D3AEF6E9E2CB58FC9A431A6F23292591D8132F2EC0FB8C0123C748A29E4C
        6CEF6E2D39CE5A653C2A970F80FAD7A963210E562C8C4D8EB123C4310825AD1B
        3C086379146C58488789E1CBA91C25CC47B971B72B73B6EAA8F56015E5F23E57
        97F39ABD4F21B753AC76E4F31CDCFE1F0F27B9D4F1DF4FD33E652D70D5FA72F5
        D387E535C6A823B2871169E47542D0154609D86FA4D5E03947C4CEDA2B51CE02
        D03321B9FF0082FF00D53FB34D7931EBD48E92FF00F8BA7FFA05FF00C36B947F
        ABF53B7DBBA4626AE913FE6378F985ACAA945995CB289809E4DE1F73DEF7FC38
        6B4BDB9FA73FEF307DFB15F736EAB52E9FD3C49258F31253966AB90401EFC4F5
        AB8915C47583C62585DA5018B6DCC40DB86FAEB31D399E66959534B43FD3756B
        9E388D66BF3D8A6B56D31CB92BAB6D856A26188A3D4E5D95FADF12B6DE3BFF00
        574C929549B68F6EE2A2E7282D3EAABCF8ACCCD29FA66C04C6C7348D8C2F34A8
        24AE11763D4AA5A42E1761BF2EDA2DD529548E716E51D373479F0C73F1066928
        3D2DABD79E247C2C0D74249112B4B66E545120F79E35E6DD86A3D2A85CB51BDA
        A58C654BB2A7F75733D57FC872121B78FB32D5AF91A6D8AA970C4C11E48D8B73
        F5037373ECBCBE8DF5360D15AF75E1E5B918D612D4D7865C873900C6E467A995
        8A9453422A5315A574417A056E624C8371BEE39940D334F378093B8D5D849DA7
        83D4DD3FA58EDB6CC952CA56EC8B5206C5C5188A5492C05DA53217E3CA5FED0F
        01A4786588966369552D50F33D4F2F2BC4064C96668475F21361926C9B998D8A
        9143204A8C4EDD55986EACAC06EC40E63A3A9E0595B7DBDC728755A8F07AB3E4
        3B1DEA8737062EAD60B7EB34B356C85594A56FEF2864994BC81BDF6DBE0FA348
        E75CD02B13565CDCEB196147E190373F687E5FB72DAF2FE4F7DB9977DBCEEFEA
        F8BAFE9F876D4D58FE036BBAD59C6BD4FF00C7F9144D6623A987117A40F1F66A
        44352335EB5EBD77C95158FA8A8259A6998AA2293CABC141672DB1E0355375B9
        5691ABDABB63DD375C1122BD9F9368F9A7C94509DF62D1C0CFB7AFF88C0FD5AC
        B9777A703A287B5E1C583E4FB73258CA92595B8D6C42BBB5768395DB6DB98A18
        CB78292DC7D5A7D8EEBAF3445BDF6F46DC2B06D81ABA30568CF3C6C3747041DC
        7AF71AD8538B8D51C85DB528BF323137F09FFAA7F668AA69889F991D1D1BBB7C
        938C95D9FF00205047FF006DAE526A977EA76BB74E91358D96AAB94B5D789E46
        FF009788191C44639BAF2F4E52E4305553E3B8D697B6E9D2B8DFE6317DF4A6F7
        16E8D25A298F143F653086ADBF39D75B87315CDD9CA2CFC9695E33185650AAA8
        C02AF0D7510A3479CC1EE14D28D28AD3F9FAB98DE4E8C0D6321E4F2B1D0B0F90
        7DF2CC9209639F63CF5BAA488D94780E3E1ED1A59468AB525DB5D9A50EA5A737
        A7D2B4D3FBB9855169DEBD83532A91C0B4847B89BAA5AD9F86602C0F715F6DB8
        F8FA34D83C1952EC6AD39C1CA93AFC17C8CDD8B32F4A036204B0D0E351D08812
        C09AD8FE242CCA7DD56206DB70FD5A755B54A0F83B2EE4A8DC6B71FCA3F99788
        3D09D9AFD096EE2E2AF6A4B7222E323EA07AF272311608DFA4DBEDC5801B6FA4
        6DACD12EEADAD13D375BF2E6E98E3F01E867A723C2D1D69AB644E62E2C0A1A29
        075C21F304B3EC9CAE9E1E9F5698DC5E751B157B535A94A2ADC7E84456AB8229
        98152FD80D28DB27626AE58E3E4EABEED194E116CC5B80F7469A9638176EDDBC
        E50728C7C17E6C3893987C758AD6EBD14CB2D89287524CAD8EA169E68A60DD36
        9148E40C1B883BFA34F841D5E265EF77115177650FD4744B9359E47A5AFDC07B
        4AD2C72C7732D1CB3B4059639C48BD56E9A9F8537E4E1BEAC355890F52D7DE46
        324D5BA4705CE98FE24F792ADE1E5E3E5F2DD3DB9136F5F278786FE8F0D49A17
        E0637DD3CEAFD7ABE591A47D3AC689EA30E22D4888DBC0B176162A49A4C8E479
        03F34AB55093E09126EE38F0D8B4BC7E8D733DD6E6A950F41F6CEDDC6D6AE65C
        22C6D85705E40AA81943003988DB8786B33A8B91D355F20A8F1F02C0D148A24E
        A2BA4ACDF6964043023D5C74C9669A1CA1AA2DD0D17660CA62B2D6A3863FF96C
        191F2094D1198F1F715D7C4EEC47C23D3E1AE9B6D729055383EE563AD774C562
        4C5EAD76A00972ACF51E78DDA159D0A73855DDB94EEC3803EBDF57A3B984ABA4
        C7DCF6EB96249CF03A2E0548BE4B42A37E55C02F0F6797D734DEABAFE674BB57
        827F0293848E29BB8B2892209227A95F74600A91D497D075B3ED68F9269FE638
        CFDD79B8DCB328BA3A13CD8AC7357F2FE5A31019165E985017A88432B70DB882
        35D6CADC687922DF5E4EBA9E5402C8F6BE1EFC53416A167AB625F313D7E7611B
        4BF7CA83F16FC7E9D451B1168B5B6EF77ED49493F3254C79024FD975A5BD4B22
        F6A592DE35552989790C61137D964450BCFF0049E234D7B68E48B56BBFCE1170
        518E9798DB7684FD0AFD3B7B588B222FBB27347188CBF33C288ADB729F6E9D1B
        1409778B6E526E3EA869FC332D1CA36E3E9F56A651305DC7478834F8EA7347D3
        9608DD79F9F94A8E0FF7C7F4BDBA476A2F344D0DDDC862A4EB4A00CBDAD8578E
        48C5358E3993A73242CD109139B9B9640847371F5E9AAC42A5D8779BEA9596AA
        655C6812988AB1E466BC177927822AB247F63A713332800FF5B474962432EE13
        95A56EB949CABF4FE4454DDA11FF002E5BC2C3294133CB2C33F874DA5939F805
        23E1F01A674B0A1721DE3FF6237A4B254FC099F28DBF8FFA1E8FE9DBE2D4BD33
        2FAEB97F557FD0D14789DF5856F23D761C45FE1F569E88F817AEC0BB8E8BB779
        1ED42B2358B0EF1B48AAC379081B827D435C8EFA0FAA7AA7616A3B589698A586
        55E78A45950EE03A10C371E3E1AA17551E06BC249A2B598EFF00C552B9263A9C
        3364F2684A0AD5939B671E2198FABD8353DBB0E9562574BC0A45FCEE5A7CDC49
        948531F5695D379B1D1859269275604A9E5DD9DB8EC0BECABE3AD1B566735459
        19DB8DCEDAC3D4FD479EE1CF5FCBCDE7B22AB0240AF153A3192C53A9B736EC3F
        892BEC3C3C35ABB5D9F4A2DD71386EE5DC5EEEEA4B23A2E0AF6ECFC9D82A44BC
        F69F02A8A83D2DE5FE11EDD605EC2ED789B16291A781ACEB64AE53CCB5AA895E
        C4372B44AD1BCC63950233B230015B70DCFB1DFC0EA7ED1DD3ED75292AA6C87D
        D9ED2977750942696944D27764A83FBDE2ECC7B7DA89A39C1FEC306FAB5D25AF
        71EDE583C0F31DDFED9F70B7E9A48793BCBB7DBDD7B42B3FDDB28F0FD6EA07D7
        AD2B3DCB6F255524737B8F6A770B2E92B72F91295EFD1B481AB588A704020C6E
        ADE3F413AB6AE4658A662DDD9DDB6E928C97C87B8A8DC8207B46DA7A75207062
        E71E83EDDB4EA89432083E1A2A35A33A0416801680168039FF005816D1ED3017
        301C49E038B0F66DBFF8B4ECB11231ABD3CCB9760E0EDAE0684F6E60D04E86CC
        50729247518B2AB0939979766DC85DB5CBEEF70BA8CF50ED5B76AC453E05C190
        C70C895D11182B344800552FB6EBB81B0F1F1D662926EA6AC9248A7769578C67
        6DDE99CC37A7D96586411A4EF301F8BCE14737AD801C36D5BBADCA255DBB7A9D
        722AFDC97211DC397B1CA407B5D258D06ECF2222A10BB713CCC380D741DBE8AD
        AA9C1F7CADCDC695907E130B242BE6AFAAB5C605562F1582323E15FE99FB4DFA
        0696736DBA11EDEDA89B3BB73E69B61B014F197318F6DF1D1A42B7219A388344
        9F0B3248375655DBD3B1D65DED9D5D789A51BED61C091FE79F95D924032984F2
        85F7919ED63D5C12DF13756BF53C7E9D40EC4D2E142757D736BE6135707F28F2
        CC3F29C94504A7C129DE685B7FF73236DFA3975565B78BCE25986F2E2CA6FEA3
        967E534A23FEE399942B782DA863994FA78B47D23A89DB827449A2EAEF176947
        89037BE53E7F9B992AE2EF95DB67467A92103DAC8C3FCBD4B17757A674239EEA
        C5C5FE4B5197C5116FDA7DD98D62450CB55E3F15697CDC237F52AB4BC3F77566
        DEFB770CA5533B71D87B3EE179ED51F8517FC811B3599A2EC92E510B03B74F21
        54C447D2DF83AB96FDC1BA8E128D4C8BDFB79DB2F2ADA6E1E1A83EBF74E5D941
        5A35AE7A0B56B0578FB03AB0FF002B57EDFB9A2BD7139CDD7ED3DD7FA5722FE3
        FF0050A1DE35D1956CD0B909276661189541FA6267FD9ABF67DC1627C6873BBC
        FDB6EE76728EBF804C3DD7DBF2388FCFC4929E3C929311FF002C2EB4A1BFB32C
        A48E6F73EDBDED96F5DB92A78324E19E19979A175957EF23061F56ACC6E45E4C
        C89D894734D7C8F7B9F569E45439F1E5543BB87542371234722C647AC33281AE
        73AB1AE67B5CF6B35C07A863EC66EE4389C6ABDAB37098D23ADCAF2F2EDBC8C0
        6E36E54DF893A4DCCFCB81676563FC89BE06D8AF771EBC94C31A7242045E52CA
        9AF322A0E500C72729E007A35C9DDB32726DA3D4B6BB8874D24C593B3353E8D8
        0A5EA4676BF1A8E69151BC255DF8909F697D2BA89244D76E55E0822358006B91
        88FDF507CC8E4D993D04C9B711B7AFD1A64A13C90AA715135F57C7D0933191CB
        C5F8BD7B53353989DD155880ED10F0F7DB7F7BD5AE8B696DA82A9C46F92EB361
        934F144865958AA82070DCB12DC15540E24B780038EACB4A1894B4B6CBDF6BF6
        554C7D07EE1EF5A8890EC052C3491F5A40CE7DC32A0243CCE78244070FA75957
        772DBC0BD082A064DF29ADDBAE6CD4A15F1C93319131D0CD66178013B8532AF5
        E1673F6874B941DC0F01A6DADCB62BB6995DCA7CB3CD448C2C55B640F88BD6AF
        915009E277ACF0CDB7FC3D4D1DCAE1891BB54C9917571599C7CFC988C9243201
        B8AF05D9A84DE3FF0077BA2B8F0F46E74FEA5B92C50D71B8896FE70F9A983453
        6E4B8615E21AFD15B31951FF00D4571E1FA7513DBDA9711D19CEB8E449637E78
        E43711DCC7D2B6FBF1F2765A07FA7A732BFF009DA63D8A7E9649D7F02C30FCE1
        ED7B3115CA52B9554F061340B662DBD8D11906DFA351BD8DD4E9989D755E47A5
        FF00A3B9E6053F2A79DB89E522A4DBFD1BC4DA63B1259A2CC370D7163F2FCA8E
        DF957A942E5FA89E23A363AF17EA9449F51D569DA4B345AB7BEB91C9D48BB9F2
        AF2C108AB9886D47E98AED620F2FAB9A27FF00B3A8FA36DBAA6D32D2EE729613
        8C5AF815DB7F2C7B8E07631E1E0B4A7C5F1D656373FB8E206FACEAC43AD1C613
        2BDDFB2BB85CB31A02FF0029F74787E519DFF55B755BE1F1E4FE2787A79BC3DB
        AB5F7BBCE657FF0065ED1F921CF89D1AF024D5CC72857471C519432EDF41DC6B
        51999994C93B226C4773D8EE0C1E371B299EBAD6F2C50549234DF9A5E9C91A32
        B750804F38DF86DBE914DBCC6E8885DECC76E5F85E9F74E2CD152391864E147A
        EDBFDCB039E3FF00281D2382798E536B26424DF2971EB0093B7F273D38762F5E
        BCDCB6EB007880ACDF8A14FB24D569ED23C0D0B5DD2E4634668BBBDBAD5F297E
        B65ABAAE42BD865B75519FCB23A9054C5193CBC8EA43062BEF6A6B56631CD146
        EEEAECB88573247190CC1100E24F103F47D3EAD4D39D115E30949E26C6EC9ED1
        C7E22AFF0036F71298E7AE3A94AB4A39BCB02360FC9C79AC49E0ABE2BE1E3AC7
        BFB9ABA16E16E85C31942D642E459BCA83048809C7631C822A2B78C926DBF358
        71C09FB03DD1E93A8A52495098A47CC0C4E30E7A7BB5B2F6E3C9AF4DF2264B12
        B51A35CF050D1C6C8E2497C22851B99CF1F0D4772FB8C68963C2998133DA7D8F
        49B290F70DDA4D4A6839FF002BA72C923D85571C66B8EEEE5A47F158B72B1FD3
        A82119DB8D24DB721747127FB87211CC7F2A8A3867B92446599AE2892BD4AE3C
        679C1047F517ED1FE8EFABB69E223656BB2EBB3A6431DDB924D4BB696DBCCD93
        1F8724AC1104A2B82365E6901677DB651C1471E134DD721007BA339D9903746F
        667199A237061BB412D3923C40B15447EAE2762748A525909A5105529764E426
        862830776849701F293E2ACBAC7311E2228ED05463FD01C7D9A742FAD546FCE2
        38C4C5DEC2C1C92C7562EE06A96267E9C14F3D40C45E463B2A2C8046AC5BD1B0
        24EA57B9AFC063B2D81DAEC3EECEDEB2895A5AB158705A34A19234E46553B161
        0CC62DC7D04E9D1DC5B960D0D7094424774FCD1C1A2F9F7C92C20EE4DFA62D45
        ECFC68D58FFEF3492B169E247AE6987E3FE7765CBF2D8AB42F15F885695EB4A3
        E98DC4A351FD9C5E4C96375F1267FEB6D7DBFF002F5CDF97C3AF5B6E6DFC3C7E
        0DB8F37D5A6FD94B98FEB9BA23F8175A65733B0D0250F2F0C52214740E8C3959
        586E08F683E3A4A0A574F61E16B7524C5097156598BA4F56470A8C78902172D0
        F29F4AF26DA2806BFEFCF951DCF6EED8EE1A17A3CAE426445B98F6896B174857
        950C0CA597A9B78873B1F415D3D4864A35207E54E1A9DDEE6C94B918992FE0D2
        0E9636CA32491CB639899DE36F4A85E54F5713AA5BAB8CB16609171B11F71DFE
        EBB52D486AD9A5846892A52B0F2C3F8D2C4257B1CC8B2297F7B917997DDF478E
        A8A8AA549DBA923633F925AF2C577117F1CC54AADEA7D1BAB1330DB9D7A64B70
        F1E31E88453750A606B0B32C78DBB156C6E4E4BDF972BDC92FCF5BA663BB26E4
        3CB1483F12CBAFBCF349C11782004EFA66984655FEA65ADAEDF5D5BC91B2AAF7
        0E4AD61315D38A339FC8548EC4A8C76AF5D5C02D3CDE958F8EEABE2DE03D2744
        A15953815E52A5514D7B747371642382CCCBD9B8E732E7F3AC089F256938158F
        6F8813B2A05E1C46DE8D4EE092AFD46047E5599EE69D710918C6E228AA24B8D5
        01ABD442378A2980E16AE1521CA31E945BFBDCC7552DEE54DB71F4BC8099B35B
        B17B2AB2435E925ACA4A03455D9924B3205FB723CBB2410A7DA63CA8BE81E8D4
        B29B414233B7EABC8A33395615B0905C6CACCE9198D2DDD61CB08AD16C1C5784
        0E58F701A67E3B6DE352DDAD577AAF9502837DDF9B92C864B3107C9A813454E4
        7E5831B046CB23CB61D430EB941BB11F003CA38F8E842DD305908C2B0F732B13
        F9ACC76C9B5165DE332672D59A89CE87711F35698AB43185F8225E66DBC7DEDF
        44ED721BA99635C4F6D4372BC14267A372E2B4B55284F247D58E3F89C471968F
        946FE246DBEABAD698F4EB98CE43B45EEAB24F255CA2F874F294A199B6FF007D
        0885FF004EC74E8DC95681D38A29FF00CADDA1CDFF00E170FC9E6BC9F57CC5DE
        9F5397E2F0FE0737E1EDE1CFE9D58D73E637A68D9B93EE1EE2C5DF82B498D86D
        C376735E8F97B3B4C4F2993DE8E440BEEAA92C79B61AD42B0E277B548448F97A
        B362E189824B625E9CB023900F2C92C0D208CF1FB7B6802C305882689248A459
        637019244219594F81523811F46803D4BBF26FBEDB1DC9DF6D0054B1B8E9BB95
        7F36C94B37E5D619BF2FC647234312C018AA4930421A491C0E6E2DB004003D3A
        298815EEF2EC9AB89C957EEAA8B3A50C7569E3CAC704B29B31C248759EB312CD
        BC457764DC82BE0BBEA1BF6F52C07C27400A9054CF38BD8DB98DEE77E4086567
        928641541E600BC046E46FE2D1AEB334B5813A927881E5BB872B8BB72D1C43DD
        5BF5950DC8AEDA86C5481E41CCB1733C6D239E4F78F2B0DBD7A8B5E92E6DB692
        B98AC8A6E4B3394C85516ADC02C6473B64F5ABC5BA2B56886C546E775568A3DB
        73F7B46A8B9559AB6B6D2841A27EB63B2D9FED2EE7AF4AA260E1696412E3E94A
        2492465862E9C492ECA16003998A81BFA3571D2B54605C834DA64F9C752B9804
        C16133F464A1088853AF2A2C33C2D0912445190A92C1D413CD171F48D579353A
        A797FC445522ED765F7A9B3359B591BD035A3D4B0D842A2391D9795A430F5E0F
        7D828DC85D2D9B76ED2D2BD2B2142F0B81F9778963632334F2DC88F55DB311C9
        11328DBDFE9322A48FBFC3BF39F51D32536DF808C5DC9DC379B215A28D146767
        6030F8F90A814C48BB0B13F31D8DA64F7954F08D78EDEB961054F0100ACF6267
        2AE57A16301177176EBC6AD6505B589E7B4C7767B093005E18B98944E6F79BDF
        6DCEDB4B1B96E39307880673B5AC63718D254EDB76E795D7198A52D6EBE3A394
        F40D975669564B92F37BBE2912F1F41DDD1BA9B1BA5950A350D116D710A166E9
        361D21AEF76ADE3242DD38B731A6DD3E65FC0843AF36DCEE789DA47242A4CBF6
        297B98410C592CEDABB044AB4AF55AA63224B2115050AB285EA4D3ECBBD89F9F
        95773B7B2B4E29BC05A927F8BCDB7431DE3F97EDB9F2FCDB6FF946FCBFC1FF00
        6FFEBF86DE8D3B40A59EF657A999B797893CCC9489C3E02B1F09AECA4358907A
        C2EC1491E0AAFAD32A164EDFC1C78EC679763D5B12BBCB7AC30E33CF21DE590F
        B18F003EEEC340028EDB5C5CF3DBC0830492AB138C672945E53C79CA00DD363E
        B4DB7F48D0038D94CA59C4647CDE325C75982BCA54BC91CB1BB74DBF86F1B127
        F7946800CED98E38FB731491F145A70053ECE9AE800CB9562B5567AD2A868E78
        DE3914F815752A47EAD0072163AAC72D1AED3A6F6220625986EB26F1B18F70EB
        B30F87D074B0517C08A527158164EDABF92B3772A9E5ED64590C53B495E37B2E
        8A631111215DCF0E9F0E6DD8EB2771B66E554747DAF7F082A489782DD2B7CCB0
        4A0CB16E0A805268CB70FE1C803A7E91AA0ECCA2EA6EC2F5BB8B0663B571AB47
        BB71F528493E362B30D9EBE4A2747967B05448058EAAB8701509F7870E006ACC
        2EB6A863770DB25E646C6BB84EE1745F311E2F3716DB72DDAC6BCA7DBCE9D64D
        FF00774578192911AF567C7B73D7A394C0FDF34BA791A47D7BC1BB151FD545D2
        A4806B217B279BA2719533D8A925792275927865AF66330C8B26FE5DD887F87C
        38697012449DEED68EB0A5353A51651EBB4EF663B8554D97B2AA249DE5759017
        F7387EAF01A8DCF104B00231C55FDE970B98C1A8FF00E631F32D8841F5F242F2
        8DBFE169CA8140EA162F5AE386EE1A9930370D0DB880946DF658C0D1BA91ED8F
        43F0140B3F97CD1953177E14C7C6C9D6B172A4AD34F2465BA220A8ACA8E934EC
        79437A17723D8AA0C407A38CB162C8C7D4094A682215EDC906DD2C6D56E228D5
        6F4DA954EF3483C3C7D5A578050B17F2976BF2F4BF2E8B97CAFE5DC9B9DBCAEF
        D5E972EFF7BDEDFE2DFDEDF51EB90BA5730EEDFED45C7E46264458F178BAEB53
        075433398D5C735899D9B726491BDCDF7DF947F4B5BA532D836F46803046801A
        B5089A1784FC3229463EC61B1FA8E80217B1AC4AFDB18F827016C548CD39D47A
        24AAC616FF00337D004F13B027D5A00E6DEDEF9797F37DD996C2B2CB570D88C8
        588F21740E5731BCA648E080FDF923752587C0BED3A04A1BB7F903B6ABD78E2C
        657FC9E580010D9A07A120E51B0E72BC251FEF03696A14356FCDDC9D8A766B63
        7300656F0AD33D17A70A472C8AFF0082B3CF2730781ABB1E750879643C00F1D4
        53B4A4A9426B17DC24B1A235EDA68AE3D5862AF2418EA68C15673B493CD280A6
        475E67E51CA0F0E6F13F46A0DBEDF449EBC4B9BFDF6A6945E0134ACDFA0C5F1D
        7AD517FBD04F22EFF4AB3153FAB56DD8B72E065ADC496658E87CCEEF6A84096C
        D6C8A0DBDDB717249FFB584A7D6BAAD3D9279122BEC9E5F9B986BE9D0EE0EDF6
        E4F0768BA5762DBFA920493EAD559ECE4B2278DD4F324F1994F97379C261B372
        626CEFC2BC73CB509FA60B3F8647EEEA17664B34394D1625ADDD302892A646B6
        42123DC16E1E9B70FF006D5DB94FD3C9A8992500F2023B5B8CEF6B75997C2C56
        E95CDB6F510229C7B36074A9F88DA32322C7626C64E3970305B86D2C461395BB
        E63928C521F7C574B5F14CC780D810BE24FA0BB5F261431DC1DE18AEDBABF92E
        18A1B300612B81CE2166E2C5CF8C933EFB9E6F4F16F569D6ACCA52C464E49235
        AFF316539F9BCD58DFADE6FF008877EB72F2F577F1EAEDE9F0DB86DB70D5FF00
        B42AF54EA38FE05FA356853D8D002D0063C4686056EB3AE3BBA27A454AD5CB73
        5BACDF67CCC602CF1FD2502C83F7B401623C633FB74010F8BC7CB573598B240F
        2D7E48258483C4BA42239371FB838E802AFF00347E6547DB50C38DC734527715
        D4E6AF0CA4110C3BECD6245DF73EA55FB47D9A5A08683B573B926B735CBEAB92
        B96086B171A431CCFCBC17749072003D0ABB01E8D2A5890B4DB1A397AD1002CC
        53543E93346797FB69CC9A4A36F1155026BDAAD6579ABCA9281E3C8C1BF669D8
        0E71751DD8FAB45404771E2BB695482A799156450AEAACBEDE3B7EBD35AAE625
        58ED1B1731E79B1B6EC507F5D599E253F4A0250FF6751CACC5E0D0F8DE922C94
        3E66F7A5340B2D88326ABE22DC5B3B7D324253F66AB4F61063FEE58EE5BE68F7
        6E4A9F421106299979659ABEF34A77DF7E9BC83F0F87A40DF4C86CB4B077AA54
        63448D79506CA3C3C49DCF8924EE493E92757E0A842E4D99E51FE3D3F50943AD
        22F817E8D464C7BD002D00356278A089A5958247182D23B10AAAA06E4927C00D
        353C680720FCD3FF00D40FE65F33F116F0B7193B73B62EA342F171165B9B92CC
        C7D6863DD13D9C7D3AB7F6971C7550920E34C4EB9AB720B5522B35DC495EC22C
        B0BAF10C8E39948FD07555B6B32369144F9A9F387B73B071EC6775B79E997FB8
        61D0FBEFBF00F2FF00AB8C1F127C7D1A58D5AC874155D0E2BEE1CF657B8F3367
        359898D9C95B72F2CA771CBF75107D854F050350B93366D6D61A71CC72877677
        2512160BF23C63FD14FB4C3F5BF1FAF49AD90CB6516C9FA7F336FC6156DD28E5
        51E2F0B344C7DA54F32E9EA7CC867DBDAC51229DDDD9B78EF76B9AD31FF492C5
        B1DFD92C3B9FD7A913894E7B7B8B812F4928584E6C46658EC37118912C2FF664
        DDFEBD2A6889A9ACD0416CFC03668EB5B1E3EE97AF27E953D44FAC69C30C7E70
        B10FEF74ECD5DBC5D93A91FF006E2E71FAF6D001352FE3AE70AB6A299BD28AC3
        987D20F1D0011CA403BEFBFA88DB4069303481A4CE942863401D6917C0BA6129
        ECE9181E4B0F5E93501CDFFF00AA4F9C6D8CAB376161A4FEFF0076207336070E
        8D77008854FDE90716F50FA75A9DAF65D496A63272A1CA0CC362A3C0EBAC7A54
        74D086ACBD627E777CD4C560A1C1E3FB866AF8EAF1F4608C2C65E38F6D82A485
        79C6C3C363C3541F6AB527562EA6532EDCBB7ED4972F5896D5B98F34B3CCECF2
        31FE933124EAC4761652C8453682AA316AB193E3C46FEBDB5C56F2295C691D26
        D1B95B4D8FEDAAC59A21687886A62D2504A98E41CC1976523ED0E0C3E83A5AD0
        8E56E2F344951EE4EE0A240AD909828FB0E7A8BFD970DFB74BD465796CA2F227
        697CCACBC5B0B75A2B3FED2326261FE729FD5A557B8104FB7F224877A768E436
        5C9D330B1FF4924425DBDBCE9BB0D4A9A294B6B35912F49F136F97F29CBBAF28
        D8469309576F47E1CC588D2EA19D392CD06919E80FBCB0DB4FD303EDF48E743F
        5694634110D9791B924AF244DE92DCA57F4153A2826011C87D63C34A181D651F
        F0D7E8D3090172393868426695277403C2BD79ACBFE8481246FAB452A0699EFF
        00F9DBF30215969764F61672CCC095195BD8CB6910F6C70F4F9DBF7B6D5EDAED
        232F54A2BE686B91C91DD567B92CF71DFB1DCEB6173D349CF7D6DC6D14C1C81B
        068DC295F776D86DE1AEAB6766DC2348493F81049B227DDD5B8A486A11DB4E95
        18A61BC0EA39E1174111254F6F29101EAE27F4EB80DDB6EE3A9D36CD52DA1ED5
        62CB168A0D168A00B7D14062D1442242D2603D08EFE8D381D0F1EE19547BA243
        F093B03FA36E3A28C826A2F327B173779C0BCF43CEB420EFCAA92489E1EA208D
        393657959B5CD7D49CABDCFDEB101E631534EBE9DE0914FD4BB696327C8A93B1
        0E128FD493FE6EC9EDBFE4173E1F0E493E2DF6DBC3E1D3F5F811F421F997D4FF
        D9}
      Stretch = True
    end
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 143
      Height = 65
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 42
        Height = 22
        Caption = #20808#25163
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = #21326#25991#34892#26999
        Font.Style = []
        ParentFont = False
      end
      object shpFirst: TShape
        Left = 73
        Top = 8
        Width = 24
        Height = 25
        Brush.Color = clBlack
        Pen.Style = psClear
        Shape = stCircle
      end
      object colbFirst: TColorBox
        Left = 16
        Top = 32
        Width = 97
        Height = 22
        Style = [cbStandardColors]
        ItemHeight = 16
        TabOrder = 0
        OnChange = colbFirstChange
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 80
      Width = 143
      Height = 65
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 8
        Width = 42
        Height = 22
        Caption = #21518#25163
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = #21326#25991#34892#26999
        Font.Style = []
        ParentFont = False
      end
      object shpSecond: TShape
        Left = 73
        Top = 9
        Width = 32
        Height = 24
        Pen.Color = clWhite
        Pen.Style = psClear
        Shape = stCircle
      end
      object colBSecond: TColorBox
        Left = 16
        Top = 32
        Width = 105
        Height = 22
        DefaultColorColor = clWhite
        Selected = clWhite
        Style = [cbStandardColors]
        ItemHeight = 16
        TabOrder = 0
        OnChange = colBSecondChange
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 210
      Width = 143
      Height = 39
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 2
      object bbtStart: TBitBtn
        Left = 30
        Top = 8
        Width = 75
        Height = 25
        Caption = #24320#22987
        TabOrder = 0
        OnClick = mnuNewClick
      end
      object bbtExit: TBitBtn
        Left = 30
        Top = 32
        Width = 75
        Height = 25
        Caption = #36864#20986
        TabOrder = 1
        Visible = False
        OnClick = mnuExitClick
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 145
      Width = 143
      Height = 65
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 3
      object Label3: TLabel
        Left = 16
        Top = 8
        Width = 42
        Height = 22
        Caption = #26827#30424
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #21326#25991#34892#26999
        Font.Style = []
        ParentFont = False
      end
      object colBBg: TColorBox
        Left = 16
        Top = 32
        Width = 105
        Height = 22
        DefaultColorColor = clOlive
        Selected = clOlive
        Style = [cbStandardColors]
        ItemHeight = 16
        TabOrder = 0
        OnChange = colBBgChange
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 403
      Width = 143
      Height = 37
      Align = alBottom
      TabOrder = 4
      object Edit1: TEdit
        Left = 8
        Top = 8
        Width = 129
        Height = 21
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
    end
    object Memo1: TMemo
      Left = 2
      Top = 249
      Width = 143
      Height = 154
      Align = alClient
      Color = clBtnFace
      PopupMenu = PopupMenu1
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 5
    end
  end
  object MainMenu1: TMainMenu
    Left = 296
    Top = 128
    object N1: TMenuItem
      Caption = #28216#25103'(&G)'
      object mnuNew: TMenuItem
        Caption = #26032#28216#25103'(&N)'
        OnClick = mnuNewClick
      end
      object mnuSaveSet: TMenuItem
        Caption = #20445#23384#35774#32622
        OnClick = mnuSaveSetClick
      end
      object mnuSave: TMenuItem
        Caption = #20445#23384'(&S)'
        Enabled = False
        OnClick = mnuSaveClick
      end
      object mnuLoad: TMenuItem
        Caption = #35835#21462'(&O)'
        OnClick = mnuLoadClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnuExit: TMenuItem
        Caption = #36864#20986'(&E)'
        OnClick = mnuExitClick
      end
    end
    object N2: TMenuItem
      Caption = #23616#22495#32593
      object N8: TMenuItem
        Caption = #21333#26426
        Checked = True
        RadioItem = True
        Visible = False
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #23545#25112
        RadioItem = True
        Visible = False
        OnClick = N9Click
      end
      object N7: TMenuItem
        Caption = '-'
        Visible = False
      end
      object N5: TMenuItem
        Caption = #30417#21548'('#20570#20027#26426')'
        OnClick = N5Click
      end
      object N4: TMenuItem
        Caption = #36830#25509
        OnClick = N4Click
      end
      object N6: TMenuItem
        Caption = #26029#24320
        OnClick = N6Click
      end
    end
    object H1: TMenuItem
      Caption = #24110#21161'(&H)'
      object A1: TMenuItem
        Caption = #20851#20110'(&A)'
        OnClick = A1Click
      end
    end
  end
  object od: TOpenDialog
    Filter = #20915#25112#20116#23376#26827'(.WZQ)|*.wzq'
    Left = 168
    Top = 24
  end
  object sd: TSaveDialog
    DefaultExt = '.wzq'
    Filter = #20915#25112#20116#23376#26827'(.WZQ)|*.wzq'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 224
    Top = 24
  end
  object PopupMenu1: TPopupMenu
    Left = 621
    Top = 304
    object N11: TMenuItem
      Caption = '<'#24555#28857'>'
      OnClick = N11Click
    end
    object N10: TMenuItem
      Caption = #28165#38500
      OnClick = N10Click
    end
  end
end
