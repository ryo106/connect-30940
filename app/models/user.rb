class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :items
  has_many :orders

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options on: :registrations_new do |new_record|
    with_options presence: true do
      new_record.validate :nickname 
      new_record.validate :birthday 

      with_options format: { with: /\A[ぁ-んァ-ン一-龥々]/ } do
        new_record.validate :first_name
        new_record.validate :last_name
      end

      with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
        new_record.validate :first_name_kana
        new_record.validate :last_name_kana
      end
    end
    new_record.validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'Include both letters and numbers' }
  end
end
