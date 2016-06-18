class Leftover < ActiveRecord::Base
	belongs_to :user
	has_many :consumption
	acts_as_mappable
end
