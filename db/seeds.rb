puts "🧹 Nettoyage de la base de données..."

# On détruit dans le bon ordre pour respecter les dépendances
UserPlayGame.destroy_all
PlatformHasGame.destroy_all
GameHasType.destroy_all
Game.destroy_all
GameType.destroy_all
Studio.destroy_all
Platform.destroy_all
Builder.destroy_all
User.destroy_all

puts "✅ Base nettoyée !"

ActiveRecord::Base.transaction do
  puts "👤 Création des utilisateurs"
  user = User.create!(email: "manu@gmail.com", password: "ouioui", first_name: "Manu")

  puts "🏗️ Création des constructeurs"
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

  puts "🕹️ Création des plateformes"
  ps5_pro = Platform.create!(name: "PS5 Pro", exit_date: "2023-11-26", builder: sony)
  switch_2 = Platform.create!(name: "Switch 2", exit_date: "2024-03-15", builder: nintendo)
  xbox_series_x = Platform.create!(name: "XBOX Series X", exit_date: "2020-11-10", builder: microsoft)

  puts "🏷️ Création des types de jeux"
  rpg = GameType.create!(name: "RPG")
  aventure = GameType.create!(name: "Aventure")
  action = GameType.create!(name: "Action")
  combat = GameType.create!(name: "Combat")
  sport = GameType.create!(name: "Sport")

  puts "🎬 Création des studios"
  naughty_dog = Studio.create!(
    name: "Naughty Dogs",
    description: "Studio créé en 1984",
    internet_site: "https://www.naughtydog.com/",
    postal_address: "Los Angeles",
    origin_country: "États-Unis",
    builder: sony
  )

  monolith_software = Studio.create!(
    name: "Monolith Software",
    description: "Studio créé en 2012",
    internet_site: "https://www.monolithsoft.co.jp/",
    postal_address: "Kyoto",
    origin_country: "Japon",
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

  puts "🎮 Création des jeux"
  last_of_us = Game.create!(
    title: "The Last of Us Part II",
    description: "Histoire de zombies et de survie",
    exit_date: "2020-06-19",
    price: 79.99,
    min_player: 1,
    max_player: 1,
    min_age: 18,
    studio: naughty_dog
  )

  xenoblade = Game.create!(
    title: "Xenoblade Chronicles",
    description: "Jeu de rôle et de survie",
    exit_date: "2020-05-29",
    price: 59.99,
    min_player: 1,
    max_player: 1,
    min_age: 16,
    studio: monolith_software
  )

  horizon = Game.create!(
    title: "Horizon Zero Dawn",
    description: "Aloy dans un monde apocalyptique",
    exit_date: "2017-03-01",
    price: 49.99,
    min_player: 1,
    max_player: 1,
    min_age: 16,
    studio: guerilla_games
  )

  puts "🔗 Association des jeux aux types"
  last_of_us.game_types << aventure
  xenoblade.game_types << rpg
  horizon.game_types << [rpg, action]

  puts "🔗 Association des jeux aux plateformes"
  PlatformHasGame.create!(game: last_of_us, platform: ps5_pro)
  PlatformHasGame.create!(game: xenoblade, platform: switch_2)
  PlatformHasGame.create!(game: horizon, platform: ps5_pro)
end

puts "✅ Terminé !"
puts "📊 Résumé :"
puts "Utilisateurs créés : #{User.count}"
puts "Constructeurs créés : #{Builder.count}"
puts "Plateformes créées : #{Platform.count}"
puts "Types de jeux créés : #{GameType.count}"
puts "Studios créés : #{Studio.count}"
puts "Jeux créés : #{Game.count}"
puts "Associations jeu-type : #{GameHasType.count}"
puts "Associations jeu-plateforme : #{PlatformHasGame.count}"
