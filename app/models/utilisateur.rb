class Utilisateur < ApplicationRecord
	has_one_attached :avatar
	has_many_attached :pictures
end
