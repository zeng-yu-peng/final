<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BK. 全員介紹</title>
  <link rel="stylesheet" type="text/css" href="css/index_css.css">
  <link rel="stylesheet" type="text/css" href="css/barside.css">
  <link rel="stylesheet" type="text/css" href="css/index_contant.css">
  <link rel="stylesheet" type="text/css" href="css/product_manu.css">
  <link rel="stylesheet" type="text/css" href="css/teams.css">
  <link rel="shortcut icon" href="img/favicon (1).ico" type="image/x-icon">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  <script>
    function sear() {
      alert("NOT FOUND !! PLEASE SEARCH AGAIN");
    }

    // 彈跳式清單
    function button_open() {
      document.getElementById("sidebar").style.display = "block";
    }

    function button_close() {
      document.getElementById("sidebar").style.display = "none";
    }

    function openPage(pageName, elmnt, color) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("m");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablink");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
      }
      document.getElementById(pageName).style.display = "block";
      elmnt.style.backgroundColor = color;
    }

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
  <style>
    .openBtn {
      border: none;
      outline: none;
      background-color: inherit;
      align-items: left;
      color: #00676B;
      position: absolute;
      left: 10%;
      top: 65%;
    }
  </style>


</head>

<body>

  <header>
    <div class="head">
      <div class="head_icon"> <a href="index.jsp"><img src="img/shop-removebg-preview.png" alt="icon"></a> </div>


      <div class="head_slogn">TEAMS</div>
      <div class="head_search">
        <input id="myInput" placeholder="Search">
        <button id="myBtn" onclick="sear()">搜尋</button>
      </div>
      <div class="head_decoration">

        <div class="login">
          <div class="w3-container">
            <div class="w3-dropdown-hover">
              <button class="button" style="background-color: #b4c4c1; border: none;">
                <a href=""> <img id="profile" src="img/profile.png" width="55px"> </a>
              </button>
              <div class="w3-dropdown-content w3-bar-block w3-border">
                <a href="login.jsp" class="w3-bar-item w3-button">Login</a>
                <a href="register.jsp" class="w3-bar-item w3-button">Register</a>
                <a href="member.jsp" class="w3-bar-item w3-button">My Info.</a>
              </div>
            </div>
          </div>
        </div>

        <div> <a href="member/wish_list.j'"><img src="img/wishlist-12.png" title="My wishlist"></a> </div>
        <div> <a href="member/cart.j'"><img src="img/carttt.png" title="My Cart"></a> </div>
      </div>
    </div>
  </header>

  <!-- 彈跳清單 -->
  <section>
    <div class="side_button">
      <button onclick="button_open()">☰</button>
    </div>
    <!-- 留言板 -->
    <div id="myOverlay" class="overlay"
      style="background: url(img/back.jpeg); background-repeat: no-repeat; background-size: cover; z-index: 100000000000000000000000000000;">
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
    <!-- 留言板 -->
    <div id="myOverlay" class="overlay"
      style="background: url(img/back.jpeg); background-repeat: no-repeat; background-size: cover; z-index: 100000000000000000000000000000;">
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
        <li><a href="index.jsp">商店介紹</a></li>
        <li><a href="manu/newbook.jsp">全部商品</a>
          <ul>
            <li><a href="manu/top.jsp">熱銷排行</a></li>
            <li><a href="manu/magazine.jsp">Magazine</a></li>
            <li><a href="manu/ebook.jsp">電子書</a></li>
          </ul>
        </li>
        <li><a href="store_detail/aboutus.jsp">認識我們</a></li>
        <li><a href="store_detail/question.jsp">購物須知</a></li>
        <li><a href="teams.jsp">BK.成員介紹</a></li>
        <li><button class="openBtn" onclick="openSearch()">留言板</button></li>
      </ul>
    </div>
  </section>

  <div class="newbook_wrap">
    <div class="flip-box">
      <div class="flip-box-inner">
        <div class="flip-box-front">
          <img src="img/teams/chieh.jpg" alt=""> <br>
        </div>
        <div class="flip-box-back">
          <p style="font-size: 22px;"><b>關於多媒專題ㄉ心得:</b></p>
          <p style="text-align: left; font-size: 17px;">
            嗨~ 我是資管二乙的陳品緁！<br>
            這次和我的前端partner一起完成了前端的網頁設計！<br><br>
            比起第一次作其中專題的茫然無措，這一次的我雖不到游刃有餘，但是至少不再像之前那麼手忙腳亂了，
            對於各種排版阿、顏色搭配.....等，我覺得比第一此好太多了，果然每一次的挑戰，都是一種學習，
            或許成果沒有自己像得那麼完美，但是至少在每一次的不完美中都有學到不一樣的事，也感覺自己有越來越好了！<br><br>
            最後我要謝謝我的partner們，不管前後端的你們真的都很carry～<br>
            也謝謝老師助教這學期的指導，大家辛苦了！
          </p>
          <p>
            "There's only one corner of the universe you can be sure of improving, and that's your own self."
          </p>
        </div>
      </div>
    </div>

    <div class="name1">
      <h2 style="font-size: 22px;">&nbsp;姓名:陳品緁 </h2>
      <div id="nav" class="goods">
        <a href="https://instagram.com/lesley_chen0810?igshid=icftdbdp28vg" target="_blank" title="品緁的IG"><img
            src="img/teams/ig1.png" style="width: 55px;height:55px;"></a><br>
        <a href="https://www.facebook.com/lesleychen0810" target="_blank" title="品緁的FB"><img src="img/teams/fb1.png"
            style="width: 55px;height:55px;position: absolute;top:230px;right:-120px;"> </a>
      </div>
    </div>
  </div>






  <div class="newbook_wrap">
    <div class="flip-box">
      <div class="flip-box-inner">
        <div class="flip-box-front">
          <img src="img/teams/cy.jpg" alt=""> <br>
        </div>
        <div class="flip-box-back2">
          <p style="font-size: 22px;"><b>關於多媒專題ㄉ心得:</b></p>
          <p style="text-align: left; font-size: 17px;">
            嗨～我是會計二甲的楊珺堯！<br>
            這次和我的前端partner一起完成了前端的網頁設計！<br><br>

            經歷過期中專案的手足無措，不知道要幹嘛，到現在雖不是駕輕就熟，但也成熟穩重不少，
            不管是position的應用，又或是flex的用法，甚至是可以開始用css做一些互動的網頁，
            這都是透過一點一滴逐步耕耘出來的，雖然都還不盡完美，但也是在失敗挫折的過程中逐漸成長，
            將失敗化為自己成長的基石，這學期真的是受益良多，不管是網站或是身心靈都是！<br><br>

            最後我要謝謝我的partners，不管前端後端得大家都很棒！<br>
            當然最屑屑的還是老師還有這學期助教們的指導，大家辛苦了！

          </p>
          <p>
            "Do not, for one repulse, <br>
            give up the purpose that you resolved to effect."

          </p>
        </div>
      </div>
    </div>

    <div class="name" style="position: absolute; margin-right: 200px;">
      <h2 style="font-size: 22px;">&nbsp;姓名:楊珺堯 </h2>
      <div id="nav" class="goods">
        <a href="https://www.instagram.com/__sadseraphim__/" target="_blank" title="珺堯的IG"><img src="img/teams/ig1.png"
            style="width: 55px;height:55px;"></a><br>
        <a href="https://www.facebook.com/profile.php?id=100004471353925" target="_blank" title="珺堯的FB"><img
            src="img/teams/fb1.png" style="width: 55px;height:55px;position: absolute;top:230px;right:-120px;"> </a>
      </div>
    </div>
  </div>

  <div class="newbook_wrap">
    <div class="flip-box">
      <div class="flip-box-inner">
        <div class="flip-box-front">
          <img src="img/teams/ting2.jpg" alt=""> <br>
        </div>
        <div class="flip-box-back3">
          <p style="font-size: 22px;"><b>關於多媒專題ㄉ心得:</b></p><br>
          <p style="text-align: left;">

            嗨～我是資管二甲陳依廷！<br>
            這次和我的後端partner一起完成了後端的資料庫設計！<br><br>
            這學期我們進行了後台的實作，能夠感受到，相對於上學期的前台設計能夠隨時隨地在網頁上看到所做的程式結果，
            後台只能先依照邏輯寫入程式及資料庫，再透過tomcat運作實際run一次看是否有成功連結，
            著實是件不容易的事，很感謝夥伴的協助，讓我們能夠完成這次的網站設計！ <br><br>
          </p>
          <p style="font-size:xx-large;">
            "人生很難，但很好玩"
          </p>
        </div>
      </div>
    </div>

    <div class="name" style="position: absolute; margin-right: 200px;">
      <h2 style="font-size: 22px;">&nbsp;姓名:陳依廷 </h2>
      <div id="nav" class="goods">
        <a href="https://www.instagram.com/900630_lanjana/" target="_blank" title="依廷的IG"><img src="img/teams/ig1.png"
            style="width: 55px;height:55px;"></a><br>
        <a href="https://m.facebook.com/liyu.cyc?ref=bookmarks" target="_blank" title="依廷的FB"><img
            src="img/teams/fb1.png" style="width: 55px;height:55px;position: absolute;top:230px;right:-120px;"> </a>
      </div>
    </div>
  </div>

  <div class="newbook_wrap">
    <div class="flip-box">
      <div class="flip-box-inner">
        <div class="flip-box-front">
          <img src="img/teams/fan.jpg" alt=""> <br>
        </div>
        <div class="flip-box-back4">
          <p style="font-size: 22px;"><b>關於多媒專題ㄉ心得:</b></p>
          <p style="text-align: left; font-size: 17px;">
            嗨～我是資管二甲曾雨芃！<br>
            這次和我的後端partner一起完成了後端的資料庫設計！<br><br>

            上學期做前端的時候，一直不知道原來後端也這麼麻煩，這次自己做後端，做資料庫，結果連結漣一連忘記連到哪裡，又要一個檔案一個檔案的找，
            後來我學聰明了，我用註解標註我這個檔案是在寫什麼?經過這一年的多媒及網程，了解到了前端與後端的不同，同樣是寫程式碼，卻因為功能不同，
            後端會專注於資料庫的寫入，前端更專注於排版及美觀。<br><br>
            謝謝我的夥伴妳還願意跟我一組沒有拋下我，雖然我每次都在犯傻，耗盡妳很多心力。

          </p>
          <p>
            "A friend is like a rainbow. <br>
            They brighten your life when you've been through a storm."

          </p>
        </div>
      </div>
    </div>

    <div class="name" style="position: absolute; margin-right: 200px;">
      <h2 style="font-size: 22px;">&nbsp;姓名:曾雨芃 </h2>
      <div id="nav" class="goods">
        <a href="https://www.instagram.com/candy_12_14/" target="_blank" title="雨芃的IG"><img src="img/teams/ig1.png"
            style="width: 55px;height:55px;"></a><br>
        <a href="https://www.facebook.com/profile.php?id=100002971787882" target="_blank" title="雨芃的FB"><img
            src="img/teams/fb1.png" style="width: 55px;height:55px;position: absolute;top:230px;right:-120px;"> </a>
      </div>
    </div>
  </div>
  </div>


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
      <button onclick="topFunction()" id="myBtn11"> Top </button>

      <script>
        var mybutton = document.getElementById("myBtn11");

        window.onscroll = function () {
          scrollFunction()
        };

        function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
          } else {
            mybutton.style.display = "none";
          }
        }

        function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }
      </script>


      <div class="footer_copyright">
        <p>※若消費者為限制行為能力人或無行為能力人，應於消費者之法定代理人閱讀、瞭解並同意本契約之所有內容後，方得使用本網站下單。<br>
          ※如為未滿20歲之未成年使用者，需經由家長同意方可購買與使用商城服務。<br>
          本網站已依台灣網站內容分級規定處理｜建議使用瀏覽器版本：Google Chrome版本60以上 / Firefox版本48以上 / Safari 版本11以上</p>
      </div>
    </div>

  </section>

</body>

</html>