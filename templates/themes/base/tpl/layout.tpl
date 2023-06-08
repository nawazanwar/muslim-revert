{{ $design->htmlHeader() }}
{{ $design->softwareComment() }}
<html lang="{% $config->values['language']['lang'] %}">
  <head>
    <meta charset="{% $config->values['language']['charset'] %}" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <!-- Begin Title and Meta info -->
    <title>{if $page_title}{% $str->escape($str->upperFirst($page_title), true) %} - {site_name}{else}{site_name} - {slogan}{/if}</title>
    <meta name="description" content="{% $str->escape($str->upperFirst($meta_description), true) %}" />
    <meta name="keywords" content="{% $str->escape($meta_keywords, true) %}" />
    {main_include 'social-meta-tags.inc.tpl'}
    <meta name="robots" content="{meta_robots}" />
    <link rel="icon" href="{url_relative}favicon.ico" />
    <link rel="canonical" href="{current_url}" />
    <link rel="author" href="{url_root}humans.txt" />
    {if !$is_user_auth}{{ $design->regionalUrls() }}{/if}
    <meta name="author" content="{meta_author}" />
    <meta name="copyright" content="{meta_copyright}" />
    <meta name="category" content="{meta_category}" />
    <meta name="rating" content="{meta_rating}" />
    <meta name="distribution" content="{meta_distribution}" />
    {if $header}{header}{/if}

    {if $is_pwa_enabled}
      <link rel="manifest" href="{{ $design->url('pwa','main','manifest') }}" />
      <meta name="msapplication-config" content="{{ $design->url('pwa','main','browserconfig') }}" />
      {{ $design->staticFiles('js', PH7_LAYOUT . PH7_SYS . PH7_MOD . 'pwa/' . PH7_TPL . PH7_DEFAULT_THEME . PH7_SH . PH7_JS, 'sw-register.js') }}
      {main_include 'pwa-icon-tags.inc.tpl'}
    {/if}

    <!-- Begin Copyright pH7 Dating/Social CMS by Pierre-Henry SORIA, All Rights Reserved -->
    <!-- Do not modify or remove this code! Think of those who spend a lot of time to develop this CMS & Framework for you -->
    <meta name="creator" content="pH7Builder, Pierre-Henry Soria - {software_url}" />
    <meta name="designer" content="pH7Builder, Pierre-Henry Soria - {software_url}" />
    <meta name="generator" content="{software_name}, v{software_version}" />
    <!-- End Copyright -->

    <!-- End Title and Meta -->

    <!-- Begin Sheet CSS -->
    {{ $design->externalCssFile(PH7_URL_STATIC. PH7_CSS . 'js/jquery/smoothness/jquery-ui.css') }}
    {{ $design->externalCssFile(PH7_URL_STATIC. PH7_CSS . 'font-awesome.css') }}
    {{ $design->staticFiles('css', PH7_STATIC . PH7_CSS . 'js/jquery/box', 'box.css') }} {* We have to include box CSS alone because it includes images in its folder *}
    {{ $design->staticFiles('css', PH7_STATIC . PH7_CSS, 'bootstrap.css,bootstrap_customize.css,animate.css') }}
    {{ $design->staticFiles('css', PH7_LAYOUT . PH7_TPL . PH7_TPL_NAME . PH7_SH . PH7_CSS, 'common.css,style.css,layout.css,like.css,color.css,form.css,js/jquery/rating.css,js/jquery/apprise.css,js/jquery/tipTip.css,webuiPopover.css,owlCarousel.css,magnificPopup.css,datetimePicker.css,animate.css,bootstrapSelect.css,customStyle.css,customResponsive.css') }}
    {if $top_navbar_type === 'inverse'}
      {{ $design->staticFiles('css', PH7_LAYOUT . PH7_TPL . PH7_TPL_NAME . PH7_SH . PH7_CSS, 'menu_inverse.css') }}
    {else}
      {{ $design->staticFiles('css', PH7_LAYOUT . PH7_TPL . PH7_TPL_NAME . PH7_SH . PH7_CSS, 'menu.css') }}
    {/if}
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans" />

    {* Custom CSS code *}
    {{ $design->externalCssFile(PH7_RELATIVE.'asset/css/color.css') }}
    {{ $design->externalCssFile(PH7_RELATIVE.'asset/css/style.css') }}

    {if $is_user_auth AND $is_im_enabled}
      {{ $design->staticFiles('css', PH7_LAYOUT . PH7_SYS . PH7_MOD . 'im/' . PH7_TPL . PH7_DEFAULT_THEME . PH7_SH . PH7_CSS, 'messenger.css') }}
    {/if}

    {if $is_disclaimer}
      {{ $design->staticFiles('css', PH7_STATIC . PH7_CSS . PH7_JS, 'disclaimer.css') }}
    {/if}

    <!-- Other sheet CSS for modules etc. -->
    {{ $design->css() }}
    {designModel.files('css')}
    <!-- End CSS -->

    <!-- Begin Header JavaScript -->
    <script>var pH7Url={base:'{url_root}',relative:'{url_relative}',tpl:'{url_tpl}',stic:'{url_static}',tplImg:'{url_tpl_img}',tplJs:'{url_tpl_js}',tplMod:'{url_tpl_mod}',data:'{url_data}'};</script>
    {if $is_admin_auth}<script>pH7Url.admin_mod = '{url_admin_mod}';</script>{/if}
    {{ $design->externalJsFile(PH7_URL_STATIC . PH7_JS . 'jquery/jquery.js') }}
    <!-- End Header JavaScript -->

    {{ XmlDesignCore::sitemapHeaderLink() }}
    {{ XmlDesignCore::rssHeaderLinks() }}

    {designModel.analyticsApi()}
  </head>
  <body itemscope="itemscope" itemtype="http://schema.org/WebPage">
    <div class="header-holder" style="
    background-image: url('templates/themes/base/img/slider-2.jpg');
    background-position: unset;
    background-repeat: no-repeat;
    background-size: cover;
