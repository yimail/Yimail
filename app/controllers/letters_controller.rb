class LettersController < ApplicationController

  before_action :find_letter, only:[:edit, :update, :destroy]

  def index
    # 避免Ｎ+1
    @letters = Letter.with_rich_text_content
  end

  def new
    @letter = Letter.new
  end

  def create 
    @letter = Letter.new(letter_params)

    if @letter.save
      redirect_to letters_path
    else
      #
    end
  end

  def show
    @letter = Letter.find(params[:id])
  end

  def edit
  end

  def update
    if @letter.update(letter_params)
      redirect_to letters_path
    else
      #
    end

  end

  def destroy
    @letter.destroy
  end

  private
  def find_letter
    @letter = current_user.letters.find(params[:id])
  end
  def letter_params
    params.require(:letter).permit(:sender, :recipient, :subject, :content, :carbon_copy, :blind_carbon_copy)
  end

end