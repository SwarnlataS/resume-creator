<template>
  <div class="container">
  	<div class="row" id="tabs">
    <div class="col s12">
      <ul>
        <li><a class="active" href="#personalInfo">Personal Details</a></li>
        <li><a href="#objectives">Objectives</a></li>
        <li><a href="#skills">Skills</a></li>
        <li><a href="#experience">Experience</a></li>
        <li><a href="#education">Education</a></li>
        <li><a href="#awards">Awards</a></li>
        <li><a href="#profile">Upload Profile Photo</a></li>
        <li><a href="#Template">Select Template</a></li>
      </ul>
    </div>
    <form action="#" runat="server" id="detailsForm">
    <div id="personalInfo" class="col s12">
      <div class="row">
        <div class="col s12">
          <div class="row">
            <div class="input-field col s12">
              <input id="fullname" type="text" class="validate" ng-model="name">
              <label for="fullname">Full Name</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <textarea id="address" class="materialize-textarea"></textarea>
              <label for="">Address</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s6">
              <input id="contactno1" type="text" class="validate">
              <label for="">Contact Number 1</label>
            </div>
            <div class="input-field col s6">
              <input id="contactno2" type="text" class="validate">
              <label for="">Contact Number 2</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <input id="email" type="email" class="validate">
              <label for="" data-error="wrong" data-success="right">Email</label>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div id="objectives" class="col s12">
      <div class="row" v-for="n in ObjectivesFieldCount">
          <div class="input-field col s12">
              <input type="text" class="validate objectiveInput" placeholder="Objective">{{n}}
              <a @click="destroy()">close</a>
          </div>
      </div>
      <div class="right-align">
        <a class="btn-floating btn-large waves-effect waves-light teal" @click.prevent="ObjectivesFieldCount++"><i class="material-icons">add</i></a>
      </div>
    </div>

    <div id="skills" class="col s12">
      <div class="row" v-for="n in SkilsFieldCount">
          <div class="input-field col s12">
              <input type="text" class="validate objectiveInput" placeholder="Skill">
          </div>
      </div>
      <div class="right-align">
            <a class="btn-floating btn-large waves-effect waves-light teal" @click.prevent="SkilsFieldCount++"><i class="material-icons">add</i></a>
          </div>
    </div>

    <div id="experience" class="col s12">
        <experience-component v-for="n in ExperienceFieldCount"></experience-component>
      <div class="right-align">
        <a class="btn-floating btn-large waves-effect waves-light teal" @click.prevent="ExperienceFieldCount++"><i class="material-icons">add</i></a>
      </div>
    </div>

    <div id="education" class="col s12">
        <education-component v-for="n in EducationFieldCount"></education-component>
        <div class="right-align">
            <a class="btn-floating btn-large waves-effect waves-light teal" @click.prevent="EducationFieldCount++"><i class="material-icons">add</i></a>
          </div>
    </div>

    <div id="awards" class="col s12">
      <div class="row" v-for="n in AwardsFieldCount">
          <div class="input-field col s12">
              <input type="text" class="validate objectiveInput" placeholder="Award">
          </div>
          <!-- <p class="red-text"><i>This section is optional</i></p> -->
        
      </div>
      <div class="right-align">
        <a class="btn-floating btn-large waves-effect waves-light teal" @click.prevent="AwardsFieldCount++"><i class="material-icons">add</i></a>
      </div>
    </div>

    <div id="profile" class="col s12">
      <div id="imageUploadForm">
        <div class="file-field input-field">
          <div class="btn">
            <span>File</span>
            <input type="file">
          </div>
          <div class="file-path-wrapper">
            <input class="file-path validate" type="text" placeholder="Upload Your Profile Photo" id="imgInp">
          </div>
        </div>
        <p class="red-text"><i>This section is optional</i></p>
      </div>
    </div>

    <div id="Template" class="col s12">
      <div class="selectTemplate">
        <ul>
            <li v-for="template in templates">
                <a href="javascript.void(0)">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <div class="img-wrapper-top">GET THIS</div>
                            <div class="img-wrapper-bottom">FORMATE</div>
                            <img class="activator" :src="template.path">
                        </div>
                        <div class="card-content grey darken-4">
                            <span class="card-title activator grey-text text-lighten-5">{{template.name}}</span>
                        </div>
                    </div>
                </a>
            </li>
        </ul>
      </div>
      <input type="submit" id="createResume" value="Create Resume" class="tab-nav waves-effect waves-light btn submitButton"/>
    </div>
    </form>
  </div>
  </div>
</template>
 <script src="../script.js"></script>

<script>
import { Script } from '../script.js'
import { Templates } from '../constants/template.js'
import ExperienceComponent from '../components/experience-component.vue'
import EducationComponent from '../components/education-component.vue'
export default {
    data () {
        return {
            templates: Templates,
            ObjectivesFieldCount: [],
            SkilsFieldCount: 1,
            ExperienceFieldCount: 1,
            EducationFieldCount: 1,
            AwardsFieldCount: 1,
        }
    },
    methods: {
    destroy() {
      this.$destroy();
    }
  },
    components: {
        'experience-component': ExperienceComponent,
        'education-component': EducationComponent
    }
}
</script>

<style lang="scss">
    .selectTemplate {
        * {
            transition: all 0.3s linear;
        }
        ul li {
            display: inline-block;

            .card {
                margin: 0.5rem 1em 1rem 1em;

                .card-image {
                    .img-wrapper-top {
                        top: 0;
                        align-items: flex-end;
                    }
                    .img-wrapper-bottom {
                        bottom: 0;
                        align-items: flex-start;
                    }

                    .img-wrapper-top,
                    .img-wrapper-bottom {
                        position: absolute;
                        height: 0;
                        width: 100%;
                        background: #000;
                        z-index: 9;
                        opacity: 0.4;
                        display: flex;
                        justify-content: center;
                        color: #fff;
                        font-weight: bolder;
                        overflow: hidden;
                    }
                    
                    img {
                        height: 21em;
                        width: 18em;
                        display: block;
                        border-radius: 2px 2px 0 0;
                        position: relative;
                        left: 0;
                        right: 0;
                        top: 0;
                        bottom: 0;
                    }

                    &:hover {
                        .img-wrapper-top,
                        .img-wrapper-bottom,
                        .selectTemplate a.active .card-image .img-wrapper-top,
                        .selectTemplate a.active .card-image .img-wrapper-bottom {
                            height: 50%;
                        }
                    }
                }
                .card-content {
                    padding: 0px 10px;
                    border-radius: 0 0 2px 2px;

                    .card-title {
                        font-size: 16px;
                    }
                }
            }
        }
    }
</style>

