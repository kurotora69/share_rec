class RecGenre < ApplicationRecord
  belongs_to :recreation 
  belongs_to :genre_tag
  
end
