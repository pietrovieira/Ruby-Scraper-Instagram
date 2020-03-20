require 'rubygems'
require 'httparty'
require 'json'

class ScraperInstagram

  include HTTParty

  def initialize(userName)
    begin
      puts "Scraping...Instagram of #{userName}"
      scraper = self.class.get("http://instagram.com/#{userName}")
      @jsonData = JSON.parse(scraper.split('window._sharedData = ').last.split(';</script>').first)
    rescue
      puts "Error to scraping, please try again"
    end
  end

  def get_country_code
    return @jsonData['country_code']
  end

  def get_language_code
    return @jsonData['language_code']
  end

  def get_encryption_key_id
    return @jsonData['encryption']['key_id']
  end

  def get_encryption_public_key
    return @jsonData['encryption']['public_key']
  end

  def get_user_data
    return @jsonData['entry_data']['ProfilePage'][0]['graphql']['user']
  end

  def get_timeline_photos
    return @jsonData['entry_data']['ProfilePage'][0]['graphql']['user']['edge_owner_to_timeline_media']['edges']
  end

end

scraperResult = ScraperInstagram.new('pietrovieira')
puts "country_code: #{scraperResult.get_country_code}"
puts "language_code: #{scraperResult.get_language_code}"
puts "encryption_key_id: #{scraperResult.get_encryption_key_id}"
puts "encryption_public_key: #{scraperResult.get_encryption_public_key}"
# puts "user_data: #{scraperResult.get_user_data}"
puts "biography: #{scraperResult.get_user_data['biography']}"
puts "profile_pic_url_hd: #{scraperResult.get_user_data['profile_pic_url_hd']}"
puts "followed_by: #{scraperResult.get_user_data['edge_followed_by']['count']}"
puts "id: #{scraperResult.get_user_data['id']}"
puts "get_timeline_photos: #{scraperResult.get_timeline_photos[0]['node']['thumbnail_resources'][4]['src']}"