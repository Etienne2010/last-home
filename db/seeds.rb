# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Message.destroy_all
Booking.destroy_all
Spot.destroy_all
Review.destroy_all
User.destroy_all

u1 = User.create!(name: "Gandhi", email: "a@a.com", password: "azerty")
u1.photo = Rails.root.join("app/assets/images/gandhi.jpg").open
u1.save
u2 = User.create!(name: "Albert Einstein", email: "b@a.com", password: "azerty")
u2.photo = Rails.root.join("app/assets/images/einstein.jpg").open
u2.save
u3 = User.create!(name: "Pavarotti", avatar: "pavarotti.jpg", email: "c@a.com", password: "azerty")
u3.photo = Rails.root.join("app/assets/images/pavarotti.jpg").open
u3.save

u4 = User.create!(name: "Marlon Brando", avatar: "brando.jpg", email: "d@a.com", password: "azerty")
u4.photo = Rails.root.join("app/assets/images/brando.jpg").open
u4.save

u5 = User.create!(name: "Staline", avatar: "stalin.jpg", email: "e@a.com", password: "azerty")
u5.photo = Rails.root.join("app/assets/images/stalin.jpg").open
u5.save

u6 = User.create!(name: "Klaus Barbie", avatar: "barbie.jpg", email: "f@a.com", password: "azerty")
u6.photo = Rails.root.join("app/assets/images/barbie.jpg").open
u6.save

u7 = User.create!(name: "Amy Winehouse", avatar: "winehouse.jpg", email: "g@a.com", password: "azerty")
u7.photo = Rails.root.join("app/assets/images/winehouse.jpg").open
u7.save

u8 = User.create!(name: "Charles Ponzi", avatar: "ponzi.jpg", email: "h@a.com", password: "azerty")
u8.photo = Rails.root.join("app/assets/images/ponzi.jpg").open
u8.save

u9 = User.create!(name: "Margaret Thatcher", avatar: "thatcher.jpg", email: "i@a.com", password: "azerty")
u9.photo = Rails.root.join("app/assets/images/thatcher.jpg").open
u9.save

u10 = User.create!(name: "Jean Dupont", email: "j@a.com", password: "azerty")
u10.photo = Rails.root.join("app/assets/images/dupont.jpg").open
u10.save

u11 = User.create!(name: "Maeva Durand", email: "k@a.com", password: "azerty")
u10.photo = Rails.root.join("app/assets/images/durand.jpg").open
u10.save


s5 = Spot.create!(description: "Brand new goulag", guest_number: 10_000, price: 5, good: false, image: "urss.jpg", user_id: u5.id, occupation: "dictator")
s5.photo = Rails.root.join("app/assets/images/urss.jpg").open
s5.save

p s5.photo.url

s6 = Spot.create!(description: "Ken left me", guest_number: 3, price: 6, good: false, image: "ken.jpg", user_id: u6.id, occupation: "butcher")
s6.photo = Rails.root.join("app/assets/images/ken.jpg").open
s6.save

s7 = Spot.create!(description: "Permanent happy hour", guest_number: 56, price: 500, good: false, image: "amybar.jpg", user_id: u7.id, occupation: "junkie")
s7.photo = Rails.root.join("app/assets/images/amybar.jpg").open
s7.save

s8 = Spot.create!(description: "Let us build a pyramid", guest_number: 1, price: 100_000, good: false, image: "pyramide.jpg", user_id: u8.id, occupation: "con artist")
s8.photo = Rails.root.join("app/assets/images/pyramide.jpg").open
s8.save

s9 = Spot.create!(description: "I will cut the spendings for the hospitals", guest_number: 3, price: 25, good: false, image: "sdf.jpg", user_id: u9.id, occupation: "politician")
s9.photo = Rails.root.join("app/assets/images/sdf.jpg").open
s9.save

s1 = Spot.create!(description: "Zen place", guest_number: 100, price: 10_000, good: true, user_id: u1.id, occupation: "pacifist")
s1.photo = Rails.root.join("app/assets/images/zen.jpg").open
s1.save

s2 = Spot.create!(description: "Space equals to mc2", guest_number: 8, price: 20_000, good: true, image: "mc2.png", user_id: u2.id, , occupation: "physicist")
s2.photo = Rails.root.join("app/assets/images/mc2.png").open
s2.save

s4 = Spot.create!(description: "I will make you a house that you cant leave", guest_number: 7, price: 6_000, good: true, image: "logofox.jpg", user_id: u4.id, occupation: "actor")
s4.photo = Rails.root.join("app/assets/images/logofox.jpg").open
s4.save

s3 = Spot.create!(description: "Opera house", guest_number: 2000, price: 15_000, good: true, image: "opera.jpg", user_id: u3.id, , occupation: "singer")
s3.photo = Rails.root.join("app/assets/images/opera.jpg").open
s3.save
