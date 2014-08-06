class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy # "dependent:" destroys all comments assoc with a deleted article.
	validates :title, presence: true,
									 length: { minimum: 5 }
end
