class SecretCodesController < ApplicationController
	before_action :admin_authentication

  def index
  	@secret_codes = SecretCode.all
  end

  def create
  	params[:code_count].to_i.times do |p|
	 	value = ""; 10.times{value  << (65 + rand(25)).chr} # GENERATEING RANDOM UNIQ STRING WITH 10 CHARACTERS
		value.downcase!
		secretcode = SecretCode.new(code: "#{value}")
		secretcode.save!
	end
  	redirect_to secret_codes_index_path
  end
end
