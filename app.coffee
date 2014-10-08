# app.coffee -- Application server.
express = require 'express'
app     = express()

path    = require 'path'

# Configuration.
port    = process.env.PORT || 3000

# Templating
app.set 'views', path.join __dirname, 'views'
app.set 'view engine', 'jade'

app.locals or= pretty: true if app.get 'env' is 'development'

# Routing.
dish = require './routes/dish'
order = require './routes/order'

# Entry point of the application.
# 
# Redirects to dish list view.
app.get '/', (request, response) ->
    response.redirect '/dish'

# Dish sub-app.
#
# Provides means to list, search and buy dishes.
app.use '/dish', dish

# Order sub-app.
#
# Provides means to list orders current user has made.
app.use '/order', order

# Initialization.
app.listen 3000, () ->
    console.log "Listening at http://localhost:#{port}"
