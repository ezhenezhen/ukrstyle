# == Schema Information
#
# Table name: assets
#
#  id                 :integer          not null, primary key
#  asset_file_name    :string(255)
#  asset_file_size    :integer
#  asset_content_type :string(255)
#  asset_updated_at   :datetime
#  product_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  gallery_id         :integer
#

class Asset < ActiveRecord::Base
  belongs_to :product
  belongs_to :gallery
  has_attached_file :asset, :styles => {:thumb => "240x240#",
                                        :small => "90x90>",
                                        :large => "800x600>",
                                        :gall => "195x150#"}
  attr_accessible :asset
end
