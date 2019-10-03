class UserSerializer < ActiveModel::Serializer
  	attributes :id, :name, :streak
	has_many :sessions

end
