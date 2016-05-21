unit untAgendaView;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  smFrmBaseToolBar, FMX.Objects, FMX.Controls.Presentation, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  MultiDetailAppearanceU, FMX.ListView, System.Rtti, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, FMX.TabControl, FMX.ListBox, FMX.Effects, FMX.Edit,
  Data.DB, FGX.VirtualKeyboard,FMX.TextLayout, FMX.ScrollBox, FMX.Memo,
  FMX.DateTimeCtrls, FMX.Calendar, FMX.ExtCtrls,DateUtils, FMX.Gestures;

type
  TfrmAgendaView = class(TfrmBaseToolBar)
    bsAgenda: TBindSourceDB;
    blAgenda: TBindingsList;
    btnAdd: TSpeedButton;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    tbCtrlAgenda: TTabControl;
    tbItemListAgenda: TTabItem;
    lstboxAgenda: TListBox;
    tbItemListAgendaDev: TTabItem;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    Text2: TText;
    imgAdd: TImage;
    Memo1: TMemo;
    ListBoxItem5: TListBoxItem;
    layData: TLayout;
    layCalendar: TLayout;
    Calendar: TCalendar;
    btnCalendar: TSpeedButton;
    GestureManager1: TGestureManager;
    imgCalendarLeft: TImage;
    imgCalendarDown: TImage;
    imgCalendarRight: TImage;
    imgCalendarUp: TImage;
    imgCalendar: TImage;
    lstboxData: TListBox;
    ListBoxItem6: TListBoxItem;
    btnCalendarLeft: TSpeedButton;
    btnCalendarRight: TSpeedButton;
    lblCalendar: TLabel;
    TabItem1: TTabItem;
    SpeedButton1: TSpeedButton;
    VertScrollBox1: TVertScrollBox;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure imgVoltarClick(Sender: TObject);
    procedure imgAddClick(Sender: TObject);
    procedure CalendarDateSelected(Sender: TObject);
    procedure btnCalendarClick(Sender: TObject);
    procedure btnCalendarRightClick(Sender: TObject);
    procedure btnCalendarLeftClick(Sender: TObject);
    procedure btnCalendarDownClick(Sender: TObject);
    procedure btnCalendarTopClick(Sender: TObject);
    procedure lstboxAgendaGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure imgCalendarLeftClick(Sender: TObject);
    procedure imgCalendarRightClick(Sender: TObject);
    procedure imgCalendarDownClick(Sender: TObject);
    procedure imgCalendarUpClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    MargemEsquerda:Integer;
    MargemDireita:Integer;
    MargemTopText:Integer;
    fActivityDialogThread: TThread;
    procedure SetTitulo;
    procedure SetListBoxAgendaGroupHeader;
    procedure SetListBoxAgendaItemData(Data:String);
    procedure SetListBoxAgendaItem(Descricao:String);
    procedure SetListBoxAgendaItemEnviadoPor;
    procedure SetListBoxAgendaItemLinhaBranco(Tamanho:Integer);
    procedure SetListBoxAgendaFooter;
    procedure SetListBoxItemProperty(ListBoxItem:TListBoxItem);
    procedure SetTextProperty(Text:TText;ListBoxItem:TListBoxItem);overload;
    procedure SetValuesObjects;
    procedure SetStateObjects;
  public
    AlunoId: Integer;
    TurmaId: Integer;
    OwnerAgenda: String;
    NomeCompleto: String;
    DataSetAgenda: TDataSet;

    procedure FillListBoxAgenda;
    procedure FillListBoxAgendaWait;
    procedure RefreshForm;
    procedure SetSizeBtnCalendar;

    //Novos Metodos
    procedure FillListAgenda;
    procedure SetListAgendaItem(Descricao:String);
    procedure SetListgendaItemEnviadoPor(Rectangle:TRectangle);
    procedure SetTextProperty(Text:TText);overload;
    procedure SetListAgendaItemLinhaBranco;


  end;

var
  frmAgendaView: TfrmAgendaView;

implementation

{$R *.fmx}

uses untFuncoes, untDmAgenda, untDM, untAgendaAdd, untPrincipal,
  untDMStyles, smMensagensFMX;

procedure TfrmAgendaView.btnVoltarClick(Sender: TObject);
begin
  fAllowCloseForm := True;
  Close;
  inherited;
end;


procedure TfrmAgendaView.CalendarDateSelected(Sender: TObject);
begin
  inherited;
  RefreshForm;
  layCalendar.Visible := not layCalendar.Visible;
  SetStateObjects;
