class BlogspotsController < ApplicationController
  # GET /blogspots
  # GET /blogspots.json
  before_filter :authenticate_user!
  def index
    @blogspots = Blogspot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogspots }
    end
  end

  # GET /blogspots/1
  # GET /blogspots/1.json
  def show
    @blogspot = Blogspot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blogspot }
    end
  end

  # GET /blogspots/new
  # GET /blogspots/new.json
  def new
    @blogspot = Blogspot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blogspot }
    end
  end

  # GET /blogspots/1/edit
  def edit
    @blogspot = Blogspot.find(params[:id])
  end

  # POST /blogspots
  # POST /blogspots.json
  def create
    @blogspot = Blogspot.new(params[:blogspot])

    respond_to do |format|
      if @blogspot.save
        format.html { redirect_to @blogspot, notice: 'Blogspot was successfully created.' }
        format.json { render json: @blogspot, status: :created, location: @blogspot }
      else
        format.html { render action: "new" }
        format.json { render json: @blogspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blogspots/1
  # PUT /blogspots/1.json
  def update
    @blogspot = Blogspot.find(params[:id])

    respond_to do |format|
      if @blogspot.update_attributes(params[:blogspot])
        format.html { redirect_to @blogspot, notice: 'Blogspot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blogspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogspots/1
  # DELETE /blogspots/1.json
  def destroy
    @blogspot = Blogspot.find(params[:id])
    @blogspot.destroy

    respond_to do |format|
      format.html { redirect_to blogspots_url }
      format.json { head :no_content }
    end
  end
end
