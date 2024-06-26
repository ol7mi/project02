<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<style>
      * {
        box-sizing: border-box;
      }

      .container div {
        border: 1px solid black;
      }

      .container {
        width: 500px;
        height: 150px;
        display: flex;
        flex-direction: column;
        margin: auto;
      }

      .container .index_box {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .container .bottom_boxes {
        flex: 3;
        display: flex;
      }

      .container .bottom_boxes .input_box,
      .output_box {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
      }
    </style>
    
</head>
<body> 
    

    <div class="wrap">
      <div class="container">
        <div class="index_box">Messages</div>
        <div class="bottom_boxes">
          <div class="input_box">
            <button id="input_btn" name="input_btn">toInput</button>
          </div>
          <div class="output_box">
              <button id="output_btn" name="output_btn">toOutput</button>
          </div>
        </div>
      </div>
    </div>

    <script>
      let input_btn = document.getElementById("input_btn");
      let output_btn = document.getElementById("output_btn");

      input_btn.onclick = function () {
        location.href = "/inputform.jsp";
      };
      output_btn.onclick = function () {
        location.href = "/output.movies";
      };
    </script>
  </body>
</html>
