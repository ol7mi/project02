<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Input Form</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
  </head>
  <style>
    * {
      box-sizing: border-box;
    }
    .container div {
      border: 1px solid black;
    }
    .container {
      width: 200px;
      height: 200px;
      margin: auto;
    }
    .container .box {
      display: flex;
      flex-direction: column;
      /* justify-content:; */
      align-items: center;
    }

    .container .box input,
    button {
      margin: 3px;
    }
  </style>

  <body>
    <div class="container">
      <form action="input.movies" method="get">
        <div class="box">
          <input type="text" placeholder="작성자" name="writer" />
          <input type="text" placeholder="내용" name="message" />
          <button type="submit" id="submit">제출</button>
          <button type="button" id="back">뒤로가기</button>
        </div>
      </form>
    </div>
    
    <script>
    		$("#back").on("click", function(){
    			location.href = "/index.jsp";
    		})
    
    </script>
    
    
  </body>
</html>
