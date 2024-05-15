unit EtatConsole;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls;

type
  TFEtatConsole = class(TForm)
    QuickRep6: TQuickRep;
    QRBand27: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape165: TQRShape;
    QRShape166: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape167: TQRShape;
    QRShape169: TQRShape;
    QRBand28: TQRBand;
    QRLabel52: TQRLabel;
    QRGroup5: TQRGroup;
    QRLabel20: TQRLabel;
    QRExpr44: TQRExpr;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    QRShape16: TQRShape;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRShape17: TQRShape;
    QRExpr17: TQRExpr;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRExpr47: TQRExpr;
    QRGroup1: TQRGroup;
    QRExpr27: TQRExpr;
    QRBand5: TQRBand;
    QRLabel15: TQRLabel;
    QRExpr48: TQRExpr;
    QRExpr1: TQRExpr;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRShape15: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel8: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel5: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape32: TQRShape;
    QRBand2: TQRBand;
    Total: TQRLabel;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel122: TQRLabel;
    QRSysData5: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QuickRep1: TQuickRep;
    QRBand6: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRShape43: TQRShape;
    QRLabel50: TQRLabel;
    QRBand7: TQRBand;
    QRLabel51: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel53: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRGroup2: TQRGroup;
    QRLabel56: TQRLabel;
    QRExpr51: TQRExpr;
    QRLabel57: TQRLabel;
    QRBand8: TQRBand;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr57: TQRExpr;
    QRExpr58: TQRExpr;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRBand9: TQRBand;
    QRLabel58: TQRLabel;
    QRExpr62: TQRExpr;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRExpr63: TQRExpr;
    QRExpr64: TQRExpr;
    QRExpr65: TQRExpr;
    QRExpr66: TQRExpr;
    QRExpr67: TQRExpr;
    QRExpr68: TQRExpr;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRGroup3: TQRGroup;
    QRExpr69: TQRExpr;
    QRLabel61: TQRLabel;
    QRBand10: TQRBand;
    QRLabel62: TQRLabel;
    QRExpr70: TQRExpr;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRExpr71: TQRExpr;
    QRExpr72: TQRExpr;
    QRExpr73: TQRExpr;
    QRExpr74: TQRExpr;
    QRExpr75: TQRExpr;
    QRExpr76: TQRExpr;
    QRBand11: TQRBand;
    QRLabel65: TQRLabel;
    QRExpr77: TQRExpr;
    QRExpr78: TQRExpr;
    QRExpr79: TQRExpr;
    QRExpr80: TQRExpr;
    QRExpr81: TQRExpr;
    QRExpr82: TQRExpr;
    QRSysData3: TQRSysData;
    QRBand12: TQRBand;
    QRLabel68: TQRLabel;
    QRExpr83: TQRExpr;
    QRExpr84: TQRExpr;
    QRExpr85: TQRExpr;
    QRExpr86: TQRExpr;
    QRExpr87: TQRExpr;
    QRExpr88: TQRExpr;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRShape77: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    QRExpr91: TQRExpr;
    QRExpr92: TQRExpr;
    QRExpr93: TQRExpr;
    QRExpr95: TQRExpr;
    QRExpr96: TQRExpr;
    QRExpr97: TQRExpr;
    QRExpr98: TQRExpr;
    QRExpr99: TQRExpr;
    QRExpr100: TQRExpr;
    QuickRep2: TQuickRep;
    QRBand13: TQRBand;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel84: TQRLabel;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel87: TQRLabel;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRExpr101: TQRExpr;
    QRExpr102: TQRExpr;
    QRExpr103: TQRExpr;
    QRExpr104: TQRExpr;
    QRExpr105: TQRExpr;
    QRExpr106: TQRExpr;
    QRShape97: TQRShape;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRExpr107: TQRExpr;
    QRExpr108: TQRExpr;
    QRBand14: TQRBand;
    QRLabel94: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel95: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRGroup4: TQRGroup;
    QRLabel98: TQRLabel;
    QRExpr109: TQRExpr;
    QRLabel99: TQRLabel;
    QRBand15: TQRBand;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRExpr110: TQRExpr;
    QRExpr111: TQRExpr;
    QRExpr112: TQRExpr;
    QRExpr113: TQRExpr;
    QRExpr114: TQRExpr;
    QRExpr115: TQRExpr;
    QRExpr116: TQRExpr;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRExpr117: TQRExpr;
    QRExpr118: TQRExpr;
    QRExpr119: TQRExpr;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRExpr120: TQRExpr;
    QRExpr121: TQRExpr;
    QRBand16: TQRBand;
    QRLabel100: TQRLabel;
    QRExpr122: TQRExpr;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRExpr123: TQRExpr;
    QRExpr124: TQRExpr;
    QRExpr125: TQRExpr;
    QRExpr126: TQRExpr;
    QRExpr127: TQRExpr;
    QRExpr128: TQRExpr;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRExpr129: TQRExpr;
    QRExpr130: TQRExpr;
    QRGroup6: TQRGroup;
    QRExpr131: TQRExpr;
    QRLabel103: TQRLabel;
    QRBand17: TQRBand;
    QRLabel104: TQRLabel;
    QRExpr132: TQRExpr;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRExpr133: TQRExpr;
    QRExpr134: TQRExpr;
    QRExpr135: TQRExpr;
    QRExpr136: TQRExpr;
    QRExpr137: TQRExpr;
    QRExpr138: TQRExpr;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRExpr139: TQRExpr;
    QRExpr140: TQRExpr;
    QRBand18: TQRBand;
    QRLabel107: TQRLabel;
    QRExpr141: TQRExpr;
    QRExpr142: TQRExpr;
    QRExpr143: TQRExpr;
    QRExpr144: TQRExpr;
    QRExpr145: TQRExpr;
    QRExpr146: TQRExpr;
    QRSysData6: TQRSysData;
    QRExpr147: TQRExpr;
    QRExpr148: TQRExpr;
    QRBand19: TQRBand;
    QRLabel110: TQRLabel;
    QRExpr149: TQRExpr;
    QRExpr150: TQRExpr;
    QRExpr151: TQRExpr;
    QRExpr152: TQRExpr;
    QRExpr153: TQRExpr;
    QRExpr154: TQRExpr;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRShape134: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRExpr155: TQRExpr;
    QRExpr156: TQRExpr;
    QRExpr157: TQRExpr;
    QRExpr158: TQRExpr;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRExpr159: TQRExpr;
    QRExpr160: TQRExpr;
    QRExpr161: TQRExpr;
    QRExpr162: TQRExpr;
    QRShape148: TQRShape;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRExpr163: TQRExpr;
    QRExpr164: TQRExpr;
    QRExpr165: TQRExpr;
    QRExpr166: TQRExpr;
    QRExpr167: TQRExpr;
    QRExpr168: TQRExpr;
    QRExpr169: TQRExpr;
    QRExpr170: TQRExpr;
    QRLabel101: TQRLabel;
    QRLabel86: TQRLabel;
    QRExpr171: TQRExpr;
    QRExpr172: TQRExpr;
    QRExpr175: TQRExpr;
    QRExpr176: TQRExpr;
    QRExpr177: TQRExpr;
    QRExpr178: TQRExpr;
    QRExpr187: TQRExpr;
    QRExpr188: TQRExpr;
    QRExpr173: TQRExpr;
    QRExpr174: TQRExpr;
    QRExpr61: TQRExpr;
    QRExpr35: TQRExpr;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape154: TQRShape;
    QRShape155: TQRShape;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRLabel83: TQRLabel;
    QRLabel92: TQRLabel;
    QRExpr191: TQRExpr;
    QRExpr192: TQRExpr;
    QRExpr193: TQRExpr;
    QRExpr194: TQRExpr;
    QRExpr195: TQRExpr;
    QRExpr196: TQRExpr;
    QRShape159: TQRShape;
    QRShape78: TQRShape;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRExpr189: TQRExpr;
    QRExpr190: TQRExpr;
    QRExpr197: TQRExpr;
    QRExpr198: TQRExpr;
    QRShape158: TQRShape;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRExpr199: TQRExpr;
    QRShape162: TQRShape;
    QRShape163: TQRShape;
    QRShape164: TQRShape;
    QRShape168: TQRShape;
    QRShape170: TQRShape;
    QRExpr201: TQRExpr;
    QRExpr202: TQRExpr;
    QRExpr203: TQRExpr;
    QRExpr204: TQRExpr;
    QRExpr205: TQRExpr;
    QRExpr206: TQRExpr;
    QRShape171: TQRShape;
    QRShape172: TQRShape;
    QRShape173: TQRShape;
    QRExpr207: TQRExpr;
    QRExpr208: TQRExpr;
    QRExpr209: TQRExpr;
    QRExpr210: TQRExpr;
    QRShape174: TQRShape;
    QRShape175: TQRShape;
    QRExpr211: TQRExpr;
    QRExpr212: TQRExpr;
    QRExpr213: TQRExpr;
    QRExpr214: TQRExpr;
    QRExpr215: TQRExpr;
    QRExpr216: TQRExpr;
    QRShape176: TQRShape;
    QRShape177: TQRShape;
    QRShape178: TQRShape;
    QRShape179: TQRShape;
    QRShape180: TQRShape;
    QRExpr217: TQRExpr;
    QRExpr218: TQRExpr;
    QRShape181: TQRShape;
    QRShape182: TQRShape;
    QRShape183: TQRShape;
    QRExpr219: TQRExpr;
    QRExpr220: TQRExpr;
    QRExpr221: TQRExpr;
    QRExpr222: TQRExpr;
    QRExpr223: TQRExpr;
    QRExpr224: TQRExpr;
    QRShape184: TQRShape;
    QRShape185: TQRShape;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel93: TQRLabel;
    QRExpr225: TQRExpr;
    QRExpr226: TQRExpr;
    QRShape186: TQRShape;
    QRShape187: TQRShape;
    QRShape188: TQRShape;
    QRExpr227: TQRExpr;
    QRExpr228: TQRExpr;
    QRShape189: TQRShape;
    QRShape190: TQRShape;
    QRExpr229: TQRExpr;
    QRExpr230: TQRExpr;
    QRShape191: TQRShape;
    QRExpr231: TQRExpr;
    QRExpr232: TQRExpr;
    QRShape192: TQRShape;
    QRShape193: TQRShape;
    QRExpr233: TQRExpr;
    QRExpr234: TQRExpr;
    QRShape194: TQRShape;
    QRExpr235: TQRExpr;
    QRExpr236: TQRExpr;
    QRShape195: TQRShape;
    QRExpr237: TQRExpr;
    QRExpr238: TQRExpr;
    QRShape196: TQRShape;
    QRShape197: TQRShape;
    QRShape198: TQRShape;
    QRShape199: TQRShape;
    QRExpr89: TQRExpr;
    QRExpr200: TQRExpr;
    QRExpr90: TQRExpr;
    QRExpr182: TQRExpr;
    QRExpr183: TQRExpr;
    QRExpr184: TQRExpr;
    QRExpr185: TQRExpr;
    QRExpr186: TQRExpr;
    QRExpr179: TQRExpr;
    QRExpr180: TQRExpr;
    QRExpr181: TQRExpr;
    QRExpr94: TQRExpr;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep6BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr47Print(sender: TObject; var Value: String);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr9Print(sender: TObject; var Value: String);
    procedure QRExpr24Print(sender: TObject; var Value: String);
    procedure QRExpr25Print(sender: TObject; var Value: String);
    procedure QRExpr26Print(sender: TObject; var Value: String);
    procedure QRExpr28Print(sender: TObject; var Value: String);
    procedure QRExpr29Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QuickRep6EndPage(Sender: TQuickRep);
    procedure QRExpr8Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRExpr30Print(sender: TObject; var Value: String);
    procedure QRExpr31Print(sender: TObject; var Value: String);
    procedure QRExpr32Print(sender: TObject; var Value: String);
    procedure QRExpr33Print(sender: TObject; var Value: String);
    procedure QRExpr34Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRBand27BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRExpr44Print(sender: TObject; var Value: String);
    procedure QRExpr27Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr42Print(sender: TObject; var Value: String);
    procedure QRExpr43Print(sender: TObject; var Value: String);
    procedure QRExpr45Print(sender: TObject; var Value: String);
    procedure QRExpr46Print(sender: TObject; var Value: String);
    procedure QRExpr49Print(sender: TObject; var Value: String);
    procedure QRExpr50Print(sender: TObject; var Value: String);
    procedure QRExpr100Print(sender: TObject; var Value: String);
    procedure QRExpr99Print(sender: TObject; var Value: String);
    procedure QRLabel74Print(sender: TObject; var Value: String);
    procedure QRLabel75Print(sender: TObject; var Value: String);
    procedure QRExpr166Print(sender: TObject; var Value: String);
    procedure QRExpr123Print(sender: TObject; var Value: String);
    procedure QRExpr134Print(sender: TObject; var Value: String);
    procedure QRExpr135Print(sender: TObject; var Value: String);
    procedure QRExpr136Print(sender: TObject; var Value: String);
    procedure QRExpr137Print(sender: TObject; var Value: String);
    procedure QRExpr138Print(sender: TObject; var Value: String);
    procedure QRExpr139Print(sender: TObject; var Value: String);
    procedure QRExpr140Print(sender: TObject; var Value: String);
    procedure QRExpr159Print(sender: TObject; var Value: String);
    procedure QRExpr160Print(sender: TObject; var Value: String);
    procedure QRExpr165Print(sender: TObject; var Value: String);
    procedure QRExpr71Print(sender: TObject; var Value: String);
    procedure QRExpr72Print(sender: TObject; var Value: String);
    procedure QRExpr73Print(sender: TObject; var Value: String);
    procedure QRExpr74Print(sender: TObject; var Value: String);
    procedure QRExpr75Print(sender: TObject; var Value: String);
    procedure QRExpr76Print(sender: TObject; var Value: String);
    procedure QRExpr91Print(sender: TObject; var Value: String);
    procedure QRExpr92Print(sender: TObject; var Value: String);
    procedure QRExpr183Print(sender: TObject; var Value: String);
    procedure QRExpr179Print(sender: TObject; var Value: String);
    procedure QRExpr109Print(sender: TObject; var Value: String);
    procedure QRExpr131Print(sender: TObject; var Value: String);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel55Print(sender: TObject; var Value: String);
    procedure QRLabel97Print(sender: TObject; var Value: String);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Déclarations privées }
    TotDGroupe,TotCGroupe,TotDClasse,TotCClasse:Real;
    voalohany,Farany:boolean;
    TotDebit,TotCredit:real;
  public
    { Déclarations publiques }
  end;

