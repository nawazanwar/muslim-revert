<div class="container">
  <div class="row">
    <div class="col-md-3">
      <aside class="f_widget">
        <div class="vero_widget">
          <h4>{lang 'About %site_name%'}</h4>
          <p>There are many variations of passag-es of Lorem Ipsum available, but the majority have suffered alteration in some form.</p>
          <p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything .</p>
        </div>
      </aside>
    </div>
    <div class="col-md-3">
      <aside class="f_widget">
        <div class="f_widget_title">
          <h3>{lang 'Affiliate'}</h3>
        </div>
        <div class="information_widget">
          <ul>
            <li><a href="{{ $design->url('page','main','about') }}" title="{lang 'About Us'}" data-load="ajax">{lang 'About'}</a></li>
            <li><a href="{{ $design->url('page','main','helpus') }}" title="{lang 'Help Us'}" data-load="ajax">{lang 'Help'}</a></li>

            {if $is_blog_enabled}
              <li><a href="{{ $design->url('blog','main','index') }}" title="{lang 'Company Blog | News'}" data-load="ajax">{lang 'Blog'}</a></li>
            {/if}

            {if $is_affiliate_enabled}
              <li><a href="{{ $design->url('affiliate','home','index') }}" title="{lang 'Become an Affiliate'}">{lang 'Affiliate'}</a></li>
            {/if}
            <li><a href="{{ $design->url('contact','contact','index') }}" title="{lang 'Contact Us'}">{lang 'Contact'}</a></li>
            <li><a href="{{ $design->url('page','main','link') }}" title="{lang 'Links'}" data-load="ajax">{lang 'Links'}</a></li>
            <li><a href="{{ $design->url('page','main','job') }}" title="{lang 'Jobs | Careers'}" data-load="ajax">{lang 'Jobs'}</a></li>
          </ul>
        </div>
      </aside>
    </div>
    <div class="col-md-3">
      <aside class="f_widget">
        <div class="f_widget_title">
          <h3>{lang 'Affiliate'}</h3>
        </div>
        <div class="recent_post_widget">
          <ul>
            <li><a href="{{ $design->url('page','main','faq') }}" title="{lang 'Frequently Asked Questions'}">{lang 'FAQ'}</a></li>
            <li><a href="{{ $design->url('page','main','terms') }}" title="{lang 'Terms of Use'}" data-load="ajax">{lang 'Terms of Use'}</a></li>
            <li><a href="{{ $design->url('page','main','privacy') }}" title="{lang 'Privacy Policy'}" data-load="ajax">{lang 'Privacy'}</a></li>
            <li><a href="{{ $design->url('page','main','legalnotice') }}" title="{lang 'Legal Notice'}" data-load="ajax">{lang 'Legal Notice'}</a></li>
            {if !$is_user_auth AND $is_newsletter_enabled}
              <li><a href="{{ $design->url('newsletter','home','subscription') }}" title="{lang 'Subscribe to our newsletter!'}" data-popup="block-page">{lang 'Newsletter'}</a></li>
            {/if}
            {if $is_invite_enabled}
              <li><a rel="nofollow" href="{{ $design->url('invite','home','invitation') }}" title="{lang 'Invite your friends!'}" data-popup="block-page">{lang 'Invite'}</a></li>
            {/if}
            <li><a href="{{ $design->url('xml','sitemap','index') }}" title="{lang 'Site Map'}" data-load="ajax">{lang 'Site Map'}</a></li>
          </ul>
        </div>
      </aside>
    </div>
    <div class="col-md-3">
      <aside class="f_widget">
        <div class="f_widget_title">
          <h3>Newsletter Signup</h3>
        </div>
        <div class="newsletter_widget">
          <p>Get Alert Directly Into Your Inbox After Each Post.</p>
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Enter your email">
            <span class="input-group-btn">
                                            <button class="btn btn-default" type="button"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
                                        </span>
          </div>
        </div>
      </aside>
    </div>
  </div>
</div>
