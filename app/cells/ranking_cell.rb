class RankingCell < Cell::ViewModel
  include SessionsHelper
  include UsersHelper
  
  def show(args)
    @items = args[:items]
    render
  end

end
