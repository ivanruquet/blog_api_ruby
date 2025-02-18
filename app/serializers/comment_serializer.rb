class CommentSerializer < ActiveModel::Serializer
  attributes :id, :commentable, :author
end
