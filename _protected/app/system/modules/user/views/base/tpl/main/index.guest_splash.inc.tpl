<section class="slider_area main-header-banner" style=" background-image: url('templates/themes/base/img/slider-2.jpg'); ">
    <div class="registration_form_area">
       <div class="container">
           <div class="col-sm-6">
               <div class="registration_form_s">
                   <h4>Registration</h4>
                   {{ JoinForm::step1() }}
               </div>
           </div>
           <div class="col-sm-6">
               <div class="form_man">
                   <img src="templates/themes/base/img/registration-man.png" alt="">
               </div>
           </div>
       </div>
    </div>
</section>
<section class="register_members_slider bg-white">
    <div class="container">
        <div class="welcome_title">
            <h3>Latest registered members</h3>
            <img src="templates/themes/base/img/w-title-b.png" alt="">
        </div>
        <div class="r_members_inner owl-carousel owl-theme owl-loaded">
            <div class="owl-prev" style=""><i class="fa fa-angle-left"></i></div>
            <div class="owl-stage-outer">
                <div class="owl-stage row">
                    <div class="owl-item cloned col-lg-2">
                        <div class="item">
                            <img src="templates/themes/base/img/r_members-1.png" alt="">
                            <h4>Nancy Martin</h4>
                            <h5>25 years old</h5>
                        </div>
                    </div>
                    <div class="owl-item cloned col-lg-2">
                        <div class="item">
                            <img src="templates/themes/base/img/r_members-2.png" alt="">
                            <h4>Kavin Smith</h4>
                            <h5>20 years old</h5>
                        </div>
                    </div>
                    <div class="owl-item cloned col-lg-2">
                        <div class="item">
                            <img src="templates/themes/base/img/r_members-3.png" alt="">
                            <h4>Lena Adms</h4>
                            <h5>26 years old</h5>
                        </div>
                    </div>
                    <div class="owl-item cloned col-lg-2">
                        <div class="item">
                            <img src="templates/themes/base/img/r_members-4.png" alt="">
                            <h4>Peter Nevill</h4>
                            <h5>20 years old</h5>
                        </div>
                    </div>
                    <div class="owl-item cloned col-lg-2">
                        <div class="item">
                            <img src="templates/themes/base/img/r_members-5.png" alt="">
                            <h4>Alex Jones</h4>
                            <h5>23 years old</h5>
                        </div>
                    </div>
                    <div class="owl-item cloned col-lg-2">
                        <div class="item">
                            <img src="templates/themes/base/img/r_members-6.png" alt="">
                            <h4>Nancy Martin</h4>
                            <h5>25 years old</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-controls">
                <div class="owl-dots" style="">
                    <div class="owl-dot active"><span></span></div>
                    <div class="owl-dot"><span></span></div>
                </div>
            </div>
            <div class="owl-next" style=""><i class="fa fa-angle-right"></i></div>
        </div>
    </div>
</section>
<section class="video_area">
    <div class="row m0 video_row">
        <iframe id="video"
                src="https://www.youtube.com/embed/bCIXMvE5nL4?enablejsapi=1&amp;html5=1&amp;rel=0&amp;fs=0&amp;loop=1&amp;showinfo=0&amp;disablekb=1&amp;controls=0&amp;color=white&amp;playlist=bCIXMvE5nL4"
                title="YouTube video player"></iframe>
        <div class="overlay" id="video_overlay">
            <div class="overlay_bg" style="background: url(templates/themes/base/img/video_bg.jpg)"></div>
            <div class="play_pause row m0">
                <i class="fa fa-play" aria-hidden="true" id="play_btn"></i>
                <i class="fa fa-pause" aria-hidden="true" id="pause_btn"></i>
                <div class="video_content">
                    <h4>Find your perfect match With us </h4>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="welcome_area bg-white">
    <div class="container">
        <div class="welcome_title">
            <h3>Welcome to <span>{site_name}</span></h3>
            <img src="templates/themes/base/img/w-title-b.png" alt="">
        </div>
        <div class="row">
            <div class="col-sm-3 col-xs-6">
                <div class="welcome_item">
                    <img src="templates/themes/base/img/w-icon-1.png" alt="">
                    <h4 class="counter">1611</h4>
                    <h6>Total Members</h6>
                </div>
            </div>
            <div class="col-sm-3 col-xs-6">
                <div class="welcome_item">
                    <img src="templates/themes/base/img/w-icon-2.png" alt="">
                    <h4 class="counter">500</h4>
                    <h6>Members online</h6>
                </div>
            </div>
            <div class="col-sm-3 col-xs-6">
                <div class="welcome_item">
                    <img src="templates/themes/base/img/w-icon-3.png" alt="">
                    <h4 class="counter">300</h4>
                    <h6>Men online</h6>
                </div>
            </div>
            <div class="col-sm-3 col-xs-6">
                <div class="welcome_item">
                    <img src="templates/themes/base/img/w-icon-4.png" alt="">
                    <h4 class="counter">200</h4>
                    <h6>Women online</h6>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="blog_slider_area bg-white">
    <div class="blog_slider_inner owl-carousel owl-theme owl-loaded">
        <div class="owl-prev" style=""><i class="fa fa-chevron-left"></i></div>
        <div class="owl-stage-outer">
            <div class="owl-stage row">
                <div class="owl-item cloned col-lg-3">
                    <div class="item">
                        <div class="single_blog_slider">
                            <img src="templates/themes/base/img/blog_slider-1.jpg" alt="">
                            <div class="blog_item_content">
                                <h4>Your Blog title here</h4>
                                <h5>03 Sep, 2016 <span>|</span> Dating</h5>
                                <ul>
                                    <li><a href="#"><i class="fa fa-search"></i></a></li>
                                    <li><a href="#"><i class="fa fa-link"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-item cloned col-lg-3">
                    <div class="item">
                        <div class="single_blog_slider">
                            <img src="templates/themes/base/img/blog_slider-4.jpg" alt="">
                            <div class="blog_item_content">
                                <h4>Your Blog title here</h4>
                                <h5>03 Sep, 2016 <span>|</span> Dating</h5>
                                <ul>
                                    <li><a href="#"><i class="fa fa-search"></i></a></li>
                                    <li><a href="#"><i class="fa fa-link"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-item cloned col-lg-3">
                    <div class="item">
                        <div class="single_blog_slider">
                            <img src="templates/themes/base/img/blog_slider-3.jpg" alt="">
                            <div class="blog_item_content">
                                <h4>Your Blog title here</h4>
                                <h5>03 Sep, 2016 <span>|</span> Dating</h5>
                                <ul>
                                    <li><a href="#"><i class="fa fa-search"></i></a></li>
                                    <li><a href="#"><i class="fa fa-link"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-item cloned col-lg-3">
                    <div class="item">
                        <div class="single_blog_slider">
                            <img src="templates/themes/base/img/blog_slider-4.jpg" alt="">
                            <div class="blog_item_content">
                                <h4>Your Blog title here</h4>
                                <h5>03 Sep, 2016 <span>|</span> Dating</h5>
                                <ul>
                                    <li><a href="#"><i class="fa fa-search"></i></a></li>
                                    <li><a href="#"><i class="fa fa-link"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="owl-controls">
            <div class="owl-dots" style="">
                <div class="owl-dot active"><span></span></div>
                <div class="owl-dot"><span></span></div>
            </div>
        </div>
        <div class="owl-next" style=""><i class="fa fa-chevron-right"></i></div>
    </div>
