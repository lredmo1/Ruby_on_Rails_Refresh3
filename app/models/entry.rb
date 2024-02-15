class Entry < ApplicationRecord

	belongs_to :category 
	
	validates :calories, :proteins, :carbohydrates, :fats, :meal_type, presence: true

	def day
		# self is the same and Entry here
		self.created_at.strftime("%b %e, %Y")
	end
end
