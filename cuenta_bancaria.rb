class CuentaBancaria
    attr_accessor :banco, :numero_cuenta, :saldo
    def initialize(banco, numero_cuenta, saldo=0)
        @banco = banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_externa)
        @saldo = @saldo - monto
        cuenta_externa.saldo = cuenta_externa.saldo + monto
    end
end

class Usuario
    attr_accessor :nombre
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas        
    end
    
    def saldo_total 
        total = 0
        @cuentas.each do |cuenta| 
            total += cuenta.saldo 
            total += cuenta.saldo 
        end
        total
        
    end
end

cuenta1=CuentaBancaria.new('Banco_Brando', '0303456', 10000)
cuenta2=CuentaBancaria.new('Banco_Toto', '2450003', 12000)


cuenta3=CuentaBancaria.new('Banco_Queta', '46372762', 7000)
cuenta4=CuentaBancaria.new('Banco_Jo', '47892049', 7000)

usuario1 = Usuario.new("nombre", [cuenta3, cuenta4])

cuenta1.transferir(5000, cuenta2)
print cuenta1.inspect
print cuenta2.inspect
print usuario1.saldo_total