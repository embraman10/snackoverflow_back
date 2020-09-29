class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :favorites 
  has_many :recipes 
  # has_many :customrecipes
end
