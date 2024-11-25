#!/bin/bash
clear
echo
sleep 1
echo "                      _ _                                  _     _             "
sleep 0.1
echo "                     | (_)                                | |   (_)            "
sleep 0.1
echo " _   _ ____ ____   _ | |_ ____   ____    ____   ____  ____| | _  _ ____   ____ "
sleep 0.1
echo "| | | / _  )  _ \ / || | |  _ \ / _  |  |    \ / _  |/ ___) || \| |  _ \ / _  )"
sleep 0.1
echo " \ V ( (/ /| | | ( (_| | | | | ( ( | |  | | | ( ( | ( (___| | | | | | | ( (/ / "
sleep 0.1
echo "  \_/ \____)_| |_|\____|_|_| |_|\_|| |  |_|_|_|\_||_|\____)_| |_|_|_| |_|\____)"
sleep 0.1
echo "                               (_____|                                         "
sleep 0.75
echo
echo
echo " ¡¡Bienvenido a tu máquina de vending favorita!! "
echo " ¡¡Pídeme lo que más te apetezca ahora mi rey!!  "
sleep 0.5
echo
sleep 0.1
echo " _________________________________________"
sleep 0.1
echo "|                                         |"
sleep 0.1
echo "|           MAQUINA DE VENDING            |"
sleep 0.1
echo "|      PIDEME LO QUE MAS TE APETEZCA      |"
sleep 0.1
echo "|                                         |"
sleep 0.1
echo " -----------------------------------------"
sleep 0.1
echo " -----------------------------------------"
sleep 0.1
echo "| (1) Patatas Ruffles sabor Jamon - 1.50€ |"
sleep 0.1
echo "| (2) Bebida energética Red Bull  - 2.00€ |"
sleep 0.1
echo "| (3) Chips de Plátano Frito      - 3.50€ |"
sleep 0.1
echo "| (4) CocaCola Light Sin Cafeina  - 2.50€ |"
sleep 0.1
echo "| (5) Sandwich de Jamón y Queso   - 3.00€ |"
sleep 0.1
echo "| (6) Nachos Tex Mex muy Picantes - 2.00€ |"
sleep 0.1
echo "| (0) Salir                       - free  |"
sleep 0.1
echo " -----------------------------------------"
echo
sleep 0.5
read -p "¡Porfavor, usa los números 1-6 para indicar su producto deseado! " producto
echo

case $producto in
 1)
  echo "Has escogido Patatas Ruffles sabor Jamon"
  echo
  read -p "Por favor, importe 1.50€: " pago
  echo
  if (( $(echo "$pago == 1.50" | bc) )); then
    echo "------------------------------------------------------------"
    echo "| ¡Muchas gracias, Buen día y que aprovechen esas Ruffles! |"
    echo "------------------------------------------------------------"
    echo
    sleep 0.3
    exit
  elif (( $(echo "$pago < 1.50" | bc) )); then
    while (( $(echo "$pago < 1.50" | bc) )); do
        resto=$(echo "1.50 - $pago" | bc)
        read -p "Te falta $resto €, pague el resto: " pagoresto
        pago=$(echo "$pago + $pagoresto" | bc)
    done
    if (( $(echo "$pago == 1.50" | bc) )); then
        echo
        echo "------------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aprovechen esas Ruffles! |"
        echo "------------------------------------------------------------"

        echo
        exit
    elif (( $(echo "$pago > 1.50" | bc) )); then
        cambio=$(echo "$pago - 1.50" | bc)
        echo
        echo "Te devuelvo los $cambio € que sobra y te doy tu producto"
        echo
        echo "------------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aprovechen esas Ruffles! |"
        echo "------------------------------------------------------------"
        echo
    fi
  else
    cambio=$(echo "$pago - 1.50" | bc)
    echo "----------------------------------------------------------------"
    echo "| Su cambio es de $cambio €, ¡Buen día y disfruta las Ruffles! |"
    echo "----------------------------------------------------------------"
    echo
  fi
