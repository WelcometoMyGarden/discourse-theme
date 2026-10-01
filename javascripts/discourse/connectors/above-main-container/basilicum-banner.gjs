import Component from "@glimmer/component";
import { service } from "@ember/service";

// Banner image on the top menu pages (latest, categories, ...).
export default class BasilicumBanner extends Component {
  @service router;
  @service siteSettings;

  get shouldShow() {
    const { currentRouteName } = this.router;
    return this.siteSettings.top_menu
      .split("|")
      .some((item) => `discovery.${item}` === currentRouteName);
  }

  <template>
    {{#if this.shouldShow}}
      <div class="basilicum-banner"></div>
    {{/if}}
  </template>
}
