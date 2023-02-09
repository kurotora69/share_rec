class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recreations
  
  with_options presence: true do
    validates :nickname
    validates :nursing_home
    validates :occupation
  end  


end
