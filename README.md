<h1 id="ruby-scraper-instagram">Ruby-Scraper-Instagram</h1>
<p>Scraper to get Instagram data in Ruby Language.</p>
<blockquote>
<p>How to use</p>
</blockquote>
<p>scraperResult = ScraperInstagram.new(@username)<br>
puts “country_code: #{scraperResult.get_country_code}”<br>
puts “language_code: #{scraperResult.get_language_code}”<br>
puts “encryption_key_id: #{scraperResult.get_encryption_key_id}”<br>
puts “encryption_public_key: #{scraperResult.get_encryption_public_key}”<br>
#puts “user_data: #{scraperResult.get_user_data}”<br>
puts “biography: #{scraperResult.get_user_data[‘biography’]}”<br>
puts “profile_pic_url_hd: #{scraperResult.get_user_data[‘profile_pic_url_hd’]}”<br>
puts “followed_by: #{scraperResult.get_user_data[‘edge_followed_by’][‘count’]}”<br>
puts “id: #{scraperResult.get_user_data[‘id’]}”<br>
puts “get_timeline_photos: #{scraperResult.get_timeline_photos[0][‘node’][‘thumbnail_resources’][4][‘src’]}”</p>

