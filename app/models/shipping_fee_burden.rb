class ShippingFeeBurden < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '着払い（会員様負担）' },
    { id: 3, name: '送料込み（弊社負担）' }
  ]

  include ActiveHash::Associations
  has_many :items
end
