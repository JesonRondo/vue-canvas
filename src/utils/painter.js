export const drawNode = function (ctx, vNode) {
  const cssNode = vNode._cssNode

  const x = cssNode.getComputedLeft()
  const y = cssNode.getComputedTop()
  const width = cssNode.getComputedWidth()
  const height = cssNode.getComputedHeight()

  console.log(vNode._tagName, x, y, width, height)

  ctx.fillStyle = 'rgb(' + (Math.random() * 255 >>> 0) + ',' +
                     (Math.random() * 255 >>> 0) + ',' + (Math.random() * 255 >>> 0) + ')'
  ctx.fillRect(x, y, width, height)

  for (let i = 0, count = vNode.$children.length; i < count; i++) {
    drawNode(ctx, vNode.$children[i])
  }
}
