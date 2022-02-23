class PostsController < ApplicationController
 
    def index
        @posts = Post.all
      end
    
    def show
      @post = Post.find(params["id"])
    end

      def new
        @post = Post.new
        @post.place_id = params["place_id"]
      end
    
      def create
        # values = params["post"]
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/posts"
        # redirect_to "/posts/#{@post.place_id}"
      end
    
    end
    
