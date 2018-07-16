class Pokemon
    attr_accessor :name, :type, :db, :id

    @@all = []

    def initialize(id)
        @id = id
    end

    def self.save(id)
        new = Pokemon.new(id)
        @@all = new
    end

    def self.find
    end

end
