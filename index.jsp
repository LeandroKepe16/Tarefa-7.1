<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 20:55:25
    Author     : leand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
        String context = request.getParameter("context");
        String name = request.getParameter ("name");
        String senha = request.getParameter ("senha");
        if (context!=null && name!=null && senha!=null){
            if(context.equals("session")){
            session.setAttribute("name", name);
            session.setAttribute("senha", senha);
    }
    }
        double sessionMega = 1;        
        if(session.getAttribute("mega")!=null){
        sessionMega = (Double)session.getAttribute("mega");
        session.setAttribute("mega", sessionMega);
    }
        session.setAttribute("mega", sessionMega);
        String sessionName = (String)session.getAttribute("name");
        String sessionSenha = (String)session.getAttribute("senha");
        
        int n=6;
       
        
if (request.getParameter("n")==null){
   
}else{
        try{
        n= Integer.parseInt (request.getParameter ("n"));
        
        }catch (Exception e) {
        
}
        }
        
    
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Índce</h2>
        <form>
            <select name="context">
                <option value="session">Sessão</option> 
            </select>
      Nome: <input type="text" name="name"/>
     Senha: <input type="text" name="senha"/>
            <input type="number" name="n" value="6" />
            <input  type="submit"  value="Gerar jogo da Mega Sena"/>
            </form>

    <%if(sessionName!=null){%>
    <hr/><!-- comment -->
    <h2>Sessão</h2>
    <div> Nome: <%= sessionName %></div><!-- comment -->
    <div> Senha: <%= sessionSenha %></div><!-- comment -->
    
    <%for(int i=1; i<=n; i++){%>
    
    <div><%= sessionMega*Math.floor(Math.random()*60-i) %></div>
    <%}%>

    <hr/>
        <%}%>    
    </body>
</html>
