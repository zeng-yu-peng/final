<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BK.|Ebook </title>
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


      <div class="head_slogn">BK.</div>
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
    <div id="myOverlay" class="overlay"
      style="background: url(../img/back.jpeg); background-repeat: no-repeat; background-size: cover; z-index: 100000000000000000000000000000;">
      <span class="closebtn" onclick="closeSearch()" title="Close Overlay">×</span>
      <div class="overlay-content">
        <form class="form-container" action="">
          <h2 style="text-decoration: black;"><b>想跟 BK. 說的話:</b></h2>
          <textarea placeholder=" 喝咖啡聊是非 快留下想對我們說的話吧:" name="msg" required></textarea>
          <div class="btnbtw">
            <button type="submit" class="btn">Send</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
          </div>
        </form>
      </div>
    </div>

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


  <a name="ebook"></a>
  <!-- 電子書  -->
  <section>
    <div class="product_manu">
      <div class="product_manu_title">
        <h2>電子書</h2>
      </div>
      <!-- 《空間雜誌》 -->
      <form name="product_core" method="POST">
        <table>
          <div class="product_manu_caption">空間雜誌</div>
          <tr>
            <td>
              <div class="text">
                <img src="../img/books/core/coreinterio13 .jpg" alt=" icon">
                <div class="textcontant">
                  <a href="../core/core1.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《CORE INTERIOR空間》<br>
                1月號/2019第13期 (電子雜誌)<br>
                刊  別 ： 季刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  圓祥大眾傳播<br>
                出版日期   :  2019/01/25<br>
              </span>
            </td>
            <td>
              <div class="text">
                <img src="../img/books/core/coreinterio14.jpg" alt=" icon">
                <div class="textcontant">
                  <a href="../core/core2.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《CORE INTERIOR空間》<br>
                1月號/2019第13期 (電子雜誌)<br>
                刊  別 ： 季刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  圓祥大眾傳播<br>
                出版日期   :  2019/01/25<br>
              </span>
            </td>
          </tr>
        </table>
      </form>
      <!-- 《iLook電影》  -->
      <form name="product_ilook" method="POST">
        <table>
          <div class="product_manu_caption">iLook電影</div>
          <tr>
            <td>
              <div class="text">
                <img src="../img/books/ilook/ilook1.png" alt=" icon">
                <div class="textcontant">
                  <a href="../ilook/ilook1.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《iLook電影》<br>
                1月號/2021第159期 (電子雜誌)<br>
                刊  別 ： 月刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  我愛電影<br>
                出版日期   :  2021/01/01<br>
              </span>
            </td>
            <td>
              <div class="text">
                <img src="../img/books/ilook/ilook3.png" alt=" icon">
                <div class="textcontant">
                  <a href="../ilook/ilook3.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《iLook電影》<br>
                3月號/2021第161期 (電子雜誌)<br>
                刊  別 ： 月刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  我愛電影<br>
                出版日期   :  2021/03/01<br>
              </span>
            </td>
            <td>
              <div class="text">
                <img src="../img/books/ilook/ilook4.png" alt=" icon">
                <div class="textcontant">
                  <a href="../ilook/ilook4.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《iLook電影》<br>
                4月號/2021第162期 (電子雜誌)<br>
                刊  別 ： 月刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  我愛電影<br>
                出版日期   :  2021/04/01<br>
              </span>
            </td>
            <td>
              <div class="text">
                <img src="../img/books/ilook/ilook5.jpg" alt=" icon">
                <div class="textcontant">
                  <a href="../ilook/ilook5.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《iLook電影》<br>
                5月號/2021第163期 (電子雜誌)<br>
                刊  別 ： 月刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  我愛電影<br>
                出版日期   :  2021/05/01<br>
              </span>
            </td>
          </tr>
        </table>
      </form>
      <!-- 《世界電影》  -->
      <form name="product_movie" method="POST">
        <table>
          <div class="product_manu_caption">世界電影</div>
          <tr>
            <td>
              <div class="text">
                <img src="../img/books/movie/movie1.png" alt=" icon">
                <div class="textcontant">
                  <a href="../movie/world_movie1.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《世界電影》<br>
                2021年1月號第624期 (電子雜誌)<br>
                刊  別 ： 月刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  世界電影<br>
                出版日期   :  2021/01/04<br>
              </span>
            </td>
            <td>
              <div class="text">
                <img src="../img/books/movie/movie2.png" alt=" icon">
                <div class="textcontant">
                  <a href="../movie/world_movie2.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《世界電影》<br>
                2021年2月號第625期 (電子雜誌)<br>
                刊  別 ： 月刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  世界電影<br>
                出版日期   :  2021/02/01<br>
              </span>
            </td>
            <td>
              <div class="text">
                <img src="../img/books/movie/movie4.jpg" alt=" icon">
                <div class="textcontant">
                  <a href="../movie/world_movie4.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《世界電影》<br>
                2021年4月號第627期 (電子雜誌)<br>
                刊  別 ： 月刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  世界電影<br>
                出版日期   :  2021/04/06<br>
              </span>
            </td>
            <td>
              <div class="text">
                <img src="../img/books/movie/movie5.jpg" alt=" icon">
                <div class="textcontant">
                  <a href="../movie/world_movie5.jsp">
                    <p>商品詳情</p>
                  </a>
                </div>
              </div>
              <span>
                《世界電影》<br>
                2021年5月號第628期 (電子雜誌)<br>
                刊  別 ： 月刊<br>
                出版地區 ： 台灣<br>
                語  言 ： 繁體中文<br>
                出   版  社  :  世界電影<br>
                出版日期   :  2021/05/10<br>
              </span>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </section>


  <!-- footer -->
  <section>
    <div class="footer">
      <div class="footer_wrap">
        <div>
          <h4>關於我們</h4>

          <ul>
            <li><a href="">服務時間：週一至週五A.M. 8:00 ~ P.M. 6:00</a></li>
            <li><a href="">電話 : (02)2502-8314</a></li>
            <li><a href="">地址：320桃園市中壢區中北路200號</a></li>
            <li><a href="">No. 200, Zhongbei Road, Zhongli District, Taoyuan City 320</a></li>
          </ul>
        </div>
      </div>



      <div class="footer_copyright">
        <p>※若消費者為限制行為能力人或無行為能力人，應於消費者之法定代理人閱讀、瞭解並同意本契約之所有內容後，方得使用本網站下單。<br>
          ※如為未滿20歲之未成年使用者，需經由家長同意方可購買與使用商城服務。<br>
          本網站已依台灣網站內容分級規定處理｜建議使用瀏覽器版本：Google Chrome版本60以上 / Firefox版本48以上 / Safari 版本11以上</p>
      </div>
    </div>

  </section>
</body>

</html>