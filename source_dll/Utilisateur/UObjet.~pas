unit UObjet;

interface

uses   Windows, ADODB, DBTables, Classes, menus,Forms, Dialogs, DB,SysUtils,ComCtrls,IniFiles;

type
  TTabMenu = array[1..10]of TMainMenu;
  TDObjet = class(TDataModule)
    SourceUtilisat: TDataSource;
    SourceAcces: TDataSource;
    C_Utilisat: TADOConnection;
    Lieu: TADOQuery;
    Utilisat: TADOQuery;
    UtilisatMdp: TWideStringField;
    SelUtilisat: TADOQuery;
    SelUtilisatMdp: TWideStringField;
    LieuCode: TWideStringField;
    LieuLieu: TWideStringField;
    LstCom: TADOQuery;
    QUtilCommandeAcces: TADOQuery;
    PeutEntrer: TADOQuery;
    Acces: TADOQuery;
    QUtilCommandeAccesCodeUt: TWideStringField;
    QUtilCommandeAccesCommande: TWideStringField;
    QUtilCommandeAccesLogiciel: TWideStringField;
    PeutEntrerCodeUt: TWideStringField;
    PeutEntrerCommande: TWideStringField;
    PeutEntrerLogiciel: TWideStringField;
    AccesLogiciel: TWideStringField;
    Tempon: TADOQuery;
    qLog: TADOQuery;
    qLogNumero: TAutoIncField;
    qLogDaty: TDateTimeField;
    qAfficheLog: TADOQuery;
    qAfficheLogNumero: TAutoIncField;
    qAfficheLogCodeUtil: TWideStringField;
    qAfficheLogDaty: TDateTimeField;
    sqLog: TDataSource;
    tTache: TADOTable;
    tTacheNumero: TAutoIncField;
    tTacheNLog: TIntegerField;
    tTacheHeure: TDateTimeField;
    stTache: TDataSource;
    tTacheDescription: TWideStringField;
    SelUtilisatCode: TWideStringField;
    UtilisatCode: TWideStringField;
    AccesCodeUt: TWideStringField;
    AccesCommande: TWideStringField;
    LstComCOMMANDE: TWideStringField;
    LstComPere: TWideStringField;
    qArbre: TADOQuery;
    LstComNumero: TWideStringField;
    SelAcces: TADOQuery;
    SelAccesCodeUt: TWideStringField;
    SelAccesCommande: TWideStringField;
    SelAccesLogiciel: TWideStringField;
    qLogCodeUtil: TStringField;
    tFonction: TADOTable;
    stFonction: TDataSource;
    tFonctionDescription: TWideStringField;
    tFonctionId: TAutoIncField;
    UtilisatIdFonction: TIntegerField;
    UtilisatFonction: TStringField;
    SelUtilisatIdFonction: TIntegerField;
    SelUtilisatFonction: TStringField;
    del_CommandeNonUtilisateur: TADOQuery;
    AccesIdFonction: TIntegerField;
    Acceslectureseul: TIntegerField;
    PeutEntreridfonction: TIntegerField;
    PeutEntrerlectureseul: TIntegerField;
    t_menu: TADOTable;
    st_menu: TDataSource;
    t_commande_menu: TADOTable;
    st_commande_menu: TDataSource;
    tTachedesignmenu: TWideStringField;
    tTachedesigncommande: TWideStringField;
    UtilisatNotes: TWideStringField;
    SelUtilisatNotes: TWideStringField;
    Operation: TADOQuery;
    procedure SourceAccesDataChange(Sender: TObject; Field: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure tFonctionAfterInsert(DataSet: TDataSet);
  private
    { Déclarations privées }
    function autoincrementer(table,champ:string):integer;
  public
    { Déclarations publiques }
    procedure ChangerDossierBase(base:string);
    function  PeutEntrerMenu(CodeUt,commande:string;msg:boolean):Integer;
    procedure AJourCommande(var TabMenu:TTabMenu;nb:integer;util,Logiciel:string);
    procedure AjouterEntrer(CodeUt,commande:string);
    procedure MAJLog(CodeUt,menu,commande,Tache:string);
    procedure CreerSampana(Arbre,Pere:string;Profondeur:integer;
                     Noeud:TTReeNode;TV:TTreeView);
    procedure CreerArbre(TV:TTreeView;Arbre:string);
  end;

const MdpProg = 'Ma elle';
var
  DObjet: TDObjet;

procedure MiseAJourCommande(var TabMenu:TTabMenu;nb:integer;util,Logiciel:string);export;
function  EstCePeutEntrer(CodeUt,commande:string;msg:boolean):Integer;export;
procedure CreerDObjet;export;
procedure VonoyDObjet;export;
procedure AjouterEntrerCommande(CodeUt,commande:string);export;
procedure FaireMAJLog(CodeUt,menu,commande,tache:string);export;

implementation

uses TypeElmt;

{$R *.DFM}

procedure CreerDObjet;
begin
  Application.CreateForm(TDObjet, DObjet);
end;

procedure VonoyDObjet;
begin
  DObjet.Free;
end;

function TDObjet.autoincrementer(table,champ:string):integer;
var maxi:integer;
begin
  Operation.Close;
  Operation.SQL.Clear;;
  Operation.SQL.Add('SELECT max('+champ+') as maxi FROM '+table);
  Operation.Open;
  try
   maxi:=Operation.FieldValues['maxi'];
  except
    maxi:=1;
  end;
  result:= maxi+1;
end;

procedure FaireMAJLog(CodeUt,menu,commande,tache:string);export;
begin
  try
    DObjet:=TDObjet.Create(Application);
    DObjet.MAJLog(CodeUt,menu,commande,Tache);
  finally
    DObjet.free;
  end;
end;

function  EstCePeutEntrer(CodeUt,commande:string;msg:boolean):Integer;
begin
  try
    Application.CreateForm(TDObjet, DObjet);
    Result:=DObjet.PeutEntrerMenu(CodeUt,commande,msg);
  finally
    DObjet.free;
  end;
end;

procedure MiseAJourCommande(var TabMenu:TTabMenu;nb:integer;util,Logiciel:string);export;
begin
  try
    Application.CreateForm(TDObjet, DObjet);
    DObjet.AJourCommande(TabMenu,nb,util,Logiciel);
  finally
    DObjet.free;
  end;
end;

procedure AjouterEntrerCommande(CodeUt,commande:string);
begin
  try
    Application.CreateForm(TDObjet, DObjet);
    DObjet.AjouterEntrer(CodeUt,commande);
  finally
    DObjet.free;
  end;
end;

procedure TDObjet.AjouterEntrer(CodeUt,Commande:string);
begin
  Acces.open;
  try
    Acces.Insert;
    AccesCodeUt.Value:=CodeUt;
    AccesCommande.Value:=Commande;
    Acces.Post;
  except
    On EDataBaseError do Acces.Cancel;
  end;
end;

procedure TDObjet.MAJLog(CodeUt,menu,commande,Tache:string);
begin
  sqLog.DataSet := qLog;
  tTache.Open;
  qLog.close;
  qLog.Parameters[0].Value :=CodeUt ;
  qLog.Parameters[1].Value :=Date ;
  qLog.Open;
  qLog.Edit;
  qLogCodeUtil.Value :=CodeUt ;
  qLogDaty.Value :=Date ;
  qLog.Post;
  tTache.insert;
  tTacheNLog.Value :=qLogNumero.Value;
  tTacheHeure.Value :=Time;
  tTachedesignmenu.Value:=menu;
  tTachedesigncommande.Value:=commande;
  tTacheDescription.Value:=Tache;
  tTache.Post;
end;

procedure TDObjet.AJourCommande(var TabMenu:TTabMenu;nb:integer;util,Logiciel:string);
  procedure EntrerUnMainMenu(MainMenu:TMainMenu);
  var i,j,k,l,m:integer;
      Etat:integer;
  begin
    for i:=0 to MainMenu.Items.Count-1 do
    begin
      try
        LstCom.Insert;
        LstComNumero.Value := FormatFloat('00',i+1);
        LstComPere.Value := '0';
        LstCom.FieldByName('Commande').AsString:=EnleverLettre(MainMenu.Items[i].caption,'&');
        LstCom.Post;
        Etat:=PeutEntrerMenu(Util,EnleverLettre(MainMenu.Items[i].caption,'&'),false);
        if (Util=MdpProg)then
          Etat:=2;
        case Etat of
          0:begin
              MainMenu.Items[i].Enabled:=false;
            end;
          1:begin
              MainMenu.Items[i].Enabled:=True;
              MainMenu.Items[i].Checked:=false;
            end;
          2:begin
              MainMenu.Items[i].Enabled:=True;
              MainMenu.Items[i].Checked:=True;
            end;
        end;
      except
        On EDataBaseError do LstCom.Cancel;
      end;
      for j:=0 to MainMenu.Items[i].count-1 do
      begin
        try
          LstCom.Insert;
          LstComNumero.Value := FormatFloat('00',i+1)+FormatFloat('00',j+1);
          LstCom.FieldByName('Commande').AsString:=EnleverLettre(MainMenu.Items[i].Items[j].caption,'&');
          LstComPere.Value := FormatFloat('00',i+1);
          LstCom.Post;
          Etat:=PeutEntrerMenu(Util,EnleverLettre(MainMenu.Items[i].Items[j].caption,'&'),false);
          if (Util=MdpProg)then
            Etat:=2;
          case Etat of
            0:begin
                MainMenu.Items[i].Items[j].Enabled:=false;
              end;
            1:begin
                MainMenu.Items[i].Items[j].Enabled:=True;
                MainMenu.Items[i].Items[j].Checked:=false;
             end;
            2:begin
                MainMenu.Items[i].Items[j].Enabled:=True;
                MainMenu.Items[i].Items[j].Checked:=True;
              end;
          end;
        except
          On EDataBaseError do LstCom.Cancel;
          else;
        end;
        for k:=0 to MainMenu.Items[i].Items[j].count-1 do
        begin
          try
            LstCom.Insert;
            LstComNumero.Value := FormatFloat('00',i+1)+FormatFloat('00',j+1)+FormatFloat('00',k+1);
            LstCom.FieldByName('Commande').AsString:=EnleverLettre(MainMenu.Items[i].Items[j].Items[k].caption,'&');
            LstComPere.Value := FormatFloat('00',i+1)+FormatFloat('00',j+1);
            LstCom.Post;
            Etat:=PeutEntrerMenu(Util,EnleverLettre(MainMenu.Items[i].Items[j].Items[k].caption,'&'),false);
            if (Util=MdpProg)then
              Etat:=2;
            case Etat of
              0:begin
                  MainMenu.Items[i].Items[j].Items[k].Enabled:=false;
                end;
              1:begin
                  MainMenu.Items[i].Items[j].Items[k].Enabled:=True;
                  MainMenu.Items[i].Items[j].Items[k].Checked:=false;
               end;
              2:begin
                  MainMenu.Items[i].Items[j].Items[k].Enabled:=True;
                  MainMenu.Items[i].Items[j].Items[k].Checked:=True;
                end;
            end;
          except
            On EDataBaseError do LstCom.Cancel;
            else;
          end;

          for l:=0 to MainMenu.Items[i].Items[j].Items[k].count-1 do
          begin
            try
              LstCom.Insert;
              LstComNumero.Value := FormatFloat('00',i+1)+FormatFloat('00',j+1)+FormatFloat('00',k+1)+FormatFloat('00',l+1);
              LstCom.FieldByName('Commande').AsString:=EnleverLettre(MainMenu.Items[i].Items[j].Items[k].Items[l].caption,'&');
              LstComPere.Value := FormatFloat('00',i+1)+FormatFloat('00',j+1)+FormatFloat('00',k+1);
              LstCom.Post;
              Etat:=PeutEntrerMenu(Util,EnleverLettre(MainMenu.Items[i].Items[j].Items[k].Items[l].caption,'&'),false);
              if (Util=MdpProg)then
                Etat:=2;
              case Etat of
                 0:begin
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Enabled:=false;
                  end;
                1:begin
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Enabled:=True;
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Checked:=false;
                  end;
                2:begin
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Enabled:=True;
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Checked:=True;
                  end;
              end;
            except
              On EDataBaseError do LstCom.Cancel;
              else;
            end;
            for m:=0 to MainMenu.Items[i].Items[j].Items[k].Items[l].count-1 do
            try
              LstCom.Insert;
              LstComNumero.Value := FormatFloat('00',i+1)+FormatFloat('00',j+1)+FormatFloat('00',k+1)+FormatFloat('00',l+1)+FormatFloat('00',m+1);
              LstCom.FieldByName('Commande').AsString:=EnleverLettre(MainMenu.Items[i].Items[j].Items[k].Items[l].Items[m].caption,'&');
              LstComPere.Value := FormatFloat('00',i+1)+FormatFloat('00',j+1)+FormatFloat('00',k+1)+FormatFloat('00',l+1);
              LstCom.Post;
              Etat:=PeutEntrerMenu(Util,EnleverLettre(MainMenu.Items[i].Items[j].Items[k].Items[l].Items[m].caption,'&'),false);
              if (Util=MdpProg)then
                Etat:=2;
              case Etat of
                 0:begin
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Items[m].Enabled:=false;
                  end;
                1:begin
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Items[m].Enabled:=True;
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Items[m].Checked:=false;
                  end;
                2:begin
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Items[m].Enabled:=True;
                    MainMenu.Items[i].Items[j].Items[k].Items[l].Items[m].Checked:=True;
                  end;
              end;
            except
              On EDataBaseError do LstCom.Cancel;
              else;
            end;
          end;
        end;
      end;
    end;
  end;
var l :integer;
begin
  LstCom.Close;
  LstCom.SQL.Clear ;
  LstCom.SQL.Add('DELETE  FROM LstCom');
  LstCom.ExecSQL;
  LstCom.SQL.Clear ;
  LstCom.SQL.Add('select * FROM LstCom');
  LstCom.Open;
  for l:=1 to nb do EntrerUnMainMenu(TabMenu[l]);
end;



function TDObjet.PeutEntrerMenu(CodeUt,commande:string;msg:boolean):Integer;
begin
  PeutEntrer.close;
  PeutEntrer.parameters[0].Value:=CodeUt;
  PeutEntrer.parameters[1].Value:=Commande;
  PeutEntrer.open;
  if PeutEntrer.recordCount>0 then
  begin
    if PeutEntrerLectureSeul.Value <> 0 then
      result:=1
    else
      result:=2
  end
  else
  begin
    Result:=0;
    if msg then
      MessageDlg('La commande :'+commande+' n''est pas autorisée à l''utilisateur '+CodeUt,
    mtError,[mbok],0);
  end;
end;

procedure TDObjet.CreerArbre(TV:TTreeView;Arbre:string);
var nod:TTreeNode;
begin
  qArbre.Close;
  qArbre.SQL.Clear;
  qArbre.SQL.Add('select * from '+Arbre);
  qArbre.SQL.Add('where (Pere=''0'')');
  qArbre.Open;
  qArbre.First;
  TV.Items.Clear;
  while not qArbre.Eof do
  begin
    nod := TV.Items.Add(nil, qArbre.Fields[1].Value);
    nod.StateIndex:=StrToInt(qArbre.Fields[0].Value);
          nod.ImageIndex:=0;
          nod.SelectedIndex:=1;
    CreerSampana(Arbre,qArbre.Fields[0].Value,1,nod,TV);
    qArbre.Next;
  end;
end;

procedure TDObjet.CreerSampana(Arbre,Pere:string;Profondeur:integer;
                     Noeud:TTReeNode;TV:TTreeView);
var selSampana:TADOQuery;
  zanany:TTreeNode;
  Index:integer;
begin
  Index:=0;
  selSampana:=TADOQuery.Create(DObjet);
  selSampana.Connection:=C_Utilisat;
  selSampana.SQL.Add('select * from '+Arbre);
  selSampana.SQL.Add('where (Pere='''+Pere+''')');
  selSampana.SQL.Add('order by Numero');
  selSampana.Open;
  profondeur:=profondeur+1;
  while not selSampana.Eof do
  begin
    zanany:=TV.Items.AddChild(Noeud,selSampana.Fields[1].Value);
    try
      Index:=StrToInt(selSampana.Fields[0].Value);
    except
      On EConvertError do
        Index:=-1;
    end;
    zanany.StateIndex:=Index;
    case profondeur of
      1:begin
          zanany.ImageIndex:=0;
          zanany.SelectedIndex:=1;
        end;
      2:begin
          zanany.ImageIndex:=2;
          zanany.SelectedIndex:=3;
        end;
       3:begin
          zanany.ImageIndex:=4;
          zanany.SelectedIndex:=5;
        end;
      4:begin
          zanany.ImageIndex:=6;
          zanany.SelectedIndex:=7;
        end;
    end;
    CreerSampana(Arbre,selSampana.Fields[0].Value,profondeur,Zanany,TV);
    selSampana.Next;
  end ;
  selSampana.Close;
  selSampana.Free;
end;

procedure TDObjet.ChangerDossierBase(base:string);
begin

end;

procedure TDObjet.SourceAccesDataChange(Sender: TObject; Field: TField);
begin
  AccesCommande.DisplayLabel:='Liste des commandes accordées à '+UtilisatCode.Value;
end;


procedure TDObjet.DataModuleCreate(Sender: TObject);
//var ConnecStr:string;
  // ini:TIniFile;
begin
  //ini:=TIniFile.Create(extractFilePath(application.ExeName)+'PEpicerie.ini');
  //ConnecStr:= 'Provider='+ini.ReadString('parameters','provider','');
  //ConnecStr:= ConnecStr+'; Data Source='+ini.ReadString('parameters','Utilisat','');
  //ini.Free;
  //DObjet.C_Utilisat.Close;
  //DObjet.C_Utilisat.ConnectionString := ConnecStr;
  //DObjet.C_Utilisat.Open;
end;

procedure TDObjet.tFonctionAfterInsert(DataSet: TDataSet);
begin
  tFonctionId.Value := autoincrementer('fonction','id');
end;

end.
