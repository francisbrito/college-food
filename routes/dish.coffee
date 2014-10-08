express = require 'express'

Router = express.Router

router = new Router

# Dish list view.
# 
# Allows search for a particular dish.
# Displays a list of cards with today's dishes.
router.get '/', (request, response) ->
    response.render 'dish/index'

# Dish details view.
# 
# Displays pricing, ingredients & delivery time for a particular dish.
router.get '/:id', (request, response) ->
    response.render 'dish/details'

# Buy dish action.
#
# Starts an order process.
# Redirects to order details.
router.post '/:id/buy', (request, response) ->
    response.send 'Buy dish action.'


module.exports = router
