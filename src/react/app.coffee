React = require 'react'
{dom, create} = require '../lib/react_sugar'
_ = require 'lodash'


module.exports = class AppComponent extends React.Component
  constructor: ->
    @state = {}

  render: ->
    dom.div null, 'psychic-octo-cyril!'
