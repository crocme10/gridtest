import MarkdownIt from 'markdown-it'
import MarkdownItGridTables from 'markdown-it-gridtables'

export default ({ app }, inject) => {
  const md = new MarkdownIt({
    langPrefix: 'language-',
    preset: 'default',
    linkify: false,
    // breaks: true,
    html: false,
    xhtmlOut: true,
    typographer: true
  })

  md.use(MarkdownItGridTables)

  inject('md', md)
}
