class Pokemon
    attr_accessor :name, :type, :db, :id

    @@all = []

    def initialize(id)
        @id = id
    end

    def self.save(names, db)
        db.execute("INSERT INTO pokemon (name) VALUES (names)")
    end

    def self.find
    end

end
