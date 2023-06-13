<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 py-5 bg-white ">
    <div class="pull-left col-xs-12 col-sm-7 col-md-6 col-lg-7 animated fadeInLeft">
        {include 'progressbar.inc.tpl'}
        {{ JoinForm::step1() }}
    </div>
    <div class="pull-right col-xs-12 col-sm-5 col-md-5 col-md-offset-1 col-lg-4 animated fadeInRight">
        <div class="center">
            <p>
                {lang 'Already registered?'} <a href="{{ $design->url('user','main','login') }}"><strong>{lang 'Sign In!'}</strong></a>
            </p>
            {if !empty($user_ref)}
                <a href="{{ $design->getUserAvatar($username, $sex, 400) }}" title="{first_name}" data-popup="image">
                    <img
                        class="avatar s_marg"
                        alt="{first_name} {username}"
                        title="{first_name}"
                        src="{{ $design->getUserAvatar($username, $sex, 400) }}"
                    />
                </a>
            {else}
                <div class="s_tMarg">
                    {{ $userDesignModel->profilesBlock() }}
                </div>
            {/if}
        </div>
    </div>
</div>
