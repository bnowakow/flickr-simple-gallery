require 'flickrie'

class ThumbnailsController < ApplicationController
  def generate

    Flickrie.api_key = ENV['FLICKR_API_KEY']
    Flickrie.shared_secret = ENV['FLICKR_SHARED_SECRET']

    set_id = 72157676252232272
    @photos = Flickrie.get_photos_from_set(set_id, :include_sizes => true) # => [#<Photo: id="8232348", ...>, #<Photo: id="8194318", ...>, ...]
  end
end
