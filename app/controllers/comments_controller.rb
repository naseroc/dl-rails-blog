class CommentsController < ApplicationController
  
  def create
    comment = Comment.new(comment_params)
    post = Post.find(params[:post_id])
    comment.post = post
    
    if comment.save
      redirect_to post, notice: '¡Gracias por tu comentario!'
    else
      redirect_to post, notice: 'Error al guardar el comentario'
    end
    
  end
  
  private
  
    def comment_params
      params.require(:comment).permit(:author, :content)    
    end
end
