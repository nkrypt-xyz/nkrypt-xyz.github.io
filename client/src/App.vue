<template>
  <router-view />
</template>

<script setup lang="ts">
import { useQuasar } from 'quasar';
import { onMounted } from 'vue';

const $q = useQuasar();

onMounted(() => {
  // Force dark mode
  $q.dark.set(true);
});
</script>
