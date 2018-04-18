<template>
<div data-component="layout-slider">
  <h3 class="heading">Layout Styles</h3>
  <div class="bxslider">
      <div v-for = "template in templates">
        <h6 class="slider-caption">{{template.name}}</h6>
        <img :src="template.path"/>
      </div>
  </div>
</div>
</template>
<script>
import {Templates} from '../constants/template.js'
export default {
  data () {
      return {
          templates: Templates,
      }
  },
}
</script>

<style lang="scss">
.bx-wrapper{
    -webkit-box-shadow: none;
    box-shadow: none;

    .slider-caption {
        text-align: center;
        font-size: 16px;
        font-weight: 600;
    }

    img {
        border: 1px solid #ccc;
        -webkit-box-shadow: 3px -3px 14px #ccc;
        box-shadow: 3px -3px 14px #ccc;
    }
}
</style>

