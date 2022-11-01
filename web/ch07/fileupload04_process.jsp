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
<body>
<%
  String path = "/Users/hwanghyeonjeong/IdeaProjects/JSP_Test/web/upload";

  DiskFileUpload upload = new DiskFileUpload();

  upload.setSizeMax(1000000);
  upload.setSizeThreshold(4096);
  upload.setRepositoryPath(path);

  List items = upload.parseRequest(request);
  Iterator params = items.iterator();

  while(params.hasNext()){
    FileItem item = (FileItem) params.next();
    if(item.isFormField()){
      String name= item.getFieldName();
      String value = item.getString("utf-8");
      out.println(name+" = " + value + "<br>");
    }else{
      String fileFieldName = item.getFieldName();
      String fileName = item.getName();
      String contentType = item.getContentType();

      fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
      long filesize = item.getSize();

      File file = new File(path + "/" + fileName);
      item.write(file);

      out.println("----------------------------------------------<br>");
      out.println("요청 파라미터 이름 : "+fileFieldName+"<br>");
      out.println("저장 파일 이름 : "+ fileName +"<br>");
      out.println("파일 콘텐츠 유형 : "+ contentType +"<br>");
      out.println("파일 크기 : "+ filesize);
    }
  }
%>
</body>
</html>
</body>
</html>
