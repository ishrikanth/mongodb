class Book
  include Mongoid::Document
  field :name, type: String
  field :price, type: Float
  embeds_many :book_people
end
