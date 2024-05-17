#lista = [1, 2, 4.5, "Afonso", [3, 6, 9, 12]]

#puts lista
################################################

# lista = []

# lista.push("Antonio", "Fernanda", "Livia", "Joao")

# puts lista[3]
################################################

# lista = []

# lista << "Betania
#Adriana"

# puts lista
################################################

lista = []

lista.push("Afonso", "Fernanda", "Livia", "Joao")

lista << "Betania"

lista.insert(0, "Antonio")

lista.insert(5, "Fulano")

puts lista

puts lista.length

#puts lista[1..4]
################################################

lista.delete("Fulano")

puts lista

puts lista.sort

puts lista.sort.first

puts lista.sort.last
################################################