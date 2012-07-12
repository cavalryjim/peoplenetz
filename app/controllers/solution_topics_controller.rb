class SolutionTopicsController < ApplicationController
  
  # GET /solution_topics/1
  # GET /solution_topics/1.json
  def show
    @topic = SolutionTopic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @topic.content }
    end
  end

end
