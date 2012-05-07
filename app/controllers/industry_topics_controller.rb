class IndustryTopicsController < ApplicationController
  
  # GET /industry_topics/1
  # GET /industy_topics/1.json
  def show
    @topic = IndustryTopic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @topic.content }
    end
  end

end
