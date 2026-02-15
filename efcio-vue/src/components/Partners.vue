<template>
  <section id="partners" class="py-20 px-6 md:px-12 bg-neutral3">
    <div class="container mx-auto">
      <h2 class="section-title text-center">合作伙伴</h2>
      <p class="text-neutral2 text-center max-w-2xl mx-auto mb-12">往期合作不完全名单，企业排名不分先后，感谢每一位伙伴的同行与支持</p>
      <div class="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-8 gap-4 md:gap-6">
        <div v-for="partner in partners" :key="partner.id" class="card-hover bg-white rounded-lg p-3 flex items-center justify-center h-20">
          <img :src="partner.logo" :alt="partner.name" class="max-w-full max-h-10 object-contain">
        </div>
      </div>
      <div class="text-center mt-12">
        <a href="#" class="btn-primary">查看全部合作伙伴</a>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'

const partners = ref([
  { id: 1, name: '合作伙伴 1', logo: '/images/partners/10.png' },
  { id: 2, name: '合作伙伴 2', logo: '/images/partners/11.png' },
  { id: 3, name: '合作伙伴 3', logo: '/images/partners/13.png' },
  { id: 4, name: '合作伙伴 4', logo: '/images/partners/14.png' },
  { id: 5, name: '合作伙伴 5', logo: '/images/partners/18.png' },
  { id: 6, name: '合作伙伴 6', logo: '/images/partners/2.jpeg' },
  { id: 7, name: '合作伙伴 7', logo: '/images/partners/21.png' },
  { id: 8, name: '合作伙伴 8', logo: '/images/partners/22.png' },
  { id: 9, name: '合作伙伴 9', logo: '/images/partners/23.jpeg' },
  { id: 10, name: '合作伙伴 10', logo: '/images/partners/24.png' },
  { id: 11, name: '合作伙伴 11', logo: '/images/partners/25.jpeg' },
  { id: 12, name: '合作伙伴 12', logo: '/images/partners/26.png' },
  { id: 13, name: '合作伙伴 13', logo: '/images/partners/27.jpeg' },
  { id: 14, name: '合作伙伴 14', logo: '/images/partners/28.jpeg' },
  { id: 15, name: '合作伙伴 15', logo: '/images/partners/29.png' },
  { id: 16, name: '合作伙伴 16', logo: '/images/partners/3.jpeg' },
  { id: 17, name: '合作伙伴 17', logo: '/images/partners/30.png' },
  { id: 18, name: '合作伙伴 18', logo: '/images/partners/31.jpeg' },
  { id: 19, name: '合作伙伴 19', logo: '/images/partners/32.jpeg' },
  { id: 20, name: '合作伙伴 20', logo: '/images/partners/33.jpeg' },
  { id: 21, name: '合作伙伴 21', logo: '/images/partners/34.jpeg' },
  { id: 22, name: '合作伙伴 22', logo: '/images/partners/35.jpeg' },
  { id: 23, name: '合作伙伴 23', logo: '/images/partners/36.png' },
  { id: 24, name: '合作伙伴 24', logo: '/images/partners/37.jpeg' },
  { id: 25, name: '合作伙伴 25', logo: '/images/partners/4.jpeg' },
  { id: 26, name: '合作伙伴 26', logo: '/images/partners/40.jpeg' },
  { id: 27, name: '合作伙伴 27', logo: '/images/partners/45.png' },
  { id: 28, name: '合作伙伴 28', logo: '/images/partners/5.jpeg' },
  { id: 29, name: '合作伙伴 29', logo: '/images/partners/56.png' },
  { id: 30, name: '合作伙伴 30', logo: '/images/partners/59.png' },
  { id: 31, name: '合作伙伴 31', logo: '/images/partners/6.jpeg' },
  { id: 32, name: '合作伙伴 32', logo: '/images/partners/67.png' },
  { id: 33, name: '合作伙伴 33', logo: '/images/partners/7.jpeg' },
  { id: 34, name: '合作伙伴 34', logo: '/images/partners/71.jpeg' },
  { id: 35, name: '合作伙伴 35', logo: '/images/partners/72.png' },
  { id: 36, name: '合作伙伴 36', logo: '/images/partners/73.png' },
  { id: 37, name: '合作伙伴 37', logo: '/images/partners/75.png' },
  { id: 38, name: '合作伙伴 38', logo: '/images/partners/76.png' },
  { id: 39, name: '合作伙伴 39', logo: '/images/partners/77.png' },
  { id: 40, name: '合作伙伴 40', logo: '/images/partners/78.png' },
  { id: 41, name: '合作伙伴 41', logo: '/images/partners/79.png' },
  { id: 42, name: '合作伙伴 42', logo: '/images/partners/8.jpeg' },
  { id: 43, name: '合作伙伴 43', logo: '/images/partners/80.png' },
  { id: 44, name: '合作伙伴 44', logo: '/images/partners/81.png' },
  { id: 45, name: '合作伙伴 45', logo: '/images/partners/82.png' },
  { id: 46, name: '合作伙伴 46', logo: '/images/partners/83.png' },
  { id: 47, name: '合作伙伴 47', logo: '/images/partners/84.jpeg' },
  { id: 48, name: '合作伙伴 48', logo: '/images/partners/9.png' }
])
</script>
