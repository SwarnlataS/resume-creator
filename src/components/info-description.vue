<template>
<div data-component="info-description" class="info-description" :id="blockId">
    <h3 class="heading">{{heading}}</h3>
    <div v-html="pageContent"></div>
</div>
</template>
<script>
export default {
  props: {
      blockId: {
          type: String,
      },
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

</style>


