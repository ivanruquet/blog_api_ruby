class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user, :comments
end
