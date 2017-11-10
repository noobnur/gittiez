class PagesController < ApplicationController
  def home
  end

  def scrape
    response = RestClient.get("https://www.burpple.com/sg/hot")
    html = response.body
    data = Nokogiri::HTML(html)

    @restaurants_list = []

    data.css('.topVenue-details .headingMedium').each do |restaurant|
      @restaurants_list << restaurant.text
    end

    # render json: 'success scraping'
  end
end
