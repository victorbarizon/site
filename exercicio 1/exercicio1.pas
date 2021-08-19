unit exercicio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    btnCalcular: TButton;
    lblSalario: TLabel;
    edtSalario: TEdit;
    procedure btnCalcularClick(Sender: TObject);
  private
    const
      ALIQUOTA_INSS = 0.11;
    procedure ValidarCampos();
    function CalcularSalarioLiquido(pSalarioBruto:Real) : Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  lSalarioLiquido: Real;

begin
  ValidarCampos();
  lSalarioLiquido := CalcularSalarioLiquido(StrToFloat(edtSalario.Text));
  ShowMessage('O Salário Liquído é ' + FloatToStr(lSalarioLiquido) );
end;

function TfrmPrincipal.CalcularSalarioLiquido(pSalarioBruto: Real): Real;
begin
  Result:= pSalarioBruto-(pSalarioBruto * ALIQUOTA_INSS);
end;

procedure TfrmPrincipal.ValidarCampos;
begin
  if edtSalario.Text='' then
  begin
    ShowMessage('Informe o salário');
    edtSalario.SetFocus;
    Abort;
  end;

end;

end.
