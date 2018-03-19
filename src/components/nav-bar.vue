<template>
  <div data-component = "nav-bar-component"> 
      <nav>
        <div class="nav-wrapper">
          <!-- <a href="#!" class="brand-logo">Logo</a> -->
          <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
          <ul class="hide-on-med-and-down">
              <li v-for = "navItem in navItems"><a :href="'#'+navItem.id">{{navItem.title}}</a></li>
          </ul>
          <ul class="side-nav" id="mobile-demo">
            <li v-for = "navItem in navItems"><a>{{navItem.title}}</a></li>
          </ul>
        </div>
      </nav>
  </div>
</template>
<script>
export default {
    data() {
        return {
            navItems: [
                {title:"Home", id:"home"},
                {title:"About Us", id:'about'},
                {title:"Our Mission",id:'mission'},
                {title:"Layout Style",id:'layoutstyles'},
                {title:"Tips to write resume",id:'tips'},
                {title:"Feedback",id:'feedback'},
                ]
        }
    },
  
}
</script>
<style lang="scss" scoped>
    nav {
        background-color: #000;
        z-index: 2;

        .nav-wrapper {
            padding: 0 10px;

            li a{
                padding: 0 20px;
            }
        }
    }
</style>