;;

 2)
  echo "Has escogido Bebida energética Red Bull"
  echo
  read -p "Por favor, importe 2€: " pago
  echo
  if (( $(echo "$pago == 2" | bc) )); then
    echo "------------------------------------------------------------"
    echo "| ¡Muchas gracias, Buen día y que aproveche ese Red Bull!  |"
    echo "------------------------------------------------------------"
    echo
    sleep 0.3
    exit
  elif (( $(echo "$pago < 2" | bc) )); then
    while (( $(echo "$pago < 2" | bc) )); do
        resto=$(echo "2 - $pago" | bc)
        read -p "Te falta $resto €, pague el resto: " pagoresto
        pago=$(echo "$pago + $pagoresto" | bc)
    done
    if (( $(echo "$pago == 2" | bc) )); then
        echo
        echo "------------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aproveche ese Red Bull!  |"
        echo "------------------------------------------------------------"

        echo
        exit
    elif (( $(echo "$pago > 2" | bc) )); then
        cambio=$(echo "$pago - 2" | bc)
        echo
        echo "Te devuelvo los $cambio € que sobra y te doy tu producto"
        echo
        echo "------------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aproveche ese Red Bull!  |"
        echo "------------------------------------------------------------"
        echo
    fi
  else
    cambio=$(echo "$pago - 2" | bc)
    echo "----------------------------------------------------------------"
    echo "| Su cambio es de $cambio €, ¡Buen día y disfruta el Red Bull!   |"
    echo "----------------------------------------------------------------"
    echo
  fi
;;

 3)
  echo "Has escogido Chips de Platano Frito"
  echo
  read -p "Por favor, importe 3.50€: " pago
  echo
  if (( $(echo "$pago == 3.50" | bc) )); then
    echo "----------------------------------------------------------"
    echo "| ¡Muchas gracias, Buen día y que aprovechen esas chips! |"
    echo "----------------------------------------------------------"
    echo
    sleep 0.3
    exit
  elif (( $(echo "$pago < 3.50" | bc) )); then
    while (( $(echo "$pago < 3.50" | bc) )); do
        resto=$(echo "3.50 - $pago" | bc)
        read -p "Te falta $resto €, pague el resto: " pagoresto
        pago=$(echo "$pago + $pagoresto" | bc)
    done
    if (( $(echo "$pago == 3.50" | bc) )); then
        echo
        echo "----------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aprovechen esas chips! |"
        echo "----------------------------------------------------------"

        echo
        exit
    elif (( $(echo "$pago > 3.50" | bc) )); then
        cambio=$(echo "$pago - 3.50" | bc)
        echo
        echo "Te devuelvo los $cambio € que sobra y te doy tu producto"
        echo
        echo "---------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aprovechen las chips! |"
        echo "---------------------------------------------------------"
        echo
    fi
  else
    cambio=$(echo "$pago - 3.50" | bc)
    echo "--------------------------------------------------------------"
    echo "| Su cambio es de $cambio €, ¡Buen día y disfruta de las chips! |"
    echo "--------------------------------------------------------------"
    echo
  fi
;;

 4)
  echo "Has escogido CocaCola Light Sin Cafeina"
  echo
  read -p "Por favor, importe 2.50€: " pago
  echo
  if (( $(echo "$pago == 2.50" | bc) )); then
    echo "-----------------------------------------------------------"
    echo "| ¡Muchas gracias, Buen día y que aproveche esa CocaCola! |"
    echo "-----------------------------------------------------------"
    echo
    sleep 0.3
    exit
  elif (( $(echo "$pago < 2.50" | bc) )); then
    while (( $(echo "$pago < 2.50" | bc) )); do
        resto=$(echo "2.50 - $pago" | bc)
        read -p "Te falta $resto €, pague el resto: " pagoresto
        pago=$(echo "$pago + $pagoresto" | bc)
    done
    if (( $(echo "$pago == 2.50" | bc) )); then
        echo
        echo "-----------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aproveche esa CocaCola! |"
        echo "-----------------------------------------------------------"

        echo
        exit
    elif (( $(echo "$pago > 2.50" | bc) )); then
        cambio=$(echo "$pago - 2.50" | bc)
        echo
        echo "Te devuelvo los $cambio € que sobra y te doy tu producto"
        echo
        echo "-----------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aproveche esa CocaCola! |"
        echo "-----------------------------------------------------------"
        echo
    fi
  else
    cambio=$(echo "$pago - 2.50" | bc)
    echo "----------------------------------------------------------------"
    echo "| Su cambio es de $cambio €, ¡Buen día y disfruta la CocaCola! |"
    echo "----------------------------------------------------------------"
    echo
  fi
