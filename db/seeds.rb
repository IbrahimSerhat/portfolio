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
              topic_id: Random.rand(1..3), user_id: User.first.id,
              status: Random.rand(0..1)
  )
end

(1..5).each do |i|
  Portfolio.create(title: "Example Portfolio Title #{i}",
                   subtitle: 'Ruby on Rails',
                   body: "Example body lorem ipsum #{i}"
  )
  Portfolio.last.technologies.create(name: 'Rails')
end

(1..2).each do |i|
  Portfolio.create(title: "Example Portfolio Title #{i+5}",
                   subtitle: 'Angular',
                   body: "Example body lorem ipsum #{i+5}"
  )
  Portfolio.last.technologies.create(name: 'Angular')
end


Skill.create([
                 { title: 'Ruby on Rails', percent_utilized: 85 },
                 { title: 'HTML', percent_utilized: 90 },
                 { title: 'Angular', percent_utilized: 25 }
             ])

puts "demo admin login => email: #{demoadmin.email}, password: #{demoadmin.password}"
puts "demo user login => email: #{demouser.email}, password: #{demouser.password}"
