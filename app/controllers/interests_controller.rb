class InterestsController < ApplicationController
  before_action :ensure_current_user

  def create
    topic = Topic.find(params[:topic_id])

    interest = topic.interests.new(params.require(:interest).permit(:comment, :level))
    interest.user = current_user
    interest.save!

    redirect_to topic
  end
end