var
  FEtatConsole: TFEtatConsole;

implementation

uses DaCommun, USQL, Daspecia;

{$R *.DFM}

procedure TFEtatConsole.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Special.Console0.edit;
  Special.Console0Debit.Value:= Special.Console0DebitSte1.Value+
                               Special.Console0DebitSte2.Value+
                               Special.Console0DebitSte3.Value;
  Special.Console0Credit.Value:= Special.Console0CreditSte1.Value+
                               Special.Console0CreditSte2.Value+
                               Special.Console0CreditSte3.Value;
  Special.Console0.Post;
  TotDebit:=TotDebit+Special.Console0Debit.Value;
  TotCredit:=TotCredit+Special.Console0Credit.Value;

  TotDGroupe:=TotDGroupe+Special.Console0Debit.Value;
  TotCGroupe:=TotCGroupe+Special.Console0Credit.Value;
  if (Special.Console0Debit.Value=0)and(Special.Console0Credit.Value=0)then QRBand1.Height:=0
  else QRBand1.Height:=22;
end;

procedure TFEtatConsole.QuickRep6BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var isa:integer;
begin
  farany:=false;
  voalohany:=true;

  TotDebit:=0;
  TotCredit:=0;
  TotDGroupe:=0;
  TotCGroupe:=0;
  TotDClasse:=0;
  TotCClasse:=0;
  Commun.Consolide.First;
  for isa:=1 to 3 do
  begin
    case isa of
      1:QRLabel38.Caption:=Commun.ConsolideRS.Value;
      2:QRLabel34.Caption:=Commun.ConsolideRS.Value;
      3:QRLabel40.Caption:=Commun.ConsolideRS.Value;
    end;
    Commun.Consolide.Next;
  end;
