import Vue from 'vue'

import {
  createCSSNode
} from '../utils'

export default Vue.component('vc-view', {
  render: function (h) {
    const { staticStyle } = this.$vnode.data
    
    if (staticStyle) {
      const cssNode = this._cssNode

      for (let k in staticStyle) {
        switch (k) {
          case 'width':
            cssNode.setWidth(staticStyle[k])
            break

          case 'height':
            cssNode.setHeight(staticStyle[k])
            break
        }
      }
    }

    return h('div')
  },
  created () {
    this._tagName = 'view'
    this._cssNode = createCSSNode()
  }
})
