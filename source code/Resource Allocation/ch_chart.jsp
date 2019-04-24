<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%
String query="SELECT server,used from server";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/resource","com.mysql.jdbc.Driver","root","root");

dataset.executeQuery( query);
JFreeChart chart = ChartFactory .createBarChart3D("Total=500MB", "ResourceAllocation", "ServerUsage",dataset, PlotOrientation.VERTICAL, true, true, false);
                
try
{
ChartUtilities.saveChartAsJPEG(new File("C:/apache-tomcat-6.0.18/webapps/Resource Allocation/images/logotype.jpg"), chart, 600, 250);
response.sendRedirect("data1.jsp");
}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>

