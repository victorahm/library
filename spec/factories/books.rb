FactoryBot.define do
  factory :book do
    title { "My Title" }
    author { "My Author" }
    publisher { "My Publisher" }
    genre { "My Genre" }
    sequence(:isbn) { Faker::Code.unique.isbn(base: 10) }
    year { 2000 }
  end
end
