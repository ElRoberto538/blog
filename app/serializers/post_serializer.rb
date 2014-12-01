class PostSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :image_url
end
