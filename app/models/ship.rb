class Ship < ActiveRecord::Base
  validates :first_item, presence: true, numericality: {only_integer: true, less_than: 1000}
  validates :second_item, presence: true, numericality: {only_integer: true, less_than: 1000}
  validates :third_item, presence: true , numericality: {only_integer: true, less_than: 1000}
  validates :name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :created_time, presence: true
end