end;

procedure TFEtatConsole.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel1.Caption:=FormatFloat('#,##0',TotDGroupe);
  QRLabel2.Caption:=FormatFloat('#,##0',TotCGroupe);
  TotDClasse:=TotDClasse+TotDGroupe;
  TotCClasse:=TotCClasse+TotCGroupe;
  TotDGroupe:=0;
  TotCGroupe:=0;
end;

procedure TFEtatConsole.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:=FormatFloat('#,##0',TotDClasse);
  QRLabel4.Caption:=FormatFloat('#,##0',TotCClasse);

end;

procedure TFEtatConsole.QRExpr47Print(sender: TObject; var Value: String);
begin
  if value='7' then farany:=true;
end;

procedure TFEtatConsole.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel9.Caption:=FormatFloat('#,##0',TotDebit);
  QRLabel10.Caption:=FormatFloat('#,##0',TotCredit);
  if farany then
  BEGIN
    QRBand4.Height:=0;
    QRLabel8.Caption:='Total';
  end;
end;

procedure TFEtatConsole.QRExpr9Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr24Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr25Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr26Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr28Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr29Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRLabel6Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRLabel7Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QuickRep6EndPage(Sender: TQuickRep);
begin
  voalohany:=false;
end;

procedure TFEtatConsole.QRExpr8Print(sender: TObject; var Value: String);
begin
  IF farany then value:='';
