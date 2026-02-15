<template>
  <section id="10th" class="py-20 px-6 md:px-12 bg-white">
    <div class="container mx-auto">
      <h2 class="section-title text-center relative after:bg-anniversary">EFCIO 十周年纪念</h2>
      <p class="text-neutral2 text-center max-w-2xl mx-auto mb-16">十年风雨兼程，十年携手共进，每一个瞬间都值得珍藏</p>

      <div class="max-w-4xl mx-auto mb-20">
        <h3 class="text-2xl font-bold text-center mb-12">十年发展时光轴</h3>
        <div class="relative">
          <div class="absolute left-1/2 top-0 bottom-0 w-0.5 bg-anniversary/30 -translate-x-1/2"></div>
          <div class="flex flex-col md:flex-row items-center mb-12 relative">
            <div class="md:w-1/2 md:text-right pr-0 md:pr-12 mb-4 md:mb-0">
              <h4 class="text-xl font-semibold text-anniversary">2014</h4>
              <p class="text-neutral2">EFCIO正式成立，开启企业数字化服务之路</p>
            </div>
            <div class="absolute left-1/2 w-4 h-4 bg-anniversary rounded-full -translate-x-1/2 z-10"></div>
            <div class="md:w-1/2 md:pl-12"></div>
          </div>
          <div class="flex flex-col md:flex-row items-center mb-12 relative">
            <div class="md:w-1/2 md:pr-12 order-2 md:order-1"></div>
            <div class="absolute left-1/2 w-4 h-4 bg-anniversary rounded-full -translate-x-1/2 z-10"></div>
            <div class="md:w-1/2 md:pl-12 order-1 md:order-2 mb-4 md:mb-0">
              <h4 class="text-xl font-semibold text-anniversary">2018</h4>
              <p class="text-neutral2">生态合作平台搭建，签约首批核心合作伙伴</p>
            </div>
          </div>
          <div class="flex flex-col md:flex-row items-center mb-12 relative">
            <div class="md:w-1/2 md:text-right pr-0 md:pr-12 mb-4 md:mb-0">
              <h4 class="text-xl font-semibold text-anniversary">2021</h4>
              <p class="text-neutral2">数字化解决方案升级，服务企业数量突破千级</p>
            </div>
            <div class="absolute left-1/2 w-4 h-4 bg-anniversary rounded-full -translate-x-1/2 z-10"></div>
            <div class="md:w-1/2 md:pl-12"></div>
          </div>
          <div class="flex flex-col md:flex-row items-center relative">
            <div class="md:w-1/2 md:pr-12 order-2 md:order-1"></div>
            <div class="absolute left-1/2 w-4 h-4 bg-anniversary rounded-full -translate-x-1/2 z-10"></div>
            <div class="md:w-1/2 md:pl-12 order-1 md:order-2">
              <h4 class="text-xl font-semibold text-anniversary">2024</h4>
              <p class="text-neutral2">十周年华诞，生态伙伴超百家，开启新十年征程</p>
            </div>
          </div>
        </div>
      </div>

      <h3 class="text-2xl font-bold text-center mb-8">十周年纪念照片墙</h3>
      <p class="text-neutral2 text-center max-w-2xl mx-auto mb-12">定格美好瞬间，见证十年成长</p>
      <div class="photo-grid max-w-6xl mx-auto">
        <div v-for="(photo, index) in photos" :key="index" class="photo-item card-hover">
          <img :src="photo.src" :alt="photo.alt" class="w-full h-full object-cover rounded-lg cursor-pointer photo-img" @click="openPreview(index)">
        </div>
      </div>

      <div class="max-w-4xl mx-auto mt-20 text-center">
        <div class="inline-block border-2 border-anniversary/30 rounded-lg p-8 md:p-12">
          <p class="text-lg md:text-xl italic text-neutral2 mb-4">「十载耕耘，初心如磐；生态共生，未来可期。」</p>
          <p class="font-bold text-primary text-xl md:text-2xl">EFCIO 十周年品牌寄语</p>
        </div>
      </div>
    </div>

    <div class="preview-mask" id="previewMask" :class="{ 'hidden': !previewOpen }" @click.self="closePreview">
      <button @click="closePreview" class="absolute top-6 right-6 text-white text-3xl hover:text-anniversary transition-colors">
        <i class="fas fa-times"></i>
      </button>
      <button @click="prevPhoto" class="absolute left-6 top-1/2 -translate-y-1/2 text-white text-3xl hover:text-anniversary transition-colors">
        <i class="fas fa-chevron-left"></i>
      </button>
      <img :src="photos[currentIndex].src" :alt="photos[currentIndex].alt" class="preview-img" id="previewImg">
      <button @click="nextPhoto" class="absolute right-6 top-1/2 -translate-y-1/2 text-white text-3xl hover:text-anniversary transition-colors">
        <i class="fas fa-chevron-right"></i>
      </button>
    </div>
  </section>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const previewOpen = ref(false)
const currentIndex = ref(0)

const photos = ref([
  { src: '/images/10th/1.jpg', alt: '十周年纪念照片1' },
  { src: '/images/10th/2.png', alt: '十周年纪念照片2' },
  { src: '/images/10th/3.jpg', alt: '十周年纪念照片3' },
  { src: '/images/10th/4.jpg', alt: '十周年纪念照片4' },
  { src: '/images/10th/5.jpg', alt: '十周年纪念照片5' },
  { src: '/images/10th/6.jpg', alt: '十周年纪念照片6' },
  { src: '/images/10th/7.jpeg', alt: '十周年纪念照片7' },
  { src: '/images/10th/8.jpg', alt: '十周年纪念照片8' },
  { src: '/images/10th/9.jpg', alt: '十周年纪念照片9' },
  { src: '/images/10th/10.jpg', alt: '十周年纪念照片10' }
])

const openPreview = (index) => {
  currentIndex.value = index
  previewOpen.value = true
  document.body.style.overflow = 'hidden'
}

const closePreview = () => {
  previewOpen.value = false
  document.body.style.overflow = 'auto'
}

const prevPhoto = () => {
  currentIndex.value = (currentIndex.value - 1 + photos.value.length) % photos.value.length
}

const nextPhoto = () => {
  currentIndex.value = (currentIndex.value + 1) % photos.value.length
}

const handleKeydown = (e) => {
  if (previewOpen.value) {
    if (e.key === 'ArrowLeft') {
      prevPhoto()
    } else if (e.key === 'ArrowRight') {
      nextPhoto()
    } else if (e.key === 'Escape') {
      closePreview()
    }
  }
}

onMounted(() => {
  document.addEventListener('keydown', handleKeydown)
})

onUnmounted(() => {
  document.removeEventListener('keydown', handleKeydown)
})
</script>
