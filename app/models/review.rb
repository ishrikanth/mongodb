class Review
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :rating, type: Integer
  field :reviewable_type, type: String
  field :reviewable_id, type: Integer
  belongs_to :reviewable,polymorphic: true
end
