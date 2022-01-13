<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/iii.css">
    <link rel="shortcut icon" href="../img/favicon (1).ico" type="image/x-icon">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=ZCOOL+KuaiLe&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=ZCOOL+KuaiLe&display=swap"
        rel="stylesheet">
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js'></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        // 彈跳式清單
        function button_open() {
            document.getElementById("sidebar").style.display = "block";
        }

        function button_close() {
            document.getElementById("sidebar").style.display = "none";
        }
    </script>

    <script>
        function setTotal() {
            var t = $("#num");
            var tmp = document.getElementById("totalPrice"); //需要修改的總價位置1
            var tmp1 = document.getElementById("totalPrice1"); //需要修改的總價位置2
            if (/\D/.test(t.val())) { //檢查使用者輸入的值是否是數字
                alert("請您輸入正確的數量！");
                t.val(1);
                tmp.innerHTML = "2488元";
                tmp1.innerHTML = "2488元";
            } else { //如果輸入合法
                if (t.val() > 10) {
                    confirm("您真的準備一次購買這麼多？");
                    tmp.innerHTML = t.val() * 2488 + "元";
                    tmp1.innerHTML = t.val() * 2488 + "元";
                }
            }
        }
    </script>
    <script>
        $(function () { //這裡是加減按鈕都啟用的情況
            var t = $("#num");
            $("#add").click(function () {
                t.val(parseInt(t.val()) + 1)
                setTotal();
            })
            $("#min").click(function () {
                if (t.val() > 1) {
                    t.val(parseInt(t.val()) - 1);
                } else {
                    alert("至少購買一件哦！");
                }
                setTotal();
            })
        });

        //搜尋欄位
        var input = document.getElementById("myInput");
        input.addEventListener("keyup", function (event) {
            if (event.keyCode === 13) {
                event.preventDefault();
                document.getElementById("myBtn").click();
            }
        });

        function openSearch() {
            document.getElementById("myOverlay").style.display = "block";
        }

        function closeSearch() {
            document.getElementById("myOverlay").style.display = "none";
        }

        function closeForm() {
            document.getElementById("myOverlay").style.display = "none";
        }
    </script>
    <script>
        function shopping() {
            alert("已成功加入購物車清單");
        }

        function heart() {
            alert("已成功加入願望清單");
        }

        function comment() {
            alert("您的留言已送出...審核中");
        }

        function sear() {
            alert("NOT FOUND !! PLEASE SEARCH AGAIN");
        }
    </script>

    <script>
        $(".slide_toggle").click(function () {
            $(this).next().slideToggle();
        });
    </script>

    <title>《室內interior》 3月號</title>
</head>

