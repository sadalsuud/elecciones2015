<%-- 
    Document   : informeResultados
    Created on : Sep 16, 2015, 8:39:16 AM
    Author     : sadalsuud
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="co.edu.ufps.mundo.Eleccion"%>
<%@page import="co.edu.ufps.mundo.Candidato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informe de resultados</title>
    </head>
    <body>
        <h1>Informe de resultados</h1>
        <table id="tbResultados" border="1">
            <thead>
                <tr>
                    <th>Candidato</th>
                    <th>Patido</th>
                    <th>Votos</th>
                    <th>Porcentaje</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List keys = new ArrayList(Eleccion.getCandidatos().keySet());
                    Collections.sort(keys);
                    Map<Integer, Candidato> candidatos = Eleccion.getCandidatos();

                    for (Object c : keys) {%>
                <tr>
                    <td><%=candidatos.get((Integer) c).getNombre()%></td>
                    <td><%=candidatos.get((Integer) c).getPartido()%></td>
                    <td class="votos"><%=candidatos.get((Integer) c).getVotos()%></td>
                    <td></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <a href="index.jsp">Regresar</a>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>
            jQuery(document).ready(function () {
                // calcular total y porcentajes
                var suma = 0;
                $('.votos').each(function () {
                    suma += parseInt($(this).text());
                });
                                
                var cant = 0;
                $('#tbResultados tr').each(function () {
                    num = $(this).find(":eq(2)").text();
                    var porcent = (parseInt(num) * 100) / parseInt(suma);
                    $(this).find("td:eq(3)").text(porcent.toFixed(2) + " %");
                });
            });
        </script>
    </body>

</html>