end;

procedure TFEtatConsole.QRLabel8Print(sender: TObject; var Value: String);
begin
  IF farany then value:='';
end;

procedure TFEtatConsole.QRExpr30Print(sender: TObject; var Value: String);
begin
  IF farany then value:='';
end;

procedure TFEtatConsole.QRExpr31Print(sender: TObject; var Value: String);
begin
  IF farany then value:='';
end;

procedure TFEtatConsole.QRExpr32Print(sender: TObject; var Value: String);
begin
  IF farany then value:='';
end;

procedure TFEtatConsole.QRExpr33Print(sender: TObject; var Value: String);
begin
  IF farany then value:='';
end;

procedure TFEtatConsole.QRExpr34Print(sender: TObject; var Value: String);
begin
  IF farany then value:='';
end;

procedure TFEtatConsole.QRLabel9Print(sender: TObject; var Value: String);
begin
  IF farany then value:='';
end;

procedure TFEtatConsole.QRLabel10Print(sender: TObject; var Value: String);
begin
  IF farany then value:='';
end;

procedure TFEtatConsole.QRLabel5Print(sender: TObject; var Value: String);
begin
  IF voalohany then value:=' ';
end;


procedure TFEtatConsole.QRBand27BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:=FormatFloat('#,##0',TotDebit);
  QRLabel7.Caption:=FormatFloat('#,##0',TotCredit);
