class SessionSerializer < ActiveModel::Serializer
  attributes :id, :done, :rounds, :user_id
end
