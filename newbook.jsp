<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>py.|全部商品</title>
  <link rel="stylesheet" type="text/css" href="../css/index_css.css">
  <link rel="stylesheet" type="text/css" href="../css/barside.css">
  <link rel="stylesheet" type="text/css" href="../css/index_contant.css">
  <link rel="stylesheet" type="text/css" href="../css/product_manu.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="shortcut icon" href="../img/favicon (1).ico" type="image/x-icon">

  <style>


  </style>

  <script>
    // 彈跳式清單
    function button_open() {
      document.getElementById("sidebar").style.display = "block";
    }

    function button_close() {
      document.getElementById("sidebar").style.display = "none";
    }

    //搜尋欄位
    var input = document.getElementById("myInput");
    input.addEventListener("keyup", function (event) {
      if (event.keyCode === 13) {
        event.preventDefault();
        document.getElementById("myBtn").click();
      }
    });
    //留言板
    function openSearch() {
      document.getElementById("myOverlay").style.display = "block";
    }

    function closeSearch() {
      document.getElementById("myOverlay").style.display = "none";
    }

    function closeForm() {
      document.getElementById("myOverlay").style.display = "none";
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
  </script>

</head>

<body>
  <header>
    <div class="head">
      <div class="head_icon"> <a href="../index.jsp"><img src="../img/shop-removebg-preview.png" alt="icon"></a> </div>


      <div class="head_slogn">py.</div>
      <div class="head_search">

        <form action="../manu/newbook.jsp" name="form2" method="get">
          <input type="text" class="text" id="keyword" name="keys" placeholder="找商品: 輸入關鍵字" style="width: 130px;">
          <button id="myBtn"><a href="newbook.jsp">搜尋</a></button>
        </form>

      </div>
      <div class="head_decoration">

        <div class="login">
          <div class="w3-container">
            <div class="w3-dropdown-hover">
              <button class="button">
                <a href=""> <img id="profile" src="../img/profile.png" width="55px"> </a>
              </button>
              <div class="w3-dropdown-content w3-bar-block w3-border">
                <a href="../login.jsp" class="w3-bar-item w3-button">Login</a>
                <a href="../register.jsp" class="w3-bar-item w3-button">Register</a>
                <a href="../member.jsp" class="w3-bar-item w3-button">My Info.</a>
              </div>
            </div>
          </div>
        </div>

        <div> <a href="../member/wish_list.jsp"><img src="../img/wishlist-12.png" alt="My wishlist"></a> </div>
        <div> <a href="../member/cart.jsp"><img src="../img/carttt.png" alt="My Cart"></a> </div>
      </div>
    </div>
  </header>

  <!-- 伸縮manu -->
  <section>
    <div class="side_button">
      <button onclick="button_open()">☰</button>
    </div>
    <!-- 留言板 -->


    <div class="manu" style="display:none" id="sidebar">
      <button onclick="button_close()" class="barline">Close &times;</button>
      <ul>
        <li><a href="../index.jsp">商店介紹</a></li>
        <li><a href="newbook.jsp">全部商品</a>
          <ul>
            <li><a href="top.jsp">熱銷排行</a></li>
            <li><a href="magazine.jsp">Magazine</a></li>
            <li><a href="ebook.jsp">電子書</a></li>
          </ul>
        </li>
        <li><a href="../store_detail/aboutus.jsp">認識我們</a></li>
        <li><a href="../store_detail/question.jsp">購物須知</a></li>
        <li><a href="../teams.jsp">BK.成員介紹</a></li>
        <li><a href="../board.jsp">留言板</a></li>
      </ul>
    </div>
  </section>

  <!-- 選單 -->
  <div class="newbook_wrap">
    <div class="newbook_contant">
      <a href="magazine.jsp"><img src="../img/manu/manu_magazine.jpg" alt=""></a>
      <h2>Magazine</h2>
    </div>
  </div>
  <div class="newbook_wrap">
    <div class="newbook_contant">
      <a href="ebook.jsp"><img src="../img/manu/manu_ebook.jpg" alt=""></a>
      <h2>Ebook</h2>
    </div>
  </div>

  <!-- footer -->
  
</body>

</html>