class OrdersController < ApplicationController
  def create
    if order_params[:first_item] == "0" && order_params[:second_item] == "0" && order_params[:third_item] == "0"
      render nothing: true
      return
    end
    @order = Order.new(order_params)
    @order.created_time = Time.zone.now.strftime("%Y年%m月%d日 %H時%M分%S秒")
    @order.save
    render json: @order
  end

  private

  def order_params
    params.require(:order).permit(:first_item, :second_item, :third_item, :name)
  end
end
