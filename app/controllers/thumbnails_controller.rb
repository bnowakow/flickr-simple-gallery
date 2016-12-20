require 'flickrie'

class ThumbnailsController < ApplicationController
  def generate

    Flickrie.api_key = ""
    Flickrie.shared_secret = ""

    Flickrie.timeout = 100

    set_id = 72157676252232272
    flickr_photos = Flickrie.get_photos_from_set(set_id, :include_sizes => true) # => [#<Photo: id="8232348", ...>, #<Photo: id="8194318", ...>, ...]

    flickr_photos.each do |flickr_photo|
      p flickr_photo.id
      photo_url_prefix = 'https://farm' + flickr_photo.farm.to_s + '.staticflickr.com/' + flickr_photo.server.to_s + '/' + flickr_photo.id.to_s + '_'
      flickr_phto_info = flickr_photo.get_info
      (@photos ||= []).push({
                                # thumbnail_url
                                'url_z'         => flickr_photo['url_z'],
                                # photo_url
                                'url_l'         => flickr_photo['url_l'],
                                # oryginal_size_url
                                'url_orig'      => photo_url_prefix + flickr_phto_info['originalsecret'] + '_o.' + flickr_phto_info['originalformat']
                                # 'url_o'         => flickr_photo['url_o'],
                            })
    end

  end
end
