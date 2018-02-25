<template>
  <div id="app">
    <logo-header></logo-header>
  </div>
</template>

<script>
import LogoHeader from './components/logo-header.vue';

export default {
  name: 'app',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  components: {
    LogoHeader,
  }
}
</script>

<style lang="scss">

</style>
