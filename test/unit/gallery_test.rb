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

require 'test_helper'

class GalleryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
