import Yoga from 'yoga-layout/sources/entry-browser'

export const createCSSNode = function () {
  return Yoga.Node.create()
}

export const updateCSSTree = function (vNode) {
  if (vNode.$children && vNode.$children.length > 0) {
    for (let i = 0, len = vNode.$children.length; i < len; i++) {
      const $child = vNode.$children[i]

      updateCSSTree($child)

      const childCount = vNode._cssNode.getChildCount()
      vNode._cssNode.insertChild($child._cssNode, childCount)
    }
  }
}

export const calculateLayout = function (node) {  
  node._cssNode.calculateLayout(Yoga.UNDEFINED)
}


// var root = Yoga.Node.create();
// root.setWidth(100);
// root.setHeight(100);

// var root_child0 = Yoga.Node.create();
// root_child0.setAlignSelf(Yoga.ALIGN_CENTER);
// root_child0.setWidth(10);
// root_child0.setHeight(10);
// root.insertChild(root_child0, 0);
// root.calculateLayout(Yoga.UNDEFINED, Yoga.UNDEFINED, Yoga.DIRECTION_LTR);

// console.log(0 === root.getComputedLeft(), "0 === root.getComputedLeft() (" + root.getComputedLeft() + ")");
// console.log(0 === root.getComputedTop(), "0 === root.getComputedTop() (" + root.getComputedTop() + ")");
// console.log(100 === root.getComputedWidth(), "100 === root.getComputedWidth() (" + root.getComputedWidth() + ")");
// console.log(100 === root.getComputedHeight(), "100 === root.getComputedHeight() (" + root.getComputedHeight() + ")");

// console.log(45 === root_child0.getComputedLeft(), "45 === root_child0.getComputedLeft() (" + root_child0.getComputedLeft() + ")");
// console.log(0 === root_child0.getComputedTop(), "0 === root_child0.getComputedTop() (" + root_child0.getComputedTop() + ")");
// console.log(10 === root_child0.getComputedWidth(), "10 === root_child0.getComputedWidth() (" + root_child0.getComputedWidth() + ")");
// console.log(10 === root_child0.getComputedHeight(), "10 === root_child0.getComputedHeight() (" + root_child0.getComputedHeight() + ")");
// root.calculateLayout(Yoga.UNDEFINED, Yoga.UNDEFINED, Yoga.DIRECTION_RTL);

// console.log(0 === root.getComputedLeft(), "0 === root.getComputedLeft() (" + root.getComputedLeft() + ")");
// console.log(0 === root.getComputedTop(), "0 === root.getComputedTop() (" + root.getComputedTop() + ")");
// console.log(100 === root.getComputedWidth(), "100 === root.getComputedWidth() (" + root.getComputedWidth() + ")");
// console.log(100 === root.getComputedHeight(), "100 === root.getComputedHeight() (" + root.getComputedHeight() + ")");

// console.log(45 === root_child0.getComputedLeft(), "45 === root_child0.getComputedLeft() (" + root_child0.getComputedLeft() + ")");
// console.log(0 === root_child0.getComputedTop(), "0 === root_child0.getComputedTop() (" + root_child0.getComputedTop() + ")");
// console.log(10 === root_child0.getComputedWidth(), "10 === root_child0.getComputedWidth() (" + root_child0.getComputedWidth() + ")");
// console.log(10 === root_child0.getComputedHeight(), "10 === root_child0.getComputedHeight() (" + root_child0.getComputedHeight() + ")")
