class BookPerson
  include Mongoid::Document
  embedded_in :person
  embedded_in :book
end
