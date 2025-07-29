puts "Nettoyage de la base de données 🗑️"
User.destroy_all
Game.destroy_all
Studio.destroy_all
Platform.destroy_all
Builder.destroy_all

puts "Création des utilisateurs 👤"
user = User.create!(email: "manu@gmail.com", password: "ouioui", first_name: "Manu")

puts "Création des constructeurs 🏗️"
sony = Builder.create!(
  name: "SONY",
  internet_site: "https://playstation.com/fr-fr/",
  postal_address: "Sony Interactive Entertainment LLC, 2207 Bridgepointe Pkwy, Foster City, CA 94404, États-Unis",
  origin_country: "JAPON"
)

nintendo = Builder.create!(
  name: "NINTENDO",
  internet_site: "https://nintendo.com/fr-fr/",
  postal_address: "Nintendo Co., Ltd. (11-1 Hokotate-cho, Kamitoba, Minami-ku, Kyoto 601-8501)",
  origin_country: "JAPON"
)

microsoft = Builder.create!(
  name: "MICROSOFT",
  internet_site: "https://xbox.com/fr-fr/",
  postal_address: "1 Microsoft Way, Redmond, WA 98052, États-Unis",
  origin_country: "USA"
)

puts "Création des plateformes 🕹️"
Platform.create!(name: "PS5", exit_date: "2020-11-26", builder: sony)
Platform.create!(name: "Switch 2", exit_date: "2017-06-05", builder: nintendo)
Platform.create!(name: "XBOX Series", exit_date: "2019-11-21", builder: microsoft)

puts "Création des studios 🎬"
naughty_dog = Studio.create!(
  name: "Naughty Dogs",
  description: "Studio créé en 1984",
  internet_site: "https://www.naughtydog.com/",
  postal_address: "Los Angeles",
  origin_country: "USA",
  builder: sony
)

monolith_software = Studio.create!(
  name: "Monolith Software",
  description: "Studio créé en 2012",
  internet_site: "https://www.monolithsoft.co.jp/",
  postal_address: "Kyoto",
  origin_country: "JAPON",
  builder: nintendo
)

guerilla_games = Studio.create!(
  name: "Guerilla Games",
  description: "Studio créé en 2003",
  internet_site: "https://www.guerrilla-games.com/",
  postal_address: "Amsterdam",
  origin_country: "Pays-Bas",
  builder: sony
)

puts "Création des jeux 🎮"
Game.create!(
  title: "The Last of Us Part II",
  type_game: "Aventure",
  description: "Histoire de zombies et de survie",
  exit_date: "2019-04-20",
  price: 79.99,
  min_player: 1,
  max_player: 1,
  min_age: 18,
  studio: naughty_dog
)

Game.create!(
  title: "Xenoblade Chronicles",
  type_game: "RPG",
  description: "Jeu de rôle et de survie",
  exit_date: "2019-02-20",
  price: 79.99,
  min_player: 1,
  max_player: 1,
  min_age: 18,
  studio: monolith_software
)

Game.create!(
  title: "Horizon Zero Dawn",
  type_game: "RPG",
  description: "Aloy dans un monde apocalyptique",
  exit_date: "2017-03-17",
  price: 79.99,
  min_player: 1,
  max_player: 1,
  min_age: 16,
  studio: guerilla_games
)

puts "✅ Terminé !"
puts "Utilisateurs créés : #{User.count}"
puts "Constructeurs créés : #{Builder.count}"
puts "Plateformes créées : #{Platform.count}"
puts "Studios créés : #{Studio.count}"
puts "Jeux créés : #{Game.count}"
