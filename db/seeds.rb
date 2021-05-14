
Scoreboard.destroy_all
Gamemode.destroy_all
Genre.destroy_all
Question.destroy_all
User.destroy_all
Answer.destroy_all
Song.destroy_all

sb1 = Scoreboard.create(score: 100)


g1 = Genre.create(category: "Kpop")
g2 = Genre.create(category: "Pop")
g3 = Genre.create(category: "Rock")
g4 = Genre.create(category: "Hip-Hop")
g5 = Genre.create(category: "Dance")
g6 = Genre.create(category: "Country")

gm1 = Gamemode.create(mode: "Classic")
gm2 = Gamemode.create(mode: "0.5x")
gm3 = Gamemode.create(mode: "2x")
gm4 = Gamemode.create(mode: "Reverse")

s1 = Song.create(artist: "BTS", title: "Black Swan", length: 197, album: "Map of the Soul: 7", genre_id: g1.id)
s2 = Song.create(artist: "BLACKPINK", title: "How You Like That", length: 182, album: "THE ALBUM", genre_id: g1.id)
s3 = Song.create(artist: "Bruno Mars", title: "Locked out of Heaven", length: 232, album: "Unorthodox Jukebox", genre_id: g2.id)
s4 = Song.create(artist: "Adele", title: "Rolling in the Deep", length: 228, album: "21", genre_id: g2.id)
s5 = Song.create(artist: "Nirvana", title: "Smells Like Teen Spirit", length: 301, album: "Nevermind", genre_id: g3.id)
s6 = Song.create(artist: "Led Zeppelin", title: "Stairway to Heaven", length: 478, album: "Led Zepplin IV", genre_id: g3.id)
s7 = Song.create(artist: "Travis Scott", title: "Sicko Mode", length: 313, album: "AstroWorld", genre_id: g4.id)
s8 = Song.create(artist: "50 Cent", title: "Many Men", length: 256, album: "Get Rich or Die Tryin'", genre_id: g4.id)
s9 = Song.create(artist: "Daft Punk", title: "One More Time", length: 320, album: "Discovery", genre_id: g5.id)
s10 = Song.create(artist: "LMFAO", title: "Party Rock Anthem", length: 262, album: "Sorry For Party Rocking", genre_id: g5.id)
s11 = Song.create(artist: "Carrie Underwood", title: "Before He Cheats", length: 200, album: "Some hearts", genre_id: g6.id)
s12 = Song.create(artist: "Tim McGraw", title: "Live Like You Were Dying", length: 300, album: "Live Like You Were Dying", genre_id: g6.id)

q1= Question.create(question: "What Song is This?", gamemode_id: gm1.id)
q2= Question.create(question: "What Album is This From?", gamemode_id: gm1.id)
q3= Question.create(question: "What Artist is This?", gamemode_id: gm1.id)

u1 = User.create(username: "ligmaMan", password: "guccigucci")

a1 = Answer.create(answer: "Black Swan", user_id: u1.id , question_id: q1.id)

