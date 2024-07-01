# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Article.destroy_all

puts "Creating restaurants..."
# new_article = Article.new(title: 'The meaning of life', content: "It's 42!")

10.times do
  new_article = Article.create!(title: Faker::Marketing.buzzwords, content: Faker::Lorem.paragraph(sentence_count: 5))
  puts "Created #{new_article.title}"
end

puts "Finished!"
