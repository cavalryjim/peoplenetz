class LibraryTopicsController < ApplicationController
  # GET /library_topics
  # GET /library_topics.json
  def index
    @library_topics = LibraryTopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @library_topics }
    end
  end

  # GET /library_topics/1
  # GET /library_topics/1.json
  def show
    @library_topic = LibraryTopic.find(params[:id])
    @library = Library.find(params[:library_id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @library_topic.content }
    end
  end

  # GET /library_topics/new
  # GET /library_topics/new.json
  def new
    @library_topic = LibraryTopic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @library_topic }
    end
  end

  # GET /library_topics/1/edit
  def edit
    @library_topic = LibraryTopic.find(params[:id])
  end

  # POST /library_topics
  # POST /library_topics.json
  def create
    @library_topic = LibraryTopic.new(params[:library_topic])

    respond_to do |format|
      if @library_topic.save
        format.html { redirect_to @library_topic, :notice => 'Library topic was successfully created.' }
        format.json { render :json => @library_topic, :status => :created, :location => @library_topic }
      else
        format.html { render action: "new" }
        format.json { render :json => @library_topic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /library_topics/1
  # PUT /library_topics/1.json
  def update
    @library_topic = LibraryTopic.find(params[:id])

    respond_to do |format|
      if @library_topic.update_attributes(params[:library_topic])
        format.html { redirect_to @library_topic, :notice => 'Library topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render :json => @library_topic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /library_topics/1
  # DELETE /library_topics/1.json
  def destroy
    @library_topic = LibraryTopic.find(params[:id])
    @library_topic.destroy

    respond_to do |format|
      format.html { redirect_to library_topic_topics_url }
      format.json { head :no_content }
    end
  end
end
