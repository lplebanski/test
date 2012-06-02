class QuestionsController < ApplicationController

  # GET /questions
  # GET /questions.json
  def index
   @questions  = Question.order('created_at DESC').text_search(params[:query]).page(params[:page]).per_page(5)
   
        
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  #@comments = @question.comments.order('created_at DESC').page(params[:page]).per_page(5)
 @questions  = Question.order('created_at DESC').text_search(params[:query]).page(params[:page]).per_page(5)
    @question = Question.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.json
  def new
    
    #@question = current_user.questions.build(params[:question])
    @question = Question.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/1/edit
  def edit
    
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.json
  def create
  
    #@post = current_user.posts.build(params[:post])
    @question = current_user.questions.new(params[:question])
    #@question = Question.new(params[:question])
    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Pytanie utworzone z powodzeniem' }
        format.json { render json: @question, status: :created, location: @question }
      else
        format.html { render action: "new"  }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    
    @question = Question.find(params[:id])
    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    
    @question = Question.find(params[:id])
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
    end
  end

end
