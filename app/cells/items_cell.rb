class ItemsCell < Cell::ViewModel
  include ActionView::Helpers::FormHelper
  include ::Cell::Erb
  
  def show(args)
    @items = args[:items]
    render
  end

end
