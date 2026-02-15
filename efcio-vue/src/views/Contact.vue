<template>
  <div class="py-20 px-6 md:px-12 bg-white">
    <div class="container mx-auto">
      <h2 class="section-title text-center">联系我们</h2>
      
      <div class="max-w-5xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-12">
        <div>
          <h3 class="text-xl font-bold text-primary mb-6">联系方式</h3>
          <div class="space-y-6 mb-8">
            <div class="flex items-start gap-4">
              <div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center flex-shrink-0">
                <i class="fas fa-envelope text-primary text-xl"></i>
              </div>
              <div>
                <h4 class="font-semibold text-neutral1">邮箱</h4>
                <p class="text-neutral2">contact@efcio.com</p>
              </div>
            </div>
            <div class="flex items-start gap-4">
              <div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center flex-shrink-0">
                <i class="fas fa-phone text-primary text-xl"></i>
              </div>
              <div>
                <h4 class="font-semibold text-neutral1">电话</h4>
                <p class="text-neutral2">400-XXXX-XXXX</p>
              </div>
            </div>
          </div>
          <div class="bg-neutral3 rounded-lg p-6">
            <h4 class="font-semibold text-neutral1 mb-3">在线留言</h4>
            <p class="text-neutral2 text-sm">提供在线留言，方便会员留言反馈。</p>
          </div>
        </div>

        <div>
          <h3 class="text-xl font-bold text-primary mb-6">在线留言</h3>
          <form @submit.prevent="submitForm" class="space-y-4">
            <div>
              <label class="block text-neutral1 font-medium mb-2">姓名</label>
              <input v-model="form.name" type="text" class="w-full px-4 py-3 border border-border rounded-lg focus:outline-none focus:border-primary transition-colors" placeholder="请输入您的姓名">
            </div>
            <div>
              <label class="block text-neutral1 font-medium mb-2">邮箱</label>
              <input v-model="form.email" type="email" class="w-full px-4 py-3 border border-border rounded-lg focus:outline-none focus:border-primary transition-colors" placeholder="请输入您的邮箱">
            </div>
            <div>
              <label class="block text-neutral1 font-medium mb-2">电话</label>
              <input v-model="form.phone" type="tel" class="w-full px-4 py-3 border border-border rounded-lg focus:outline-none focus:border-primary transition-colors" placeholder="请输入您的电话">
            </div>
            <div>
              <label class="block text-neutral1 font-medium mb-2">留言内容</label>
              <textarea v-model="form.message" rows="4" class="w-full px-4 py-3 border border-border rounded-lg focus:outline-none focus:border-primary transition-colors resize-none" placeholder="请输入您的留言内容"></textarea>
            </div>
            <button type="submit" class="btn-primary w-full">提交留言</button>
          </form>
          
          <div v-if="submitted" class="mt-6 bg-green-50 border border-green-200 rounded-lg p-4 text-center">
            <i class="fas fa-check-circle text-green-500 text-2xl mb-2"></i>
            <p class="text-green-700 font-medium">留言提交成功！我们会尽快与您联系。</p>
          </div>
        </div>
      </div>

      <div class="mt-12 pt-8 border-t border-border text-center">
        <p class="text-neutral2 text-sm">© 2024 EFCIO 版权所有 | 共生 · 共赢 · 共成长</p>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const form = ref({
  name: '',
  email: '',
  phone: '',
  message: ''
})

const submitted = ref(false)

const submitForm = () => {
  console.log('表单提交:', form.value)
  submitted.value = true
  setTimeout(() => {
    form.value = {
      name: '',
      email: '',
      phone: '',
      message: ''
    }
    submitted.value = false
  }, 3000)
}
</script>
