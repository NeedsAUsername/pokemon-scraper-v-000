class Pokemon
    attr_accessor :name, :type, :db, :id

    @@all = []

    def initialize(id)
        @id = id
    end

    def self.save(name, type, db)
        db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    end

    def self.find(id, db)
        db.select{|pokemon_id| pokemon_id == id }
    end

end
