class MessageBoardsCell < ApplicationCell
  
  def show
    render
  end
  
  def list(args)
    @message_boards = args[:message_boards]
    render
  end

end
