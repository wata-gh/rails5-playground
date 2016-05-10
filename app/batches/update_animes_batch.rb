class UpdateAnimesBatch
   def self.update_cours
      res = HTTParty.get("http://api.moemoe.tokyo/anime/v1/master/cours")
      JSON.parse(res.body).values.each do |cour|
         Cour.
            where(id: cour['id']).
            first_or_initialize(cour).
            save!
      end
   end
   def self.update year, q
      puts "getting #{year}/#{q}..."
      res = HTTParty.get("http://api.moemoe.tokyo/anime/v1/master/#{year}/#{q}")
      JSON.parse(res.body).each do |anime|
         Anime.
            where(id: anime['id']).
            first_or_initialize(anime).
            save!
      end
   end
end

UpdateAnimesBatch.update_cours
(2014..2016).each do |year|
   (1..4).each do |q|
      UpdateAnimesBatch.update year, q
   end   
end
