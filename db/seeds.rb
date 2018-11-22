# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Booking.destroy_all
# Spot.destroy_all
# User.destroy_all

# u1 = User.create!(name: "Gandhi", avatar: "gandhi.jpg", email: "a@a.com", password: "azerty")
# u2 = User.create!(name: "Albert Einstein", avatar: "einstein.jpg", email: "b@a.com", password: "azerty")
# u3 = User.create!(name: "Pavarotti", avatar: "pavarotti.jpg", email: "c@a.com", password: "azerty")
# u4 = User.create!(name: "Marlon Brando", avatar: "brando.jpg", email: "d@a.com", password: "azerty")
# u5 = User.create!(name: "Staline", avatar: "stalin.jpg", email: "e@a.com", password: "azerty")
# u6 = User.create!(name: "Klaus Barbie", avatar: "barbie.jpg", email: "f@a.com", password: "azerty")
# u7 = User.create!(name: "Amy Winehouse", avatar: "winehouse.jpg", email: "g@a.com", password: "azerty")
# u8 = User.create!(name: "Charles Ponzi", avatar: "ponzi.jpg", email: "h@a.com", password: "azerty")
# u9 = User.create!(name: "Margaret Thatcher", avatar: "thatcher.jpg", email: "i@a.com", password: "azerty")
# u10 = User.create!(name: "Jean Dupont", email: "j@a.com", password: "azerty")
# u11 = User.create!(name: "Maeva Durand", email: "k@a.com", password: "azerty")
# s1 = Spot.create!(description: "Zen place", guest_number: 100, price: 10_000, good: true, image: "zen.jpg", user_id: u1.id)
# s2 = Spot.create!(description: "Space equals to mc2", guest_number: 8, price: 20_000, good: true, image: "mc2.png", user_id: u2.id)
# s3 = Spot.create!(description: "Opera house", guest_number: 2000, price: 15_000, good: true, image: "opera.jpg", user_id: u3.id)
# s4 = Spot.create!(description: "I will make you a house that you cant leave", guest_number: 7, price: 6_000, good: true, image: "logofox.jpg", user_id: u4.id)
# s5 = Spot.create!(description: "Brand new goulag", guest_number: 10_000, price: 5, good: false, image: "urss.jpg", user_id: u5.id)
# s6 = Spot.create!(description: "Ken left me", guest_number: 3, price: 6, good: false, image: "ken.jpg", user_id: u6.id)
# s7 = Spot.create!(description: "Permanent happy hour", guest_number: 56, price: 500, good: false, image: "amybar.jpg", user_id: u7.id)
# s8 = Spot.create!(description: "Let us build a pyramid", guest_number: 1, price: 100_000, good: false, image: "pyramide.jpg", user_id: u8.id)
# s9 = Spot.create!(description: "I will cut the spendings for the hospitals", guest_number: 3, price: 25, good: false, image: "sdf.jpg", user_id: u9.id)
# b1 = Booking.create!(user_id: u10.id, spot_id: s1.id)
# b1 = Booking.create!(user_id: u11.id, spot_id: s5.id)

results = ActiveRecord::Base.connection.execute("UPDATE spots SET photo='sdf.jpg' WHERE id=9")
p results
results = ActiveRecord::Base.connection.execute("UPDATE spots SET photo='pyramide.jpg' WHERE id=8")
p results
results = ActiveRecord::Base.connection.execute("UPDATE spots SET photo='amybar.jpg' WHERE id=7")
p results
results = ActiveRecord::Base.connection.execute("UPDATE spots SET photo='ken.jpg' WHERE id=6")
p results
results = ActiveRecord::Base.connection.execute("UPDATE spots SET photo='urss.jpg' WHERE id=5")
p results
results = ActiveRecord::Base.connection.execute("UPDATE spots SET photo='logofox.jpg' WHERE id=4")
p results
results = ActiveRecord::Base.connection.execute("UPDATE spots SET photo='mc2.png' WHERE id=2")
p results
results = ActiveRecord::Base.connection.execute("UPDATE spots SET photo='opera.jpg' WHERE id=3")
p results

