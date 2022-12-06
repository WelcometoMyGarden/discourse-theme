import { withPluginApi } from "discourse/lib/plugin-api";
import { action } from "@ember/object";

export default {
  name: "sso-signup",
  initialize() {
    withPluginApi("0.8.7", (api) => {
      api.reopenWidget("header-buttons", {
        tagName: "span.header-buttons",
        
        html(attrs) {
          if (this.currentUser) {
            return;
          }

          const buttons = [];

          if (attrs.canSignUp && !attrs.topic) {
            buttons.push(
              this.attach("button", {
                label: "sign_up",
                className: "btn-primary btn-small sign-up-button",
                action: "showCreateAccount",
              })
            );
          }

          if (this.siteSettings.enable_discourse_connect && !attrs.topic) {
            buttons.push(
              this.attach("link", {
                label: "sign_up",
                className: "btn-primary btn-small sign-up-button sso-signup-button",
                href: settings.sso_signup_url,
              })
            );
          }

          buttons.push(
            this.attach("button", {
              label: "log_in",
              className: "btn-primary btn-small login-button",
              action: "showLogin",
              icon: "user",
            })
          );
          return buttons;
        },
      });
    });
  },
};
