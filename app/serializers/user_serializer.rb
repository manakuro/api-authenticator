class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :provider, :uid, :tokens
end
