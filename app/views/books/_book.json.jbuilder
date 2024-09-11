json.extract! book, :id, :title, :author, :publisher, :genre, :isbn, :year, :slug, :created_at, :updated_at
json.url book_url(book, format: :json)
