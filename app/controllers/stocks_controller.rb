class StocksController < ApplicationController
  def index
    @first_total = ship_first_count - order_first_count
    @second_total = ship_second_count - order_second_count
    @third_total = ship_third_count - order_third_count
    @orders = Order.limit(10).order(created_at: :desc)
    @ships = Ship.limit(10).order(created_at: :desc)
  end

  def order_first_count
    f_count = 0
    first_order = Order.select("first_item")
    first_order.each do |fst|
      f_count = f_count + fst.first_item
    end
    return f_count
  end

  def order_second_count
    s_count = 0
    second_order = Order.select("second_item")
    second_order.each do |snd|
      s_count = s_count + snd.second_item
    end
    return s_count
  end

  def order_third_count
    t_count = 0
    third_order = Order.select("third_item")
    third_order.each do |tid|
      t_count = t_count + tid.third_item
    end
    return t_count
  end

  def ship_first_count
    f_count = 0
    first_ship = Ship.select("first_item")
    first_ship.each do |fst|
      f_count = f_count + fst.first_item
    end
    return f_count
  end

  def ship_second_count
    s_count = 0
    second_ship = Ship.select("second_item")
    second_ship.each do |snd|
      s_count = s_count + snd.second_item
    end
    return s_count
  end

  def ship_third_count
    t_count = 0
    third_ship = Ship.select("third_item")
    third_ship.each do |tid|
      t_count = t_count + tid.third_item
    end
    return t_count
  end

  def welcome
    
  end

end
