FactoryBot.define do
  factory :blog do
    name "MyString"
    price 1.5
    tags "MyString"
    person Person.create(first_name: "has_many_through_first2", last_name: "has_many_through_last2",
      email: "has_many_through2@has_many_through.com", notes: "has_many_through2")
  end
end
