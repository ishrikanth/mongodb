class Blog
  include Mongoid::Document
  field :name, type: String
  field :price, type: Float
  field :tags, type: String
  belongs_to :person
end
