<template>
<div data-component="accordian">
  <ul class="collapsible" data-collapsible="accordion">
        <li>
            <div class="collapsible-header waves-effect waves-red"><i class="material-icons">play_arrow</i>{{ accordianTitle }}</div>
            <div class="collapsible-body">
                <div v-html="content"></div>    
            </div>
        </li>
    </ul>
</div>
</template>
<script>
export default {
    data() {
        return {

        }
    },
  props: {
      accordianTitle: {
          type: String,
      },
      content: {
          type: String,
      }
  },
}
</script>
<style lang="scss">

</style>



