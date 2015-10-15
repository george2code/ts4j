<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${controller != 'account'}">
    <div class="row" style="background-color: #fff; padding: 25px 0 0 0;">
        <div class="container content-sm">
            <div class="row equal-height-columns margin-bottom-40">
                <div class="col-sm-4 no-space">
                    <div class="easy-block-v3 equal-height-column first" style="height: 169px;">
                        <i class="fa fa-headphones"></i>
                        <div class="inner-faq-b">
                            <h3>Contact Us</h3>
                            <h4>1(123) 456</h4>
                            <p>Sed rutrum risus non massa sodales varius. Etiam aliquet tincidunt sapien, nec iaculis eros.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 no-space">
                    <div class="easy-block-v3 equal-height-column second" style="height: 169px;">
                        <i class="fa fa-location-arrow"></i>
                        <div class="inner-faq-b">
                            <h3>Email Us</h3>
                            <h4>info@anybiz.com</h4>
                            <p>Sed rutrum risus non massa sodales varius. Etiam aliquet tincidunt sapien, nec iaculis eros.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 no-space">
                    <div class="easy-block-v3 equal-height-column third" style="height: 169px;">
                        <i class="fa fa-support"></i>
                        <div class="inner-faq-b">
                            <h3>Support</h3>
                            <h4>Technical Support</h4>
                            <p>Sed rutrum risus non massa sodales varius. Etiam aliquet tincidunt sapien, nec iaculis eros.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer id="footer" class="footer">
        <div class="container">
            <ul class="nav nav-pills">
                <li role="presentation"><a href="/home/about">About</a></li>
                <li role="presentation"><a href="/pages/blog">Blog</a></li>
                <li role="presentation"><a href="/pages/faq">F.A.Q.</a></li>
                <li role="presentation"><a href="/pages/conditions">Terms &amp; Conditions</a></li>
                <li role="presentation"><a href="/pages/confidentialpolitic">Privacy Policy</a></li>
                <li role="presentation"><a href="/home/contacts">Contacts</a></li>
            </ul>
        </div>
    </footer>
</c:if>