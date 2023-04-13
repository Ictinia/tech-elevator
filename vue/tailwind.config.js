/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./public/**/*.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
  theme: {
    extend: {
      fontFamily: {
        'sans': ['Poppins', 'Sans-Serif']
      }
    },
    fontSize: {
      xs: '0.75rem',
      sm: '0.8175rem',
      md: '0.9rem',
      base: '1rem',
      lg: '1.125rem',
      xl: '1.25rem',
      '2xl': '1.5rem',
      '3xl': '1.875rem',
      '4xl': '2rem',
    },
  },

  plugins: [],
}