end;

procedure TFEtatConsole.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel12.Caption:=FormatFloat('#,##0',TotDebit);
  QRLabel13.Caption:=FormatFloat('#,##0',TotCredit);
end;







procedure TFEtatConsole.QRLabel14Print(sender: TObject; var Value: String);
begin
  Special.DtImprBal.open;
  Special.DtImprBal.last;
  Value:=Special.DtImprBalDaty.Value;
end;

procedure TFEtatConsole.QRExpr44Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.Open;
  QRLabel18.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatConsole.QRExpr27Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.Open;
  QRLabel19.Caption:=DASQL.SelNumCptIntitule.Value;
end;


procedure TFEtatConsole.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var isa:integer;
begin
  farany:=false;
  voalohany:=true;

  TotDebit:=0;
  TotCredit:=0;
  TotDGroupe:=0;
  TotCGroupe:=0;
  TotDClasse:=0;
  TotCClasse:=0;
  Commun.Consolide.First;
  for isa:=1 to 3 do
  begin
    case isa of
      1:QRLabel28.Caption:=Commun.ConsolideRS.Value;
      2:QRLabel24.Caption:=Commun.ConsolideRS.Value;
      3:QRLabel30.Caption:=Commun.ConsolideRS.Value;
      4:QRLabel46.Caption:=Commun.ConsolideRS.Value;
    end;
    Commun.Consolide.Next;
  end;
