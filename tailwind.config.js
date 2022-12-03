/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ['Sources/**/*.swift','Sources/**/**/*.swift', 'Sources/**/**/**/*.swift' ],
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/typography'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/line-clamp'),
      require('@tailwindcss/aspect-ratio'),
  ],
}
