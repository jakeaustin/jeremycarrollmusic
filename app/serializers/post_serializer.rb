class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :created_at, :embed_code

end
