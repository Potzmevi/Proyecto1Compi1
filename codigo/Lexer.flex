package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
D=[0-9]
SEPARADOR = \r|\n|\r\n
ESPACIO = {SEPARADOR} | [ \t\f]
StringSin="\""[^[ \r\t\b\f\n]["\""]]+"\""
String="\""[^["\""]]+"\""
Anio=[1-9]{D}{D}{D}
Mes=[0][1-9] | [1][0-2]
Dia=[0-2][1-9] | [3][0-1] |[1-2][0]
Fecha={Anio}"-"{Mes}"-"{Dia}
ID_CADENA = "\""("$"|"_"|"-")[^[ \r\t\b\f\n]]+"\""
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
    public String lexeme;
%}
%%

/* Espacios en blanco */
{ESPACIO} {/*Ignore*/}

/* String sin espacios */
{ID_CADENA} {lexeme=yytext(); return IDCADENA;}

/* Simbolo menor que */
( "<" ) {lexeme=yytext(); return MenorQue;}

/* Simbolo mayor que */
( ">" ) {lexeme=yytext(); return MayorQue;}

/* Simbolo : */
( ":" ) {lexeme=yytext(); return DosPuntos;}

/* Parentesis de apertura */
( "(" ) {lexeme=yytext(); return Parentesis_a;}

/* Parentesis de cierre */
( ")" ) {lexeme=yytext(); return Parentesis_c;}

/* Llave de apertura */
( "{" ) {lexeme=yytext(); return Llave_a;}

/* Llave de cierre */
( "}" ) {lexeme=yytext(); return Llave_c;}

/* Corchete de apertura */
( "[" ) {lexeme = yytext(); return Corchete_a;}

/* Corchete de cierre */
( "]" ) {lexeme = yytext(); return Corchete_c;}

/* Coma */
( "," ) {lexeme=yytext(); return Coma;}

/* Signo de exclamacion */
( "!" ) {lexeme=yytext(); return Exclamacion;}

/* Palabra reservada ini_solicitud */
( [Ii][Nn][Ii][_][Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd]) {lexeme=yytext(); return IniciarSolicitud;}

/* Palabra reservada fin_solicitud */
( [Ff][Ii][Nn][_][Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd] ) {lexeme=yytext(); return FinSolicitud;}

/* Palabra reservada ini_solicitudes */
( [Ii][Nn][Ii][_][Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd][Ee][Ss]) {lexeme=yytext(); return IniciarSolicitudes;}

/* Palabra reservada fin_solicitudes */
( [Ff][Ii][Nn][_][Ss][Oo][Ll][Ii][Cc][Ii][Tt][Uu][Dd][Ee][Ss]) {lexeme=yytext(); return FinSolicitudes;}

/* Palabra reservada CREAR_USUARIO */
{ CREAR_USUARIO } {lexeme=yytext(); return CrearUsuario;}

/* Palabra reservada MODIFICAR_USUARIO */
{ MODIFICAR_USUARIO } {lexeme=yytext(); return ModificarUsuario;}

/* Palabra reservada ELIMINAR_USUARIO */
{ ELIMINAR_USUARIO } {lexeme=yytext(); return EliminarUsuario;}

/* Palabra reservada LOGIN_USUARIO */
{ LOGIN_USUARIO } {lexeme=yytext(); return LoginUsuario;}

/* Palabra reservada NUEVO_FORMULARIO */
{ NUEVO_FORMULARIO } {lexeme=yytext(); return NuevoFormulario;}

/* Palabra reservada ELIMINAR_FORMULARIO */
 {ELIMINAR_FORMULARIO } {lexeme=yytext(); return EliminarFormulario;}

/* Palabra reservada MODIFICAR_FORMULARIO */
{ MODIFICAR_FORMULARIO } {lexeme=yytext(); return ModificarFormulario;}

/* Palabra reservada AGREGAR_COMPONENTE */
{ AGREGAR_COMPONENTE } {lexeme=yytext(); return AgregarComponente;}

/* Palabra reservada MODIFICAR_COMPONENTE */
{ MODIFICAR_COMPONENTE } {lexeme=yytext(); return ModificarComponente;}

/* Palabra reservada ELIMINAR_COMPONENTE */
{ ELIMINAR_COMPONENTE } {lexeme=yytext(); return EliminarComponente;}

/* Palabra reservada CONSULTAR_DATOS */
{ CONSULTAR_DATOS } {lexeme=yytext(); return ConsultarDatos;}

/* Palabra reservada USUARIO */
{ USUARIO } {lexeme=yytext(); return Usuario;}

/* Palabra reservada PASSWORD */
{ PASSWORD } {lexeme=yytext(); return Password;}

