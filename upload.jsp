<%-- 
    Document   : upload
    Created on : Mar 14, 2013, 8:58:49 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.text.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
String contentType = request.getContentType();
System.out.println("Content type is :: " +contentType);
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();

byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}

String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
//out.print("FileName:" + saveFile.toString());
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
//out.print("FileName:" + saveFile.toString());
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
//out.print("FileName:" + saveFile.toString());

//out.print(dataBytes);

int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
//out.println(boundary);
int pos;
pos = file.indexOf("filename=\"");

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;


int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
saveFile = "C:\\Users\\madhuri\\Documents\\NetBeansProjects\\elearn\\web\\uploading\\" + saveFile;
FileOutputStream fileOut = new FileOutputStream(saveFile);


//fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

out.println("File was Uploaded Succesfuly.");

}
%>