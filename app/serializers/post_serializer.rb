class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :created_at, :embed_code

end
