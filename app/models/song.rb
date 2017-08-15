class Song < ActiveRecord::Base

	validates :title, presence: true
	validates :title, uniqueness: true
	validates :artist_name, presence: true
	validates :release_year, inclusion: {in: 1900..Date.today.year}, if: :release?

	def release?
		released
	end

end