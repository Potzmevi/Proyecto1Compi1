package codigo;
import Forma.ErrorLexico;
import java_cup.runtime.*;
import java.io.Reader;import java.sql.SQLOutput;
import java.util.ArrayList;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%unicode
%column
%public
D=[0-9]
SEPARADOR = \r|\n|\r\n
ESPACIO = {SEPARADOR} | [ \t\f]
StringSin="\""[^[ \r\t\b\f\n]["\""]]+"\""
String="\""[^["\""]]+"\""
Anio=[1-9]{D}{D}{D}
Mes=[0][1-9] | [1][0-2]
Dia=[0-2][1-9] | [3][0-1] |[1-2][0]
Fecha={Anio}"-"{Mes}"-"{Dia}
ID_CADENA = "\""("$"|"_"|"-")[^[ \r\t\b\f\n]["\""]]+"\""
CREAR_USUARIO="\""[ \r\t\b\f\n]*"CREAR_USUARIO"[ \r\t\b\f\n]*"\""
MODIFICAR_USUARIO="\""[ \r\t\b\f\n]*"MODIFICAR_USUARIO"[ \r\t\b\f\n]*"\""
ELIMINAR_USUARIO="\""[ \r\t\b\f\n]*"ELIMINAR_USUARIO"[ \r\t\b\f\n]*"\""
LOGIN_USUARIO="\""[ \r\t\b\f\n]*"LOGIN_USUARIO"[ \r\t\b\f\n]*"\""
NUEVO_FORMULARIO="\""[ \r\t\b\f\n]*"NUEVO_FORMULARIO"[ \r\t\b\f\n]*"\""
ELIMINAR_FORMULARIO="\""[ \r\t\b\f\n]*"ELIMINAR_FORMULARIO"[ \r\t\b\f\n]*"\""
MODIFICAR_FORMULARIO="\""[ \r\t\b\f\n]*"MODIFICAR_FORMULARIO"[ \r\t\b\f\n]*"\""
AGREGAR_COMPONENTE="\""[ \r\t\b\f\n]*"AGREGAR_COMPONENTE"[ \r\t\b\f\n]*"\""
MODIFICAR_COMPONENTE= "\""[ \r\t\b\f\n]*"MODIFICAR_COMPONENTE"[ \r\t\b\f\n]*"\""
ELIMINAR_COMPONENTE="\""[ \r\t\b\f\n]*"ELIMINAR_COMPONENTE"[ \r\t\b\f\n]*"\""
CONSULTAR_DATOS="\""[ \r\t\b\f\n]*"CONSULTAR_DATOS"[ \r\t\b\f\n]*"\""
USUARIO="\""[ \r\t\b\f\n]*"USUARIO"[ \r\t\b\f\n]*"\""
PASSWORD="\""[ \r\t\b\f\n]*"PASSWORD"[ \r\t\b\f\n]*"\""
USUARIO_ANTIGUO="\""[ \r\t\b\f\n]*"USUARIO_ANTIGUO"[ \r\t\b\f\n]*"\""
USUARIO_NUEVO="\""[ \r\t\b\f\n]*"USUARIO_NUEVO"[ \r\t\b\f\n]*"\""
NUEVO_PASSWORD="\""[ \r\t\b\f\n]*"NUEVO_PASSWORD"[ \r\t\b\f\n]*"\""
ID="\""[ \r\t\b\f\n]*"ID"[ \r\t\b\f\n]*"\""
TITULO="\""[ \r\t\b\f\n]*"TITULO"[ \r\t\b\f\n]*"\""
NOMBRE="\""[ \r\t\b\f\n]*"NOMBRE"[ \r\t\b\f\n]*"\""
TEMA="\""[ \r\t\b\f\n]*"TEMA"[ \r\t\b\f\n]*"\""
CLASE="\""[ \r\t\b\f\n]*"CLASE"[ \r\t\b\f\n]*"\""
TEXTO_VISIBLE="\""[ \r\t\b\f\n]*"TEXTO_VISIBLE"[ \r\t\b\f\n]*"\""
ALINEACION="\""[ \r\t\b\f\n]*"ALINEACION"[ \r\t\b\f\n]*"\""
REQUERIDO="\""[ \r\t\b\f\n]*"REQUERIDO"[ \r\t\b\f\n]*"\""
OPCIONES="\""[ \r\t\b\f\n]*"OPCIONES"[ \r\t\b\f\n]*"\""
FILAS="\""[ \r\t\b\f\n]*"FILAS"[ \r\t\b\f\n]*"\""
COLUMNAS="\""[ \r\t\b\f\n]*"COLUMNAS"[ \r\t\b\f\n]*"\""
URL="\""[ \r\t\b\f\n]*"URL"[ \r\t\b\f\n]*"\""
CONSULTAS="\""[ \r\t\b\f\n]*"CONSULTAS"[ \r\t\b\f\n]*"\""
FECHA_CREACION="\""[ \r\t\b\f\n]*"FECHA_CREACION"[ \r\t\b\f\n]*"\""
CAMPO_TEXTO="\""[ \r\t\b\f\n]*"CAMPO_TEXTO"[ \r\t\b\f\n]*"\""
AREA_TEXTO="\""[ \r\t\b\f\n]*"AREA_TEXTO"[ \r\t\b\f\n]*"\""
CHECKBOX="\""[ \r\t\b\f\n]*"CHECKBOX"[ \r\t\b\f\n]*"\""
RADIO="\""[ \r\t\b\f\n]*"RADIO"[ \r\t\b\f\n]*"\""
FICHERO="\""[ \r\t\b\f\n]*"FICHERO"[ \r\t\b\f\n]*"\""
IMAGEN="\""[ \r\t\b\f\n]*"IMAGEN"[ \r\t\b\f\n]*"\""
COMBO="\""[ \r\t\b\f\n]*"COMBO"[ \r\t\b\f\n]*"\""
BOTON="\""[ \r\t\b\f\n]*"BOTON"[ \r\t\b\f\n]*"\""
TIPOALINEACION="\""[ \r\t\b\f\n]*"CENTRO"[ \r\t\b\f\n]*"\"" | "\""[ \r\t\b\f\n]*"IZQUIERDA"[ \r\t\b\f\n]*"\"" | "\""[ \r\t\b\f\n]*"DERECHA"[ \r\t\b\f\n]*"\"" | "\""[ \r\t\b\f\n]*"JUSTIFICAR"[ \r\t\b\f\n]*"\""
TIPOTEMA="\""[ \r\t\b\f\n]*"Dark"[ \r\t\b\f\n]*"\"" | "\""[ \r\t\b\f\n]*"Light"[ \r\t\b\f\n]*"\""
TIPOREQUERIDO="\""[ \r\t\b\f\n]*"SI"[ \r\t\b\f\n]*"\"" | "\""[ \r\t\b\f\n]*"NO"[ \r\t\b\f\n]*"\""
PARAMETROS_COMPONENTE="\""[ \r\t\b\f\n]*"PARAMETROS_COMPONENTE"[ \r\t\b\f\n]*"\"" 
PARAMETROS_FORMULARIO="\""[ \r\t\b\f\n]*"PARAMETROS_FORMULARIO"[ \r\t\b\f\n]*"\"" 
CREDENCIALES_USUARIO="\""[ \r\t\b\f\n]*"CREDENCIALES_USUARIO"[ \r\t\b\f\n]*"\"" 
%{
private ArrayList<ErrorLexico> errorsLexList=new  ArrayList<ErrorLexico>();
  private Symbol symbol(int type, String lexema) {
        return new Symbol(type, new Token(lexema, yyline + 1, yycolumn + 1));
      }

      public ArrayList<ErrorLexico> getErrorsLexList(){
                  return errorsLexList
                  ;
              }
%}
%%

