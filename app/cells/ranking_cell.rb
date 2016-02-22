class RankingCell < Cell::ViewModel
  include SessionsHelper
  include UsersHelper
  include Rails.application.routes.url_helpers
  
  def show(args)
    @items = args[:items]
    render
  end

end
