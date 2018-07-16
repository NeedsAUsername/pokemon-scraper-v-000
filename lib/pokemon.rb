class Pokemon
    attr_accessor :name, :type, :db, :id

    @@all = []

    def initialize(id)
        @id = id
    end

    def self.save(id, db)
        new = Pokemon.new(id)
        db.execute("INSERT INTO pokemon")
    end

    def self.find
    end

end
