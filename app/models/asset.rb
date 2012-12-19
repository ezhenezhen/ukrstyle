class Asset < ActiveRecord::Base
  belongs_to :product
  has_attached_file :asset, :styles => {:thumb => "240x240#",
                                        :small => "90x90>",
                                        :large => "800x600>"}
  attr_accessible :asset
end
