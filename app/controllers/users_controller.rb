class UsersController < ApplicationController
  before_filter :login_required

  def random_slide
    # user = User.active.order('RAND()').first    only works on MySQL. :-(
    user = User.all.sample
    render partial: 'users/slide', locals: {user: user}
  end

  def show
    @recognition = Recognition.new
  end
  
end
