class CommentsController < ApplicationController
  def index
    @all_comments = current_user.comments
  end
end
