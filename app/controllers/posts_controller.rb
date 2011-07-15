class PostsController < ApplicationController
  uses_tiny_mce :options => {
                                :theme => 'advanced',
                                :theme_advanced_resizing => true,
                                :theme_advanced_resize_horizontal => false,
                                :theme_advanced_toolbar_location => "top",
                                :plugins => %w{ table fullscreen   },
                                :width => "830",
                                :height => "600"
                              }
                              
                              
                            
  def index
    @posts = Post.where(:is_posted => false)
  end
  
  def new
    @post = Post.new 
  end
  
  def create
    @post = Post.new( params[:post])
    
    @post.save
    
    if @post.save
      redirect_to post_url(@post)
    else
      puts "234324234324234"*20
    end
  end
  
  def show 
    @post = Post.find(params[:id])
  end
end