end;

procedure TfrmAgendaView.FillListAgenda;
var
  Data: string;
  i:Integer;
begin
  try
    //Text3.DisposeOf;

    VertScrollBox1.BeginUpdate;
    //lstboxAgenda.Items.Clear;
    DataSetAgenda.Refresh;
    DataSetAgenda.DisableControls;

    for I := 0 to 7 do
    begin

     DataSetAgenda.First;

    while not DataSetAgenda.Eof do
    begin
        SetListAgendaItem(DataSetAgenda.FieldByName('descricao').AsString);;
        DataSetAgenda.Next;
    end;
    end;
  finally
    VertScrollBox1.EndUpdate;
    DataSetAgenda.EnableControls;
  end;

end;

procedure TfrmAgendaView.FillListBoxAgenda;
var
  Data: string;
begin
  try
    lstboxAgenda.BeginUpdate;
    lstboxAgenda.Items.Clear;
    DataSetAgenda.Refresh;
    DataSetAgenda.DisableControls;
    DataSetAgenda.First;

    while not DataSetAgenda.Eof do
    begin
        SetListBoxAgendaItem(DataSetAgenda.FieldByName('descricao').AsString);
        SetListBoxAgendaItemEnviadoPor;
        SetListBoxAgendaGroupHeader;
        DataSetAgenda.Next;
      end;
  finally
    lstboxAgenda.EndUpdate;
    DataSetAgenda.EnableControls;
  end;
end;

procedure TfrmAgendaView.FillListBoxAgendaWait;
begin
 //Este m�todo n�o esta sendo utilizado, ao utilizar no show do form trava a app e fecha
 if not DM.fgActivityDialog.IsShown then
  begin
    FActivityDialogThread := TThread.CreateAnonymousThread(procedure
    begin
      try
        TThread.Synchronize(nil, procedure
        begin
          DM.fgActivityDialog.Message := 'Carregando Agenda';
          DM.fgActivityDialog.Show;
        end);

        FillListBoxAgenda;

        if TThread.CheckTerminated then
          Exit;


      finally
        if not TThread.CheckTerminated then
          TThread.Synchronize(nil, procedure
          begin
              DM.fgActivityDialog.Hide;
              Application.ProcessMessages;
          end);
      end;
    end);
    FActivityDialogThread.FreeOnTerminate := False;
    FActivityDialogThread.Start;
  end;
end;

procedure TfrmAgendaView.FormCreate(Sender: TObject);
begin
  inherited;
  SetStyle(Self);
  SetValuesObjects;
  //tbCtrlAgenda.TabPosition:= TTabPosition.None;
  tbCtrlAgenda.ActiveTab:= tbItemListAgenda;
end;

procedure TfrmAgendaView.FormShow(Sender: TObject);
begin
  inherited;

  layCalendar.Visible:=False;
  Calendar.Date := Now;
  RefreshForm;
end;


procedure TfrmAgendaView.imgCalendarRightClick(Sender: TObject);
begin
  inherited;
  btnCalendarRight.OnClick(self)
end;

procedure TfrmAgendaView.imgCalendarUpClick(Sender: TObject);
begin
  inherited;
 btnCalendar.OnClick(self);
end;

procedure TfrmAgendaView.imgCalendarDownClick(Sender: TObject);
begin
  inherited;
  btnCalendar.OnClick(self);
end;

procedure TfrmAgendaView.imgAddClick(Sender: TObject);
begin
  inherited;
  btnAdd.OnClick(self);
end;

procedure TfrmAgendaView.imgCalendarLeftClick(Sender: TObject);
begin
  inherited;
  btnCalendarLeft.OnClick(self);
end;

procedure TfrmAgendaView.imgVoltarClick(Sender: TObject);
begin
  inherited;
  btnVoltar.OnClick(self);
end;

procedure TfrmAgendaView.lstboxAgendaGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
var
  Gesto : string;
begin
  if GestureToIdent(EventInfo.GestureID, Gesto) then
    begin
      case EventInfo.GestureID of
        sgiLeft : imgCalendarRight.OnClick(self);
        sgiRight: imgCalendarLeft.OnClick(self);
      end;
    end;
end;

