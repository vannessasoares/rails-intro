class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :description, :release_date

  def Movie.rating_list
  	rating_list = Movie.pluck(:rating).uniq #pluck é o mesmo que # SELECT movie.rating FROM movie
  	return rating_list
  end
end
