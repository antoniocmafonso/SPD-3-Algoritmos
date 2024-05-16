'''
Booleanos e Condicionais

And

Verdade e Verdade = Verdade
Verdade e Falso = Falso
Falso e Verdade = Falso
Falso e Falso = Falso

OR

Verdade ou Verdade = Verdade
Verdade ou Falso = Verdade
Falso ou Verdade = Verdade
Falso ou Falso = Falso

NOT

Nao Verdade = Falso
Nao Falso = Verdade
'''

# Exemplo
puts true && false
puts true || false
puts !true || false
#####################################

x = 10

if x == 10
    puts "x e' igual a 10"
end
#####################################

y = 7

if y == 3
    puts "y e' igual a 7"
else
    puts "y nao e' 7"
end
#####################################

z = 50

if z == 10
    puts "z e' igual a 10"
elsif z == 50
    puts "z e' igual a 50"
else
    puts "z nao e' igual a 10"
end
#####################################

nome = "Braquiovaldo"

if nome == "Afonso"
    puts "Que nome lindo!"
elsif nome == "Bruno"
    puts "Nome normal..."
else
    puts "Que nome horrivel!!!"
end