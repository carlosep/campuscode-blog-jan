# rubocop:disable Metrics/LineLength
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin, except: [:show, :index]

  def index
    @past_years = []
    @current_year = []
    @current_month = []
    @current_week = []
    @today = []
    Post.all.each do |post|
      today = Date.parse Time.now.to_s
      post_date = Date.parse post.created_at.to_s
      days = (today - post_date).to_i
      if days > 365
        @past_years << post
      elsif days > 30
        @current_year << post
      elsif days > 7
        @current_month << post
      elsif days > 0
        @current_week << post
      else
        @today << post
      end
    end
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :subtitle, :image)
  end
end
# rubocop:enable Metrics/LineLength
