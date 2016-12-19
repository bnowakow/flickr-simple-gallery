require 'flickraw'

class ThumbnailsController < ApplicationController
  def generate
    FlickRaw.api_key=""
    FlickRaw.shared_secret=""

    # list   = flickr.photos.getRecent
    # id     = list[0].id
    # secret = list[0].secret
    # info = flickr.photos.getInfo :photo_id => id, :secret => secret
    # logger.info info.title           # => "PICT986"
    # logger.info info.dates.taken     # => "2006-07-06 15:16:18"


    lol =  flickr.methods
    lol = flickr.galleries.methods
    # tmp =  flickr.galleries.getList :user_id => "60836957@N03"
    album =  flickr.photosets.getList :user_id => "60836957@N03"
    selectedAlbum = album.first #.getInfo.dates.taken

    info = flickr.photosets.getPhotos :photo_id => selectedAlbum.id, :secret => selectedAlbum.secret

    # info = flickr.photosets.getPhotos.getInfo :photo_id => selectedAlbum.id, :secret => selectedAlbum.secret
    # logger.info info.title           # => "PICT986"
    # logger.info info.dates.taken     # => "2006-07-06 15:16:18"

    p 'debug'

  end
end
