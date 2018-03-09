class Profile
  include Mongoid::Document
  field :dob, type: Date
  field :gender, type: String
  field :bloog_group, type: String
  embedded_in :person
end
