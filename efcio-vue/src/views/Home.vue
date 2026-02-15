<template>
  <div>
    <Hero />
    <div class="py-12 px-6 md:px-12 bg-neutral4">
      <div class="container mx-auto">
        <h2 class="section-title text-center">平台简介</h2>
        <div class="max-w-4xl mx-auto">
          <p class="text-neutral2 text-lg mb-6">EFCIO是：East Fashion CIO Club 时尚零售业CIO俱乐部。</p>
          <p class="text-neutral2 text-lg mb-6">我们作为企业数字化转型的深度伙伴，根植于时尚零售行业，从战略规划到落地执行，全程陪伴企业实现数字化跃迁。我们的使命是让每家企业都能找到适合自己的数字化转型路径，成为行业变革的引领者。</p>
          <p class="text-neutral2 text-lg mb-6">在数字化转型的浪潮中，技术、数据、策略如同珍珠散落各处，我们的价值在于将它们串联成璀璨的项链。通过整合EFCIO的100+头部资源，链接产业链上下游，为企业提供定制化的解决方案，让技术真正成为业务增长的引擎。</p>
        </div>
      </div>
    </div>
    <Partners />
    <Anniversary />
  </div>
</template>

<script setup>
import Hero from '../components/Hero.vue'
import Partners from '../components/Partners.vue'
import Anniversary from '../components/Anniversary.vue'
</script>
