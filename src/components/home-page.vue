<template>
  <div data-component = "home-page">
      <logo-header id="home" :title="'RESUMIZER'" :subtitle="'Free Online resume creator'"></logo-header>
      <nav-bar></nav-bar>
      <div class="container">
        <p class="center-align description">RESUMIZER write and print your resume in a few simple steps, many styles and options with tips to guide you. Easy to use, no fees or memberships required.</p>
        <p class="center-align smallText">Choose your way</p>
        <div class="itemBox">
          <div class="item">
            <a href="downloadResume.html" target="_blank">
              <div class="icon"><i class="fa fa-download fa-3x" aria-hidden="true"></i></div>
              <h6 class="center-align">Download resume template</h6>
            </a>
          </div>

          <div class="item">
            <a href="createResume.html">
              <div class="icon"><i class="fa fa-file-text-o fa-3x" aria-hidden="true"></i></div>
              <h6 class="center-align">Start creating resume</h6>
            </a>
          </div>
        </div>
        <info-description v-for="pageContent in pageContents" :heading="pageContent.title" :page-content="pageContent.description" :block-id="pageContent.id"></info-description>
        <div id="tips">
          <h5>Tips for Creating the Perfect Resume:</h5>
          <accordian v-for="resumeTip in resumeTips" :accordian-title="resumeTip.subtitle" :content="resumeTip.content"></accordian>
          <h5>Resume Sections to Include in Your Resume:</h5>
          <accordian v-for="resumeSelectionTip in resumeSelectionTips" :accordian-title="resumeSelectionTip.subtitle" :content="resumeSelectionTip.content"></accordian>
          <h5>Resume Mistakes to Avoid:</h5>
          <accordian v-for="avoidMistake in avoidMistakes" :accordian-title="avoidMistake.subtitle" :content="avoidMistake.content"></accordian>
          <h5>Finally,</h5>
          <p>it is important to note that you may not hear back from employers after you have sent in your resume. 
            If you do not hear back, do not get discouraged; it is typical in current practices to not be given notice of your rejection. 
            Don't give up!</p>
        </div>
        <feedback id="feedback"></feedback>
      </div>
  </div>
</template>
<script>
import LogoHeader from '../components/logo-header.vue';
import NavBar from '../components/nav-bar.vue';
import infoDescription from '../components/info-description.vue';
import {indexDescription} from '../constants/index-page-details.js'
import {tipsForResume, resumeSelection, mistakesToAvoid} from '../constants/index-page-details.js'
import Feedback from '../components/feedback.vue'
import Accordian from '../components/accordian.vue'

export default {
  data() {
        return {
            pageContents: indexDescription,
            resumeTips: tipsForResume,
            resumeSelectionTips : resumeSelection,
            avoidMistakes : mistakesToAvoid,
        }
    },
  components: {
    'logo-header': LogoHeader,
    'nav-bar': NavBar,
    'info-description': infoDescription,
    'feedback': Feedback,
    'accordian' : Accordian,
  }
}
</script>
<style lang="scss">
  .container {
    padding: 20px 0;
  }
</style>


