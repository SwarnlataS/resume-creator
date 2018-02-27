<template>
    <div data-component="logo-header">
        <header id="header">
        <h1>{{title}}</h1>
        <h3>{{subtitle}}</h3>
        <div class="signUpDiv">
          <a href="#LoginModal" class="waves-effect waves-light btn modal-trigger">Sign In</a>
          <a href="#NewSignInModal" class="waves-effect waves-light btn modal-trigger">New Sign In</a>
        </div>
      </header>
    </div>
</template>

<script>
 export default {
   props: {
     title: {
       type: String,
     },
     subtitle: {
       type: String,
     }
   }
 }
</script>

<style lang="scss" scoped>
  header {
    height: 20vh;
    background: url('../assets/images/header-img.jpg') no-repeat;
    background-size: cover;
    opacity: 0.7;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column; 
    position: relative;

    @media only screen and (min-width: 768px){
		  height: 50vh;
	  }

    *{
      margin: 0;
      font-weight: bolder;
    }

    h1 {
      font-size: 3em;

      @media only screen and (min-width: 768px){
        font-size: 4.2rem;
      }
    }

    h3 {
      font-size: 1.3em;

      @media only screen and (min-width: 768px){
        font-size: 1.8rem;
      }
    }

    .signUpDiv {
        position: fixed;
        top: 15px;
        right: 15px;
        z-index: 1000;
    }
}
</style>