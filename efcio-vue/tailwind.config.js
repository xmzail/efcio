/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: '#165DFF',
        primaryDark: '#0E42C1',
        anniversary: '#FF7D00',
        neutral1: '#1D2129',
        neutral2: '#4E5969',
        neutral3: '#F2F3F5',
        neutral4: '#FFFFFF',
        border: '#E5E6EB'
      },
      fontFamily: {
        sans: ['思源黑体', 'Montserrat', 'sans-serif']
      },
    }
  },
  plugins: [],
}
