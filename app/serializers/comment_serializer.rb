class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user, :recipe
end