class Anime < ApplicationRecord
   belongs_to :cour, foreign_key: :cours_id

   searchable do
      text :title
      text :title_short1
      text :title_short2
      text :title_short3
      text :twitter_account
      text :twitter_hash_tag
      text :public_url
      integer :cours_id
      time :created_at
   end

   def open_graph
      return nil unless public_url.present?
      return @og if @og
      @og = Rails.cache.fetch(public_url, expires_in: 3.months) do
         puts "accessing #{public_url}"
         OpenGraph.new public_url
      end
   end

   def image_urls
      og = open_graph
      return nil unless og
      og.images
   end
end
