class StaticPagesController < ApplicationController
  def home
    Time.use_zone('Melbourne') do
      @default_timezone = Time.zone
    end
  end

  def search
    @countryzone = Array.new
    CountryZone.all.each do |x|
      @countryzone << x.text
      
      x.utc.each do |y|
        @countryzone.push(y) 
      end
    end
    render json: @countryzone
  end
end
