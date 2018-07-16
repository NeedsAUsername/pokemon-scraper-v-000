class Pokemon
    attr_accessor :name, :type, :db

    @@all = []

    initialize(name, type, db)
    end

    def self.save(name, type, db)
        @@all << Pokemon.new(name, type, db)
    end

    def self.find
    end

end
