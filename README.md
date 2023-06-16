# Configuración automática de pantalla LCD en Raspberry Pi

Este repositorio contiene un script en bash que automatiza el proceso de configuración de una pantalla LCD en una Raspberry Pi. Con este script, puedes actualizar el sistema, descargar los controladores necesarios y realizar las configuraciones adecuadas para habilitar y configurar la pantalla LCD.

## Requisitos

- Raspberry Pi con Raspbian instalado
- Conexión a Internet

## Instrucciones de uso

1. Clona este repositorio en tu Raspberry Pi:
git clone https://github.com/DeXon18/Configuracion-LCD-RaspberryPi.git

2. Cambia al directorio del repositorio:
cd Configuracion-LCD-RaspberryPi

3. Ejecuta el script de configuración:
./setup_lcd.sh

4.El script ejecutará automáticamente los comandos necesarios para actualizar el sistema, descargar los controladores de la pantalla LCD y realizar las configuraciones correspondientes en el archivo de configuración de arranque (config.txt). Al finalizar, la Raspberry Pi se reiniciará.

5. ¡Disfruta de tu pantalla LCD configurada!

## Notas adicionales

- Si deseas invertir la pantalla, puedes editar el script `setup_lcd.sh` y descomentar la línea `sudo ./LCD5-show 180` antes de ejecutarlo.

- Asegúrate de leer y entender los comandos contenidos en el script antes de ejecutarlo. La ejecución de comandos de terminal puede tener implicaciones y riesgos.

- Este script ha sido probado en una Raspberry Pi con Raspbian. Puede haber variaciones en otros sistemas operativos o configuraciones.

## Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún problema o tienes sugerencias de mejora, no dudes en abrir un issue o enviar un pull request.

## Licencia

Este proyecto está bajo la licencia [MIT](LICENSE).


