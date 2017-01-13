<%@ page contentType="text/html; charset=utf-8" %>
<%
String[] names=new String[4];
names[0]="양찬영";
names[1]="우성주";
names[2]="유동호";
names[3]="이진근";

int a=0;
int b=0;

String name =(String)request.getParameter("name");

for(String e : names){
  if(name.equals(e)){
    b=1;
    session.setAttribute("name",name);
    out.println((String)session.getAttribute("name"));
    break;
  }
}
if(b==0)
out.println("이름이 없습니다.");
%>
