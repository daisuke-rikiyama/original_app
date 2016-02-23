class ItemsCell < ApplicationCell
  
  def show(args)
    @items = args[:items]
    render
  end
  
  def list(args)
    @items = args[:items]    
    render
  end
  
  def action(args)
    @item = args[:item]
    render
  end
  
  def want(args)
    @item = args[:item]
    render
  end
  
  def unwant(args)
    @item = args[:item]
    render
  end
  
  def have(args)
    @item = args[:item]
    render
  end
  
  def unhave(args)
    @item = args[:item]
    render
  end
  
  def action(args)
    @item = args[:item]
    render
  end
  
  def detail(args)
    @item = args[:item]
    @want_users = @item.want_users
    @have_users = @item.have_users
    render
  end

end