procedure TfrmAgendaView.RefreshForm;
begin
  lblCalendar.Text := Format('%s', [FormatDateTime('dddddd', Calendar.Date)]);
  btnAdd.Enabled:= (Calendar.Date >= Date);

  if UsuarioLogadoIsFuncionario then
    DmAgenda.OpenAgenda(AlunoId, TurmaId,Calendar.Date);

  SetTitulo;
  FillListBoxAgenda;
  SetStateObjects;
  SetSizeBtnCalendar;
end;

procedure TfrmAgendaView.SetListAgendaItem(Descricao: String);
var
  HeightItem: Double;
  Text: TText;
  Rectangle:TRectangle;
begin
  Rectangle:=TRectangle.Create(self);
  Rectangle.BeginUpdate;
  Rectangle.Align:=TAlignLayout.Top;
  Rectangle.Fill.Color:= TAlphaColors.Ghostwhite;
  Rectangle.Stroke.Kind:=TBrushKind.None;
  Rectangle.Parent := VertScrollBox1;

  Text := TText.Create(self);
  Text.BeginUpdate;
  Text.Text := Descricao;
  SetTextProperty(Text);
  Text.TextSettings.Font.Size :=  16;
  Text.Parent := Rectangle;

  Text.AutoSize:=False;
  Text.Height:=15;
  Text.AutoSize:=True;

  Rectangle.Height :=  Trunc(Text.Height) + (MargemTopText)+ (Text.Margins.Top);
  Text.EndUpdate;

  SetListgendaItemEnviadoPor(Rectangle);
  Rectangle.EndUpdate;

  SetListAgendaItemLinhaBranco;
end;

procedure TfrmAgendaView.SetListAgendaItemLinhaBranco;
var
 Layout:TLayout;
begin
  Layout:=TLayout.Create(self);
  Layout.BeginUpdate;
  Layout.Align := TAlignLayout.Top;
  Layout.Height:=12;
  Layout.Parent:= VertScrollBox1;
  Layout.EndUpdate;
end;

procedure TfrmAgendaView.SetListBoxAgendaFooter;
begin
//
end;

procedure TfrmAgendaView.SetListBoxAgendaGroupHeader;
var
  ListBoxGroupHeader: TListBoxGroupHeader;
begin
  ListBoxGroupHeader := TListBoxGroupHeader.Create(lstboxAgenda);
  ListBoxGroupHeader.TextSettings.HorzAlign := TTextAlign.Center;
  //ListBoxGroupHeader.TextSettings.WordWrap := True;
  ListBoxGroupHeader.Height:=5;
  lstboxAgenda.AddObject(ListBoxGroupHeader);
end;

procedure TfrmAgendaView.SetListBoxAgendaItem(Descricao:String);
var
  ListBoxItem: TListBoxItem;
  HeightItem: Double;
  Text: TText;
begin
  ListBoxItem := TListBoxItem.Create(lstboxAgenda);
  ListBoxItem.BeginUpdate;
  SetListBoxItemProperty(ListBoxItem);

  Text := TText.Create(self);
  Text.BeginUpdate;
  Text.Text := Descricao;
  SetTextProperty(Text,ListBoxItem);
  Text.TextSettings.Font.Size :=  16;
  Text.AutoSize:=True;
  ListBoxItem.Height:=  Trunc((Text.Height) + ( (Text.Height / 25) * 2))+3;
  Text.Parent := ListBoxItem;
  Text.EndUpdate;
  ListBoxItem.WordWrap := True;
  //ListBoxItem.Text := Descricao;

  ListBoxItem.EndUpdate;
  lstboxAgenda.AddObject(ListBoxItem);

  //SetListBoxAgendaItemLinhaBranco;
end;

procedure TfrmAgendaView.SetListBoxAgendaItemData(Data:String);
var
  ListBoxItem: TListBoxItem;
  Text: TText;
begin

  ListBoxItem := TListBoxItem.Create(lstboxAgenda);
  SetListBoxItemProperty(ListBoxItem);

  Text := TText.Create(self);
  Text.BeginUpdate;
  Text.Parent := ListBoxItem;
  SetTextProperty(Text,ListBoxItem);
  Text.color := TAlphaColors.Mediumseagreen;
  Text.TextSettings.Font.Style :=  [TFontStyle.fsBold];
  Text.TextSettings.Font.Size :=  16;
  Text.Text := Data;
  Text.EndUpdate;
  lstboxAgenda.AddObject(ListBoxItem);
end;

