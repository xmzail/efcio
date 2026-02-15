<template>
  <section id="events" class="py-20 px-6 md:px-12 bg-white">
    <div class="container mx-auto">
      <h2 class="section-title text-center">活动资讯</h2>
      <div class="max-w-5xl mx-auto">
        <p class="text-neutral2 text-center mb-12">把公众号的文章发布在这里，把最近的公众号文章翻出来</p>
        
        <div class="space-y-6">
          <div v-for="i in 6" :key="i" class="card-hover bg-neutral3 rounded-lg p-6">
            <div class="flex flex-col md:flex-row gap-6">
              <div class="md:w-1/3">
                <div class="bg-primary/10 rounded-lg h-40 flex items-center justify-center">
                  <i class="fas fa-calendar-alt text-primary text-4xl"></i>
                </div>
              </div>
              <div class="md:w-2/3">
                <h3 class="text-xl font-bold text-neutral1 mb-2">活动标题 {{ i }}</h3>
                <p class="text-neutral2 mb-4">活动摘要内容展示区域，这里可以放一些关于这个活动的简要介绍...</p>
                <a href="#" class="text-primary font-medium hover:underline">查看详情 →</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