;;

 5)
  echo "Has escogido Sandwich de Jamon y Queso"
  echo
  read -p "Por favor, importe 3.00€: " pago
  echo
  if (( $(echo "$pago == 3.00" | bc) )); then
    echo "----------------------------------------------------------"
    echo "| ¡Muchas gracias, Buen día y que aproveche ese Sanwich! |"
    echo "----------------------------------------------------------"
    echo
    sleep 0.3
    exit
  elif (( $(echo "$pago < 3.00" | bc) )); then
    while (( $(echo "$pago < 3.00" | bc) )); do
        resto=$(echo "3.00 - $pago" | bc)
        read -p "Te falta $resto €, pague el resto: " pagoresto
        pago=$(echo "$pago + $pagoresto" | bc)
    done
    if (( $(echo "$pago == 3.00" | bc) )); then
        echo
        echo "-----------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aproveche ese Sandwich! |"
        echo "-----------------------------------------------------------"

        echo
        exit
    elif (( $(echo "$pago > 3.00" | bc) )); then
        cambio=$(echo "$pago - 3.00" | bc)
        echo
        echo "Te devuelvo los $cambio € que sobra y te doy tu producto"
        echo
        echo "----------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aproveche ese Sanwich! |"
        echo "----------------------------------------------------------"
        echo
    fi
  else
    cambio=$(echo "$pago - 3.00" | bc)
    echo "----------------------------------------------------------------"
    echo "| Su cambio es de $cambio €, ¡Buen día y disfruta del Sandwich!|"
    echo "----------------------------------------------------------------"
    echo
  fi
;;

 6)
  echo "Has escogido Nachos Tex Mex Muy picantes"
  echo
  read -p "Por favor, importe 2.00€: " pago
  echo
  if (( $(echo "$pago == 2.00" | bc) )); then
    echo "------------------------------------------------------------"
    echo "| ¡Muchas gracias, Buen día y que aprovechen esos Nachos! |"
    echo "------------------------------------------------------------"
    echo
    sleep 0.3
    exit
  elif (( $(echo "$pago < 2.00" | bc) )); then
    while (( $(echo "$pago < 2.00" | bc) )); do
        resto=$(echo "2.00 - $pago" | bc)
        read -p "Te falta $resto €, pague el resto: " pagoresto
        pago=$(echo "$pago + $pagoresto" | bc)
    done
    if (( $(echo "$pago == 2.00" | bc) )); then
        echo
        echo "-----------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aprovechen esos Nachos! |"
        echo "-----------------------------------------------------------"

        echo
        exit
    elif (( $(echo "$pago > 2.00" | bc) )); then
        cambio=$(echo "$pago - 2.00" | bc)
        echo
        echo "Te devuelvo los $cambio € que sobra y te doy tu producto"
        echo
        echo "-----------------------------------------------------------"
        echo "| ¡Muchas gracias, buen día y que aprovechen esos Nachos! |"
        echo "-----------------------------------------------------------"
        echo
    fi
  else
    cambio=$(echo "$pago - 2.00" | bc)
    echo "----------------------------------------------------------------"
    echo "| Su cambio es de $cambio €, ¡Buen día y disfruta de los Nachos! |"
    echo "----------------------------------------------------------------"
    echo
  fi
;;

 0)
  echo "-------------------"
  echo "| ¡¡Hasta luego!! |"
  echo "-------------------"
  echo
  sleep 0.5
  exit
;;

 *)
  echo "Opción incorrecta, vuelva a empezar"
  echo
  sleep 0.5
  read -p "Pulse para volver a pedir" reiniciar
  exec $0
;;
esac
