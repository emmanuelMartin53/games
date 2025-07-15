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

@builder = Builder.new(name: "Sony", internet_site: "https://sony.com", postal_address:"tokyo", origin_country: "JAPAN")
@builder.save

@platform = Platform.new(name_platform: "PS5", exit_date: "2020-11-19", builder_id: @builder.id)
@platform.save

@studio = Studio.new(name_studio: "Naughty Dogs", internet_site: "https://naugtydogs.com", postal_address: "Los Angeles", origin_country: "USA", builder_id: @builder.id)
@studio.save

@game = Game.new(title: "The last of us part 2", type_game: "Aventure", description: "histoire de zombi et de survie", exit_date: "2019-04-20", price: 79, min_player: 1, max_player: 1, min_age: 18, studio_id: @studio.id)
@game.save
