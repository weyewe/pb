class WelcomeController < ApplicationController
  def front_page
    @post = Post.last
    render :layout => 'client/client_layout'
  end
end
