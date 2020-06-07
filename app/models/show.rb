class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.map {|actor| "#{actor.first_name} #{actor.last_name}"}
    end

    def build_network(attributes)
        self.network = Network.find_or_create_by(attributes)
    end


end