</section>
<section class="find_soul_area bg-white">
    <div class="container">
        <div class="welcome_title">
            <h3>Step to Find Your Soul mate</h3>
            <img src="templates/themes/base/img/w-title-b.png" alt="">
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="find_soul_item">
                    <img src="templates/themes/base/img/soul-1.png" alt="">
                    <h4>Create a profile</h4>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                        alteration.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="find_soul_item">
                    <img src="templates/themes/base/img/soul-2.png" alt="">
                    <h4>Find matches </h4>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                        alteration.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="find_soul_item">
                    <img src="templates/themes/base/img/soul-3.png" alt="">
                    <h4>Start Dating</h4>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                        alteration.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="testimonials_area bg-white">
    <div class="container">
        <div class="welcome_title">
            <h3>Testimonials</h3>
            <img src="templates/themes/base/img/w-title-b.png" alt="">
        </div>
        <div class="testimonials_slider owl-carousel owl-theme owl-loaded">
            <div class="owl-stage-outer">
                <div class="owl-stage">
                    <div class="owl-item cloned">
                        <div class="item">
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="test_left_content">
                                        <p>On the other hand, we denounce with righteous indignation and dislike men who
                                            are so beguiled and demoralized by the charms of pleasure of the moment,
                                            <span>so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</span>
                                            These cases are perfectly simple and easy to distinguish. In a free hour,
                                            when our power of choice is untrammelled and when nothing prevents.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="row">
                                    <div class="test_man">
                                        <img class="img-circle" src="templates/themes/base/img/testimonials-1.png"
                                             alt="">
                                        <h4>David Parkar</h4>
                                        <h5>Graphic Designer </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-controls">
                <div class="owl-nav">
                    <div class="owl-prev" style=""><i class="fa fa-angle-left"></i></div>
                    <div class="owl-next" style=""><i class="fa fa-angle-right"></i></div>
                </div>
                <div class="owl-dots" style="display: block;">
                    <div class="owl-dot active"><span></span></div>
                    <div class="owl-dot"><span></span></div>
                </div>
            </div>
        </div>
    </div>
</section>

{*
{if $is_bg_video}
    *}
{* If Splash Video Background is enabled in the admin panel *}{*

    {manual_include 'splash_video_background.inc.tpl'}
{/if}

<div class="col-md-8 login_block animated fadeInDown">
    {{ LoginSplashForm::display() }}
</div>

{if !$is_mobile}
    <div class="pull-left col-lg-7 col-md-8 col-sm-7 col-xs-11 animated fadeInLeft">
        {manual_include 'user_promo_block.inc.tpl'}
    </div>
{/if}

<div class="pull-left col-lg-4 col-md-4 col-sm-5 col-xs-11 animated fadeInRight">
    <h1 class="red3 italic underline">{headline}</h1>

    *}
{* For small devices, the following will be activated through /templates/themes/base/css/splash.css *}{*

    <div class="login_button hidden center">
        <a href="{{ $design->url('user','main','login') }}" class="btn btn-primary btn-lg">
            <strong>{lang 'Login'}</strong>
        </a>
    </div>

    {{ JoinForm::step1() }}

    {if $is_mobile}
        <div class="s_tMarg"></div>
        {manual_include 'user_promo_block.inc.tpl'}
    {/if}
</div>
*}
