# discourse basilicum

Based on [Telraam's discourse theme](https://github.com/Telraam/discourse), which was based on [discourse-mint-theme](https://github.com/discourse/discourse-mint-theme), with that project duplicated at probably [around this commit](https://github.com/discourse/discourse-mint-theme/tree/d8a74c8c687c52ed990501a3d7fa99deb4663935).


## Configuration

### Banner image

The theme shows its `backgroundImage` asset (see `about.json`) as a banner above the top menu pages. Keep Discourse's own welcome banner disabled for this theme (**Admin > Welcome banner**, `/admin/config/welcome-banner`): its search box would replace the search in the header.

### DiscourseConnect sign up button

With DiscourseConnect enabled, Discourse doesn't show its own sign up button. Set the theme's `sso_signup_url` setting to show a header sign up button that links to that URL instead.
