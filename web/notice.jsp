<%-- 
    Document   : notice
    Created on : 11-Jun-2013, 16:01:49
    Author     : Ishan Dinisha <ishan@azbow.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page language="java" import="net.sf.jasperreports.engine.*,net.sf.jasperreports.engine.export.*" %>
        <%@ page import="java.sql.*,java.io.*" %>
        <%
            String filename = "notice.jrxml";
            String reporttype = "pdf";

             Class.forName("com.mysql.jdbc.Driver");
             Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nelus", "root", "");
            System.out.println("Connection Established");
            String path = application.getRealPath("/");
            System.out.println("PATH " + path);
            out.write("PATH :" + path+"/"+filename);

           JasperPrint jasperPrint = JasperFillManager.fillReport(path +"/"+ filename, null,conn);
            //JasperPrint jasperPrint = null;
            System.out.println("Report Created...");

            OutputStream ouputStream = response.getOutputStream();

            JRExporter exporter = null;

            if ("pdf".equalsIgnoreCase(reporttype)) {
                response.setContentType("application/pdf");
                exporter = new JRPdfExporter();
                exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, ouputStream);
            } else if ("rtf".equalsIgnoreCase(reporttype)) {
                response.setContentType("application/rtf");
                response.setHeader("Content-Disposition", "inline; filename=\"file.rtf\"");

                exporter = new JRRtfExporter();
                exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, ouputStream);
            } else if ("html".equalsIgnoreCase(reporttype)) {
                exporter = new JRHtmlExporter();
                exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, ouputStream);
            } else if ("xls".equalsIgnoreCase(reporttype)) {
                response.setContentType("application/xls");
                response.setHeader("Content-Disposition", "inline; filename=\"file.xls\"");

                exporter = new JRXlsExporter();
                exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, ouputStream);
            } else if ("csv".equalsIgnoreCase(reporttype)) {
                response.setContentType("application/csv");
                response.setHeader("Content-Disposition", "inline; filename=\"file.csv\"");

                exporter = new JRCsvExporter();
                exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, ouputStream);
            }

            try {
                exporter.exportReport();
            } catch (JRException e) {
                throw new ServletException(e);
            } finally {
                if (ouputStream != null) {
                    try {
                        ouputStream.close();
                    } catch (IOException ex) {
                    }
                }
            }
        %>
    </body>
</html>
