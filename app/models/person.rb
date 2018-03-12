class Person
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :notes, type: String
  embeds_one :profile
  has_many :blogs
  embeds_many :book_people
  has_many :reviews, as: :reviewable
end
