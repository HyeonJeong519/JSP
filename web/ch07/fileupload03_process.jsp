<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String fileUploadPath = "/Users/hwanghyeonjeong/IdeaProjects/JSP_Test/web/upload";

    DiskFileUpload upload = new DiskFileUpload();

    List items = upload.parseRequest(request);

    Iterator params = items.iterator();

    while (params.hasNext()){
        FileItem fileItem = (FileItem) params.next();
        if(!fileItem.isFormField()){
            String fileName = fileItem.getName();
            fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
            File file = new File(fileUploadPath + "/"+fileName);
            fileItem.write(file);
        }
    }
%>
</body>
</html>
