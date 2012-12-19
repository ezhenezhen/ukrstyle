class Product < ActiveRecord::Base
  validates_presence_of :price
  validates_presence_of :name
  attr_accessible :price, :name, :description, :available, :asset, :asset_2, :asset_3, :assets_attributes
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => :true
end