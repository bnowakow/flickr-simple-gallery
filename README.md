# flickr-simple-gallery

## why
When I wan to sell some pre-owned stuff on ebay/craiglist/allegro/whatever I want it to have pictures of what I sell. I host my pictures on flickr and usually copied urls of them one-by-one to have thumbnail url and full size url in simple <a><img /></a> html. I did 27 pictures of my MacBook and there's no way that I'm gonna spend ~15 minutes coping those links instead code it in 2h, right? #overengineeredSolutions 

## how to use it
* `bundle install`
* edit `set_id` in `thumbnails_controller.rb` with album (flickr uses set word for this in API) that you want to generate your mini-gallery
* set `flickr_api_key` and `flickr_shared_secret` obtained from Flickr in `config/application.yml`
* `rails s`
* `curl http://localhost:3000/thumbnails/generate`