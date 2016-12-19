require 'flickrie'

class ThumbnailsController < ApplicationController
  def generate

    Flickrie.api_key = ""
    Flickrie.shared_secret = ""

    set_id = 72157674133494003
    photos = Flickrie.photos_from_set(set_id) # => [#<Photo: id="8232348", ...>, #<Photo: id="8194318", ...>, ...]

    photo = photos.first
    p photo.id          # => "8232348"
    p photo.url         # => "http://www.flickr.com/photos/67313352@N04/8232348"
    p photo.title       # => "Samantha and me"
    p photo.owner       # => #<User: nsid="67313352@N04", ...>
    p photo.owner.nsid  # => "67313352@N04"
    p 'debug'

  end
end
