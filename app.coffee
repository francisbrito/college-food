# app.coffee -- Application server.
express = require 'express'
app     = express()

# Configuration.
port    = process.env.PORT || 3000

# Routing.

# Entry point of the application.
#
# Allows search for a particular dish.
# Displays a list of cards with today's dishes.
app.get '/', (request, response) ->
    # TODO: Implement this route.
    response.send 'It works!'

# Dish details view.
# 
# Displays pricing, ingredients & delivery time for a particular dish.
app.get '/dish/:id', (request, response) ->
    response.send 'Dish details.'

# Buy dish action.
#
# Starts an order process.
# Redirects to order details.
app.post '/dish/:id/buy', (request, response) ->
    response.send 'Buy dish action.'

# Order list view.
#
# Displays a list of recent orders the current user has done.
app.get '/order', (request, response) ->
    response.send 'Order list view.'

# Order details view.
#
# Displays pricing information about a given order.
# Such as charge amount, estimated delivery time & order state.
app.get '/order/:id', (request, response) ->
    response.send 'Order details view.'

# Initialization.
app.listen 3000, () ->
    console.log "Listening at http://localhost:#{port}"
