class Word < ActiveRecord::Base
	belongs_to :user

	validates :title, :definition, presence: true
end
