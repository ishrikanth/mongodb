class Company
  include Mongoid::Document
  field :name, type: String
  field :city, type: String
  field :country, type: String
  has_many :reviews, as: :reviewable
end
