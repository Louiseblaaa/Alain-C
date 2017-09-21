# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts 'Creating themes'
Theme.create!(title: 'Le Vaucluse', description: 'Avignon', remote_photo_url: "http://alain-r-creton-photographie.depan-info.eu/picture.php?/2185/category/100")
puts "Finished !"
