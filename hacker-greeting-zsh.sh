# Funcion para el saludo con citas de hackers
function hacker_greeting() {
    # Ruta al archivo de frases
    quotes_file="$HOME/hacker_quotes.txt"
    
    # Verifica si el archivo existe
    if [ ! -f "$quotes_file" ]; then
        echo "Error: No se encontro el archivo de frases."
        return 1
    fi
    
    # Selecciona una frase aleatoria
    random_quote=$(shuf -n 1 "$quotes_file")
    
    # Construye el mensaje completo para espeak
    message_for_speech="${random_quote}. Bienvenido profesor Falken, que quieres hacer hoy?"
    
    # Mensaje para mostrar en pantalla
    message_for_display="${random_quote}"$'\n\n'"Bienvenido profesor Falken, que quieres hacer hoy?"
    
    # Desactiva la notificación de trabajos en segundo plano
    setopt LOCAL_OPTIONS NO_NOTIFY NO_MONITOR
    
    # Inicia la reproduccion de audio en segundo plano
    { espeak -v es-es -s 170 -p 75 -a 200 -g 10 "$message_for_speech" > /dev/null 2>&1 & } 
    
    # Imprime el mensaje en la consola caracter por caracter
    for (( i=0; i<${#message_for_display}; i++ )); do
        print -n "${message_for_display:$i:1}"
        sleep 0.03
    done
    print  # Nueva linea al final del mensaje
    
    # Espera a que todos los trabajos en segundo plano terminen
    wait
}

# Ejecuta la funcion de saludo
hacker_greeting
