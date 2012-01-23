class StormsController < ApplicationController
  # GET /storms
  # GET /storms.json
  def index
    @storms = Storm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @storms }
    end
  end

  # GET /storms/1
  # GET /storms/1.json
  def show
    @storm = Storm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @storm }
    end
  end

  # GET /storms/new
  # GET /storms/new.json
  def new
    @storm = Storm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @storm }
    end
  end

  # GET /storms/1/edit
  def edit
    @storm = Storm.find(params[:id])
  end

  # POST /storms
  # POST /storms.json
  def create
    @storm = Storm.new(params[:storm])

    respond_to do |format|
      if @storm.save
        format.html { redirect_to @storm, notice: 'Storm was successfully created.' }
        format.json { render json: @storm, status: :created, location: @storm }
      else
        format.html { render action: "new" }
        format.json { render json: @storm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /storms/1
  # PUT /storms/1.json
  def update
    @storm = Storm.find(params[:id])

    respond_to do |format|
      if @storm.update_attributes(params[:storm])
        format.html { redirect_to @storm, notice: 'Storm was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @storm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storms/1
  # DELETE /storms/1.json
  def destroy
    @storm = Storm.find(params[:id])
    @storm.destroy

    respond_to do |format|
      format.html { redirect_to storms_url }
      format.json { head :ok }
    end
  end
end
