require 'test_helper'

class Web::BoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    user = create(:user)
    sign_in user
  end

  test 'should get show' do
    get web_boards_show_url
    assert_response :success
  end
end
