import { apiInitializer } from "discourse/lib/api";
import SsoSignupButton from "../components/sso-signup-button";

export default apiInitializer((api) => {
  api.headerButtons.add("sso-signup", SsoSignupButton, { before: "auth" });
});
