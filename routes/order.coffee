express = require 'express'

Router = express.Router

router = new Router

# Order list view.
#
# Displays a list of recent orders the current user has done.
router.get '/', (request, response) ->
    response.render 'order/index'

# Order details view.
#
# Displays pricing information about a given order.
# Such as charge amount, estimated delivery time & order state.
router.get '/:id', (request, response) ->
    response.render 'order/details'

module.exports = router
