#!/bin/bash
clear

# Banner inicial
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
echo "¡¡Bienvenido a tu máquina de vending favorita!!"
echo "¡¡Pídeme lo que más te apetezca ahora, mi rey!!"
sleep 0.5
echo

# Menú de productos
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
echo "| (1) Patatas Ruffles sabor Jamón  - 1.50€ |"
echo "| (2) Bebida energética Red Bull   - 2.00€ |"
echo "| (3) Chips de Plátano Frito       - 3.50€ |"
echo "| (4) CocaCola Light Sin Cafeína   - 2.50€ |"
echo "| (5) Sándwich de Jamón y Queso    - 3.00€ |"
echo "| (6) Nachos Tex Mex Muy Picantes  - 2.00€ |"
echo "| (0) Salir                        - free  |"
echo " -----------------------------------------"
echo
read -p "¡Por favor, usa los números 1-6 para indicar tu producto deseado! " producto

# Función para gestionar el pago
gestionar_pago() {
    local precio=$1
    local producto=$2
    echo
    read -p "Por favor, importe ${precio}€: " pago
    echo
    while (( $(echo "$pago < $precio" | bc -l) )); do
        resto=$(echo "$precio - $pago" | bc -l)
        read -p "Te falta $resto €, pague el resto: " pagoresto
        pago=$(echo "$pago + $pagoresto" | bc -l)
    done

    if (( $(echo "$pago > $precio" | bc -l) )); then
        cambio=$(echo "$pago - $precio" | bc -l)
        printf "Te devuelvo los %.2f € que sobran y te doy tu producto.\n" "$cambio"
    fi

    echo "------------------------------------------------------------------------------"
    echo "| ¡Muchas gracias, buen día y que disfrutes de tu $producto! |"
    echo "------------------------------------------------------------------------------"
    echo
}

# Switch para las opciones
case $producto in
    1)
        echo "Has escogido Patatas Ruffles sabor Jamón."
        gestionar_pago 1.50 "Patatas Ruffles sabor Jamón"
        ;;
    2)
        echo "Has escogido Bebida energética Red Bull."
        gestionar_pago 2.00 "Bebida energética Red Bull"
        ;;
    3)
        echo "Has escogido Chips de Plátano Frito."
        gestionar_pago 3.50 "Chips de Plátano Frito"
        ;;
    4)
        echo "Has escogido CocaCola Light Sin Cafeína."
        gestionar_pago 2.50 "CocaCola Light Sin Cafeína"
        ;;
    5)
        echo "Has escogido Sándwich de Jamón y Queso."
        gestionar_pago 3.00 "Sándwich de Jamón y Queso"
        ;;
    6)
        echo "Has escogido Nachos Tex Mex Muy Picantes."
        gestionar_pago 2.00 "Nachos Tex Mex Muy Picantes"
        ;;
    0)
        echo "Gracias por usar la máquina de vending. ¡Hasta la próxima!"
        exit
        ;;
    *)
        echo "Opción no válida. Por favor, selecciona un número entre 0 y 6."
        ;;
esac
