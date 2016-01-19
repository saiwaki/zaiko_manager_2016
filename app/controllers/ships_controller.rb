class ShipsController < ApplicationController
  def create
    if ship_params[:first_item] == "0" && ship_params[:second_item] == "0" && ship_params[:third_item] == "0"
      render nothing: true
      return
    end
    @ship = Ship.new(ship_params)
    @ship.created_time = Time.zone.now.strftime("%Y年%m月%d日 %H時%M分%S秒")
    @ship.save
    render json: @ship
  end

  private

  def ship_params
    params.require(:ship).permit(:first_item, :second_item, :third_item, :name)
  end
end
