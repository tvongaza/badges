["Fred Nozzle", "Rosemary Sousaphone", "Victoria Wobble", "Gerald Fnord"].each do |name|
  User.create!(name: name, email: "#{name.downcase.sub(/\s+/, '.')}@clio.com", password: "testtest")
end
users = User.all
users.last.update_attributes!(active: false)

Badge.create!(name: "Nice Hat!", description: "That's a sharp-looking hat.", material: 1)
Badge.create!(name: "Excellent Jib", description: "I like the cut of your jib.", material: 1)
Badge.create!(name: "Snipe Hunter", description: "Skillfully sought the most snipes.", material: 2)
badges = Badge.all

Award.create!(awarder: users[0], recipient: users[1], badge: badges[0], reason: "Mauris elit orci, mattis id dignissim eget, placerat et nisl. Sed blandit libero vel enim facilisis viverra. Etiam vitae volutpat velit. Nulla placerat urna eget dui facilisis congue.")
Award.create!(awarder: users[0], recipient: users[1], badge: badges[0], reason: "Quisque quis nisl sem.")
Award.create!(awarder: users[1], recipient: users[0], badge: badges[1], reason: "Nunc id ante sodales, bibendum velit eu, fringilla felis. Morbi quis lobortis tortor, ut ultricies nulla.")
Award.create!(awarder: users[2], recipient: users[0], badge: badges[2], reason: "Praesent nulla purus, volutpat in iaculis eu, imperdiet vel dolor.")
Award.create!(awarder: users[1], recipient: users[3], badge: badges[0], reason: "Curabitur pellentesque vitae purus a luctus. Ut at pellentesque nisl, vel dignissim erat. Proin pellentesque tempor neque a molestie.")

Recommendation.create!(awarder: users[0], recipient: users[2], badge: badges[2], reason: "Balls.")
Recommendation.create!(awarder: users[1], recipient: users[0], badge: badges[2], reason: "Facilisis turpis.")
