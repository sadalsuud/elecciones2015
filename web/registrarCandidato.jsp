<%-- 
    Document   : registrarCandidato
    Created on : Sep 16, 2015, 8:29:00 AM
    Author     : sadalsuud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar candidato</title>
    </head>
    <body>
        <h1>Registrar candidato</h1>
        <div>
            <form action="guardarCandidato" id="formRegistrarCandidato" method="POST">
                <fieldset>
                    <legend>Formulario registro</legend>
                    <p>
                        <label for="documento">Documento: </label>
                        <input type="number" id="docuemento" name="docuemento" required="" maxlength="10">
                        <label for="nombre">Nombre del candidato: </label>
                        <input type="text" id="nombre" name="nombre" required="" >
                    </p>
                    <p>
                        <label for="partido">Partido político: </label>
                        <input type="text" id="partido" name="partido" required="">
                        <label for="numero">Número tarjeton</label>
                        <input type="number" id="numero" name="numero" required="" min="1">
                    </p>
                    <p>
                        <input type="submit" value="Guardar">
                    </p>
                </fieldset>
            </form>
            <a href="index.jsp">Regresar</a>
        </div>
    </body>
</html>
