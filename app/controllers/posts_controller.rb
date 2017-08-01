class PostsController < ApplicationController
    
   def new 
       @post = Post.new
   end
   
   def create
       @post = Post.new(post_params)
       @post.user_id = current_user.id # Assign the post to user who created it.
       respond_to do |f|
           if(@post.save)
               f.html { redirect_to "", notice: "Punch Nexus Created!" }
           else
           f.html { redirect_to "", notice: "Error! Punch Not Saved." }
       end
   end
   end
   
   private
   def post_params # allows certain data to be passed via forms.
   params.require(:post).permit(:user_id,:content)
   end
   
                   
               
end