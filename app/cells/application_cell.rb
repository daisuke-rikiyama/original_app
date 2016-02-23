class ApplicationCell < Cell::ViewModel
  include ActionView::Helpers::FormHelper
  include SessionsHelper
  include UsersHelper
  include ActionView::Helpers::UrlHelper
  
  def show
    render
  end

end
