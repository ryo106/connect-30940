class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'LINE' },
    { id: 3, name: 'Facebook' },
    { id: 4, name: 'instagram' },
    { id: 5, name: 'その他' },

  ]

  include ActiveHash::Associations
  has_many :items
end