procedure TfrmAgendaView.SetListBoxAgendaItemEnviadoPor;
var
  ListBoxItem: TListBoxItem;
  Text: TText;
  Funcionario:string;
  FuncionarioTipo:string;
  Responsavel:string;
  ResponsavelTipo:string;
  Texto:string;
begin
  Funcionario:= DataSetAgenda.FieldByName('funcionario_nome').AsString;
  FuncionarioTipo:= DataSetAgenda.FieldByName('funcionario_tipo').AsString;
  Responsavel:= DataSetAgenda.FieldByName('responsavel_nome').AsString;
  ResponsavelTipo:= DataSetAgenda.FieldByName('responsavel_tipo').AsString;

  if Funcionario <> EmptyStr then
    Texto:=  FuncionarioTipo + ' ' + Funcionario;

  if Responsavel <> EmptyStr then
    Texto:=  Responsavel;

  ListBoxItem := TListBoxItem.Create(lstboxAgenda);
  SetListBoxItemProperty(ListBoxItem);
  ListBoxItem.Height:= 15;
  ListBoxItem.Margins.Top := 0;

  Text := TText.Create(self);
  Text.BeginUpdate;
  Text.Text := Texto;
  SetTextProperty(Text,ListBoxItem);
  Text.color := TAlphaColors.Mediumseagreen;
  Text.TextSettings.Font.Size :=  14;

  Text.AutoSize:=True;
  ListBoxItem.Height:=  (Text.Height);
  Text.Parent := ListBoxItem;
  Text.EndUpdate;
  lstboxAgenda.AddObject(ListBoxItem);
end;

procedure TfrmAgendaView.SetListBoxAgendaItemLinhaBranco(Tamanho:Integer);
var
  ListBoxItem: TListBoxItem;
begin
  //Linha em Branco
  ListBoxItem := TListBoxItem.Create(lstboxAgenda);
  ListBoxItem.BeginUpdate;
  ListBoxItem.Text:='';
  SetListBoxItemProperty(ListBoxItem);
  ListBoxItem.Height:= Tamanho;
  ListBoxItem.EndUpdate;
  lstboxAgenda.AddObject(ListBoxItem);
end;


procedure TfrmAgendaView.SetListBoxItemProperty(
  ListBoxItem: TListBoxItem);
begin
  ListBoxItem.StyleLookup := 'listboxitemstyle';
  ListBoxItem.TextSettings.WordWrap := True;
  ListBoxItem.TextSettings.VertAlign := TTextAlign.Center;
  ListBoxItem.Selectable:=False;
  ListBoxItem.Margins.Left:=MargemEsquerda;
  ListBoxItem.Margins.Right := MargemDireita;
  ListBoxItem.Margins.Top := 2;
  ListBoxItem.Margins.Bottom := 2;
  ListBoxItem.Height:= 25;
end;

procedure TfrmAgendaView.SetListgendaItemEnviadoPor(Rectangle:TRectangle);
var
  ListBoxItem: TListBoxItem;
  Text: TText;
  Funcionario:string;
  FuncionarioTipo:string;
  Responsavel:string;
  ResponsavelTipo:string;
  Texto:string;
begin
  Funcionario:= DataSetAgenda.FieldByName('funcionario_nome').AsString;
  FuncionarioTipo:= DataSetAgenda.FieldByName('funcionario_tipo').AsString;
  Responsavel:= DataSetAgenda.FieldByName('responsavel_nome').AsString;
  ResponsavelTipo:= DataSetAgenda.FieldByName('responsavel_tipo').AsString;

  if Funcionario <> EmptyStr then
    Texto:=  FuncionarioTipo + ' ' + Funcionario;

  if Responsavel <> EmptyStr then
    Texto:=  Responsavel;

  {ListBoxItem := TListBoxItem.Create(lstboxAgenda);
  SetListBoxItemProperty(ListBoxItem);
  ListBoxItem.Height:= 15;
  ListBoxItem.Margins.Top := 0;
  }

  Text := TText.Create(self);
  Text.BeginUpdate;
  Text.Text := Texto;
  SetTextProperty(Text);
  Text.color := TAlphaColors.Mediumseagreen;
  Text.TextSettings.Font.Size :=  14;

  Text.AutoSize:=True;
  //ListBoxItem.Height:=  (Text.Height);
  Text.Parent := Rectangle;
  Text.EndUpdate;
  //lstboxAgenda.AddObject(ListBoxItem);

  Rectangle.Height := Rectangle.Height +  (Text.Height + Text.Margins.Top);
end;


