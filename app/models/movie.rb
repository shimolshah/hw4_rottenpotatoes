class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.other_movies_by_same_director(movie)
    # debugger
    Movie.where("director = ? and title != ?", movie.director, movie.title)
  end
end
