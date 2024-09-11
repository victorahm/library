require "faker"

namespace :sample_data do
  desc "Populate the books table wih sample data"
  task books: :environment do
    number = ENV["NUMBER"] || 100
    Book.transaction do
      number.to_i.times do
        Book.create!(
          title: Faker::Book.unique.title,
          author: Faker::Book.author,
          publisher: Faker::Book.publisher,
          genre: Faker::Book.genre,
          year: Faker::Number.between(from: 1900, to: 2024),
          isbn: Faker::Code.unique.isbn(base: 10)
        )
      end
    end
    puts "Created #{number} books"
  end
end
