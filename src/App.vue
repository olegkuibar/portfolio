<template>
  <header>
    <div class="container mx-auto h-full">
      <Toolbar :navItems="navItems"></Toolbar>
    </div>
  </header>
  <main>
    <div class="wrapper">
      <section id="profile" class="profile-section">
        <Profile></Profile>
      </section>
      <div class="section-group-wrapper">
        <section id="projects">
          <Projects></Projects>
        </section>
        <section id="experience">
          <Experience></Experience>
        </section>
      </div>
    </div>
  </main>
  <footer>
    <div class="container mx-auto">
      <Footer></Footer>
    </div>
  </footer>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Toolbar from "./components/Toolbar.vue";
import { INavItem } from "./types/nav-items.interface";
import Profile from "./components/Profile.vue";
import Projects from "./components/Projects.vue";
import Experience from "./components/Experience.vue";
import Footer from "./components/Footer.vue";

import { SetThemeBasedOnPreferences } from "./utils/set-theme-based-on-preferences";

export default defineComponent({
  name: "App",
  components: {
    Footer,
    Experience,
    Projects,
    Profile,
    Toolbar,
  },
  setup() {
    SetThemeBasedOnPreferences();

    const navItems: INavItem[] = [];

    return { navItems };
  },
});
</script>

<style lang="scss">
@use 'scss/variables';

header,
main,
footer {
  display: flex;
}

header {
  flex-direction: column;
  height: variables.$header-size;
}
footer {
  flex-direction: row;
  height: variables.$footer-size;
}

main {
  flex: 1;
  flex-direction: row;

  @apply py-4;
}
main > div > *:not(:last-child) {
  @apply mb-5;
}

section {
  @apply p-5;
}

#app {
  display: flex;
  flex-direction: column;
}

.wrapper {
  @apply flex flex-col md:flex-row container px-5 md:px-0 mx-auto;
}
.section-group-wrapper {
  // overflow/scroll
  overflow: auto;
  max-height: 84.5vh;

  // common decoration
  @apply bg-gray-500 bg-opacity-20 p-5 rounded-xl md:rounded-none md:rounded-r-xl;

  // common
  @apply flex flex-col flex-1 md:w-8/12 w-full;

  section {
    @apply flex flex-1;
  }
}
.profile-section {
  // theme light
  @apply border-black border-opacity-25;

  // theme dark
  @apply dark:border-yellow-400 border-opacity-25;

  // common decoration
  @apply bg-gray-500 bg-opacity-20 rounded-xl md:border-r-2 md:border-dashed md:rounded-none md:rounded-l-xl;

  // common
  @apply flex flex-col w-full md:pr-4 md:w-4/12;
}

@media (min-width: 768px) {
  main > div > *:not(:last-child) {
    @apply mb-0;
  }
}
</style>
