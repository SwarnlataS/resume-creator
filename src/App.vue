<template>
  <div id="app">
    <home-page></home-page>
  </div>
</template>

<script>
import HomePage from './components/home-page.vue';

export default {
  name: 'app',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  components: {
    'home-page': HomePage,
  }
}
</script>
<style src="../src/style.scss" lang="scss"></style>
