# Gato y ratón - historia animada

gato1=' /\_/\  '
gato2='( o.o ) '
gato3=' > ^ <  '

raton1=' (\_/)  '
raton2='( •_• ) '
raton3=' / >🍪  '

ancho=$(tput cols)
max_pos=$((ancho - 15))
centro=$((ancho / 2))

# Paso 1: El gato camina
for ((i=0; i<=centro-10; i++)); do
  clear
  printf "\n%*s\n%*s\n%*s\n" $i "$gato1" $i "$gato2" $i "$gato3"
  sleep 0.05
done

# Paso 2: El gato habla
clear
printf "\n%*s\n%*s\n%*s\n" $centro "$gato1" $centro "$gato2" $centro "$gato3"
printf "\n%*s\n" $centro "💬 Hola, ratón..."
sleep 1.5

# Paso 3: Aparece el ratón
for ((r=ancho-12; r>=centro+8; r--)); do
  clear
  printf "\n%*s\n%*s\n%*s\n" $centro "$gato1" $centro "$gato2" $centro "$gato3"
  printf "\n%*s\n" $centro "💬 Hola, ratón..."

  printf "\n%*s\n%*s\n%*s\n" $r "$raton1" $r "$raton2" $r "$raton3"
  sleep 0.05
done

# Paso 4: El ratón habla y huye
clear
printf "\n%*s\n%*s\n%*s\n" $centro "$gato1" $centro "$gato2" $centro "$gato3"
printf "\n%*s\n" $centro "😲 ¿Qué haces con mi galleta?"

printf "\n%*s\n%*s\n%*s\n" $((centro+8)) "$raton1" $((centro+8)) "$raton2" $((centro+8)) "$raton3"
printf "\n%*s\n" $((centro+8)) "💬 ¡Es mía!"

sleep 1.5

# Paso 5: Ratón huye
for ((r=centro+8; r<ancho; r++)); do
  clear
  printf "\n%*s\n%*s\n%*s\n" $centro "$gato1" $centro "$gato2" $centro "$gato3"
  printf "\n%*s\n" $centro "😾 ¡Vuelve aquí!"

  printf "\n%*s\n%*s\n%*s\n" $r "$raton1" $r "$raton2" $r "$raton3"
  sleep 0.04
done

# Final
clear
printf "\n%*s\n%*s\n%*s\n" $centro "$gato1" $centro "$gato2" $centro "$gato3"
printf "\n%*s\n" $centro "💭 Se fue con mi galleta..."
sleep 2
