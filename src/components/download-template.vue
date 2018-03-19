<template>
    <div class="alltemplates">
        <ul>
            <li v-for = "template in templates">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" :src="template.path">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">{{template.name}}</span>
                        <p>
                            <a href="require(../assets/images/templatesDoc/resumizer-resume-template-1.doc" download="../assets/images/templatesDoc/resumizer-resume-template-1.doc" class="waves-effect waves-light btn">
                            <i class="fa fa-download" aria-hidden="true"></i> Download</a>
                        </p>
                    </div>
                </div>
            </li>
      </ul>
  </div>
</template>
<script>
import { Templates } from '../constants/template.js'
import axios from 'axios'
import VueAxios from 'vue-axios'

export default {
    data() {
        return {
            templates : Templates,
        }
    },
    // axios({
    //     //method: 'post',
    // })
}
</script>
<style lang="scss">
    .alltemplates {
        ul {
            li {
                display: inline-block;

                .card{
                    margin: 1em;

                    .card-image img {
                        @media only screen and (min-width: 768px) {
                            height: 452px;
                            width: 430px;
                        }
                    }
                    
                    .card-content{
                        background-color:#e0f2f1; 
                    }
                }                
            }
        }
    } 
    .selectTemplate {
        ul {
            li {
                display: inline-block;
            }
        }
    }
</style>


