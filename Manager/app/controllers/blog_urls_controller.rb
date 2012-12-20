class BlogUrlsController < ApplicationController
  # GET /blog_urls
  # GET /blog_urls.json
  
  def index
    @blog_urls = BlogUrl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blog_urls }
    end
  end

  # GET /blog_urls/1
  # GET /blog_urls/1.json
  def show
    @blog_url = BlogUrl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog_url }
    end
  end

  # GET /blog_urls/new
  # GET /blog_urls/new.json
  def new
    @blog_url = BlogUrl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog_url }
    end
  end

  # GET /blog_urls/1/edit
  def edit
    @blog_url = BlogUrl.find(params[:id])
  end

  # POST /blog_urls
  # POST /blog_urls.json
  def create
    @blog_url = BlogUrl.new(params[:blog_url])

    respond_to do |format|
      if @blog_url.save
        format.html { redirect_to @blog_url, notice: 'Blog url was successfully created.' }
        format.json { render json: @blog_url, status: :created, location: @blog_url }
      else
        format.html { render action: "new" }
        format.json { render json: @blog_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blog_urls/1
  # PUT /blog_urls/1.json
  def update
    @blog_url = BlogUrl.find(params[:id])

    respond_to do |format|
      if @blog_url.update_attributes(params[:blog_url])
        format.html { redirect_to @blog_url, notice: 'Blog url was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_urls/1
  # DELETE /blog_urls/1.json
  def destroy
    @blog_url = BlogUrl.find(params[:id])
    @blog_url.destroy

    respond_to do |format|
      format.html { redirect_to blog_urls_url }
      format.json { head :no_content }
    end
  end
end
