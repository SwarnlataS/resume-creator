<template>
  <div data-component = "nav-bar-component"> 
      <nav>
        <div class="nav-wrapper">
          <!-- <a href="#!" class="brand-logo">Logo</a> -->
          <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
          <ul class="hide-on-med-and-down">
              <li v-for = "navItem in navItems"><a>{{navItem}}</a></li>
          </ul>
          <ul class="side-nav" id="mobile-demo">
            <li v-for = "navItem in navItems"><a>{{navItem}}</a></li>
          </ul>
        </div>
      </nav>
  </div>
</template>
<script>
export default {
    data() {
        return {
            navItems: ["Home","About Us","Our Mission","Layout Style","Tips to write resume","Feedback"]
        }
    },
  
}
</script>
<style lang="scss" scoped>
    nav {
        background-color: #000;
        z-index: 999;

        .nav-wrapper {
            padding: 0 10px;

            li a{
                padding: 0 20px;
            }
        }
    }
</style>


