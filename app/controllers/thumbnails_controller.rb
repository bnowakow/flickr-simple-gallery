require 'flickrie'

class ThumbnailsController < ApplicationController
  def generate

    Flickrie.api_key = ""
    Flickrie.shared_secret = ""

    set_id = 72157674133494003
    photos = Flickrie.get_photos_from_set(set_id) # => [#<Photo: id="8232348", ...>, #<Photo: id="8194318", ...>, ...]

    photo = photos.first
    p photo.id          # => "8232348"
    # TODO figure out {o-secret} from https://www.flickr.com/services/api/misc.urls.html to generate oryginal photo url not flickr generated one
    photo_url_prefix = 'https://farm' + photo.farm.to_s + '.staticflickr.com/' + photo.server.to_s + '/' + photo.id.to_s + '_' + photo.secret
    photo_size = 'b'
    photo_url_suffix =  '_' + photo_size + '.jpg'
    p photo_url_prefix + photo_url_suffix

  end
end
