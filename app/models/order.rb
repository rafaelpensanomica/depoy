class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  PAYMENT_TYPES = ["Check", "Credit card", "Purchase Order"]
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES


  def add_line_items_from_cart(cart)
    card.line_items.each do |item|
      item.card_id = nil
      line_items << item
    end
  end

end
