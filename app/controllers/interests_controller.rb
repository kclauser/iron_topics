class InterestsController < ApplicationController
  def create
    topic = Topic.find(params[:topic_id])

    topic.interests.create(params.require(:interest).permit(:comment, :level))

    redirect_to topic
  end
end
