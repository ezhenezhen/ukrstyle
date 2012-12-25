class Gallery < ActiveRecord::Base
  validates_presence_of :name
  validates :name, :uniqueness => true
  attr_accessible :name, :assets_attributes
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => :true
end
