const path = require('path')

const examples = [{
  path: './examples/layout',
  entry: 'app.js',
  dist: 'dist'
}]

const configs = [{
  entry: path.resolve('./src', 'vue-cornerstone.js'),
  output: {
    filename: 'vue-cornerstone.js',
    path: path.resolve('./dist')
  }
}]

examples.forEach(example => {
  configs.push({
    entry: path.resolve(example.path, example.entry),
    output: {
      filename: 'bundle.js',
      path: path.resolve(example.path, example.dist)
    },
    module: {
      loaders: [{
        test: /\.vue$/,
        loader: 'vue-loader',
        exclude: /node_modules\/(?!@).*/
      }]
    },
    node: {
      fs: 'empty'
    },
    devtool: 'source-map'
  })
})

module.exports = configs
