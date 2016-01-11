<%@ page import="mx.ipn.upiicsa.sansonelexaminador.valueobject.UserValueObject"%>
<%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>


<%
	if (session.getAttribute(Attribute.Session.CURRENT_USER) != null) {
%>


<TABLE width="100%">
	<TR>
		<TD widht="10%" align="left">
		<FONT COLOR="blue"> 
			<%=((UserValueObject) session.getAttribute(Attribute.Session.CURRENT_USER)).getRole()%>
		</FONT></TD>
		<TD widht="80%" align="center">
		<FONT COLOR="blue"> 
			<%=((UserValueObject) session.getAttribute(Attribute.Session.CURRENT_USER)).getFullName()%>
		</FONT></TD>
		<TD widht="10%" align="right"><A HREF="logout"> Salir </A></TD>
	</TR>
</TABLE>

<%
	}
%>