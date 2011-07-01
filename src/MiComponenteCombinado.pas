//~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
//
// Unidad: MiComponenteCombinado.pas
//
// Prop�sito:
//    Un peque�o componente combinado de ejemplo.
//
//
// Autor:          Jos� Manuel Navarro (www.lawebdejm.com)
//
// Fecha:          01/04/2004
//
// Observaciones:  Unidad creada en Delphi 5 para la revista Todo Programaci�n, editada por
//                 Studio Press, S.L. (www.iberprensa.com)
//
// Copyright:      Este c�digo es de dominio p�blico y se puede utilizar y/o mejorar siempre que
//                 SE HAGA REFERENCIA AL AUTOR ORIGINAL, ya sea a trav�s de estos comentarios
//                 o de cualquier otro modo.
//
//~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
unit MiComponenteCombinado;

interface

uses Controls, StdCtrls, Classes;

type
	TMiComponenteCombinado = class(TCustomControl)
	private
		FLabel: TLabel;
		FBoton: TButton;
		FCampo: TEdit;

		procedure OnBotonClick(Sender: TObject);

	public
		constructor Create(AOwner: TComponent); override;

	end;


procedure Register;


implementation

uses Dialogs;


procedure Register;
begin
	RegisterComponents('La web de JM', [TMiComponenteCombinado]);
end;



constructor TMiComponenteCombinado.Create(AOwner: TComponent);
begin
	inherited;

	Width := 200;
	Height := 100;

	FLabel := TLabel.Create(Self);
	FLabel.SetBounds(0, 4, 30, 13);
	FLabel.Caption := 'Texto: ';
	FLabel.Visible := true;
	FLabel.Parent := Self;

	FBoton := TButton.Create(Self);
	FBoton.SetBounds(83, 27, 75, 20);
	FBoton.Caption := 'Haz clic!';
	FBoton.Visible := true;
	FBoton.Parent := Self;
	FBoton.OnClick := OnBotonClick;

	FCampo := TEdit.Create(Self);
	FCampo.SetBounds(37, 0, 121, 21);
	FCampo.Text := 'el valor';
	FCampo.Visible := true;
	FCampo.Parent := Self;
end;


procedure TMiComponenteCombinado.OnBotonClick(Sender: TObject);
begin
	ShowMessage('El valor del campo de edici�n es "' + FCampo.Text + '".');
end;


end.