export default {
  mode: 'universal',
  /*
   ** Headers of the page
   */
  head: {
    title: process.env.npm_package_name || '',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      {
        hid: 'description',
        name: 'description',
        content: process.env.npm_package_description || ''
      }
    ],
    link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }]
  },
  /*
   ** Customize the progress-bar color
   */
  loading: { color: '#fff' },
  /*
   ** Global CSS
   */
  css: [
    /* { src: '~/assets/less/main.less', lang: 'less' } */
  ],
  /*
   ** Plugins to load before mounting the App
   */
  plugins: ['@/plugins/markdown-it'],
  /*
   ** Nuxt.js modules
   */
  modules: ['@nuxtjs/pwa', '@nuxtjs/eslint-module'],
  /*
   ** Build configuration
   */
  build: {
    /*
     ** You can extend webpack config here
     */
    extend(config, { isClient }) {
      if (isClient) {
        config.devtool = process.env.NODE_ENV === 'development' ? '#source-map' : '';
      }
    }
  },

  // Generate routes based of top-level file names for blog posts
  generate: {
    routes: function() {
      return require('fs')
        .readdirSync('pages/blog')
        .map(function(file) {
          return '/blog/' + require('slugify')(file.replace(/\.md$/, ''))
        })
    }
  },
  server: {
    port: 8000,
    host: '0.0.0.0'
  }
}
