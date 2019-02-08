class BlogsController < ApplicationController
  # GET /blogs
  # GET /blogs.json
  def index
    @title = "Eulearn - Blog"
    @description = "Este es un espacio para que puedas aprender y saber sobre la actualidad educativa " +
    "y buenas prácticas que ayudaran a mejorar tú aprendizaje."

    @q = Blog.ransack(params[:q])
    @blogs = @q.result.page(params[:page])
    @popular_blogs = Blog.order(hits: :desc).limit(5)
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blog = Blog.find(params[:id])
    @title = "Eulearn - " + @blog.title
    @description = "Eulearn es una metodología que busca incentivar en el niño la autonomía a la hora de 
    estudiar buscando fortalecer el potencial de aprendizaje de cada uno. Por medio de un proceso de aprendizaje 
    planeado e individualizado, el alumno se siente confiado y capaz de enfrentar por sí mismo el desafío de 
    la conquista del conocimiento."
    @q = Blog.ransack(params[:q])
    @prev = @blog.prev
    @next = @blog.next


    
    @popular_blogs = Blog.order(hits: :desc).limit(5)
  end
end
