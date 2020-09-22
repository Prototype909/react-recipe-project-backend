class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :email, :comments, :likes, :recipes
    has_many :recipes 
end