class UserSerializer < ActiveModel::Serializer
  attributes :name, :nickname, :email
end
