<%-- 
    Document   : registrarVoto
    Created on : Sep 16, 2015, 8:33:43 AM
    Author     : sadalsuud
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.TreeSet"%>
<%@page import="java.util.SortedSet"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.ufps.mundo.Eleccion"%>
<%@page import="co.edu.ufps.mundo.Candidato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar voto</title>
    </head>
    <body>
        <h1>Registrar voto</h1>
        <%
            List keys = new ArrayList(Eleccion.getCandidatos().keySet());
            Collections.sort(keys);
            Map<Integer, Candidato> candidatos = Eleccion.getCandidatos();

            for (Object c : keys) {
        %>
        <form action="registrarVoto" method="POST">
            <fieldset>
                <legend>Candidato # <%=candidatos.get((Integer) c).getNumero()%></legend>
                <p
                    <label><%=candidatos.get((Integer) c).getNombre()%></label><br>
                    <label>Partido: <%=candidatos.get((Integer) c).getPartido()%></label><br>
                    <input type="submit" value="Votar">
                    <input type="hidden" name="numero" value="<%=Eleccion.getCandidatos().get((Integer) c).getNumero()%>">
                </p>
            </fieldset>
        </form>
        <%}%>
        <a href="index.jsp">Regresar</a>
    </body>
</html>
