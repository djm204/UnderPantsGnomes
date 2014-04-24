class Customer < ActiveRecord::Base
  belongs_to :province
  has_many   :orders
  validates_presence_of :name, :billing_address, :shipping_address, :postal_code, :city, :email_address
end
