class Vehicle
  include Mongoid::Document
  field :type, type: String
  field :color, type: String
  field :price, type: Float
end
