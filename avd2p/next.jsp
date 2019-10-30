<!DOCTYPE html>
<html>
   <head>
      <title>D Valut</title>
   </head>
   <body>
     <%
     String paper = (String)request.getParameter("testName");
   //  int qsnLimit = (Integer)request.getParameter("qsnNum");
     //  System.out.println(qsnLimit);
     
     String given_ans = request.getParameter("ans");
       int qsnLimit=(Integer) session.getAttribute("qsnNum");
      System.out.println(qsnLimit);
   
     String correct_ans = (String) session.getAttribute("cans");
     int question_passed = (Integer) session.getAttribute("question_passed");
     if(question_passed>qsnLimit-2){
       response.sendRedirect("http://localhost:8080/submit.jsp");
     }
     question_passed ++;
     session.setAttribute("question_passed", question_passed);

     if (given_ans.equals((String)session.getAttribute("cans"))){
       int value = (Integer) session.getAttribute("correct_answer");
       value ++;
       session.setAttribute("correct_answer", value);
     }
     %>
     <script type="text/javascript">
       window.location.href = "http://localhost:8080/startTest.jsp?testName=<%=paper%>"
     </script>

   </body>
</html>
