class KitchensController < ApplicationController
  skip_before_action:ensure_user_logged_in
  def add_kitchen
  end
end
