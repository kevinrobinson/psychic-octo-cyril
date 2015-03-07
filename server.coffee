# Require some dependencies
express = require 'express'
_ = require 'lodash'
fs = require 'fs'

# Initialize the app and add logging
app = express()
logger = require 'morgan'
app.use logger('dev')

# Add middleware that will parse application/json
# request bodies.
bodyParser = require 'body-parser'
app.use bodyParser.json()

# This will serve any files in `/public` as-is.
app.use express.static(__dirname + '/public')


# Temporary data store
dataStore = JSON.parse(fs.readFileSync('data/data_store.json'));
app.get '/foo', (req, res) ->
  items = _.values dataStore
  res.json {items
  res.end()


# Start the server
port = process.argv[2]
server = app.listen port, ->
  console.log 'Listening on port %d', port
