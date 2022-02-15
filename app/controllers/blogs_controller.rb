class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
 if @blog.save
   #Transitions to the list screen and displays the message "I have created a blog!".
   redirect_to "/blogs", notice: "I have created a blog!"
 else
   #Redraw the input form.
   render :new
 end
end
  # Define
  def show
     @blog=Blog.find(params[:id])
  end
  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
def edit
   @blog = Blog.find(params[:id])
  end
  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "I edited the blog!"
    else
      render :edit
    end
  end
end
