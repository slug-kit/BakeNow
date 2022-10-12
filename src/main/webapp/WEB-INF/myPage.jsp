<%-- 
    Document   : myPage
    Created on : Oct 12, 2022, 12:39:43 PM
    Author     : tlminh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>jQuery Pagination plugin</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
        <script src="https://code.jquery.com/jquery-3.2.1.js" ></script>
        <!-- JS tạo nút bấm di chuyển trang start -->
        <script src="http://1892.yn.lt/blogger/JQuery/Pagging/js/jquery.twbsPagination.js" type="text/javascript"></script>
        <!-- JS tạo nút bấm di chuyển trang end -->
        <script type="text/javascript">
            $(function () {
                var pageSize = 12; // Hiển thị 12 sản phẩm trên 1 trang
                showPage = function (page) {
                    $(".contentPage").hide();
                    $(".contentPage").each(function (n) {
                        if (n >= pageSize * (page - 1) && n < pageSize * page)
                            $(this).show();
                    });
                };
                showPage(1);
                ///** Cần truyền giá trị vào đây **///
                var totalRows = 40; // Tổng số sản phẩm hiển thị
                var btnPage = 5; // Số nút bấm hiển thị di chuyển trang
                var iTotalPages = Math.ceil(totalRows / pageSize);

                var obj = $('#pagination').twbsPagination({
                    totalPages: iTotalPages,
                    visiblePages: btnPage,
                    onPageClick: function (event, page) {
                        console.info(page);
                        showPage(page);
                    }
                });
                console.info(obj.data());
            });
        </script>
        <style>
            #pagination {
                display: flex;
                display: -webkit-flex; /* Safari 8 */
                flex-wrap: wrap;
                -webkit-flex-wrap: wrap; /* Safari 8 */
                justify-content: center;
                -webkit-justify-content: center;
            }

            .contentPage{
                width: 24%;
                display: inline-block;
            }
        </style>
    </head>
    <body style="width: 500px; margin:auto;">
        <!-- Hiên thị nút bấm -->
        <ul id="pagination"></ul>

        <!-- Hiển thị sản phẩm -->
        <div class="contentPage"">1 I have some content</div>
        <div class="contentPage"">2 I have some content</div>
        <div class="contentPage">3 I have some content</div>
        <div class="contentPage">4 I have some content</div>
        <div class="contentPage">5 I have some content</div>
        <div class="contentPage">6 I have some content</div>
        <div class="contentPage">7 I have some content</div>
        <div class="contentPage">8 I have some content</div>
        <div class="contentPage">9 I have some content</div>
        <div class="contentPage">10 I have some content</div>
        <div class="contentPage">11 I have some content</div>
        <div class="contentPage">12 I have some content</div>
        <div class="contentPage">13 I have some content</div>
        <div class="contentPage">14 I have some content</div>
        <div class="contentPage">15 I have some content</div>
        <div class="contentPage">16 I have some content</div>
        <div class="contentPage">17 I have some content</div>
        <div class="contentPage">18 I have some content</div>
        <div class="contentPage">19 I have some content</div>
        <div class="contentPage">20 I have some content</div>
        <div class="contentPage">21 I have some content</div>
        <div class="contentPage">22 I have some content</div>
        <div class="contentPage">23 I have some content</div>
        <div class="contentPage">24 I have some content</div>
        <div class="contentPage">25 I have some content</div>
        <div class="contentPage">26 I have some content</div>
        <div class="contentPage">27 I have some content</div>
        <div class="contentPage">28 I have some content</div>
        <div class="contentPage">29 I have some content</div>
        <div class="contentPage">30 I have some content</div>
        <div class="contentPage">31 I have some content</div>
        <div class="contentPage">32 I have some content</div>
        <div class="contentPage">33 I have some content</div>
        <div class="contentPage">34 I have some content</div>
        <div class="contentPage">35 I have some content</div>
        <div class="contentPage">36 I have some content</div>
        <div class="contentPage">37 I have some content</div>
        <div class="contentPage">38 I have some content</div>
        <div class="contentPage">39 I have some content</div>
        <div class="contentPage">40 I have some content</div>

    </body>
</html>