unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    NetHTTPClient1: TNetHTTPClient;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses System.JSON;

(* --- JSON Prettyprint --- *)
function JSON_PrettyPrint(Value: String; indentation: Integer = 4): String; inline;
var
  JV: TJSONValue;
begin
  JV := nil;
  try
    try
      JV := TJSONObject.ParseJSONValue(Value);
      Result := JV.Format(indentation);
    except
      Result := '{"Error":"Wrong JSON Format"}';
    end;
  finally
    FreeAndNil(JV);
  end;
end;

// Some free Rest API's: https://www.freepublicapis.com/

procedure TForm1.Button1Click(Sender: TObject);
var
  HTTPResponse:  IHTTPResponse;
begin
  HTTPResponse := NetHTTPClient1.Get(Edit1.Text);
  Memo1.Text := HTTPResponse.ContentAsString(TEncoding.UTF8);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Memo1.Text := JSON_PrettyPrint(Memo1.Text);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Button1.Click;
  Button2.Click;
end;

end.
