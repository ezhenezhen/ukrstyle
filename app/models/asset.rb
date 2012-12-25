class Asset < ActiveRecord::Base
  belongs_to :product
  belongs_to :gallery
  has_attached_file :asset, :styles => {:thumb => "240x240#",
                                        :small => "90x90>",
                                        :large => "800x600>",
                                        :gall => "195x150#"}
  attr_accessible :asset
end
