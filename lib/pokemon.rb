class Pokemon
    attr_accessor :name, :type, :db, :id

    @@all = []

    def initialize(id)
        @id = id
    end

    def self.save(id)
        @@all << Pokemon.new(id)
    end

    def self.find
    end

end