/* Espacios en blanco */
{ESPACIO} {/*Ignore*/}

/* String sin espacios */
{ID_CADENA} {return  symbol(sym.IDCadena, yytext());}

/* Simbolo menor que */
( "<" ) {return  symbol(sym.MenorQue, yytext());}

/* Simbolo mayor que */
( ">" ) {return  symbol(sym.MayorQue, yytext());}

/* Simbolo : */
( ":" ) {return  symbol(sym.DosPuntos, yytext());}

/* Parentesis de apertura */
( "(" ) {return  symbol(sym.Parentesis_a, yytext());}

/* Parentesis de cierre */
( ")" ) {return  symbol(sym.Parentesis_c, yytext());}

/* Llave de apertura */
( "{" ) {return  symbol(sym.Llave_a, yytext());}

/* Llave de cierre */
( "}" ) {return  symbol(sym.Llave_c, yytext());}

/* Corchete de apertura */
( "[" ) {return  symbol(sym.Corchete_a, yytext());}

/* Corchete de cierre */
( "]" ) {return  symbol(sym.Corchete_c, yytext());}

/* Coma */
( "," ) {return symbol(sym.Coma,  yytext());}

/* Signo de exclamacion */
( "!" ) {return symbol(sym.Exclamacion,  yytext());}

