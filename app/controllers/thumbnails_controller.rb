require 'flickrie'

class ThumbnailsController < ApplicationController
  def generate

    Flickrie.api_key = ""
    Flickrie.shared_secret = ""

    set_id = 72157674133494003
    flickr_photos = Flickrie.get_photos_from_set(set_id, :include_sizes => true) # => [#<Photo: id="8232348", ...>, #<Photo: id="8194318", ...>, ...]

    # flickr_photos.each do |flickr_photo|
    #   # TODO figure out {o-secret} from https://www.flickr.com/services/api/misc.urls.html to generate oryginal photo url not flickr generated one
    #   photo_url_prefix = 'https://farm' + flickr_photo.farm.to_s + '.staticflickr.com/' + flickr_photo.server.to_s + '/' + flickr_photo.id.to_s + '_' + flickr_photo.secret + '_'
    #   photo_url_suffix =  '.jpg'
    #   p photo_url_prefix + photo_url_suffix
    #   (@photos ||= []).push({
    #                             'thumbnail_url' => flickr_photo['url_z'],
    #                             'photo_url' => flickr_photo['url_l']
    #                         })
    # end

    @photos = flickr_photos


  end
end
