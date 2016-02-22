class MessageBoardsCell < Cell::ViewModel
  include SessionsHelper
  include UsersHelper
  include Rails.application.routes.url_helpers
  
  def show
    render
  end

end
