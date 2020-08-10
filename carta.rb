
class Carta
    attr_accessor :numero,
                  :pinta

    def initialize(numero,pinta)
        @numero = numero 
        @pinta = pinta

    end


end

C = ['Corazon','Diamante','Espada','Trebol']
cartas=[]

    5.times do

        cartas.push (Carta.new(Random.rand(1..13), C.sample))
        
        
    
    end

