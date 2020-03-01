# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# title
# first name
# last name
# review
# rating - number

30.times do
  BookReview.create(title: Faker::Book.title,
                    first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    review: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
                    rating: Faker::Number.between(from: 1, to: 5),
                    user_id: Faker::Number.between(from: 3, to: 5))
end