/* Palabra reservada USUARIO_ANTIGUO */
{ USUARIO_ANTIGUO } {lexeme=yytext(); return UsuarioAntiguo;}

/* Palabra reservada USUARIO_NUEVO */
{ USUARIO_NUEVO } {lexeme=yytext(); return UsuarioNuevo;}

/* Palabra reservada NUEVO_PASSWORD */
{ NUEVO_PASSWORD } {lexeme=yytext(); return NuevoPassword;}

/* Palabra reservada ID */
{ ID } {lexeme=yytext(); return ID;}

/* Palabra reservada TITULO */
{ TITULO } {lexeme=yytext(); return Titulo;}

/* Palabra reservada NOMBRE */
{ NOMBRE } {lexeme=yytext(); return Nombre;}

/* Palabra reservada TEMA */
{ TEMA } {lexeme=yytext(); return Tema;}

/* Palabra reservada CLASE */
{ CLASE } {lexeme=yytext(); return Clase;}

/* Palabra reservada TEXTO_VISIBLE */
{ TEXTO_VISIBLE } {lexeme=yytext(); return TextoVisible;}

/* Palabra reservada ALINEACION */
{ ALINEACION } {lexeme=yytext(); return Alineacion;}

/* Palabra reservada REQUERIDO */
{ REQUERIDO } {lexeme=yytext(); return Requerido;}

/* Palabra reservada OPCIONES */
{ OPCIONES } {lexeme=yytext(); return Opciones;}

/* Palabra reservada Filas */
{ FILAS } {lexeme=yytext(); return Filas;}

/* Palabra reservada Columnas */
{ COLUMNAS } {lexeme=yytext(); return Columnas;}

/* Palabra reservada URL */
{ URL } {lexeme=yytext(); return URL;}

/* Palabra reservada CONSULTAS */
{ CONSULTAS } {lexeme=yytext(); return Consultas;}

/* Palabra reservada FECHA_CREACION */
{ FECHA_CREACION } {lexeme=yytext(); return FechaCreacion;}

/* Palabra reservada CAMPO_TEXTO */
{ CAMPO_TEXTO } {lexeme=yytext(); return CampoTexto;}

/* Palabra reservada AREA_TEXTO */
{ AREA_TEXTO } {lexeme=yytext(); return AreaTexto;}

/* Palabra reservada CHECKBOX */
{ CHECKBOX } {lexeme=yytext(); return Checkbox;}

/* Palabra reservada RADIO */
{ RADIO } {lexeme=yytext(); return Radio;}

/* Palabra reservada FICHERO */
{ FICHERO } {lexeme=yytext(); return Fichero;}

/* Palabra reservada IMAGEN */
{ IMAGEN } {lexeme=yytext(); return Imagen;}

/* Palabra reservada COMBO */
{ COMBO } {lexeme=yytext(); return Combo;}

/* Palabra reservada BOTON */
{ BOTON } {lexeme=yytext(); return Boton;}

/* TIPOS DE ALINEACION */
{ TIPOALINEACION } {lexeme=yytext(); return TipoAlineacion;}

/* TIPOS DE TEMA */
{ TIPOTEMA } {lexeme=yytext(); return TipoTema;}

/* PARAMETROS_COMPONENTE  */
{ PARAMETROS_COMPONENTE } {lexeme=yytext(); return ParametrosComponente;}

/* PARAMETROS_FORMULARIO  */
{ PARAMETROS_FORMULARIO } {lexeme=yytext(); return ParametrosFormulario;}

/* CREDENCIALES_USUARIO  */
{ CREDENCIALES_USUARIO } {lexeme=yytext(); return CredencialesUsuario;}

/* TIPO DE REQUERIDO  */
{ TIPOREQUERIDO } {lexeme=yytext(); return TipoRequerido;}

/* Operador Igual */
( "=" ) {lexeme=yytext(); return Igual;}

/* Operador Suma */
( "+" ) {lexeme=yytext(); return Suma;}

/* Operador Resta */
( "-" ) {lexeme=yytext(); return Resta;}

/* Operador Multiplicacion */
( "*" ) {lexeme=yytext(); return Multiplicacion;}

/* Operador Division */
( "/" ) {lexeme=yytext(); return Division;}

/* Fecha */
{Fecha} {lexeme=yytext(); return Fecha;}

/* Numero */
{D} {lexeme=yytext(); return Numero;}

/* String sin espacios */
{StringSin} {lexeme=yytext(); return StingSin;}

/* String con espacios */
{String} {lexeme=yytext(); return String;}

/* Error de analisis */
 . {lexeme=yytext(); return ERROR;}