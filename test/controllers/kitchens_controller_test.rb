# frozen_string_literal: true

require 'test_helper'

class KitchensControllerTest < ActionDispatch::IntegrationTest
  test 'should get add_kitchen' do
    get kitchens_add_kitchen_url
    assert_response :success
  end
end
