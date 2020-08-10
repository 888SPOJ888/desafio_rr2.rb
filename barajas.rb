require_relative 'carta'

class Baraja
  attr_reader :cartas
  def initialize
    @cartas = []
    ['Corazon','Diamante','Espada','Trebol'].each do |pinta|
      5.times do |numero|
        num = numero + 1
        @cartas.push(Carta.new(num,pinta))
      end
    end
  end

  def barajar
    return @cartas = @cartas.shuffle
  end

  def sacar
    @cartas.pop
  end

  def repartir_mano
    mano = []
    5.times do |i|
      mano.push(sacar)
    end
    return mano
  end
end

deck = Baraja.new

print deck.cartas
puts "\n"
puts "\n"
puts deck.sacar
puts "\n"
puts "\n"
puts deck.barajar
puts "\n"
puts "\n"
print deck.repartir_mano