end;


procedure TFEtatConsole.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Special.Console0.edit;
  Special.Console0Debit.Value:= Special.Console0DebitSte1.Value+
                               Special.Console0DebitSte2.Value+
                               Special.Console0DebitSte3.Value+
                               Special.Console0DebitSte4.Value;
  Special.Console0Credit.Value:= Special.Console0CreditSte1.Value+
                               Special.Console0CreditSte2.Value+
                               Special.Console0CreditSte3.Value+
                               Special.Console0CreditSte4.Value;
  Special.Console0.Post;
  TotDebit:=TotDebit+Special.Console0Debit.Value;
  TotCredit:=TotCredit+Special.Console0Credit.Value;

  TotDGroupe:=TotDGroupe+Special.Console0Debit.Value;
  TotCGroupe:=TotCGroupe+Special.Console0Credit.Value;
  if (Special.Console0Debit.Value=0)and(Special.Console0Credit.Value=0)then QRBand8.Height:=0
  else QRBand8.Height:=22;
end;











procedure TFEtatConsole.QRExpr42Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr43Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr45Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr46Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr49Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr50Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr100Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr99Print(sender: TObject; var Value: String);
begin
 if voalohany then value:='';
end;

procedure TFEtatConsole.QRLabel74Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRLabel75Print(sender: TObject; var Value: String);
begin
  if voalohany then value:='';
end;

procedure TFEtatConsole.QRExpr166Print(sender: TObject; var Value: String);
begin
  QRExpr174.reset;
  QRExpr175.Reset;
end;

procedure TFEtatConsole.QRExpr123Print(sender: TObject; var Value: String);
begin
  QRExpr101.reset;
  QRExpr141.reset;
end;

procedure TFEtatConsole.QRExpr134Print(sender: TObject; var Value: String);
begin
  QRExpr102.reset;
  QRExpr142.reset;
end;

procedure TFEtatConsole.QRExpr135Print(sender: TObject; var Value: String);
begin
  QRExpr103.reset;
  QRExpr143.reset;
end;

procedure TFEtatConsole.QRExpr136Print(sender: TObject; var Value: String);
begin
QRExpr104.reset;
QRExpr144.reset;
end;

procedure TFEtatConsole.QRExpr137Print(sender: TObject; var Value: String);
begin
  QRExpr105.reset;
  QRExpr145.reset;
end;

procedure TFEtatConsole.QRExpr138Print(sender: TObject; var Value: String);
begin
  QRExpr106.reset;
  QRExpr146.reset;
end;

procedure TFEtatConsole.QRExpr139Print(sender: TObject; var Value: String);
begin
  QRExpr108.reset;
  QRExpr147.reset;
end;

procedure TFEtatConsole.QRExpr140Print(sender: TObject; var Value: String);
begin
  QRExpr107.reset;
  QRExpr148.reset;
end;

procedure TFEtatConsole.QRExpr159Print(sender: TObject; var Value: String);
begin
  QRExpr172.reset;
  QRExpr178.reset;
end;

procedure TFEtatConsole.QRExpr160Print(sender: TObject; var Value: String);
begin
  QRExpr171.reset;
  QRExpr177.reset;
end;

procedure TFEtatConsole.QRExpr165Print(sender: TObject; var Value: String);
begin
  QRExpr173.reset;
  QRExpr176.reset;
end;

procedure TFEtatConsole.QRExpr71Print(sender: TObject; var Value: String);
begin
  QRExpr42.reset;
  QRExpr77.reset;
end;

