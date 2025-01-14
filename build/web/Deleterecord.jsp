<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%   
 String tokenId=request.getParameter("tid");
Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Sonali@309");
PreparedStatement st=con.prepareStatement("delete from organ where idorgan=?");
st.setInt(1,Integer.parseInt(tokenId));
st.executeUpdate();
response.sendRedirect("vieworgans.jsp");
%>
