module ApplicationHelper

	def verify_role_admin
  		ability = Ability.new(current_user)
		if !ability.can? :manage, :all
			return false
		else 
			return true
		end
  	end

end
