class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :projects
end
