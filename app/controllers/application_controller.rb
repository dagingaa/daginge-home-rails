class ApplicationController < ActionController::Base
  protect_from_forgery
  check_authorization
#  before_filter :set_locale

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end


  def format(text)
    options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    Redcarpet.new(text, *options).to_html.html_safe
  end

  def set_locale
    logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
    I18n.locale = extract_locale
    logger.debug "* Locale set to '#{I18n.locale}'"
  end

  private

  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end

  def extract_locale
    env = request.env
    old_locale = I18n.locale
    locale = nil

    # http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.4
    if lang = env["HTTP_ACCEPT_LANGUAGE"]
      lang = lang.split(",").map { |l|
        l += ';q=1.0' unless l =~ /;q=\d+\.\d+$/
          l.split(';q=')
      }.first
      locale = lang.first.split("-").first
    else
      locale = I18n.default_locale
    end

    locale = env['rack.locale'] = I18n.locale = locale.to_s
    status, headers, body = @app.call(env)
    headers['Content-Language'] = locale
    I18n.locale = old_locale
    [status, headers, body]
  end

  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end
  helper_method :current_user

end
