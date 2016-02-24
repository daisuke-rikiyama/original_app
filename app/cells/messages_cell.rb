class MessagesCell < Cell::ViewModel
  def show
    render
  end
  
  def list(args)
    @messages = args[:messages]
    render
  end

end
