class SecretCode < ApplicationRecord
	resourcify
	belongs_to :user, optional: true  
end
