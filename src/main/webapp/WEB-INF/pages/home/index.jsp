<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">

        <div class="row">

            <div class="col-md-4">

                <!-- Social login box -->
                <jsp:include page="../fragments/loginSocialBox.jsp" />


                <div class="main-box feed latest-review-box">
                    <header class="main-box-header clearfix">
                        <h2 class="pull-left">Latest reviews</h2>
                    </header>
                    <div class="main-box-body clearfix">
                        <!-- Latest reviews -->
                        <ul>
                            <c:forEach items="${reviews}" var="review">
                                <li class="clearfix">
                                    <div class="img">
                                        <img src="${review.userAvatar}" alt="" />
                                    </div>

                                    <div class="title">
                                        <a href="/users/3525226c-19e0-4339-b50f-2f5a5cb992ed">${review.userEmail}</a>
                                        <br /> published ${review.userReviewCount} review(s)
                                        <p class="company-name">about <a href="/review/et">${review.companyName}</a></p>
                                        <ul class="rate">
                                            <c:forEach var="i" begin="1" end="${review.rating}">
                                                <li><a href="#"></a></li>
                                            </c:forEach>
                                        </ul>
                                    </div>

                                    <div class="post-time">
                                            ${review.reviewShort}
                                    </div>
                                    <div class="time-ago">
                                        <i class="fa fa-clock-o"></i> <fmt:formatDate pattern="dd/MM/yyyy" value="${review.reviewDate}" />
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div><!-- left column -->


            <div class="col-md-8">
                <div class="row presentation text-center">
                    <img alt="" src="<spring:url value="/assets/images/video_bg.png"/>" />
                </div>

                <br />

                <div class="row">
                    <h3>Сегодня самый обсуждаемый отзыв дня о Adipisci aut eligendi.</h3>
                    <div class="panel panel-default wbg-color">
                        <div class="panel-body">
                            <div class="main-review clearfix">
                                <div class="ava pull-left text-center">
                                    <img data-holder-rendered="true" src="<spring:url value="/assets/images/team/our-team02.jpg"/>" class="img-circle" alt="" />
                                    <p>Рейтинг:</p>
                                    <ul class="rate pull-left">
                                        <li><a href="#"></a></li>
                                        <li><a href="#"></a></li>
                                        <li><a href="#"></a></li>
                                    </ul>
                                    <div class="clearfix"></div>
                                    <p><img alt="" src="<spring:url value="/assets/images/flag.png"/>"></p>
                                </div>
                                <div class="info pull-right">
                                    <div class="clearfix">
                                        <div class="pull-left">
                                            <h3>rollin@shanahan.biz</h3>
                                            <p>о <a href="/review/autem">Adipisci aut eligendi.</a></p>
                                        </div>
                                        <div class="pull-right">
                                            <p class="calendar pull-right">
                                                10/28/2014 /
                                                3:48 PM
                                            </p>
                                        </div>

                                    </div>
                                    <h4>Perferendis voluptatem similique minus eum voluptate quae ullam suscipit.</h4>
                                    <p class="full-review">Corporis error soluta porro aspernatur quaerat eveniet iure eaque sunt aliquam rem culpa qui atque eveniet et aliquid voluptates.</p>

                                    <div class="buttons clearfix">
                                        <a href="/users/f281f309-d244-46a6-8cc1-53209217b30b" class="btn btn-default pull-left">Еще отзывы</a>
                                    </div>
                                </div>
                            </div><!-- End main review -->
                        </div>
                    </div>

                </div>

                <!-- Render TOP 10 Categories -->

                <div class="row main-stat">
                    <div class="col-md-6 best">
                        <div class="column-head">
                            <h3>Лучших сайтов в категории</h3>
                            <a class="top_category_name" href="/category/gambling">
                                Games of Chance

                            </a>
                        </div>

                        <table class="table table-striped">
                            <tbody><tr><td>1</td><td><a href="companies/est_et_distinctio_occaecati">Sit aut laborum quo est.</a></td><td class="mark">3.2</td></tr><tr><td>2</td><td><a href="companies/voluptatum_aut_voluptatem_impedit_eaque">Voluptatem nobis consequuntur cum est.</a></td><td class="mark">3.0</td></tr><tr><td>3</td><td><a href="companies/voluptatem_ipsa_nobis_vitae_quia">Et repellendus.</a></td><td class="mark">2.8</td></tr><tr><td>4</td><td><a href="companies/recusandae_eum">Laborum ratione.</a></td><td class="mark">2.8</td></tr><tr><td>5</td><td><a href="companies/molestiae_quasi">Esse nulla debitis.</a></td><td class="mark">2.7</td></tr><tr><td>6</td><td><a href="companies/nihil_magnam_eveniet_similique_et">Et voluptas illum eum aliquam illo omnis.</a></td><td class="mark">2.7</td></tr><tr><td>7</td><td><a href="companies/sed_optio_fugiat">Reiciendis quidem sint exercitationem est et harum.</a></td><td class="mark">2.7</td></tr><tr><td>8</td><td><a href="companies/est_velit_aut_voluptatibus_ea_eos">Sit nihil deleniti pariatur et ut ducimus.</a></td><td class="mark">2.7</td></tr><tr><td>9</td><td><a href="companies/voluptates_eum_quia_nemo_nihil_et">Dolores non quis provident deleniti possimus.</a></td><td class="mark">2.7</td></tr><tr><td>10</td><td><a href="companies/beatae_unde_ratione">Corrupti iure.</a></td><td class="mark">2.6</td></tr></tbody>
                        </table>
                    </div><!-- left column -->


                    <div class="col-md-6 worse">
                        <div class="column-head">
                            <h3>Худших сайтов в категории</h3>
                            <a class="top_category_name" href="/category/gambling">
                                Games of Chance

                            </a>
                        </div>

                        <table class="table table-striped">
                            <tbody>
                                <tr><td>1</td><td><a href="companies/perferendis">Perspiciatis optio.</a></td><td class="mark">1.8</td></tr>
                                <tr><td>2</td><td><a href="companies/commodi_est_et">Incidunt temporibus iure est.</a></td><td class="mark">1.8</td></tr>
                                <tr><td>3</td><td><a href="companies/dolore_error_ut_ut_qui_voluptatum">Quisquam neque id.</a></td><td class="mark">1.8</td></tr>
                                <tr><td>4</td><td><a href="companies/dolore_ut">Unde quo amet sapiente.</a></td><td class="mark">1.8</td></tr>
                                <tr><td>5</td><td><a href="companies/et_fugit_et">Quia harum officiis.</a></td><td class="mark">1.9</td></tr>
                                <tr><td>6</td><td><a href="companies/illum_in_ex_delectus_id_error">Eum nemo voluptas ut est.</a></td><td class="mark">1.9</td></tr><tr><td>7</td><td><a href="companies/amet_laudantium">Hic itaque.</a></td><td class="mark">2.0</td></tr><tr><td>8</td><td><a href="companies/recusandae_similique_vel_dolores">Quis rerum dolorem.</a></td><td class="mark">2.0</td></tr><tr><td>9</td><td><a href="companies/saepe_autem_eveniet_labore">Quas dolores illum quia.</a></td><td class="mark">2.2</td></tr><tr><td>10</td><td><a href="companies/illum_est_quo_in">Eveniet odit ipsa explicabo cumque.</a></td><td class="mark">2.2</td></tr></tbody>
                        </table>
                    </div><!-- right column -->
                </div>





                <div class="row tags">
                    <div class="col-md-9 tag-list">
                        <ul role="tablist" class="nav nav-pills">
                            <li role="presentation" class="active">
                                <a data-value="12" href="/category/gambling">
                                    Games of Chance
                                    <span class="badge">50</span>
                                </a>
                            </li>
                            <li role="presentation">
                                <a data-value="13" href="/category/money">
                                    Money
                                    <span class="badge">59</span>
                                </a>
                            </li>
                            <li role="presentation">
                                <a data-value="14" href="/category/kids">
                                    Kids
                                    <span class="badge">49</span>
                                </a>
                            </li>
                            <li role="presentation">
                                <a data-value="15" href="/category/home_garden">
                                    Home and Garden
                                    <span class="badge">88</span>
                                </a>
                            </li>
                            <li role="presentation">
                                <a data-value="16" href="/category/computer">
                                    Computer and Accessories
                                    <span class="badge">40</span>
                                </a>
                            </li>
                            <li role="presentation">
                                <a data-value="17" href="/category/health_wellbeing">
                                    Health and Wellbeing
                                    <span class="badge">56</span>
                                </a>
                            </li>
                            <li role="presentation">
                                <a data-value="18" href="/category/leisure">
                                    Leisure
                                    <span class="badge">74</span>
                                </a>
                            </li>
                            <li role="presentation">
                                <a data-value="19" href="/category/food_beverage">
                                    Food and Beverage
                                    <span class="badge">46</span>
                                </a>
                            </li>
                            <li role="presentation">
                                <a data-value="20" href="/category/art">
                                    Art
                                    <span class="badge">83</span>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-md-3">
                        <a href="/categories" class="pull-right">Все категории</a>
                    </div>
                </div>


                <script type="text/javascript">
                    $(document).ready(function()
                    {
                        $('.tag-list a').click(function(e) {
                            e.preventDefault();

                            // render category name and link
                            $("a.top_category_name").text($(this).clone().children().remove().end().text());
                            $("a.top_category_name").attr("href", $(this).attr("href"));

                            // get current category
                            var categoryId = $(this).attr('data-value');

                            // render top companies
                            $.ajax({
                                url: '/home/topcategories',
                                type: "POST",
                                dataType: 'json',
                                data: {categoryId : categoryId}
                            }).done(function (data) {
                                $(".best table tbody").html(data["best"]);
                                $(".worse table tbody").html(data["worse"]);
                            });

                            // change active category highlight
                            $(".tag-list li").removeClass("active");
                            $(this).parent().addClass("active");
                        });


                        $(".tag-list li:first-child a").click();
                    });
                </script>

            </div>
        </div>



    </tiles:putAttribute>
