require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,        "Guru Dev"
    assert_equal full_title("Help"), "Help | Guru Dev"
  end
end
