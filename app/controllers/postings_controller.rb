class PostingsController < ApplicationController
  
  before_action :authenticate_user!, except: [:index]
  
    def index
        @all_postings=posting.all
        @all_comments=comment.all
        end


def create
    posting=Posting.new
    posting.user_id = current_user.id
    posting.title=params[:title]
    posting.body=params[:content]
    posting.save
    
    if posting.save
    redirect_to '/index'
   else
    flash[:error]="Error : title and contnet cannot be blank"
    redirect_to '/index'
   end
end 