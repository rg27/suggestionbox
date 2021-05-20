class Topic < ApplicationRecord
	validates :title, presence: true, length: { minimum:5 }
	validates :description, presence: true, length: { minimum:7 }
	has_many :votes, dependent: :destroy
end