<template>
  <nav id="nav" :class="{ 'nav-fixed': isScrolled }" class="fixed top-0 left-0 w-full z-40 py-4 px-6 md:px-12 transition-all duration-300">
    <div class="container mx-auto flex justify-between items-center">
      <router-link to="/" class="flex items-center gap-2">
        <img src="/images/logo-placeholder.svg" alt="EFCIO Logo" class="w-12 h-12 object-contain">
        <span class="text-xl md:text-2xl font-bold text-primary">EFCIO</span>
      </router-link>
      <ul class="hidden md:flex gap-6 items-center">
        <li><router-link to="/" class="font-medium hover:text-primary transition-colors">首页</router-link></li>
        <li><router-link to="/about" class="font-medium hover:text-primary transition-colors">关于我们</router-link></li>
        <li><router-link to="/community" class="font-medium hover:text-primary transition-colors">共创社区</router-link></li>
        <li><router-link to="/events" class="font-medium hover:text-primary transition-colors">活动资讯</router-link></li>
        <li><router-link to="/news" class="font-medium hover:text-primary transition-colors">行业新闻</router-link></li>
        <li><router-link to="/contact" class="btn-primary">联系我们</router-link></li>
      </ul>
      <button id="menuBtn" @click="toggleMenu" class="md:hidden text-neutral1 text-2xl">
        <i :class="menuOpen ? 'fas fa-times' : 'fas fa-bars'"></i>
      </button>
    </div>
    <div id="mobileMenu" :class="{ 'hidden': !menuOpen }" class="md:hidden absolute top-full left-0 w-full bg-white shadow-lg py-4 px-6 flex flex-col gap-4">
      <router-link to="/" @click="closeMenu" class="py-2 border-b border-border hover:text-primary">首页</router-link>
      <router-link to="/about" @click="closeMenu" class="py-2 border-b border-border hover:text-primary">关于我们</router-link>
      <router-link to="/community" @click="closeMenu" class="py-2 border-b border-border hover:text-primary">共创社区</router-link>
      <router-link to="/events" @click="closeMenu" class="py-2 border-b border-border hover:text-primary">活动资讯</router-link>
      <router-link to="/news" @click="closeMenu" class="py-2 border-b border-border hover:text-primary">行业新闻</router-link>
      <router-link to="/contact" @click="closeMenu" class="btn-primary w-fit">联系我们</router-link>
    </div>
  </nav>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const isScrolled = ref(false)
const menuOpen = ref(false)

const handleScroll = () => {
  isScrolled.value = window.scrollY > 50
}

const toggleMenu = () => {
  menuOpen.value = !menuOpen.value
}

const closeMenu = () => {
  menuOpen.value = false
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>
