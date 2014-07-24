class Santa
  attr_accessor :fits, :cookies_eaten

  def initialize
    @fits = true
    @cookies_eaten = 0
  end

  def fits?
    @fits
  end

  def eats_cookies
    @cookies_eaten += 1
    @cookies_eaten >= 3 ? @fits = false : @fits = true
  end
end

