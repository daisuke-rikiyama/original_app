class UsersCell < Cell::ViewModel
  include SessionsHelper
  include UsersHelper
  include Rails.application.routes.url_helpers
  
  def show(args)
    @user = args[:user]
    @items = @user.items.group('items.id')
    render
  end

  def profile(args)
    @user = args[:user]
    render
  end

end
