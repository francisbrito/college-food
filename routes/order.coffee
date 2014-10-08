express = require 'express'

Router = express.Router

router = new Router

# Order list view.
#
# Displays a list of recent orders the current user has done.
router.get '/', (request, response) ->
    response.send 'Order list view.'

# Order details view.
#
# Displays pricing information about a given order.
# Such as charge amount, estimated delivery time & order state.
router.get '/:id', (request, response) ->
    response.send 'Order details view.'

module.exports = router
