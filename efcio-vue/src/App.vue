<template>
  <div class="bg-neutral3 text-neutral1 font-sans">
    <Navbar />
    <router-view />
  </div>
</template>

<script setup>
import Navbar from './components/Navbar.vue'
</script>
