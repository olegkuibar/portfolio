<style lang="postcss" scoped>
.nav-wrapper {
  /*@apply relative px-4 pt-6 sm:px-6 lg:px-8;*/
  @apply relative h-full px-4 sm:px-6 lg:px-8;
}

.nav-wrapper .nav {
  @apply relative flex items-center justify-between h-full;
}
</style>
<template>
  <div class="nav-wrapper">
    <nav class="nav" aria-label="Global">
      <div class="flex items-center">
        <span class="text-green-600 dark:text-yellow-300">Oleg K.</span>
        &nbsp; &mdash; &nbsp; Software Developer
      </div>
      <theme-toggle-button></theme-toggle-button>
    </nav>
  </div>
</template>
<script lang="ts">
import { defineComponent, PropType } from "vue";

import ThemeToggleButton from "../shared/theme-toggle-button.vue";

import { INavItem } from "../types/nav-items.interface";

export default defineComponent({
  name: "Toolbar",
  props: {
    navItems: {
      type: Object as PropType<INavItem[]>,
      required: true,
    },
  },
  components: {
    ThemeToggleButton,
  },
  setup() {},
});
</script>
