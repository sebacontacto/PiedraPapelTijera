#Se pide crear el programa juego.rb, donde el usuario pasará como argumento piedra, papel o tijera, #y el programa escogerá una opción al azar.
#Para que el computador pueda jugar escoger un número al azar entre 0 y 2, si es 0 entonces es #piedra, si es 1 entonces papel y 2 tijera.
#En caso que el argumento sea distinto a piedra, papel o tijera el programa debe mostrar las opciones #que se pueden jugar.

#toma de eleccion user
eleccion_user = ARGV[0]

#eleccion del computador, al azar entre 0, 1, y 2
eleccion_comp = Random.rand(0...3) 

#validacion de que la opcion ingresada sea escrita segun las instrucciones
if eleccion_user == "piedra" || eleccion_user == "papel" || eleccion_user == "tijera"
  puts "Tu juegas #{eleccion_user}"
elsif
  puts "Argumento invalido: Debe ser piedra, papel o tijera."
end

#evaluacion de los nueve escenarios posibles segun elecciones de jugadores
if eleccion_user == "piedra" && eleccion_comp == 0 #escenario 1
  puts "Computador juega piedra"
  puts "Empataste."
elsif eleccion_user == "piedra" && eleccion_comp == 1 #escenario 2
  puts "Computador juega papel"
  puts "Perdiste."
elsif eleccion_user == "piedra" && eleccion_comp == 2 #escenario 3
  puts "Computador juega tijera"
  puts "Ganaste."
elsif eleccion_user == "papel" && eleccion_comp == 0 #escenario 4
  puts "Computador juega piedra"
  puts "Ganaste."
elsif eleccion_user == "papel" && eleccion_comp == 1 #escenario 5
  puts "Computador juega papel"
  puts "Empataste."
elsif eleccion_user == "papel" && eleccion_comp == 2 #escenario 6
  puts "Computador juega tijera"
  puts "Perdiste."
elsif eleccion_user == "tijera" && eleccion_comp == 0 #escenario 7
  puts "Computador juega piedra"
  puts "Perdiste."
elsif eleccion_user == "tijera" && eleccion_comp == 1 #escenario 8
  puts "Computador juega papel"
  puts "Ganaste."
elsif eleccion_user == "tijera" && eleccion_comp == 2 #escenario 9
  puts "Computador juega tijera"
  puts "Empataste."
end

puts "Juega de nuevo."