</tiles:insertDefinition>




<%--<div class="row">--%>

<%--<div class="col-md-4">--%>
<%--@Html.Partial("Components/_PartialSocialLogin")--%>

<%--<div class="main-box feed latest-review-box">--%>
<%--<header class="main-box-header clearfix">--%>
<%--<h2 class="pull-left">Latest reviews</h2>--%>
<%--</header>--%>
<%--<div class="main-box-body clearfix">--%>
<%--<!-- Latest reviews -->--%>
<%--<ul>--%>
<%--@foreach (var item in Model.LatestReviews)--%>
<%--{--%>
<%--@Html.Partial("Review/_PartialLatestReviews", item)--%>
<%--}--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div><!-- left column -->--%>


<%--<div class="col-md-8">--%>
<%--<div class="row presentation text-center">--%>
<%--<img src="@Url.Content("~/images/video_bg.png")" alt="" />--%>
<%--</div>--%>

<%--<br />--%>

<%--<div class="row">--%>
<%--@Html.Partial("Review/_PartialDayReview", Model.ReviewOfTheDay)--%>
<%--</div>--%>

<%--<!-- Render TOP 10 Categories -->--%>
<%--@*        <%= render 'top_categories', :categories => @top_categories %>*@--%>
<%--@Html.Partial("Category/_PartialTopCategories")--%>

<%--</div>--%>
<%--</div>--%>