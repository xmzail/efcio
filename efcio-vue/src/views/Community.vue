<template>
  <div class="py-20 px-6 md:px-12 bg-neutral3">
    <div class="container mx-auto">
      <h2 class="section-title text-center">共创社区</h2>
      <p class="text-neutral2 text-center max-w-2xl mx-auto mb-16">汇聚行业智慧，共创数字化未来</p>
      
      <div class="max-w-6xl mx-auto space-y-16">
        <div>
          <h3 class="text-2xl font-bold text-primary mb-8 flex items-center gap-3">
            <i class="fas fa-star text-anniversary"></i>
            达观特辑
          </h3>
          <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <div v-for="item in featuredItems" :key="item.id" class="card-hover bg-white rounded-lg p-6">
              <div class="w-12 h-12 bg-primary/10 rounded-lg mb-4 flex items-center justify-center">
                <i :class="item.icon" class="text-primary text-xl"></i>
              </div>
              <h4 class="font-semibold text-neutral1 mb-2">{{ item.title }}</h4>
              <p class="text-neutral2 text-sm">{{ item.description }}</p>
              <a href="#" class="text-primary font-medium text-sm mt-4 inline-block hover:underline">了解更多 →</a>
            </div>
          </div>
        </div>

        <div>
          <h3 class="text-2xl font-bold text-primary mb-4 flex items-center gap-3">
            <i class="fas fa-users-cog text-primary"></i>
            乙方专家
          </h3>
          <p class="text-neutral2 mb-8 max-w-2xl">把最近半年公众号的乙方嘉宾整理一下</p>
          <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-6">
            <div v-for="expert in partyBExperts" :key="expert.id" class="card-hover bg-white rounded-lg p-5 text-center">
              <div class="w-20 h-20 bg-gradient-to-br from-primary/20 to-primary/10 rounded-full mx-auto mb-4 flex items-center justify-center">
                <i class="fas fa-user-tie text-primary text-3xl"></i>
              </div>
              <h4 class="font-semibold text-neutral1 mb-1">{{ expert.name }}</h4>
              <p class="text-neutral2 text-xs">{{ expert.title }}</p>
              <p class="text-primary/70 text-xs mt-1">{{ expert.company }}</p>
            </div>
          </div>
        </div>

        <div>
          <h3 class="text-2xl font-bold text-primary mb-4 flex items-center gap-3">
            <i class="fas fa-user-tie text-primary"></i>
            甲方专家
          </h3>
          <p class="text-neutral2 mb-8 max-w-2xl">把最近半年公众号的甲方嘉宾整理一下</p>
          <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-6">
            <div v-for="expert in partyAExperts" :key="expert.id" class="card-hover bg-white rounded-lg p-5 text-center">
              <div class="w-20 h-20 bg-gradient-to-br from-anniversary/20 to-anniversary/10 rounded-full mx-auto mb-4 flex items-center justify-center">
                <i class="fas fa-user text-anniversary text-3xl"></i>
              </div>
              <h4 class="font-semibold text-neutral1 mb-1">{{ expert.name }}</h4>
              <p class="text-neutral2 text-xs">{{ expert.title }}</p>
              <p class="text-anniversary/70 text-xs mt-1">{{ expert.company }}</p>
            </div>
          </div>
        </div>

        <div class="text-center pt-8">
          <div class="inline-block bg-white rounded-xl p-8 shadow-lg">
            <h4 class="text-xl font-bold text-neutral1 mb-4">加入我们的社区</h4>
            <p class="text-neutral2 mb-6 max-w-md">与行业顶尖专家一起探讨数字化转型的未来</p>
            <a href="#" class="btn-primary inline-block">申请加入</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const featuredItems = ref([
  { id: 1, icon: 'fas fa-lightbulb', title: '数字化洞察', description: '深入解析行业数字化转型趋势' },
  { id: 2, icon: 'fas fa-chart-line', title: '最佳实践', description: '分享成功企业的数字化实践案例' },
  { id: 3, icon: 'fas fa-comments', title: '专家观点', description: '行业专家深度解读与前沿观点' }
])

const partyBExperts = ref([
  { id: 1, name: '张专家', title: 'CTO', company: '科技公司A' },
  { id: 2, name: '李专家', title: '技术总监', company: '科技公司B' },
  { id: 3, name: '王专家', title: '架构师', company: '科技公司C' },
  { id: 4, name: '赵专家', title: '产品负责人', company: '科技公司D' },
  { id: 5, name: '刘专家', title: '数据总监', company: '科技公司E' },
  { id: 6, name: '陈专家', title: '研发总监', company: '科技公司F' }
])

const partyAExperts = ref([
  { id: 1, name: '孙总', title: 'CIO', company: '零售企业A' },
  { id: 2, name: '周总', title: '数字化总监', company: '零售企业B' },
  { id: 3, name: '吴总', title: 'IT总监', company: '零售企业C' },
  { id: 4, name: '郑总', title: '电商负责人', company: '零售企业D' },
  { id: 5, name: '黄总', title: '运营总监', company: '零售企业E' },
  { id: 6, name: '林总', title: '供应链总监', company: '零售企业F' }
])
</script>
