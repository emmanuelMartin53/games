# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

@user = User.new(email:"manu@gmail.com", password:"ouioui", first_name:"Manu")
@user.save

@builder = Builder.new(name: "SONY", internet_site: "https://playstation.com/fr-fr/", postal_address:"Sony Interactive Entertainment LLC, 2207 Bridgepointe Pkwy, Foster City, CA 94404, États-Unis - MapQuest.", origin_country: "JAPAN")
@builder.save
@builder = Builder.new(name: "NINTENDO", internet_site: "https://nintendo.com/fr-fr/", postal_address:"Nintendo Co., Ltd. (11-1 Hokotate-cho, Kamitoba, Minami-ku, Kyoto 601-8501.", origin_country: "JAPAN")
@builder.save

@platform = Platform.new(name_platform: "PS5", exit_date: "2020-11-26", builder_id: 1)
@platform.save
@platform = Platform.new(name_platform: "Swiich", exit_date: "2017-06-23", builder_id: 2)
@platform.save
@platform = Platform.new(name_platform: "XBOX Series", exit_date: "2019-11-21", builder_id: @builder.id)
@platform.save

@studio = Studio.new(name: "Naughty Dogs", internet_site: "https://www.naughtydog.com/", postal_address: "Los Angeles", origin_country: "USA", builder_id: 1)
@studio.save
@studio = Studio.new(name: "Monolith software", internet_site: "https://www.monolithsoft.co.jp/", postal_address: "Kyoto", origin_country: "JAPON", builder_id: 2)
@studio.save
@studio = Studio.new(name: "Guerilla Games", internet_site: "https://www.guerrilla-games.com/", postal_address: "Amsterdam", origin_country: "Pays-Bas", builder_id: 1)
@studio.save

@game = Game.new(title: "The last of us part 2", type_game: "Aventure", description: "histoire de zombi et de survie", exit_date: "2019-04-20", price: 79.99, min_player: 1, max_player: 1, min_age: 18, studio_id: 1)
@game.save
@game = Game.new(title: "Xenoblade", type_game: "RPG", description: "histoire d'un jeu de role et de survie", exit_date: "2019-02-20", price: 79.99, min_player: 1, max_player: 1, min_age: 18, studio_id: 2)
@game.save
@game = Game.new(title: "Horizon zero dawn", type_game: "RPG", description: "Aloy dans un monde apocalyptique", exit_date: "17-03-2017", price: 79.99, min_player:1, max_player:1, min_age: 16, studio_id: 3)
@game.save
