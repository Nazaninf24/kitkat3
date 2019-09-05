class CommentsController < ApplicationController
  before_action :find_item
  before_action :find_comment, only: [:destroy, :edit, :update]
  before_action :authenticate_user!

	def new
		@comments = Comment.new
	end

	def create
		@comment = @item.comments.create(params[:comment].permit(:content))
		@comment.user_id = current_user.id 
		@comment.save
	if @comment.save
		redirect_to item_path(params[:item_id])
	else
		render 'new'
	end
	end

	def edit
	end

	def update
		if @comment.update(params[:comment].permit(:content))
			redirect_to item_path(params[:item_id])
		else
			render 'edit'
		end
	end

	def destroy
		@comment.destroy
		redirect_to item_path(params[:item_id])
	end


	private
	def find_item
	  @item = Item.find(params[:item_id])
	end

	def find_comment
	  @comment = @item.comments.find(params[:id])
	end
end
