<template>
  <vc-stage :width="width" :height="height">
    <vc-view style="width:100;height:30">
      <vc-view style="width:10;height:10"></vc-view>
    </vc-view>
    <vc-view style="width:30;height:20"></vc-view>
    <vc-view style="width:320;height:140"></vc-view>
  </vc-stage>
</template>

<script>
  import { VcStage, VcView } from '../../src'
  
  export default {
    data () {
      return {
        width: window.VC_FRAME.width,
        height: window.VC_FRAME.height
      }
    },
    components: {
      VcStage, VcView
    },
    mounted () {
      console.log('component mounted')
    }
  }
</script>
