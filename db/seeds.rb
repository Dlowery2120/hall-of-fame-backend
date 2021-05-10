# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# create_table :gamemodes do |t|
#     t.string :mode
#     t.timestamps

Answer.destroy_all
User.destroy_all
Song.destroy_all
Question.destroy_all
Genre.destroy_all
Scoreboard.destroy_all
Gamemode.destroy_all

g1 = Gamemode.create(mode: "Classic")
g2 = Gamemode.create(mode: "Reverse")
g3 = Gamemode.create(mode: "2x Speed")
g4 = Gamemode.create(mode: ".5x Speed")

sb1 = Scoreboard.create(score: 100)

ge1 = Genre.create(category: "Kpop")

q1= Question.create(question: "What song is this?", gamemode_id: g1.id)

s1 = Song.create(artist: "T-Pain", title: "Buy You a Drank", length: 300, album: "Ringleader")

u1 = User.create(username: "ligmaMan", password: "guccigucci", scoreboard_id: sb1)

a1 = Answer.create(answer: "Buy You a Drank", user_id: u1 , question_id: q1)
