class Order < ActiveRecord::Base
  belongs_to :line_item_id
end