procedure TFEtatConsole.QRExpr72Print(sender: TObject; var Value: String);
begin
  QRExpr43.reset;
  QRExpr78.reset;
end;

procedure TFEtatConsole.QRExpr73Print(sender: TObject; var Value: String);
begin
  QRExpr45.reset;
  QRExpr79.reset;
end;

procedure TFEtatConsole.QRExpr74Print(sender: TObject; var Value: String);
begin
  QRExpr46.reset;
  QRExpr80.reset;
end;

procedure TFEtatConsole.QRExpr75Print(sender: TObject; var Value: String);
begin
  QRExpr49.reset;
  QRExpr81.reset;
end;

procedure TFEtatConsole.QRExpr76Print(sender: TObject; var Value: String);
begin
  QRExpr50.reset;
  QRExpr82.reset;
end;

procedure TFEtatConsole.QRExpr91Print(sender: TObject; var Value: String);
begin
  QRExpr100.reset;
  QRExpr95.reset;
end;

procedure TFEtatConsole.QRExpr92Print(sender: TObject; var Value: String);
begin
  QRExpr99.reset;
  QRExpr98.reset;
end;

procedure TFEtatConsole.QRExpr183Print(sender: TObject; var Value: String);
begin
  QRExpr187.reset;
  QRExpr186.reset;
end;

procedure TFEtatConsole.QRExpr179Print(sender: TObject; var Value: String);
begin
  QRExpr188.reset;
  QRExpr182.reset;
end;

procedure TFEtatConsole.QRExpr109Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.Open;
  QRLabel99.Caption:=DASQL.SelNumCptIntitule.Value;

end;

procedure TFEtatConsole.QRExpr131Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.Open;
  QRLabel103.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatConsole.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var isa:integer;
begin
  farany:=false;
  voalohany:=true;

  TotDebit:=0;
  TotCredit:=0;
  TotDGroupe:=0;
  TotCGroupe:=0;
  TotDClasse:=0;
  TotCClasse:=0;
  Commun.Consolide.First;
  for isa:=1 to 5 do
  begin
    case isa of
      1:QRLabel67.Caption:=Commun.ConsolideRS.Value;
      2:QRLabel60.Caption:=Commun.ConsolideRS.Value;
      3:QRLabel70.Caption:=Commun.ConsolideRS.Value;
      4:QRLabel101.Caption:=Commun.ConsolideRS.Value;
      5:QRLabel86.Caption:=Commun.ConsolideRS.Value;
    end;
    Commun.Consolide.Next;
  end;
end;

procedure TFEtatConsole.QRLabel55Print(sender: TObject; var Value: String);
begin
  Special.DtImprBal.open;
  Special.DtImprBal.last;
  Value:=Special.DtImprBalDaty.Value;
end;

procedure TFEtatConsole.QRLabel97Print(sender: TObject; var Value: String);
begin
  Special.DtImprBal.open;
  Special.DtImprBal.last;
  Value:=Special.DtImprBalDaty.Value;
end;

procedure TFEtatConsole.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Special.Console0.edit;
  Special.Console0Debit.Value:=  Special.Console0DebitSte1.Value+
                                Special.Console0DebitSte2.Value+
                                Special.Console0DebitSte3.Value+
                                Special.Console0DebitSte4.Value+
                                Special.Console0DebitSte5.Value;
  Special.Console0Credit.Value:= Special.Console0CreditSte1.Value+
                                Special.Console0CreditSte2.Value+
                                Special.Console0CreditSte3.Value+
                                Special.Console0CreditSte4.Value+
                                Special.Console0CreditSte5.Value;
  Special.Console0.Post;
  TotDebit:=TotDebit+Special.Console0Debit.Value;
  TotCredit:=TotCredit+Special.Console0Credit.Value;

  TotDGroupe:=TotDGroupe+Special.Console0Debit.Value;
  TotCGroupe:=TotCGroupe+Special.Console0Credit.Value;
  if (Special.Console0Debit.Value=0)and(Special.Console0Credit.Value=0)then QRBand15.Height:=0
  else QRBand15.Height:=22;

end;






















































end.
