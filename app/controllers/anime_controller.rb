class AnimeController < ApplicationController
   def index
      if params[:q].present?
         search = Anime.search do
            fulltext params[:q]
            if params[:year].present? && params[:cours].present?
               cour = Cour.find_by year: params[:year], cours: params[:cours]
               with(:cours_id, cour.id) if cour
            end
         end
         @animes = search.results
         return
      end
      @animes = Anime.joins(:cour).includes(:cour).all
      %i/year cours/.each do |key|
         if params[key].present?
            @animes = @animes.where("cours.#{key} = ?", params[key])
         end
      end
   end
end
