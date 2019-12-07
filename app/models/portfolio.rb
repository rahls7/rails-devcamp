class Portfolio < ApplicationRecord
    validate_presence_of :title, :body, :main_image, :thumbnail
end
