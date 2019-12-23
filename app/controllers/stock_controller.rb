class StockController < ApplicationController
  def index
 
  end

  def new
  	@stock = Stock.new
  	@products = Product.all
   #@products.map{|p| [p.id, p.name]}
  end
	def create
	end
  def line_item
    session[:basket] ||= [] 
    @product_id = params[:product_id]
    session[:basket] << @product_id
    @products = Product.where.not(id: session[:basket])
    @wrapper = '<select name = "products">'+@products.map{|s| "<option id = #{s.id}> #{s.name}</option>"}.join(',')+'</select>'
    render json: {products: @wrapper }

  end

  def delete
  end
end
