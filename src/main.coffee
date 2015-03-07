React = require 'react'
App = require './react/app'

el = document.querySelector '#html_app_main'
React.render React.createElement(App, {}), el
