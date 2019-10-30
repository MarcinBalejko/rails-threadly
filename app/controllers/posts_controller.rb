class PostsController < ApplicationController
    def index
        @new_post = Post.new
        @all_posts = Post.order(created_at: :desc).all
    end

    def create
        @new_post = Post.new(post_params) #CREATE CHYBA MUSI BYC ZAWSZE JESLI JEST CLASS.NEW I PARAMS I SUBMIT
        @new_post.save

        redirect_to root_path
    end

    private

    def post_params
        params.require(:post).permit(:comment)
    end

end
