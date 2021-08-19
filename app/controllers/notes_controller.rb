class NotesController < ApplicationController
  def index
    render json: Note.all
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      render json: @note
    else
      render json: @note.errors.messages, status: 400
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.delete
  end

  private

  def note_params
    params.require(:note).permit(:title, :content)
  end
end
