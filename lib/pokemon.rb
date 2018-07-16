class Pokemon
    attr_accessor :name, :type, :db, :id

    @@all = []

    def initialize(id:, name, type, db)
        @id = id
        @name = name
        @type = type
        @db = db
    end

    def self.save(name, type, db)
        db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    end

    def self.find(id, db)
        pokemon = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", id)
        Pokemon.new(pokemon[0], pokemon[1], pokemon[2], db)
    end

end
