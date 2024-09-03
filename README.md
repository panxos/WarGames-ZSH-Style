# WarGames ZSH Style

![WarGames ZSH Style Logo](https://raw.githubusercontent.com/panxos/ConfServerDebian/main/panxos_logo.png)

## Introducción

WarGames ZSH Style es una divertida humorada que rinde homenaje a la icónica película "WarGames" de 1983. Este proyecto recrea la experiencia de interactuar con el supercomputador Joshua y el Profesor Falken, trayendo un toque de nostalgia y diversión a tu terminal ZSH.

¿Alguna vez has querido sentirte como David Lightman, hackeando NORAD desde la comodidad de tu habitación? Ahora puedes revivir esa emoción cada vez que abras tu terminal. ¿Jugaremos una partida de ajedrez termonuclear global?

Este script ha sido probado en Kali Linux y Arch Linux.

## Instalación

### Dependencias

Antes de instalar el script, asegúrate de tener instalados los siguientes paquetes:

- zsh
- espeak
- shuf (parte del paquete coreutils)

### Pasos de instalación

1. Clona el repositorio:
   ```
   git clone https://github.com/panxos/WarGames-ZSH-Style.git
   ```

2. Entra al directorio del proyecto:
   ```
   cd WarGames-ZSH-Style
   ```

3. Copia el archivo de citas al directorio home:
   ```
   cp hacker_quotes.txt ~/hacker_quotes.txt
   ```

4. Añade la función `hacker_greeting` a tu archivo `~/.zshrc`:
   ```
   cat hacker_greeting.zsh >> ~/.zshrc
   ```

5. Recarga tu configuración de ZSH:
   ```
   source ~/.zshrc
   ```

### Instrucciones específicas por distribución

#### Debian y derivados (incluyendo Kali Linux)

Instala las dependencias:
```
sudo apt update
sudo apt install zsh espeak
```

#### Arch Linux

Instala las dependencias:
```
sudo pacman -Syu
sudo pacman -S zsh espeak
```

#### Red Hat y derivados

Instala las dependencias:
```
sudo dnf update
sudo dnf install zsh espeak
```

## Uso

Una vez instalado, cada vez que abras una nueva terminal ZSH, serás recibido con una cita aleatoria de un hacker famoso, seguida de un saludo del Profesor Falken.

## Personalización

Puedes editar el archivo `~/hacker_quotes.txt` para añadir o modificar las citas que se muestran.

## Contribuciones

¡Las contribuciones son bienvenidas! Si tienes ideas para mejorar este proyecto, no dudes en abrir un issue o enviar un pull request.

## Licencia

Este proyecto está bajo la licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

---

¿Shall we play a game?
