# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#=================================================================
# SEEDING FIRST 10 SECRETCODES FOR DEVELOPMENT===============# GENERATEING RANDOM UNIQUE STRING WITH 10 CHARACTERS=====
code_count = SecretCode.all
if code_count.present? && code_count.count == 0
	10.times do |p|
	 	value = ""; 10.times{value  << (65 + rand(25)).chr}
		value.downcase!
		secretcode = SecretCode.new(code: "#{value}")
		secretcode.save!
	end
end

#==================================================================
# CREATE ADMIN USER================================================
user = User.create! :email => 'admin@admin.com', :password => 'admin123', :password_confirmation => 'admin123'
user.add_role "admin"