<%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>


<% if(request.getAttribute(Attribute.Request.MESSAGE) != null) { %>
<HR>
<FONT COLOR='RED'>
<%=(String)request.getAttribute(Attribute.Request.MESSAGE) %>
</FONT>
<HR>

<% } %>

