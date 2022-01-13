<!-- // 定義資料庫資訊
$DB_NAME = "stor"; // 資料庫名稱
$DB_USER = "root"; // 資料庫管理帳號
$DB_PASS = "1234"; // 資料庫管理密碼
$DB_HOST = "localhost"; // 資料庫位址

// 連接 MySQL 資料庫伺服器
$con = mysqli_connect($DB_HOST, $DB_USER, $DB_PASS);
if (empty($con)) {
print mysqli_error($con);
die("資料庫連接失敗！");
exit;
}

// 選取資料庫
if (!mysqli_select_db($con, $DB_NAME)) {
die("選取資料庫失敗！");
} else {
echo "連接 " . $DB_NAME . " 資料庫成功！<br>";
}

// 設定連線編碼
mysqli_query($con, "SET NAMES 'UTF-8'");

// 取得資料
$sql = "SELECT * FROM books";
$result = mysqli_query($con, $sql);

// 獲得資料筆數
if ($result) {
$num = mysqli_num_rows($result);
echo "condb 資料表有 " . $num . " 筆資料<br>";
}

// --- 顯示資料 --- //

echo "<br>顯示資料（MYSQLI_NUM，欄位數）：<br>";

$result = mysqli_query($con, $sql);
while ($row = mysqli_fetch_array($result, MYSQLI_NUM)) {
printf("第 %s 筆資料 : %s<br>", $row[0], $row[1]);
}

echo "<br>顯示資料（MYSQLI_ASSOC，欄位名稱）：<br>";

$result = mysqli_query($con, $sql);
while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
printf("第 %s 筆資料 : %s<br>", $row["id"], $row["text"]);
}

echo "<br>顯示資料（MYSQLI_BOTH，欄位數 & 欄位名稱皆可，採用欄位數）：<br>";

$result = mysqli_query($con, $sql);
while ($row = mysqli_fetch_array($result, MYSQLI_BOTH)) {
printf("第 %s 筆資料 : %s<br>", $row[0], $row[1]);
}

echo "<br>顯示資料（MYSQLI_BOTH，欄位數 & 欄位名稱皆可，採用欄位名稱）：<br>";

$result = mysqli_query($con, $sql);
while ($row = mysqli_fetch_array($result, MYSQLI_BOTH)) {
printf("第 %s 筆資料 : %s<br>", $row["id"], $row["text"]);
}

// 釋放記憶體
mysqli_free_result($result);

// 關閉連線
mysqli_close($con);

?>
</body>

</html> -->
<?php
mysql_connect("localhost","root","1234");//與localhost連線、root是帳號、密碼處輸入自己設定的密碼
mysql_select_db("stor");//我要從stor這個資料庫撈資料
mysql_query("set names utf-8");//設定utf8 中文字才不會出現亂碼
$data=mysql_query("select * from stor");//從stor中選取全部(*)的資料
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.io.*,java.util.*" %>
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>traverse</title>
  <link rel="stylesheet" type="text/css" href="css/resume.css">
  <link rel="stylesheet" type="text/css" href="css/menu.css">

  <link rel="stylesheet" type="text/html" href="html/Taiwan.html">
  <link rel="stylesheet" type="text/html" href="html/Rebirth development.html.html">
  <link rel="stylesheet" type="text/html" href="html/Through development.html.html">
  <link rel="stylesheet" type="text/html" href="htm1/other.html">
  <link rel="stylesheet" type="text/html" href="htm1/popular.html.html">
  <link rel="stylesheet" type="text/html" href="htm1/Portfolio.html.html">
  <link rel="stylesheet" type="text/html" href="htm1/derivative.html.html">
</head>
<style>
  body {
    background-image: url("image/back1.jfif"
      );
    background-size: cover;
    position: absolute;
    border-image: auto;
  }
</style>





<body style="position: absolute;left: 30%;">

    <table width="546" border="1">
      <tr>
        <td>No</td>
        <td>編號</td>
        <td>書名</td>
        <td>照片</td>
        <td>分類</td>

      </tr>

      <?php
for($i=1;$i<=mysql_num_rows($data);$i++)
{ $rs=mysql_fetch_row($data);
?><tr>
        <td><?php echo $rs[0]?></td>
        <td><?php echo $rs[1]?></td>
        <td><?php echo $rs[2]?></td>
        <td><?php echo $rs[3]?></td>
        <td><?php echo $rs[4]?></td>

      </tr>
      <?php }?>








</body>
</center>
</table>


</html>