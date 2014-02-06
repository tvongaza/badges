class UsersController < ApplicationController
  def random_slide
    # @user = User.active.order('RAND()').first    only works on MySQL. :-(
    @user = User.active.first
    render :random_slide, layout: false
  end
end
