<template>
  <div class="py-20 px-6 md:px-12 bg-neutral3">
    <div class="container mx-auto">
      <h2 class="section-title text-center">行业新闻</h2>
      
      <div class="max-w-6xl mx-auto space-y-16">
        <div>
          <h3 class="text-2xl font-bold text-primary mb-8">行业新闻</h3>
          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div v-for="i in 4" :key="i" class="card-hover bg-white rounded-lg p-6">
              <div class="bg-primary/10 rounded-lg h-32 mb-4 flex items-center justify-center">
                <i class="fas fa-newspaper text-primary text-3xl"></i>
              </div>
              <h4 class="font-semibold text-neutral1 mb-2">新闻标题 {{ i }}</h4>
              <p class="text-neutral2 text-sm mb-4">新闻摘要内容...</p>
              <a href="#" class="text-primary font-medium text-sm hover:underline">阅读全文 →</a>
            </div>
          </div>
        </div>

        <div>
          <h3 class="text-2xl font-bold text-primary mb-8">专家观点</h3>
          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div v-for="i in 4" :key="i" class="card-hover bg-white rounded-lg p-6">
              <div class="flex items-center gap-4 mb-4">
                <div class="w-12 h-12 bg-primary/10 rounded-full flex items-center justify-center">
                  <i class="fas fa-user-circle text-primary text-xl"></i>
                </div>
                <div>
                  <h4 class="font-semibold text-neutral1">专家姓名</h4>
                  <p class="text-neutral2 text-sm">职位/公司</p>
                </div>
              </div>
              <p class="text-neutral2 mb-4">观点摘要内容...</p>
              <a href="#" class="text-primary font-medium text-sm hover:underline">查看详情 →</a>
            </div>
          </div>
        </div>

        <div>
          <h3 class="text-2xl font-bold text-primary mb-8">实战案例</h3>
          <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
            <div v-for="i in 6" :key="i" class="card-hover bg-white rounded-lg p-6">
              <div class="bg-primary/10 rounded-lg h-24 mb-4 flex items-center justify-center">
                <i class="fas fa-briefcase text-primary text-2xl"></i>
              </div>
              <h4 class="font-semibold text-neutral1 mb-2">案例标题 {{ i }}</h4>
              <p class="text-neutral2 text-sm">案例摘要...</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
