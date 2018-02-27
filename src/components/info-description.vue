<template>
<div data-component="info-description" class="info-description">
    <h3>{{heading}}</h3>
    <div v-html="pageContent"></div>
</div>
</template>
<script>
export default {
  props: {
      heading: {
          type: String,
      },
      pageContent: {
          type: String,
      }
  },
}
</script>
<style lang="scss" scoped>
h3 {
    color: #ee6e73;
}
</style>


