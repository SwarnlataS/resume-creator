<template>
<div class="feedback" id="feedback" data-component="feedback">
        <h3 class="heading">Feedback</h3>
          <form>
            <div class="row">
              <div class="input-field col s6">
                <input id="first_name" type="text" class="validate">
                <label for="first_name">First Name</label>
              </div>
              <div class="input-field col s6">
                <input id="last_name" type="text" class="validate">
                <label for="last_name">Last Name</label>
              </div>
            </div>
            <div class="row">
              <div class="input-field col s12">
                <input id="email" type="email" class="validate">
                <label for="email">Email</label>
              </div>
            </div>
            <table>
              <tbody>
                <tr>
                  <td data-field="id">How would you rate your overall experience with our service?</td>
                  <td>
                    <div class="br-wrapper br-theme-fontawesome-stars"><select id="experienceStar" style="display: none;">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                    </select><div class="br-widget"><a href="#" data-rating-value="1" data-rating-text="1" class="br-selected br-current"></a><a href="#" data-rating-value="2" data-rating-text="2"></a><a href="#" data-rating-value="3" data-rating-text="3"></a><a href="#" data-rating-value="4" data-rating-text="4"></a><a href="#" data-rating-value="5" data-rating-text="5"></a><div class="br-current-rating">1</div></div></div>
                  </td>
                </tr>
                <tr>
                  <td data-field="name">How satisfied are you with the comprehensiveness of our offer?</td>
                  <td>
                    <div class="br-wrapper br-theme-fontawesome-stars"><select id="satisfactionStar" style="display: none;">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                    </select><div class="br-widget"><a href="#" data-rating-value="1" data-rating-text="1" class="br-selected br-current"></a><a href="#" data-rating-value="2" data-rating-text="2"></a><a href="#" data-rating-value="3" data-rating-text="3"></a><a href="#" data-rating-value="4" data-rating-text="4"></a><a href="#" data-rating-value="5" data-rating-text="5"></a><div class="br-current-rating">1</div></div></div>
                  </td>
                </tr>
                <tr>
                  <td data-field="price">Would you recommend our product / service to other people?</td>
                  <td>
                    <div class="br-wrapper br-theme-fontawesome-stars"><select id="recommendationStar" style="display: none;">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                    </select><div class="br-widget"><a href="#" data-rating-value="1" data-rating-text="1" class="br-selected br-current"></a><a href="#" data-rating-value="2" data-rating-text="2"></a><a href="#" data-rating-value="3" data-rating-text="3"></a><a href="#" data-rating-value="4" data-rating-text="4"></a><a href="#" data-rating-value="5" data-rating-text="5"></a><div class="br-current-rating">1</div></div></div>
                  </td>
                </tr>
                <tr>
                  <td data-field="price">What should we change in order to live up to your expectations?</td>  
                  <td>
                    <div class="input-field col s12">
                      <textarea id="textarea1" class="materialize-textarea" length="150" maxlength="150"></textarea>
                      <label for="textarea1">In &gt; 150 characters</label>
                    <span class="character-counter" style="float: right; font-size: 12px; height: 1px;"></span></div>
                  </td>          
              </tr></tbody>
            </table>
            <button class="btn waves-effect waves-light" type="submit" name="action">Submit
              <i class="material-icons right">send</i>
            </button>
          </form>
        </div>
</template>
<script>
export default {
  
}
</script>
<style>

</style>

