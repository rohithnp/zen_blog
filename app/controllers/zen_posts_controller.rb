class ZenPostsController < ApplicationController
  # GET /zen_posts
  # GET /zen_posts.json
  def index
    @zen_posts = ZenPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zen_posts }
    end
  end

  # GET /zen_posts/1
  # GET /zen_posts/1.json
  def show
    @zen_post = ZenPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zen_post }
    end
  end

  # GET /zen_posts/new
  # GET /zen_posts/new.json
  def new
    @zen_post = ZenPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zen_post }
    end
  end

  # GET /zen_posts/1/edit
  def edit
    @zen_post = ZenPost.find(params[:id])
  end

  # POST /zen_posts
  # POST /zen_posts.json
  def create
    @zen_post = ZenPost.new(params[:zen_post])

    respond_to do |format|
      if @zen_post.save
        format.html { redirect_to @zen_post, notice: 'Zen post was successfully created.' }
        format.json { render json: @zen_post, status: :created, location: @zen_post }
      else
        format.html { render action: "new" }
        format.json { render json: @zen_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zen_posts/1
  # PUT /zen_posts/1.json
  def update
    @zen_post = ZenPost.find(params[:id])

    respond_to do |format|
      if @zen_post.update_attributes(params[:zen_post])
        format.html { redirect_to @zen_post, notice: 'Zen post was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @zen_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zen_posts/1
  # DELETE /zen_posts/1.json
  def destroy
    @zen_post = ZenPost.find(params[:id])
    @zen_post.destroy

    respond_to do |format|
      format.html { redirect_to zen_posts_url }
      format.json { head :ok }
    end
  end
end
