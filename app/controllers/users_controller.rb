class UsersController < ApplicationController
  def random_slide
    # user = User.active.order('RAND()').first    only works on MySQL. :-(
    user = User.all.sample
    render partial: 'users/slide', locals: {user: user}
  end
end
