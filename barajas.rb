require_relative 'carta'
class Barajas
    attr_accessor :carta
    def initialize(cartas)
        array = []
        cartas.times do
            pinta1 = ['C','D','E','T'].sample
            numero1= Random.rand(1..13)
            Carta.new(numero1, pinta1)
            array.push Carta.new(numero1,pinta1)
        end
    
        cartas = array
        @cartas = cartas
    end   
    def barajar
        @cartas.shuffle!

    end
    def sacar
        @cartas.shift
    end
    def repartir_mano
        array1 = []
        x = 0
         @cartas.each do |cartas|
            x+= 1
                if(x <= 5)
                    array1.push(cartas)
                end
        array1
        end
    end
end   

b1=Barajas.new.barajar
puts "Barajar"
puts b1.barajar
#puts "Sacar"
#puts b1.sacar
#puts "Repartir"
#puts b1.repartir_mano
  