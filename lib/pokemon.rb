class Pokemon
    attr_accessor :name, :type, :db

    @@all = []

    def initialize(id)
        @name = name
        @type = type
        @db = db
    end

    def self.save(name, type, db)
        @@all << Pokemon.new(name, type, db)
    end

    def self.find
    end

end
