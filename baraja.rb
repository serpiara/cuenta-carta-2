require_relative 'carta'
class Barajas
    attr_accessor :carta
    def initialize(cartas)
        array = []
        cartas.time do
            pinta1 = ['C','D','E','T'].sample
            numero1= Random.rand(1..13)
            Carta.new(numero1, pinta1)
            array.push Carta.new(numero1,pinta1)
        end
        cartas = array
        @cartas = cartas
end   