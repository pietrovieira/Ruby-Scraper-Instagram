# Ruby-Scraper-Instagram
I created Scraper to get Instagram data in Ruby Language.
\n
\n
> Example

scraperResult = ScraperInstagram.new('pietrovieira')\n
puts "country_code: #{scraperResult.get_country_code}"\n
puts "language_code: #{scraperResult.get_language_code}"\n
puts "encryption_key_id: #{scraperResult.get_encryption_key_id}"\n
puts "encryption_public_key: #{scraperResult.get_encryption_public_key}"\n
# puts "user_data: #{scraperResult.get_user_data}"\n
puts "biography: #{scraperResult.get_user_data['biography']}"\n
puts "profile_pic_url_hd: #{scraperResult.get_user_data['profile_pic_url_hd']}"\n
puts "followed_by: #{scraperResult.get_user_data['edge_followed_by']['count']}"\n
puts "id: #{scraperResult.get_user_data['id']}"\n
puts "get_timeline_photos: #{scraperResult.get_timeline_photos[0]['node']['thumbnail_resources'][4]['src']}"\n
