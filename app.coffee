# app.coffee -- Application server.
express = require 'express'
app     = express()

# Configuration.
port    = process.env.PORT || 3000

# Routing.
app.get '/', (request, response) ->
    response.send 'It works!'

# Initialization.
app.listen 3000, () ->
    console.log "Listening at http://localhost:#{port}"
