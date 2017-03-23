import Vue from 'vue'

import {
  createCSSNode,
  updateCSSTree,
  calculateLayout,
  drawNode
} from '../utils'


export default Vue.component('vc-stage', {
  render: function (h) {
    const { attrs } = this.$vnode.data

    if (attrs) {
      const cssNode = this._cssNode

      for (let k in attrs) {
        switch (k) {
          case 'width':
            cssNode.setWidth(attrs[k])
            break

          case 'height':
            cssNode.setHeight(attrs[k])
            break
        }
      }
    }

    return h('canvas', this.$slots.default)
  },
  created () {
    this._tagName = 'stage'
    this._cssNode = createCSSNode()
  },
  mounted () {
    this._ctx = this.$el.getContext('2d')

    updateCSSTree(this)
    calculateLayout(this)
    drawNode(this._ctx, this)
  }
})