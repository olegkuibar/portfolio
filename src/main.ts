import App from "./App.vue";

import { createApp } from "vue";

import { library } from "@fortawesome/fontawesome-svg-core";
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";

// @ts-ignore
import VTooltipPlugin from "v-tooltip";

import "./index.scss";
import { faSun } from "@fortawesome/free-solid-svg-icons";
import { faGithub, faJs, faVuejs } from "@fortawesome/free-brands-svg-icons";

library.add(faSun, faGithub, faVuejs, faJs);

createApp(App)
  .component("font-awesome-icon", FontAwesomeIcon)
  .use(VTooltipPlugin)
  .mount("#app");
