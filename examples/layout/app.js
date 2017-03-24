import Vue from 'vue'
import App from './app.vue'

new Vue({
  el: window.VC_Main_APPContent,
  render: h => {
    return h('app')
  },
  components: {
    App
  }
})
