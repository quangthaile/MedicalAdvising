<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24/11/2021
  Time: 2:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/11/2021
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="/assets/font/fontawesome/css/all.css">
    <link rel="stylesheet" href="/assets/css/base.css">
    <link rel="stylesheet" href="/assets/css/main.css">
    <link rel="icon" href="/assets/image/881599_medical_512x512.png" type="image/x-icon">
    <title>Medical Advice</title>
    <script type="text/javascript">
        var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
        (function () {
            var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
            s1.async = true;
            s1.src = 'https://embed.tawk.to/612f4f1bd6e7610a49b31057/1fegcq1ck';
            s1.charset = 'UTF-8';
            s1.setAttribute('crossorigin', '*');
            s0.parentNode.insertBefore(s1, s0);
        })();
    </script>
</head>
<body>
<jsp:include page="header.jsp"/>
    <!-- Container Begin -->
    <div class="container">
        <div class="grid">
            <div class="grid__row">
                <div class="grid__column-12">
                    <h2 class="title_news">Covid-19</h2>
                    <div class="slider">
                        <ul class="slider-dots">
                            <li class="slider-dot-item active" data-index="0"></li>
                            <li class="slider-dot-item" data-index="1"></li>
                            <li class="slider-dot-item" data-index="2"></li>
                            <li class="slider-dot-item" data-index="3"></li>
                            <li class="slider-dot-item" data-index="4"></li>
                            <li class="slider-dot-item" data-index="5"></li>
                        </ul>
                        <div class="slider-wrapper">
                            <div class="slider-main">
                                <div class="slider-item">
                                    <img src="../assets/image/5k.png" alt=""/>
                                </div>
                                <div class="slider-item">
                                    <img src="../assets/image/Kh???u Trang.png" alt=""/>
                                </div>
                                <div class="slider-item">
                                    <img src="../assets/image/Khu-khuan.png" alt=""/>
                                </div>
                                <div class="slider-item">
                                    <img src="../assets/image/khong-tu-tap.png" alt=""/>
                                </div>
                                <div class="slider-item">
                                    <img src="../assets/image/khoang-cach.png" alt=""/>
                                </div>
                                <div class="slider-item">
                                    <img src="../assets/image/khai_bao_y_te.png" alt=""/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="grid__grow">
                <h2 class="title_news" onclick="createBlog()">Tin t???c</h2>
                <div class="news__container">
                    <div class="news__blog">
                        <div class="news__blog__img">
                            <img src="../assets/image/luu.jpg" alt="">
                        </div>
                        <div class="news__blog__info">
                            <h4 class="news__blog__info__header">12 l???i ??ch s???c kh???e c???a qu??? l???u</h4>
                            <div class="news__blog__info__content"><span>L???u ???????c xem l?? m???t trong nh???ng lo???i tr??i c??y
                                    t???t nh???t cho s???c kh???e. Trong qu??? l???u ch???a m???t lo???t c??c h???p ch???t t??? th???c v???t c?? l???i
                                    m?? nhi???u lo???i th???c ph???m kh??c kh??ng th??? so s??nh ???????c. C??c nghi??n c???u ???? cho th???y r???ng
                                    ch??ng c?? th??? c?? nhi???u l???i ??ch cho c?? th??? v?? l??m gi???m nguy c?? m???c nhi???u b???nh kh??c
                                    nhau. D?????i ????y l?? 12 l???i ??ch s???c kh???e d???a tr??n b???ng ch???ng c???a qu??? l???u.</span>
                                <a href="#" class="news__blog__link">xem th??m...</a>
                            </div>
                        </div>
                    </div>
                    <div class="news__blog">
                        <div class="news__blog__img">
                            <img src="../assets/image/nho.jpg" alt="">
                        </div>
                        <div class="news__blog__info">
                            <h4 class="news__blog__info__header">12 l???i ??ch s???c kh???e c???a vi???c ??n nho h??ng ng??y</h4>
                            <div class="news__blog__info__content"><span>Nho l?? lo???i qu??? ch???a nhi???u ch???t dinh d?????ng,
                                    ch???t x??, kali... Nho cung c???p r???t nhi???u l???i ??ch s???c kh???e do h??m l?????ng ch???t dinh
                                    d?????ng v?? ch???t ch???ng oxy h??a cao. D?????i ????y l?? 12 l???i ??ch s???c kh???e h??ng ?????u c???a
                                    nho.</span>
                                <a href="#" class="news__blog__link">xem th??m...</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Container End -->
<jsp:include page="footer.jsp"/>
</body>
</html>

</body>
</html>
