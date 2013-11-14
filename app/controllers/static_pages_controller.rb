class StaticPagesController < ApplicationController
  def home
  end

  def about
  	@ip_info = IpInfo.new().get_ip_info
  end

  def contact
  end
end


