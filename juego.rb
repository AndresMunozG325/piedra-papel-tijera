enter_arg=ARGV[0]
player_hand=enter_arg.upcase()


if player_hand == 'PIEDRA' || player_hand == 'PAPEL' || player_hand == 'TIJERA'
    random=rand(0..2)
    machine_hand='PIEDRA' if random == 0
    machine_hand='PAPEL' if random == 1
    machine_hand='TIJERA' if random == 2
    
    if player_hand == machine_hand
        puts "Empataste... Ya que Computador jugó #{enter_arg} al igual que tú"
    elsif (player_hand == 'PIEDRA' && machine_hand == 'TIJERA') || (player_hand == 'PAPEL' && machine_hand == 'PIEDRA') || (player_hand == 'TIJERA' && machine_hand == 'PAPEL') 
            puts "Ganaste... Ya que tú ingresaste #{player_hand} y el computador jugó #{machine_hand}"
    elsif (player_hand == 'PIEDRA' && machine_hand == 'PAPEL') || (player_hand == 'TIJERA' && machine_hand == 'PIEDRA') || (player_hand == 'PAPEL' && machine_hand == 'TIJERA')    
            puts "Perdiste... Ya que tú ingresaste #{player_hand} y el computador jugó #{machine_hand}"
    end
else
    puts "Argumento inválido: Debe ser piedra, papel o tijera."
end
