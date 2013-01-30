# == Schema Information
#
# Table name: general_types
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class GeneralType < ActiveRecord::Base
  has_and_belongs_to_many :categories
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
