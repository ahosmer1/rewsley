class Story < ActiveRecord::Base
	validates :title, :link, :category, :presence => true
	def self.search_for( query )
		Story.where("title LIKE :query OR category LIKE :query", :query => "%#{query}%")
	end
end
