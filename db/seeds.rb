# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts 'Cleaning database...'
Theme.destroy_all
Picture.destroy_all
puts 'Creating themes'
Theme.create!(title: 'Fête de Gayant', description: 'défilé 2016')
