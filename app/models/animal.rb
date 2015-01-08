class Animal < ActiveRecord::Base
	validates :name, presence: true
	validates :species, presence: true
	validates :bio, presence: true
end
