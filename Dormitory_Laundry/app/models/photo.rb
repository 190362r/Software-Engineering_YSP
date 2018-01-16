class Photo < ApplicationRecord
	validates_presence_of :name
	attachment :file
	validates_presence_of :file
end
