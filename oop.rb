class Pets
    attr_accessor :name, :owner
end

class Dogs < Pets
    def bark
        "woof woof"
    end
end

class Birds < Pets
    def chirp
        "chirp chirp"
    end
end

class Cats < Pets
    def meow
        "Meow Meow"
    end
end

fido = Dogs.new
fido.name = "Fido"
fido.owner = "Robert"
birdy = Birds.new
birdy.name = "Birdy"
birdy.owner = "Kevin"
hima = Cats.new
hima.name = "Hima"
hima.owner = "Christina"
puts fido.inspect
puts birdy.inspect
puts hima.inspect
puts fido.bark
puts birdy.chirp
puts hima.meow
