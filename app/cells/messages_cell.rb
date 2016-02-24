class MessagesCell < ApplicationCell
  def show
    render
  end
  
  def list(args)
    @messages = args[:messages]
    render
  end

end
