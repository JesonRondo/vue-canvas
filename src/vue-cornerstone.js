window.VC_FRAME = {
  width: document.body.offsetWidth,
  height: document.body.offsetHeight
}

window.VC_Main_ROOT = {
  appendChild: function (elm) {
    document.body.appendChild(elm)
  },
  removeChild: function () {}
}

window.VC_Main_APPContent = {
  parentNode: window.VC_Main_ROOT,
  hasAttribute: function () { return false },
  tagName: 'view',
  nodeType: 1,
}
