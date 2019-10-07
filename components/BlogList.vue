<template>
  <table>
    <colgroup>
      <col style="width: 80%" />
      <col style="width: 20%" />
    </colgroup>
    <thead>
      <tr class="header">
        <th>DOCUMENTS</th>
        <th>DATE</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="post in posts" :key="post.attributes.title">
        <td>
          <nuxt-link :to="post.url">{{ post.attributes.title }}</nuxt-link>
        </td>
        <td>{{ formatDate(post) }}</td>
      </tr>
    </tbody>
  </table>
</template>

<script>
import { format } from 'date-fns'

export default {
  computed: {
    posts() {
      return this.$store.state.posts.posts
    }
  },
  fetch({ store, params }) {
    store.dispatch('posts/loadPost', params.post)
  },
  methods: {
    formatDate(post) {
      return format(new Date(post.attributes.published), 'MMMM Do[,] YYYY')
    }
  }
}
</script>