<body>

    <!-- 彈跳清單 -->
    <section>
        <div class="side_button">
            <button onclick="button_open()">☰</button>
        </div>
        <div id="myOverlay" class="overlay"
            style="background: url(../img/back.jpeg); background-repeat: no-repeat; background-size: cover;">
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
                <li><a href="../manu/newbook.jsp">全部商品</a>
                    <ul>
                        <li><a href="../manu/top.jsp">熱銷排行</a></li>
                        <li><a href="../manu/magazine.jsp">Magazine</a></li>
                        <li><a href="../manu/ebook.jsp">電子書</a></li>
                    </ul>
                </li>
                <li><a href="../store_detail/aboutus.jsp">認識我們</a></li>
                <li><a href="../store_detail/question.jsp">購物須知</a></li>
                <li><a href="../board.jsp">留言板</a></li>
            </ul>
        </div>
    </section>


    <header style="position: relative; top:0; left:0;">
        <hr>
        <div class="icon">
            <a href="../index.jsp"><img src="../img/shop.png" width="150px"></a>
        </div>

        <div class="wishlist" style="z-index: 100000000;">
            <a href="../member/wish_list.jsp" title="願望清單"><img src="../img/wishlist-12.png" width="100px"></a>
        </div>

        <div class="cartt" style="z-index: 200000000;">
            <a href="../member/cart.jsp" title="購物車"><img src="../img/carttt.png" width="100px"></a>
        </div>



        <div class="topnav">
            <div class="search-container">
                <form action="/action_page.php">
                    <input type="text" placeholder="Search for a book..." name="search" autocomplete="off"
                        autocorrect="off" ata-component-tracked-focused="">
                    <button type="submit" style="background-color: #374663;"><img src="../img/search.png"
                            width="55px"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>



        <div class="login">
            <div class="w3-container">
                <div class="w3-dropdown-hover">
                    <button class="button">
                        <a href=""> <img src="../img/profile.png" width="55px"> </a>
                    </button>
                    <div class="w3-dropdown-content w3-bar-block w3-border">
                        <a href="../login.jsp" class="w3-bar-item w3-button">Login</a>
                        <a href="../register.jsp" class="w3-bar-item w3-button">Register</a>
                        <a href="../member.jsp" class="w3-bar-item w3-button">My Info.</a>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </header>

    <section class="oooxxx">
        <div class="s1">
            <div class="ad1" style="margin: -80px -140px 0;">
                <a href="../manu/top_magazine.jsp"><img src="../img/ad1.gif" width="1380px"></a>
            </div>
            <div class="path">
                <h6 style="margin: 20px -140px 0;">
                    <a href="../index.jsp">Home</a> > <a href="../manu/magazine.jsp">Magazine</a> > <a
                        href="../manu/book.jsp">實體雜誌</a>> 室內設計 > 《室內interior》 3月號/2021 第330期
                </h6>
            </div>


            <div class="left">

                <div class="bookimg" style="margin:150px 0 0 40px;">
                    <img src="../img/books/interior/interior3.png">
                </div>

                <div class="bookcontent">
                    <h2>《室內interior》 3月號/2021 第330期 </h2>
                    <h4>FREE DELIVERY OVER NT$ 1,500</h4>

                    <button type="submit" class="buy1" onclick="heart()" style="margin: 35px 0 0 580px;">
                        <img src="../img/wishlist.png" width="40px"></button>

                    <div class="price">
                        定價：200元</div>
                    <h3 style="color: red;">95折：190元</h3>
                    <div>
                        <br>
                        <input id="min" name="" type="button" value="-">
                        <input id="num" name="num" type="text" value="1" readonly="true" onchange="setTotal();">
                        <input id="add" name="" type="button" value="+">
                        <br><br>
                        <form name="form1" method="post" action="../backcar.jsp">
                            <input type="submit" value="加入購物車" class="sub" />
                            <input type="hidden" name="goods" value="goods1" />

                            <form name="car" method="POST" action="../member/cart.jsp">
                                <input type="submit" value="立即結帳" class="buy" />
                            </form>
                        <!--<input id="cart" name="" type="button" value="Add to cart">
                 <br><br>
                <a>
                     <img src="../img/wishlist.png" width="15px">
                     Add to wishlist
                </a>-->
                        <br><br>
                        <b>In stock - Usually dispatched within 24 hours</b>
                    </div>

                    <div>
                        <h3>Payment</h3>

                        <div class="payment">

                            &nbsp;<img src="../img/payment/visa.jpg" height="25px">
                            <img src="../img/payment/maestro.png" height="25px">
                            <img src="../img/payment/mastercard.jpg" height="25px">
                            <img src="../img/payment/americanexpress.jpg" height="25px">
                            <img src="../img/payment/ctbc.jpg" height="25px">
                            <img src="../img/payment/linepay.jpg" height="25px">
                            <img src="../img/payment/cathay.jpg" height="25px">
                            <img src="../img/payment/fareastern.jpg" height="30px">
                            <br>
                            <img src="../img/payment/alipay.jpg" height="25px">
                            <img src="../img/payment/changhwa.png" height="20px">
                            <img src="../img/payment/cooperate.jpg" height="20px">
                            <img src="../img/payment/e.sun.jpg" height="20px">
                            <img src="../img/payment/sinopac.jpg" height="20px">
                            <img src="../img/payment/taipei.jpg" height="20px">
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>



    <section class="ooxx">
        <div style="margin-right: 100px;">
            <div class="s2">
                <div class="left1">
                    <div class="description">
                        <hr>
                        <h3>Description</h3>
                        <p>
                            <span style="background-color:rgb(218, 186, 226); font-size: 28px;">NO.628 MAY 2021</span>
                            <div class="texttt">
                                關於《室內interior》
                            </div>
                            <div>
                                《室內interior》是一本綜觀設計、人文、美學的雜誌，1989年創刊至今，以精粹而具觀瞻的視野，透析了空間與設計的定位，
                                拉近台灣與世界的空間座標。雜誌內容選輯建築與空間作品的精彩實例。
                                當期焦點主題採用中英雙語呈現，詳述設計概念、佈局規劃、美學精神，無論本土意識、國際觀、小眾口味，
                                實驗性作品都能在此一平台競技。

                                《室內interior》除了精選原創設計作品，亦關懷文化與教育，
                                雜誌收錄內容觸及生活美學、時尚、藝術、人文、設計、觀點等議題，
                                同時擁有歐洲、美洲、亞洲等地的特約撰述和攝影專家，
                                提供當地之設計、建築、藝術、文化、工藝與科技等深度報導，
                                為讀者帶來多元視角，以及更豐富的閱讀思考。

                                <br><br>
                            </div>


                            <span class="cover">
                                &nbsp;&nbsp; 主題：文化裡的消費<br>
                            </span>
                            <b>(Cultural Identity & Consumption Value)</b><br><br>
                            消費行為有時是一種族群表徵與價值認同。以文化作為引子，
                            用空間情境與感性行銷來說故事，讓單純的物享受，附加了學習、參與的心靈滿足，
                            因理解而共鳴，因支持而行動；消費的背後，是對品牌精神的實質肯定。 <br><br>
                            <div class="acc">
                                <div class="watch">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WATCH MORE
                                    <img src="../img/down .png" width="40px">
                                </div>



                                <div class="accc">
                                    <div class="slide_toggle"
                                        style="background: lightpink; border-radius: 10px; height: 30px;">
                                        各式設計
                                    </div>

                                    <div>
                                        <div>
                                            <b>禾流設計:</b><br>
                                            一座重溫啤酒釀造與銷售接待的複合空間，將酒廠的機械、構造提煉為視覺語彙，
                                            領人沉浸於歷史與情境裡，釀酒的文化故事，是品酒的最佳提味。<br><br>
                                        </div>

                                        <div>
                                            <b>朝徹書屋設計:</b><br>
                                            用一座收藏好物的空中之城，來述說電商集團的宏大願景，帶你回望十三行的歷史精神。
                                            關於精神與物質的美好，每日限量名額供人細細領會。<br><br>
                                        </div>

                                        <div>
                                            <b>半朵雲藝術家會客廳設計:</b><br>
                                            在藝術家羅旭打造的紅磚建築裡，引入自然光照突顯結構之美，
                                            用簡潔優美的手法融合設計與環境，打造一座並陳空間、藝術與自然之美的人文客廳。<br><br>
                                        </div>

                                        <div>
                                            <b>全聚德溫哥華店設計者:</b><br>
                                            自紫禁城提取靈感，將北京皇城裡的富麗隆重嫁接至異地時空，古典翻轉出新意，
                                            饗食添入了儀式，舌尖上除了美味，還有百年品牌的文化底蘊。<br><br>
                                        </div>
                                    </div>
                                    <br>

                                    <div class="slide_toggle"
                                        style="background: lightyellow;border-radius: 10px; height: 30px;">焦點話題</div>
                                    <div>
                                        106臺南市立圖書館總館落成啟用
                                        融合在地文化意象 打造閱讀新堡壘

                                        <br>
                                    </div><br>


                                    <div class="slide_toggle"
                                        style="background:plum;border-radius: 10px; height: 30px;">
                                        歐洲特訊</div>

                                    <div>
                                        <b>＜歐洲特訊＞</b><br>
                                        114天人合一 返璞歸真 Park Pavilion公園小亭<br><br>

                                        <b>＜亞洲特訊＞</b><br>
                                        122街頭躍動的琴鍵 MAXPLAN AZABU 10租賃大廈
                                    </div>
                                    <BR>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <div class="terms">
                <hr>
                <h3>Delivery & Returns</h3>
                <p>To see our available delivery options please <a href="../store_detail/question.jsp">Click here</a>
                </p>
            </div>

            <div class="re">
                <hr>
                <h3>If I'm not completely happy with my item?</h3>
                <p>Please see our <a href="../store_detail/question.jsp"> Returns Policy.</a></p>
            </div>

            <div class="detail">
                <hr>
                <h3>Product Details</h3>
                <p>
                    <div class="publication">刊&emsp;&nbsp;&nbsp;&nbsp;&nbsp;別 ：&nbsp;&nbsp;季刊 &nbsp;<br></div>
                    <div class="area">出版地區 ：&nbsp;&nbsp;台灣 <br></div>
                    <div class="language">語&emsp;&nbsp;&nbsp;&nbsp;&nbsp;言 ：&nbsp;&nbsp;繁體中文 <br></div>
                    <div class="publishing">出&thinsp;&thinsp; 版&thinsp;&thinsp;社&thinsp; : &nbsp;&nbsp;&thinsp;美兆文化 <br>
                    </div>
                    <div class="date">出版日期&thinsp;&thinsp;&thinsp;: &nbsp;&nbsp;&thinsp;2021/02/03 <br></div>
                    <p>
            </div>
            <div class="reviews">
                <hr>
                <h3>Reviews</h3>
                <button type="button" class="reviwe" onclick="rew_show()">撰寫評論</button>
                <br><br>

                <div id="rew_write" class="rew_writeclass">
                    <form style="padding:5px 20px 10px 30px">

                        <label>姓名</label>
                        <input type="retext"> <br>
                        <label style="display:inline-block;">評分</label>
                        <ul id="star">
                            <li>★</li>
                            <li>★</li>
                            <li>★</li>
                            <li>★</li>
                            <li>★</li>
                        </ul>
                        <script>
                            window.onload = function () {
                                var star = document.getElementById("star");
                                var star_li = star.getElementsByTagName("li");
                                var star_word = document.getElementById("star_word");

                                var i = 0;
                                var j = 0;
                                var len = star_li.length;
                                var word = ['1', '2', '3', "4", "5"]

                                for (i = 0; i < len; i++) {
                                    star_li[i].index = i;

                                    star_li[i].onmouseover = function () {
                                        star_word.style.display = "inline-block";
                                        star_word.innerHTML = word[this.index] + " / 5 ";
                                        for (i = 0; i < len; i++) {
                                            if (i <= this.index) {
                                                star_li[i].className = "act";

                                            } else {
                                                star_li[i].className = "";
                                            }
                                        }

                                    }


                                }

                            }
                        </script>
                        <br>
                        <div style="display:inline-block;margin-left:15px">
                            <div id="star_word"></div>
                        </div>


                        <br>
                        <label style="margin-top:10px">標題</label>
                        <input type="retext" style="width:40%" placeholder="20字以內" maxlength="20" required>
                        <br>

                        <label style="position:relative;top:-80px">內容</label>
                        <textarea style="width:70%;height:100px;margin-top:10px" placeholder="250字以內" maxlength="250"
                            required></textarea>
                        <br>
                        <button type="submit" class="rewpost" onclick="comment()">送出</button>

                    </form>
                </div>

                <br><br>

                <div id="cc" class="button_content">

                    <hr style="margin-top:10px">
                    <div class="rew">
                        <img src="../img/people.png" class="rewpic" height="70px">
                        <ul class="rewul">
                            <li>Chieh</li>

                            <li>★★★★☆</li>
                        </ul>
                        <div class="rewtxt">
                            <h4>內容太有趣了!!</h4>
                            <p>電子書真的好方便~</p>
                        </div>
                        p class="time">2021/06/05</p>
                        <br><br>
                    </div>
                    <br>

                    <div class="rew">
                        <img src="../img/login.jpg" class="rewpic">
                        <ul class="rewul">
                            <li>堯</li>
                            <li>★★★★★</li>
                        </ul>
                        <div class="rewtxt">
                            <h4>我愛電子書</h4>
                            <p>買起來!!!!!!</p>
                        </div>
                        <p class="time">2021/05/31</p>
                        <br><br>
                    </div>
                </div>
            </div>

            <script>
                function rew_show() {
                    document.getElementById("rew_write").classList.toggle("show");
                }

                function openPage(pageName, elmnt, color) {
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
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

                document.getElementById("defaultOpen").click();
            </script>


        </div>
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
            <div>

                <button onclick="topFunction()" id="myBtn">Top</button>
                <script>
                    var mybutton = document.getElementById("myBtn");

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
            </div>

            <div class="footer_copyright">
                <p>※若消費者為限制行為能力人或無行為能力人，應於消費者之法定代理人閱讀、瞭解並同意本契約之所有內容後，方得使用本網站下單。<br>
                    ※如為未滿20歲之未成年使用者，需經由家長同意方可購買與使用商城服務。<br>
                    本網站已依台灣網站內容分級規定處理｜建議使用瀏覽器版本：Google Chrome版本60以上 / Firefox版本48以上 / Safari 版本11以上</p>
            </div>
        </div>

    </section>

    <!-- 展開收合 start -->
    <script>
        $(".slide_toggle").click(function () {
            $(this).next().slideToggle();
        });
    </script>
    <!-- 展開收合 end -->
</body>

</html>