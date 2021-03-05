class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :items
  has_many :orders

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
  has_many :prototypes 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  
  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end
  
  mount_uploader :image, ImageUploader

  with_options on: :create do
    with_options presence: true do
      validates :nickname 
      validates :birthday 
      validates :image 

      with_options format: { with: /\A[ぁ-んァ-ン一-龥々]/ } do
        validates :first_name
        validates :last_name
      end

      with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
        validates :first_name_kana
        validates :last_name_kana
      end
    end
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  end
end
