class Recreation < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :explanation
    validates :tool
    validates :posture
    validates :place
    validates :staff_number
    validates :care_number
  end  
end