/* Palabra reservada ini_solicitud */
( [Ii][Nn][Ii][_][Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd]) {return  symbol(sym.IniciarSolicitud, yytext());}

/* Palabra reservada fin_solicitud */
( [Ff][Ii][Nn][_][Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd] ) {return  symbol(sym.FinSolicitud, yytext());}

/* Palabra reservada ini_solicitudes */
( [Ii][Nn][Ii][_][Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd][Ee][Ss]) {return  symbol(sym.IniciarSolicitudes, yytext());}

/* Palabra reservada fin_solicitudes */
( [Ff][Ii][Nn][_][Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd][Ee][Ss]) {return  symbol(sym.FinSolicitudes, yytext());}

/* Palabra reservada CREAR_USUARIO */
{ CREAR_USUARIO } {return  symbol(sym.CrearUsuario, yytext());}

/* Palabra reservada MODIFICAR_USUARIO */
{ MODIFICAR_USUARIO } {return  symbol(sym.ModificarUsuario, yytext());}

/* Palabra reservada ELIMINAR_USUARIO */
{ ELIMINAR_USUARIO } {return  symbol(sym.EliminarUsuario, yytext());}

/* Palabra reservada LOGIN_USUARIO */
{ LOGIN_USUARIO } {return  symbol(sym.LoginUsuario, yytext());}

/* Palabra reservada NUEVO_FORMULARIO */
{ NUEVO_FORMULARIO } {return  symbol(sym.NuevoFormulario, yytext());}

/* Palabra reservada ELIMINAR_FORMULARIO */
{ ELIMINAR_FORMULARIO } {return  symbol(sym.EliminarFormulario, yytext());}

/* Palabra reservada MODIFICAR_FORMULARIO */
{ MODIFICAR_FORMULARIO } {return  symbol(sym.ModificarFormulario, yytext());}

/* Palabra reservada AGREGAR_COMPONENTE */
{ AGREGAR_COMPONENTE } {return  symbol(sym.AgregarComponente, yytext());}

/* Palabra reservada MODIFICAR_COMPONENTE */
{ MODIFICAR_COMPONENTE } {return  symbol(sym.ModificarComponente, yytext());}

/* Palabra reservada ELIMINAR_COMPONENTE */
{ ELIMINAR_COMPONENTE } {return  symbol(sym.EliminarComponente, yytext());}

/* Palabra reservada CONSULTAR_DATOS */
{ CONSULTAR_DATOS } {return  symbol(sym.ConsultarDatos, yytext());}

/* Palabra reservada USUARIO */
{ USUARIO } {return  symbol(sym.Usuario, yytext());}

/* Palabra reservada PASSWORD */
{ PASSWORD } {return  symbol(sym.Password, yytext());}

/* Palabra reservada USUARIO_ANTIGUO */
{ USUARIO_ANTIGUO } {return  symbol(sym.UsuarioAntiguo, yytext());}

/* Palabra reservada USUARIO_NUEVO */
{ USUARIO_NUEVO } {return  symbol(sym.UsuarioNuevo, yytext());}

/* Palabra reservada NUEVO_PASSWORD */
{ NUEVO_PASSWORD } {return  symbol(sym.NuevoPassword, yytext());}

/* Palabra reservada ID */
{ ID } {return  symbol(sym.ID, yytext());}

/* Palabra reservada TITULO */
{ TITULO } {return  symbol(sym.Titulo, yytext());}

/* Palabra reservada NOMBRE */
{ NOMBRE } {return  symbol(sym.Nombre, yytext());}

