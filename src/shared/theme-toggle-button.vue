<template>
  <button
    v-tooltip="theme === 'dark' ? 'Switch to Light Theme' : 'Switch to Dark Theme'"
    :key="theme"
    type="button"
    @click="toggle()"
    class="outline-none focus-within:shadow-none focus-within:outline-none"
  >
    <font-awesome-icon
      icon="sun"
      size="lg"
      class="text-black dark:text-yellow-300"
    />
  </button>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { SetThemeBasedOnPreferences } from "../utils/set-theme-based-on-preferences";

export default defineComponent({
  name: "theme-toggle-button",
  data: () => ({ theme: "light" }),
  methods: {
    toggle(): void {
      localStorage.theme === "dark"
        ? (localStorage.theme = "light")
        : (localStorage.theme = "dark");

      this.theme = localStorage.theme;

      // Whenever the user explicitly chooses light mode
      // localStorage.theme = 'light'

      // Whenever the user explicitly chooses dark mode
      //       localStorage.theme = 'dark'

      // Whenever the user explicitly chooses to respect the OS preference
      //       localStorage.removeItem('theme')

      SetThemeBasedOnPreferences();
    },
  },
});
</script>

<style scoped></style>
