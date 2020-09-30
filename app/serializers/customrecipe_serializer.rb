class CustomrecipeSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :image, :ingredients, :instructions, :readyInMinutes, :servings
  

  # def featured_image
  #   if object.featured_image.attached?
  #     {
  #       url: rails_blob_url(object.featured_image)
  #     }
  #   end
  # end

end
