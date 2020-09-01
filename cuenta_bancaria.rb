class Usuario
    attr_accessor :nombre
    def initialize(nombre_usuario, cuentas)
        @nombre_usuario = nombre_usuario
        @cuentas= cuentas
    end
    def saldo_total
        total = 0
        @cuentas.each do |cuenta|
           total += cuenta.saldo
        end
        total
    end

end

class CuentaBancaria
    attr_accessor :banco, :saldo, :saldo
    def initialize (banco,numero_cuenta,saldo=0)
        @banco = banco
        @nombre_cuenta = numero_cuenta
        @saldo = saldo
    end
    def transferir(monto,cuenta_ext)
        @saldo = @saldo - monto
        cuenta_ext.saldo = cuenta_ext.saldo + monto

    end
end

cuenta1 = CuentaBancaria.new('Santander',12345,5000)
cuenta2 = CuentaBancaria.new('Santander',56789,5000)
cuenta3 = CuentaBancaria.new('Santander',78912,7000)
cuenta4 = CuentaBancaria.new('Santander',89012,7000)
usuario1 = Usuario.new('nombre', [cuenta3,cuenta4])

cuenta1.transferir(5000, cuenta2)
print cuenta1.inspect
print cuenta2.inspect
print usuario1.saldo_total