procedure TfrmAgendaView.SetSizeBtnCalendar;
begin
  lblCalendar.AutoSize:=False;
  lblCalendar.AutoSize:=True;
  btnCalendar.Width:= lblCalendar.Width + imgCalendarDown.Width + lblCalendar.Margins.Left;
end;

procedure TfrmAgendaView.SetStateObjects;
begin
  imgCalendarDown.Visible := not layCalendar.Visible;
  imgCalendarUp.Visible := layCalendar.Visible;
end;

procedure TfrmAgendaView.SetTextProperty(Text: TText;ListBoxItem:TListBoxItem);
begin
  //Text.Align := TAlignLayout.alClient;
  Text.Align := TAlignLayout.alTop;
  Text.TextSettings.HorzAlign := TTextAlign.Leading;
  Text.TextSettings.VertAlign := TTextAlign.Leading;

  Text.Width := lstboxAgenda.Width;
  Text.Padding := lstboxAgenda.Padding;
  Text.Margins := lstboxAgenda.Margins;
  Text.TextSettings.WordWrap:=True;
end;

procedure TfrmAgendaView.SetTextProperty(Text: TText);
begin
  Text.Align := TAlignLayout.Top;
  Text.TextSettings.HorzAlign := TTextAlign.Leading;
  Text.TextSettings.VertAlign := TTextAlign.Leading;

  Text.Height:=15;
  Text.Width := VertScrollBox1.Width - (MargemEsquerda + MargemDireita);

  Text.Margins.Top := MargemTopText;
  Text.Margins.Left:=MargemEsquerda;
  Text.Margins.Right:=MargemDireita;

  Text.TextSettings.WordWrap:=True;
  Text.AutoSize:=True;
  Text.WordWrap:=True;
end;

procedure TfrmAgendaView.SetTitulo;
begin
  lblTitulo.Text := OwnerAgenda;
end;

procedure TfrmAgendaView.SetValuesObjects;
begin
  MargemEsquerda:=8;
  MargemDireita:=8;
  MargemTopText:=6;
end;

procedure TfrmAgendaView.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FillListAgenda;
end;

procedure TfrmAgendaView.SpeedButton2Click(Sender: TObject);
var
CR: TCalloutRectangle;
L: TText;
TmpImg: TImage;
begin

  CR := TCalloutRectangle.Create(Self);
  CR.Parent := VertScrollBox1;
  CR.Align := TAlignLayout.alTop;
  CR.CalloutPosition := TCalloutPosition.cpRight;
  CR.Margins.Top := 10;
  CR.Margins.Bottom := 10;
  CR.Margins.Left := 5;
  CR.Height := 75;

  L := TText.Create(Self);
  L.Parent := CR;
  L.Align := TAlignLayout.alClient;
  L.Text := 'A quick brown fox jumped over the yellow log running away from the pink dog and ran down the lane.';
  L.Margins.Right := 15;
  L.Margins.Left := 5;
  L.Width := CR.Width-20;

  L.WordWrap := True;
  L.AutoSize := True;

end;

procedure TfrmAgendaView.btnCalendarClick(Sender: TObject);
begin
  inherited;
  layCalendar.Visible := not layCalendar.Visible;
  SetStateObjects;
end;

procedure TfrmAgendaView.btnCalendarRightClick(Sender: TObject);
begin
  inherited;
  Calendar.Date :=  IncDay(Calendar.date,1);
  RefreshForm;
end;

procedure TfrmAgendaView.btnCalendarTopClick(Sender: TObject);
begin
  inherited;
  btnCalendar.OnClick(self);
end;

procedure TfrmAgendaView.btnCalendarLeftClick(Sender: TObject);
begin
  inherited;
  Calendar.Date :=  IncDay(Calendar.date,-1);
  RefreshForm;
end;

procedure TfrmAgendaView.btnCalendarDownClick(Sender: TObject);
begin
  inherited;
  btnCalendar.OnClick(self);
end;

procedure TfrmAgendaView.btnAddClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmAgendaAdd) then
    Application.CreateForm(TfrmAgendaAdd, frmAgendaAdd);

  frmAgendaAdd.AlunoId := AlunoId;
  frmAgendaAdd.TurmaId := TurmaId;
  frmAgendaAdd.OwnerAgenda := OwnerAgenda;
  frmAgendaAdd.NomeCompleto := NomeCompleto;
  frmAgendaAdd.Data := Calendar.Date;
  frmAgendaAdd.Show;
end;

end.
