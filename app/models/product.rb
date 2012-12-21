class Product < ActiveRecord::Base
  has_one :general_type
  validates_presence_of :price
  validates_presence_of :name
  attr_accessible :price, :name, :description, :available, :asset, :asset_2, :asset_3, :assets_attributes, :general_type_id
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => :true
end