<template>
  <div data-component = "home-page">
      <logo-header :title="'RESUMIZER'" :subtitle="'Free Online resume creator'"></logo-header>
      <nav-bar></nav-bar>
      <div class="container">
        <info-description v-for="pageContent in pageContents" :heading="pageContent.title" :page-content="pageContent.description"></info-description>
      </div>
  </div>
</template>
<script>
import LogoHeader from '../components/logo-header.vue';
import NavBar from '../components/nav-bar.vue';
import infoDescription from '../components/info-description.vue';
import {indexDescription} from '../constants/index-page-details.js' 

export default {
  data() {
        return {
            pageContents: indexDescription,
        }
    },
  components: {
    'logo-header': LogoHeader,
    'nav-bar': NavBar,
    'info-description': infoDescription,
  }
}
</script>
<style lang="scss">

</style>


