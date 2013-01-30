# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  showing    :boolean          default(FALSE)
#

class Gallery < ActiveRecord::Base
  validates_presence_of :name
  validates :name, :uniqueness => true
  attr_accessible :name, :assets_attributes
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => :true
end
