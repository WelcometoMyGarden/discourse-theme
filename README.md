# discourse basilicum

Based on [Telraam's discourse theme](https://github.com/Telraam/discourse), which was based on [discourse-mint-theme](https://github.com/discourse/discourse-mint-theme), with that project duplicated at probably [around this commit](https://github.com/discourse/discourse-mint-theme/tree/d8a74c8c687c52ed990501a3d7fa99deb4663935).


## Configuration

### Welcome banner

The banner image above the topic and category lists is Discourse core's welcome banner, styled by this theme as an image-only strip (no headline, no search). Configure it under **Admin > Welcome banner** (`/admin/config/welcome-banner`):

- **Enabled on themes**: select Basilicum
- **Page visibility**: `Top menu pages`
- **Location**: `Below site header`

The image comes from the theme's `backgroundImage` asset (see `about.json`), so leave the core banner image setting empty.

### DiscourseConnect sign up button

With DiscourseConnect enabled, Discourse doesn't show its own sign up button. Set the theme's `sso_signup_url` setting to show a header sign up button that links to that URL instead.
