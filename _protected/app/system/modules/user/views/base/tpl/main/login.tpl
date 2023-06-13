<section class="bg-white login-box col-md-5 pb-2">
    <article>
        <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 float-none pl-0">
            {{ LoginForm::display() }}
        </div>
    </article>
    <article class="pb-2">
        <div class="col-md-6 clear-both text-left">
            {lang 'Not registered yet?'}<a
                    href="{{ $design->url('user','signup','step1') }}">{lang 'Join Us Today!'}</a>
        </div>
        <div class="col-md-6 text-right">
            {{ LostPwdDesignCore::link('user') }}
            {if Framework\Mvc\Model\DbConfig::getSetting('userActivationType') == Registration::EMAIL_ACTIVATION}
                |
                <a rel="nofollow"
                   href="{{ $design->url('user','main','resendactivation') }}">{lang 'Resend activation email'}</a>
            {/if}
        </div>
    </article>
</section>