class User < ApplicationRecord
    has_many :favorites
    has_many :recipes, through: :favorites
    has_many :customrecipes
    has_secure_password
    validates :username, presence: true, uniqueness: true
end
