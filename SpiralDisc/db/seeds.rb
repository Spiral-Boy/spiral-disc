# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	100.times do |index|
	  User.create!(name: "name#{index}", name_kana: "kana#{index}", email: "user@gmail.com#{index}", postal_code: "000-0000#{index}", street_address: "東京都0000000000#{index}", phone_number: "000-0000-0000#{index}", password: "00000000000#{index}")
	end

	Genre.create(genre_name: "J-POP")
	Genre.create(genre_name: "ロック＆ポップス")
	Genre.create(genre_name: "ヒップホップ")
	Genre.create(genre_name: "クラブ/ダンス")
	Genre.create(genre_name: "ハードロック/メタル")
	Genre.create(genre_name: "レゲエ")
	Genre.create(genre_name: "JAZZ")
	Genre.create(genre_name: "ブルース")
	Genre.create(genre_name: "演歌/民謡")
	Genre.create(genre_name: "クラシック")
	