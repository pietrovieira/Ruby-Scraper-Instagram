# Ruby-Scraper-Instagram
I created Scraper to get Instagram data in Ruby Language.


> Example

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
