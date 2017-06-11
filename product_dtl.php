<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项城市水寨宇童气模玩具</title>
<link rel="stylesheet" type="text/css" href="css/style_2_common.css" />
<link rel="stylesheet" type="text/css" href="css/style_2_portal_view.css" />
<script src="js/common.js" type="text/javascript"></script>
<LINK id=layerslider_css-css rel=stylesheet type=text/css href="css/layerslider.css" media=all>
<LINK id=font-awesome-css rel=stylesheet type=text/css href="css/font-awesome.min.css" media=all>
<LINK id=stylesheet-css rel=stylesheet type=text/css href="css/stylesheet.min.css" media=all>
<LINK id=woocommerce-css rel=stylesheet type=text/css href="css/woocommerce.css" media=all>
<LINK id=woocommerce_responsive-css rel=stylesheet type=text/css href="css/woocommerce_responsive.css" media=all>
<LINK id=responsive-css rel=stylesheet type=text/css href="css/responsive.min.css" media=all>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/default.js" type="text/javascript"></script>
<script src="js/plugins.js" type="text/javascript"></script>
<script src="js/default_dynamic.js" type="text/javascript"></script>
<script src="js/portal.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" id="diy_common" href="css/style.css" />
<SCRIPT language=javascript>
<!--
window.onerror=function(){return true;}
// -->
</SCRIPT>
<!--[if IE 6]>
<script src="template/wfdsoft_com_012/set/iepng.js" type="text/javascript" type="text/javascript"></script> 
<script type="text/javascript">
   EvPNG.fix('div, ul, img, li, input'); 
   EvPNG.fix('.png'); 
</script>
<![endif]-->

</head>
<?php
  include_once("db_conn.php");
  $sQuery = "
    SELECT a.*,b.name AS cname
    FROM product a
      INNER JOIN category b
      ON a.category_id = b.id
    WHERE a.id = ".$_GET['id']."
  ";
  $products = mysql_query($sQuery);
  $product=mysql_fetch_array($products);
?>
<body id="nv_portal" class="pg_view" onkeydown="if(event.keyCode==27) return false;">
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div class="wrapper">
<div class="wrapper_inner">
<?php require_once('header.php'); ?>
<div class="content2" style="min-height: 395px;">
<div class="wp" id="wp">
  <link rel="stylesheet" type="text/css" id="diy_common" href="css/style.css" />
</div>
<div class="content_inner  " style="position: relative; visibility: visible; display: block;">
<div class="title2">
  <div class="title_holder" style="opacity: 1;">
    <div class="container">
      <div class="container_inner clearfix">
        <h1><?php echo $product['cname'] ?></h1>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="container_inner clearfix" style="width: 1200px;"> <img alt="高乐迪广告" src="images/banner/2banner.jpg">
    <div id="main">
      <div id="main_in">
        <div id="sidebar">
          <div id="sort">
            <h3><strong>产品展示</strong></h3>
            <div id="sort_cont">
              <ul>
                <li class="shover"><a href=""><?php echo $product['cname'] ?></a></li>
              </ul>
            </div>
          </div>
          <!--//栏目分类-->
          <div id="s_contact">
            <h3><strong>联系我们</strong></h3>
            <div id="s_contact_cont">
              <p>电　话：0394-7961130</p>
              <p>手　机：15639411606</p>
              <p>邮　箱：386813458@qq.com</p>
              <p>地　址：河南省项城市文化路与环城路交叉口路南</p>
              <p>邮　编：466200</p>
            </div>
          </div>
          <!--//联系我们--> 
        </div>
        <!--//左侧-->
        <div id="main_cont">
          <div id="position"> <span>您的位置：<a href="/">首页</a> &gt; <a href="javascript:void(0);"><?php echo $product['cname'] ?></a></span>
            <h2>大风车</h2>
          </div>
          <!--//所在位置-->
          <div id="content">
            <div id="show_top_wrap">
              <div id="show_top_thum"><img src="<?php echo $product['img_path'] ?>" width="350" height="250" class="show_img"></div>
              <div id="show_top_text">
                <p></p>
                <h1>产品名称</h1>
                <p></p>
                <p><?php echo $product['name'] ?></p>
                <p></p>
                <h1>产品规格</h1>
                <p></p>
                <p><?php echo $product['size'] ?></p>
              </div>
            </div>
            <div id="c_txt">
              <div id="show_t"><span>产品大图</span></div>
              <p>
                <p><a href="javascript:void(0);" target="_blank"><img src="<?php echo $product['img_path'] ?>" width="900" height="656"></a></p>
              </p>
            </div>
          </div>
          <!--//内容--> 
        </div>
        <!--//右侧--> 
      </div>
    </div>
  </div>
</div>
<?php
  mysql_free_result($products);
  mysql_close($conn);
?>
<?php require_once('footer.php'); ?>