/* Palabra reservada TEMA */
{ TEMA } {return  symbol(sym.Tema, yytext());}

/* Palabra reservada CLASE */
{ CLASE } {return  symbol(sym.Clase, yytext());}

/* Palabra reservada TEXTO_VISIBLE */
{ TEXTO_VISIBLE } {return  symbol(sym.TextoVisible, yytext());}

/* Palabra reservada ALINEACION */
{ ALINEACION } {return  symbol(sym.Alineacion, yytext());}

/* Palabra reservada REQUERIDO */
{ REQUERIDO } {return  symbol(sym.Requerido, yytext());}

/* Palabra reservada OPCIONES */
{ OPCIONES } {return  symbol(sym.Opciones, yytext());}

/* Palabra reservada Filas */
{ FILAS } {return  symbol(sym.Filas, yytext());}

/* Palabra reservada Columnas */
{ COLUMNAS } {return  symbol(sym.Columnas, yytext());}

/* Palabra reservada URL */
{ URL } {return  symbol(sym.URL, yytext());}

/* Palabra reservada CONSULTAS */
{ CONSULTAS } {return  symbol(sym.Consultas, yytext());}

/* Palabra reservada FECHA_CREACION */
{ FECHA_CREACION } {return  symbol(sym.FechaCreacion, yytext());}

/* Palabra reservada CAMPO_TEXTO */
{ CAMPO_TEXTO } {return  symbol(sym.CampoTexto, yytext());}

/* Palabra reservada AREA_TEXTO */
{ AREA_TEXTO } {return  symbol(sym.AreaTexto, yytext());}

/* Palabra reservada CHECKBOX */
{ CHECKBOX } {return  symbol(sym.Checkbox, yytext());}

/* Palabra reservada RADIO */
{ RADIO } {return  symbol(sym.Radio, yytext());}

/* Palabra reservada FICHERO */
{ FICHERO } {return  symbol(sym.Fichero, yytext());}

/* Palabra reservada IMAGEN */
{ IMAGEN } {return  symbol(sym.Imagen, yytext());}

/* Palabra reservada COMBO */
{ COMBO } {return  symbol(sym.Combo, yytext());}

/* Palabra reservada BOTON */
{ BOTON } {return  symbol(sym.Boton, yytext());}

/* PARAMETROS_COMPONENTE  */
{ PARAMETROS_COMPONENTE } {return  symbol(sym.ParametrosComponente, yytext());}

/* PARAMETROS_FORMULARIO  */
{ PARAMETROS_FORMULARIO } {return  symbol(sym.ParametrosFormulario, yytext());}

/* CREDENCIALES_USUARIO  */
{ CREDENCIALES_USUARIO } {return  symbol(sym.CredencialesUsuario, yytext());}

/* TIPOS DE ALINEACION */
{ TIPOALINEACION} {return  symbol(sym.TipoAlineacion, yytext());}

/* TIPOS DE TEMA */
{TIPOTEMA} {return  symbol(sym.TipoTema, yytext());}

/* TIPO DE REQUERIDO  */
{ TIPOREQUERIDO } {return  symbol(sym.TipoRequerido, yytext());}

/* Operador Igual */
( "=" ) {return  symbol(sym.Igual, yytext());}

/* Operador Suma */
( "+" ) {return  symbol(sym.Suma, yytext());}

/* Operador Resta */
( "-" ) {return  symbol(sym.Resta, yytext());}

/* Operador Multiplicacion */
( "*" ) {return  symbol(sym.Multiplicacion, yytext());}

/* Operador Division */
( "/" ) {return  symbol(sym.Division, yytext());}

/* Fecha */
{Fecha} {return  symbol(sym.Fecha, yytext());}

/* Numero */
{D} {return  symbol(sym.Numero, yytext());}

/* String sin espacios */
{StringSin} {return  symbol(sym.StringSin,  yytext());}

/* String con espacios */
{String} {return  symbol(sym.String,  yytext());}

/* Error de analisis */
 . {System.out.println(yytext());ErrorLexico error = new ErrorLexico(yytext(),yyline+1,yycolumn+1,0);
                errorsLexList.add(error);    return  symbol(sym.error,  yytext());
}