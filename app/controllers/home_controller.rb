require 'scrapifier'


class HomeController < ApplicationController
  def index
      @orange = Post.all
  end
  
  def write
    new_post = Post.new
    new_post.links = params[:links]
    clips = params[:links].scrapify(images: [:png, :jpg])
    new_post.title = clips[:title]
    new_post.abstract = clips[:description].gsub(/&nbsp;/,"") + '...'
    new_post.image_link = clips[:images][0]
    new_post.save
    
    redirect_to '/'

    
    
  end
end
