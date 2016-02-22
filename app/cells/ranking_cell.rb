class RankingCell < Cell::ViewModel
  include ActionView::Helpers::FormHelper
  include SessionsHelper
  include UsersHelper
  include ActionView::Helpers::UrlHelper
  
  def show(args)
    @items = args[:items]
    render
  end

end
