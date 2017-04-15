class NotesController < ApplicationController

  def new
  end

  def create
    @title = params[:title]
    @content = params[:content]

    note = Note.new({title: @title, content: @content})
    if note.save
      @notice = "登録できたよ！"
    else  
      @notice = "登録できなかったよ！"
    end
  end

end
