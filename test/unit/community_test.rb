require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Community.new.valid?
  end
end
