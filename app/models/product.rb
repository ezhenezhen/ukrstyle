# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  product_type     :string(255)
#  general_type_id  :integer
#  name             :string(255)
#  price            :decimal(, )
#  available        :boolean          default(TRUE)
#  minimal_quantity :integer          default(1)
#  description      :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  showing          :boolean          default(FALSE)
#

class Product < ActiveRecord::Base
  has_one :general_type
  validates_presence_of :price
  validates_presence_of :name
  attr_accessible :price, :name, :description, :available, :asset, :asset_2, :asset_3, :assets_attributes, :general_type_id, :minimal_quantity
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => :true

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
