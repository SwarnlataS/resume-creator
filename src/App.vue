<template>
  <div id="app">
    <!-- <home-page></home-page> -->
    <create-resume></create-resume>
    <!-- <download-template></download-template> -->
  </div>
</template>

<script>
import HomePage from './components/home-page.vue';
import CreateResume from './components/create-resume.vue';
import DownloadTemplate from './components/download-template.vue';

export default {
  name: 'app',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  components: {
    'home-page': HomePage,
    'create-resume': CreateResume,
    'download-template': DownloadTemplate,
  }
}
</script>
<style src="../src/style.scss" lang="scss"></style>
