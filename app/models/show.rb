class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors_full_names = []
    self.actors.each do |actor|
        actors_full_names << actor.full_name
    end
    actors_full_names
  end
end