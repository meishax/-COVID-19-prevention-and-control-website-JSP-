<%--
  Created by IntelliJ IDEA.
  User: 郭子杨
  Date: 2020/4/4
  Time: 0:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="icon" href="graph/icon.png">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>疫情学习视频</title>
    <meta name="keywords" content="疫情学习视频">
    <meta name="description" content="疫情学习视频">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- 文档css -->
    <link href="css/video_style.css" rel="stylesheet">
    <style>
        .vid-wrap{
            width:100%;background: #000;
            position:relative;
            padding-bottom:56.25%;    /*需要用padding来维持16:9比例,也就是9除以16*/
            height: 0;
        }
        .vid-wrap video{
            position: absolute;
            top:0;
            left: 0;
            width: 100%;
            height: 100%
        }
    </style>
</head>
<body>
<header class="container-fluid">
    <div class="head_bg"></div>
</header>
<div class="container">
    <article>
        <div class="title_2">
            <img src="graph/title.png" class="img-responsive pic_center">
        </div>
        <div class="content_bg">
            <h3>疫情学习视频</h3>
            <div class="clear"></div>
            <div class="row">

                <div class="col-md-9 col-lg-12">
                    <div class="xy_title7"><br><br>
                        <div>
                            <h4>塞尔维亚总统宣布进入紧急状态：寄希望于中国技术与物资援助</h4>
                            <div class="vid-wrap">
                                <video id="video_1-1" controls="controls" controlslist="nodownload" preload="metadata" x5-playsinline="" playsinline="" webkit-playsinline="">
                                    <source src="videos/塞尔维亚总统宣布进入紧急状态：寄希望于中国技术与物资援助 - 1.塞尔维亚(Av96762605,P1).mp4" type="video/mp4">
                                </video>
                            </div>
                            <br>
                        </div>
                        <br>

                        <div>
                            <h4>纽约州长：学中国吧！动用国家力量抗击疫情</h4>
                            <div class="vid-wrap">
                                <video id="video_1-2" controls="controls" controlslist="nodownload" preload="metadata" x5-playsinline="" playsinline="" webkit-playsinline="">
                                    <source src="videos/纽约州长：学中国吧！动用国家力量抗击疫情 - 1.纽约州修改(Av96767121,P1).mp4" type="video/mp4">
                                </video>
                            </div>
                            <br>
                        </div>
                        <br>

                        <div>
                            <h4>纽约时报记者谈中国抗疫：没有生命，何谈自由与幸福</h4>
                            <div class="vid-wrap"><video id="video_1-3" controls="controls" controlslist="nodownload" preload="metadata" x5-playsinline="" playsinline="" webkit-playsinline="">
                                <source src="videos/纽约时报记者谈中国抗疫：没有生命，何谈自由与幸福 - 1.MSNBC(Av96947061,P1).mp4" type="video/mp4">
                            </video>
                            </div>
                            <br>
                        </div>
                        <br>





                    </div>
                </div>


                <div class="col-md-12"><a href="index.jsp">返回首页</a></div>

            </div>
            <div class="clear"></div>




        </div>




    </article>
    <div class="clear"></div>
    <script>
        myVid = document.getElementById("video_1-1");
        var num = 0;
        myVid.addEventListener("play", function () {
            num = num + 1;
            myVid.play();
            // alert(num);
            document.tjform.videoid.value="video_1-1";
            document.tjform.videonum.value=num;
            document.tjform.submit();
        });
        myVid2 = document.getElementById("video_1-2");
        var num2 = 0;
        myVid2.addEventListener("play", function () {
            num2 = num2 + 1;
            myVid2.play();
            //alert(num2);
            document.tjform.videoid.value="video_1-2";
            document.tjform.videonum.value=num2;
            document.tjform.submit();
        });
        myVid3 = document.getElementById("video_1-3");
        var num3 = 0;
        myVid3.addEventListener("play", function () {
            num3 = num3 + 1;
            myVid3.play();
            //alert(num2);
            document.tjform.videoid.value="video_1-3";
            document.tjform.videonum.value=num3;
            document.tjform.submit();
        });
        myVid4 = document.getElementById("video_1-4");
        var num4 = 0;
        myVid4.addEventListener("play", function () {
            num4 = num4 + 1;
            myVid4.play();
            //alert(num2);
            document.tjform.videoid.value="video_1-4";
            document.tjform.videonum.value=num4;
            document.tjform.submit();
        });
        myVid5 = document.getElementById("video_1-5");
        var num5 = 0;
        myVid5.addEventListener("play", function () {
            num5 = num5 + 1;
            myVid5.play();
            //alert(num2);
            document.tjform.videoid.value="video_1-5";
            document.tjform.videonum.value=num5;
            document.tjform.submit();
        });
    </script>
    <form action="tongji.asp" method="post" target="targetIfr" name="tjform">
        <input type="hidden" name="videoid" value="">
        <input type="hidden" name="videonum" value="">
    </form>
    <iframe name="targetIfr" style="display:none"></iframe>
</div>
<footer class="container-fluid"><div class="footer">郭子杨 08173042 计科17-06</div></footer>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="js/jquery.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="js/bootstrap.min.js"></script>

</body>
</html>