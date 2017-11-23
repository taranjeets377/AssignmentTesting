class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin_authentication
  	ability = Ability.new(current_user)
	if !ability.can? :manage, :all
		redirect_to root_path
	end
  end
end
