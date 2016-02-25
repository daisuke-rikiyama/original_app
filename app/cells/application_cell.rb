class ApplicationCell < Cell::ViewModel
  include ActionView::Helpers::FormHelper
  include SessionsHelper
  include UsersHelper
  
  def url_for(options = nil)
    case options
    when nil
      _routes.url_for(url_options.symbolize_keys)
    when Hash
      route_name = options.delete :use_route
      _routes.url_for(options.symbolize_keys.reverse_merge!(url_options),
                     route_name)
    when String
      options
    when Symbol
      HelperMethodBuilder.url.handle_string_call self, options
    when Array
      polymorphic_url(options, options.extract_options!)
    when Class
      HelperMethodBuilder.url.handle_class_call self, options
    else
      HelperMethodBuilder.url.handle_model_call self, options
    end
  end
  
  def show
    render
  end

end
