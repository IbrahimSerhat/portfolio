# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1..5.each do |i|
  Blog.create(title: "Example Blog Title #{i}",
              body: "Example body lorem ipsum #{i}")
end

1..5.each do |i|
  Portfolio.create(title: "Example Portfolio Title #{i}",
                   subtitle: "Example subtitle #{i}",
                   body: "Example body lorem ipsum #{i}",
                   main_image: '',
                   thumb_image: '')
end


Skill.create([
                 { title: 'Rails', percent_utilized: 85 },
                 { title: 'HTML', percent_utilized: 90 },
                 { title: 'Angular', percent_utilized: 10 }
             ])