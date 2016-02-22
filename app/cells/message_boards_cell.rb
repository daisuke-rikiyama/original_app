class MessageBoardsCell < Cell::ViewModel
  include ActionView::Helpers::FormHelper
  include SessionsHelper
  include UsersHelper
  include ActionView::Helpers::UrlHelper
  
  def show
    render
  end
  
  def list(args)
    @message_boards = args[:message_boards]
    render
  end

end
