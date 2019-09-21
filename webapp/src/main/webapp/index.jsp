&lt;%@page contentType="application/octet-stream"%>
&lt;%@page pageEncoding="UTF-8"%>
&lt;%@ page language="java" import="java.io.<em>,java.net.</em>,java.util.<em>,javax.servlet.</em> "%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
&lt;%
BufferedInputStream filein = null;
BufferedOutputStream outputs = null;
try {
File file = new File("./path/filename.csv");//specify the file path
byte b[] = new byte[2048];
int len = 0;
filein = new BufferedInputStream(new FileInputStream(file));
outputs = new BufferedOutputStream(response.getOutputStream());
response.setHeader("Content-Length", ""+file.length());
response.setContentType("application/force-download");
response.setHeader("Content-Disposition","attachment;filename=Backup.csv");
response.setHeader("Content-Transfer-Encoding", "binary");
while ((len = fin.read(b)) > 0) {
outputs.write(b, 0, len);
outputs.flush();
}
}
catch(Exception e){
out.println(e);
}
%>
</body>
</html>
