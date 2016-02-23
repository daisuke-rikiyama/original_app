class UsersCell < ApplicationCell
  
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
