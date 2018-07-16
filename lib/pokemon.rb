class Pokemon
    attr_accessor :name, :type, :db, :id

    @@all = []

    def initialize(id)
        @id = id
    end

    def self.save(id, db)
        db.execute("INSERT INTO pokemon (id) VALUES (?)", id)
    end

    def self.find
    end

end
