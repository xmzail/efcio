const fs = require('fs');
const path = require('path');

const partnersDir = '/Users/a1-6/Documents/code/trae/efcio/efcio-vue/public/images/partners';

const validExtensions = ['.jpeg', '.jpg', '.png', '.gif', '.svg'];

const files = fs.readdirSync(partnersDir);

const validFiles = files.filter(file => {
  const ext = path.extname(file).toLowerCase();
  return validExtensions.includes(ext) && file !== 'placeholder.svg';
});

console.log('找到有效的合作伙伴Logo:');
console.log(validFiles);
console.log(`共 ${validFiles.length} 个有效图片`);

const output = validFiles.map((file, index) => ({
  id: index + 1,
  name: `合作伙伴 ${index + 1}`,
  logo: `/images/partners/${file}`
}));

console.log('\n用于Vue组件的数据:');
console.log(JSON.stringify(output, null, 2));
