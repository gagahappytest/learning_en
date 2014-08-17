class MyWordsController < ApplicationController
  before_action :set_my_word, only: [:show, :edit, :update, :destroy]

  # GET /my_words
  # GET /my_words.json
  def index
    @my_words = MyWord.all.order('add_time desc')
  end

  # GET /my_words/1
  # GET /my_words/1.json
  def show
  end

  # GET /my_words/new
  def new
    @my_word = MyWord.new
  end

  # GET /my_words/1/edit
  def edit
  end

  # POST /my_words
  # POST /my_words.json
  def create
    @my_word = MyWord.new(my_word_params)

    respond_to do |format|
      if @my_word.save
        format.html { redirect_to @my_word, notice: 'My word was successfully created.' }
        format.json { render :show, status: :created, location: @my_word }
      else
        format.html { render :new }
        format.json { render json: @my_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_words/1
  # PATCH/PUT /my_words/1.json
  def update
    respond_to do |format|
      if @my_word.update(my_word_params)
        format.html { redirect_to @my_word, notice: 'My word was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_word }
      else
        format.html { render :edit }
        format.json { render json: @my_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_words/1
  # DELETE /my_words/1.json
  def destroy
    @my_word.destroy
    respond_to do |format|
      format.html { redirect_to my_words_url, notice: 'My word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_word
      @my_word = MyWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_word_params
      params.require(:my_word).permit(:word, :soundmark, :explain, :add_time, :search_times)
    end
end
