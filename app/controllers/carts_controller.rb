class CartsController < ApplicationController

  def index
    # in view
    # current_user.carts
    @cart_items=current_user.carts.map { |cart| cart.product }
  end

  def create
    # check params to see if you are getting the product_id
    # use current_user + product_id
    # create a new cart (cart item)
    # redriect them to cart index

    #{ cart: { product_id: "3"}}
    product_id = params[:cart][:product_id]
    Cart.create(user_id: current_user.id, product_id: product_id)
    redirect_to action: "index"
    # @product = Product.find(params[:product_id])
    # current_user.products << @product
  end

end
