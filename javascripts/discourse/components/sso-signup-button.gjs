import Component from "@glimmer/component";
import { service } from "@ember/service";
import { i18n } from "discourse-i18n";

// Core hides its own sign up button when DiscourseConnect is enabled, because
// signing up then happens on the DiscourseConnect provider. This links there.
export default class SsoSignupButton extends Component {
  @service currentUser;
  @service header;
  @service site;
  @service siteSettings;

  get shouldShow() {
    return (
      !this.currentUser &&
      this.siteSettings.enable_discourse_connect &&
      settings.sso_signup_url &&
      !this.header.topicInfoVisible &&
      !(this.site.mobileView && settings.hide_sso_signup_button_on_mobile)
    );
  }

  <template>
    {{#if this.shouldShow}}
      <a
        href={{settings.sso_signup_url}}
        class="btn btn-primary btn-small sign-up-button sso-signup-button"
      >
        {{i18n "sign_up"}}
      </a>
    {{/if}}
  </template>
}
