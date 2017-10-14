demoadmin = User.create(name: 'Demo Admin', email: 'admin@ibrahimserhat.com', roles: 'admin', password: 'adminpass')
demouser = User.create(name: 'Demo User', email: 'user@ibrahimserhat.com', roles: 'user', password: 'userpass')

3.times do |topic|
  Topic.create!(
           title: "Topic #{topic}"
  )
end

(1..10).each do |i|
  Blog.create(title: "Example Blog Title #{i}",
              body: "Example body lorem ipsum #{i}",
              topic_id: Random.rand(1..3), user_id: User.first.id
  )
end

#(1..5).each do |i|
#  Portfolio.create(title: "Example Portfolio Title #{i}",
#                   subtitle: 'Ruby on Rails',
#                   body: "Example body lorem ipsum #{i}",
#                   main_image: 'uploads/main_image/600x400.png',
#                   thumb_image: 'uploads/thumb_image/350x200.png')
#  Portfolio.last.technologies.create(name: 'Rails')
#end

#(1..2).each do |i|
#  Portfolio.create(title: "Example Portfolio Title #{i+5}",
#                   subtitle: 'Angular',
#                   body: "Example body lorem ipsum #{i+5}",
#                   main_image: 'http://placehold.it/600x400',
#                   thumb_image: 'http://placehold.it/350x200')
#  Portfolio.last.technologies.create(name: 'Angular')
#end


Skill.create([
                 { title: 'Rails', percent_utilized: 85 },
                 { title: 'HTML', percent_utilized: 90 },
                 { title: 'Angular', percent_utilized: 10 }
             ])

puts "demo admin login => email: #{demoadmin.email}, password: #{demoadmin.password}"
puts "demo user login => email: #{demouser.email}, password: #{demouser.password}"
