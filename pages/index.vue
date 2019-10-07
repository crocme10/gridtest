<template>
  <article class="main wrapper">
    <h3>Index</h3>
    <blog-list />
    <h3>Done</h3>
  </article>
</template>

<script>
import BlogList from '@/components/BlogList.vue'

export default {
  components: {
    BlogList
  }
}
</script>
