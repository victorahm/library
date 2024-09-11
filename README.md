# Library

Web application to manage a library's book inventory and user borrowings.

## Environment
- Ruby 3.3.5
- Rails 7.2.1
- Postgresql 16.1

## Development environment

For development environment, the project uses Docker. Please install Docker and Docker Compose to run the project.

The project uses DevContainers. If you are using VSCode, install DevContainers extension and use it to load the project.

### Run the project

To run the project from terminal (using docker) just run:

```bash
docker compose -f .devcontainer/compose.yaml up
```

The web server will use port 3000, then just open yor browser in `localhost:3000`.

### Sample credentials

To create the initial credentials, just run:

```bash
docker compose -f .devcontainer/compose.yaml run --rm rails-app bin/rails db:seed
```

### Sample data
There is a rake task to populate the books table with sample data:
```bash
bin/rails sample_data:books
```
It will create 100 books (using Faker gem)

## Test environment

The test suite uses RSpec, just run:

```bash
bin/bundle exec rspec
```

## Features

### Users
- A user can register in the system
- A registered user can login in the system
- A user can edit its profile (email and password)
- A user can cancel its account

### Books
- A user can see all existing books
- A user can search books by title, author, ISBN, genre, year and publisher
- A user can see books details
- Only librarian users can create new books
- Only librarian users can edit a book
- Only librarian users can delete a book

### Demo
![Demo](./public/Screencast.gif)

## TODO:
- Implement Borrowing and Returning
- Allow librarian manage other librarian accounts
- Dashboard for librarian
- Dashboard for member
- Rest API
