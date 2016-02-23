class RankingCell < ApplicationCell
  
  def show(args)
    @items = args[:items]
    render
  end

end