">
      <header class="header_menu_area affix-top">
        {if !$is_guest_homepage}
          {main_include 'top_menu.inc.tpl'}
        {/if}
        {if $is_guest_homepage}
          <nav class="navbar navbar-default bg-transparent">
            <div class="container">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{ $design->homePageUrl() }}">{site_name}</a>
              </div>

              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                  <li>
                    <a class="bold" href="{{ $design->url('user', 'signup', 'step1') }}" title="{lang 'Join Now!'}">
                      <i class="fa fa-user-plus"></i> {lang 'Join Now!'}
                    </a>
                  </li>
                  <li>
                    <a href="{{ $design->url('user', 'main', 'login') }}" title="{lang 'Login'}" data-load="ajax">
                      <i class="fa fa-sign-in"></i> {lang 'Login'}
                    </a>
                  </li>
                </ul>
              </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
          </nav>
        {/if}
        {*{main_include 'headings.inc.tpl'}*}
        {if !$is_guest_homepage}
          <div role="banner" class="center ad_468_60">
            {designModel.ad(468, 60)}
          </div>
        {/if}
        <div class="clear"></div>
      </header>
      <main class="container-fluid" style="padding-left: 0;padding-right:0;">
        {* Alert Message *}
        {{ $design->flashMsg() }}
        <div class="msg"></div>

        {* Loading JS Lang *}
        {* The file must be before the content of the site to avoid that the "pH7LangCore"  object is undefined *}
        {{ $lang_file =  Framework\Translate\Lang::getJsFile(PH7_PATH_STATIC . PH7_JS . PH7_LANG) }}
        {{ $design->staticFiles('js', PH7_STATIC . PH7_JS, PH7_LANG . $lang_file) }}

        {if !empty($manual_include)}
          {manual_include $manual_include}
        {elseif !empty($pOH_not_found)}
          {main_include 'error.inc.tpl'}
        {else}
          {auto_include}
        {/if}
      </main>
      <div role="banner" class="center ad_468_60">
        {designModel.ad(468, 60)}
      </div>
    </div>
    <footer class="text-left">
        <div class="footer_widgets_area">
            {main_include 'bottom_menu.inc.tpl'}
        </div>
        <div class="copyright">
          <div class="copyright_left">
            <div class="copyright_text">
              <h4>&copy; <ph:date value="Y" /> <strong>{site_name}</strong><span style="visibility: hidden;">{{ $design->link() }}</span></h4>
            </div>
          </div>
          <div class="copyright_right">
            <div class="copyright_social">
              <ul>
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      {if isDebug()}
        <div class="ft">
          <p><small>{{ $design->stat() }}</small></p>
        </div>
        <p class="small dark-red">
          {lang 'WARNING: Your site is in development mode! You can change the mode'} <a href="{{ $design->url(PH7_ADMIN_MOD,'tool','envmode') }}" title="{lang 'Change the Environment Mode'}" class="dark-red">{lang 'here'}</a>
        </p>
      {/if}
    </footer>
    <!-- End Footer -->

    <!-- Begin Footer JavaScript -->
    {{ $design->staticFiles('js', PH7_STATIC . PH7_JS, 'jquery/box.js,jquery/tipTip.js,bootstrap.js,common.js,str.js,holder.js') }}
    {{ $design->staticFiles('js', PH7_LAYOUT . PH7_TPL . PH7_TPL_NAME . PH7_SH . PH7_JS, 'global.js') }}
    {{ $design->externalJsFile(PH7_URL_STATIC . PH7_JS . 'jquery/jquery-ui.js') }} {* UI must be the last here, otherwise the jQueryUI buttons won't work *}

    {* SetUserActivity and User Chat *}
    {if $is_user_auth}
      {{ $design->staticFiles('js', PH7_STATIC . PH7_JS, 'setUserActivity.js,jquery/sound.js') }}

      {if $is_im_enabled}
        {{ $lang_file = Framework\Translate\Lang::getJsFile(PH7_PATH_TPL_SYS_MOD . 'im/' . PH7_TPL . PH7_DEFAULT_THEME . PH7_DS . PH7_JS . PH7_LANG) }}
        {{ $design->staticFiles('js', PH7_LAYOUT . PH7_SYS . PH7_MOD . 'im/' . PH7_TPL . PH7_DEFAULT_THEME . PH7_SH . PH7_JS, PH7_LANG . $lang_file . ',jquery.cookie.js,Messenger.js') }}
      {/if}
    {/if}

    {* Cookie info bar *}
    {if $is_cookie_consent_bar}
      <script src="https://cdn.jsdelivr.net/npm/cookie-bar/cookiebar-latest.min.js?always=1"></script>
    {/if}

    {* JS code Injection *}
    {{ $design->externalJsFile(PH7_RELATIVE.'asset/js/script.js') }}

    <!-- Other JavaScript files for modules etc. -->
    {{ $design->js() }}
    {designModel.files('js')}

    {if $is_user_auth}
      {main_include 'favicon_alert.inc.tpl'}
    {/if}

    <!-- Common Dialogs -->
    {{ $design->message() }}
    {{ $design->error() }}

    {if $is_disclaimer AND !AdminCore::isAdminPanel()}
      {{ $design->staticFiles('js', PH7_STATIC . PH7_JS . 'disclaimer', 'Disclaimer.js,common.js') }}
      {main_include 'disclaimer-dialog.inc.tpl'}
    {/if}
    <!-- End Footer JavaScript -->

{{ $design->htmlFooter() }}
