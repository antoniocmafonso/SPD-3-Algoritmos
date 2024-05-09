# Quando coloca o 0 (zero) vira float

x = 5.0
y = 2.0

soma = x - y
puts soma
soma1 = x + y
puts soma1
soma2 = x * y
puts soma2
soma3 = x / y
puts soma3

# Operacoes colocando os numeros pelo teclado

puts "Insira um numero"
x = gets.chomp.to_i
puts "insira outro numero"
y = gets.chomp.to_i

soma = x + y
subt = x - y
mult = x * y
div = x.to_f / y.to_f

puts soma
puts subt
puts mult
puts div