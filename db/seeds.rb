# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spot.destroy_all
User.destroy_all
Booking.destroy_all

u1 = User.create(name: "Gandhi", avatar: "gandhi.jpg")
u2 = User.create(name: "Albert Einstein", avatar: "einstein.jpg")
u3 = User.create(name: "Pavarotti", avatar: "pavarotti.jpg")
u4 = User.create(name: "Marlon Brando", avatar: "brando.jpg")
u5 = User.create(name: "Staline", avatar: "stalin.jpg")
u6 = User.create(name: "Klaus Barbie", avatar: "barbie.jpg")
u7 = User.create(name: "Amy Winehouse", avatar: "winehouse.jpg")
u8 = User.create(name: "Charles Ponzi", avatar: "ponzi.jpg")
u9 = User.create(name: "Margaret Thatcher", avatar: "thatcher.jpg")
u10 = User.create(name: "Jean Dupont")
u11 = User.create(name: "Maeva Durand")
s1 = Spot.create(description: "Zen place", guest_number: 100, price: 10_000, good: true, image: "zen.jpg", user_id: u1.id)
s2 = Spot.create(description: "Space equals to mc2", guest_number: 8, price: 20_000, good: true, image: "mc2.png", user_id: u2.id)
s3 = Spot.create(description: "Opera house", guest_number: 2000, price: 15_000, good: true, image: "opera.jpg", user_id: u3.id)
s4 = Spot.create(description: "I will make you a house that you cant leave", guest_number: 7, price: 6_000, good: true, image: "logofox.jpg", user_id: u4.id)
s5 = Spot.create(description: "Brand new goulag", guest_number: 10_000, price: 5, good: false, image: "urss.jpg", user_id: u5.id)
s6 = Spot.create(description: "Ken left me", guest_number: 3, price: 6, good: false, image: "ken.jpg", user_id: u6.id)
s7 = Spot.create(description: "Permanent happy hour", guest_number: 56, price: 500, good: false, image: "amybar.jpg", user_id: u7.id)
s8 = Spot.create(description: "Let us build a pyramid", guest_number: 1, price: 100_000, good: false, image: "pyramide.jpg", user_id: u8.id)
s9 = Spot.create(description: "I will cut the spendings for the hospitals", guest_number: 3, price: 25, good: false, image: "sdf.jpg", user_id: u9.id)
b1 = Booking.create(user_id: u10.id, spot_id: s1.id)
b1 = Booking.create(user_id: u11.id, spot_id: s5.id)

