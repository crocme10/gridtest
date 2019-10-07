<template>
  <article class="main wrapper">
    <h1 class="title has-text-weight-light has-text-primary is-2">
      {{ post.attributes.title }}
    </h1>
    <p class="has-text-weight-light">{{ publishedAt }}</p>
    <div class="content">
      <!-- eslint-disable vue/no-v-html -->
      <div v-html="$md.render(post.body)" />
      <!-- eslint-enable -->
    </div>
  </article>
</template>

<script>
import { format } from 'date-fns'
// import { mapMutations } from 'vuex'

export default {
  layout: 'blog',
  scrollToTop: true,
  head() {
    return {
      title: this.postTitle
    }
  },
  computed: {
    post() {
      return this.$store.state.posts.post
    },
    publishedAt() {
      return format(new Date(this.post.attributes.published), 'MMMM Do[,] YYYY')
    },
    postTitle() {
      if (this.post) {
        return `${this.post.attributes.title}`
      } else {
        return ''
      }
    },
    postImage() {
      return `/${this.post.attributes.image}`
    }
  },
  fetch({ store, params }) {
    store.dispatch('posts/loadPost', params.post)
  }
}
</script>
