import fm from 'front-matter'
import slugify from 'slugify'

export const actions = {
  nuxtServerInit() {
    if (process.server) {
      const fs = require('fs')

      // Posts
      const files = fs
        .readdirSync('assets/content')
        .filter(file => file.includes('.md'))

      const posts = files.map(file => {
        const post = fm(fs.readFileSync(`assets/content/${file}`, 'utf8'))
        post.filename = file
        post.published = new Date(fs.statSync(`assets/content/${file}`).ctime)
        post.slug = slugify(file.replace(/\.md$/, ''), { lower: true })
        post.url = `/blog/${post.slug}`
        post.comments = []
        post.body = post.body.replace(/assets\/content\/(.*).md/g, (a, b) => b)
        return post
      })
      this.dispatch('posts/loadPosts', posts)
    }
  }
}
