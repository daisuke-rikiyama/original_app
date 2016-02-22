class UsersCell < Cell::ViewModel
  include ActionView::Helpers::FormHelper
  include SessionsHelper
  include UsersHelper
  include ActionView::Helpers::UrlHelper
  
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
