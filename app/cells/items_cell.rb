class ItemsCell < Cell::ViewModel
  include ActionView::Helpers::FormHelper
  include ::Cell::Erb
  
  def show(args)
    @items = args[:items]
    render
  end
  
  def welcome
    @items = Item.all.order("updated_at DESC").limit(30)
    render
  end

end
