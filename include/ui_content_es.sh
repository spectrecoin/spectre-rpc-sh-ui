#!/bin/bash
# ============================================================================
#
# Este es un componente del shell rpc ui de Aliaswallet
#
# SPDX-FileCopyrightText: © 2020 Alias Developers
# SPDX-FileCopyrightText: © 2016 SpectreCoin Developers
# SPDX-License-Identifier: MIT
#
# Autor: 2018 HLXEasy
#
# En Español (Versión=0.1) por Leo Bitman
#
# ============================================================================

# ============================================================================
# Establecer variables globales para la salida de texto (para el menú principal).
#
# Interpretar secuencias incrustadas en el texto del diálogo mediante el siguiente carácter: "\Z"
# que le dice al diálogo que establezca los colores o atributos de video: 0 a 7 son los ANSI
# utilizado en la secuencia: negro, rojo, verde, amarillo, azul, magenta, cian y blanco respectivamente.
# Bold se establece con 'b', se restablece con 'B'.
# La inversión se establece mediante 'r', se restablece con 'R'.
# El subrayado se establece con 'u', se restablece con 'U'.
# Los ajustes son acumulativos,
# por ejemplo, "\Zb\Z1" hace que el siguiente texto aparezca en negrita (quizás brillante) en rojo.
# Se restaura la configuración normal con "\Zn".
TITLE_BACK=" Interfaz del Monedero Aliaswallet Bash "
TITLE_TRANS=" TRANSACCIONES RECIENTES "
TITLE_INFO=""
TITLE_GAUGE=" Por favor espere "
TITLE_ERROR=" ERROR "
TITLE_SUCCESS=" Éxito "
TITLE_STARTING_DAEMON=" Iniciando Demonio - Debe esperar hasta"
TITLE_GOODBYE=" ADIÓS "
TITLE_SEND_PUBLIC=" Enviar Public "
TITLE_SEND_PRIVATE=" Enviar Private "
TITLE_CONVERT=" Convertir monedas "
TITLE_USERCOMMAND=" Ingresar comando "
TITLE_CURL_RESULT=" cURL resultado "
TITLE_RECEIVE=" Direcciones de monedero "
TITLE_SUGGESTION=" Sugerencia "
TITLE_PLACEHOLDER_FUNCTION=" SRY "
TITLE_ENCRYPT_WALLET=" Encriptar Monedero "
TITLE_VIEW_TRANSACTIONS=" Página "
TITLE_ADV_MENU=" Opciones avanzadas "
TITLE_WALLET_INFO=" Info del monedero "
TITLE_STAKING_INFO=" Info de STAKING "
TITLE_PLEASE_CHOOSE=" Por favor elija "
TITLE_UPDATE_BINARIES=" Actualizar Aliaswallet "
TITLE_LANGUAGE_SELECTION=" Idioma actual: Español "
TITLE_AVAILABLE_VERSIONS=" Versiones disponibles "
TITLE_SYSTEM_STATS=" System Stats "
#
BUTTON_LABEL_ENCRYPT="Encriptar"
BUTTON_LABEL_RESTART_DAEMON="Reiniciar el demonio"
BUTTON_LABEL_ENTER="Entrar"
BUTTON_LABEL_OK="OK"
BUTTON_LABEL_LEAVE="Dejar"
BUTTON_LABEL_CONTINUE="Continuar"
BUTTON_LABEL_PREVIOUS="Anterior"
BUTTON_LABEL_NEXT="Siguiente"
BUTTON_LABEL_SEND="Enviar"
BUTTON_LABEL_EXECUTE="Ejecutar"
BUTTON_LABEL_HELP="Ayuda"
BUTTON_LABEL_ADDRESS_BOOK="Libreta de direcciones"
BUTTON_LABEL_MAIN_MENU="Menú principal"
BUTTON_LABEL_SHOW_STAKES="Mostrar stakes"
BUTTON_LABEL_HIDE_STAKES="Ocultar stakes"
BUTTON_LABEL_JUST_LEAVE="No, simplemente salir de la interfaz de usuario"
BUTTON_LABEL_STOP_DAEMON="Sí, detener el demonio"
BUTTON_LABEL_I_HAVE_UNDERSTOOD="SÍ - Lo he entendido"
BUTTON_LABEL_SHOW_BALANCE="Mostrar saldo"
BUTTON_LABEL_HIDE_BALANCE="Ocultar saldo"
BUTTON_LABEL_PUBLIC_TO_PRIVATE="Public a Private"
BUTTON_LABEL_PRIVATE_TO_PUBLIC="Private to Public"
BUTTON_LABEL_CLOSE="Cerrar ventana"
BUTTON_LABEL_RETURN="Regresar"
BUTTON_LABEL_EXIT="Salir"
BUTTON_LABEL_UPDATE_TO_LATEST_RELEASE="Última versión"
BUTTON_LABEL_UPDATE_CHOOSE_VERSION="Elegir versión"
BUTTON_LABEL_REFRESH="Refresh"
BUTTON_LABEL_BACK="Back"
BUTTON_LABEL_YES="Yes"
BUTTON_LABEL_NO="No"
#
# Menú principal
CMD_MAIN_LOCK_WALLET="Bloquear"
EXPL_CMD_MAIN_WALLETLOCK="Bloquear monedero, no más staking."
CMD_MAIN_UNLOCK_WALLET="Desbloquear"
EXPL_CMD_MAIN_WALLETUNLOCK="Desbloquear el monedero solo para staking."
CMD_MAIN_ENCRYPT_WALLET="Encriptar"
EXPL_CMD_MAIN_WALLETENCRYPT="Encriptar el monedero, proporciona seguridad."
CMD_MAIN_REFRESH="Actualizar"
EXPL_CMD_MAIN_REFRESH="Actualizar la interfaz."
CMD_MAIN_TRANS="Transacciones"
EXPL_CMD_MAIN_VIEWTRANS="Ver todas las transacciones."
CMD_MAIN_SEND="Enviar monedas"
EXPL_CMD_MAIN_SEND="Ya sea Public o Private."
CMD_MAIN_CONVERT_COINS="Convertir monedas"
EXPL_CMD_MAIN_CONVERT_COINS="Public <-> Private."
CMD_MAIN_RECEIVE="Recibir"
EXPL_CMD_MAIN_RECEIVE="Mostrar direcciones de monedero."
CMD_MAIN_ADVANCED_MENU="Avanzado"
EXPL_CMD_MAIN_ADVANCEDMENU="Opciones avanzadas."
CMD_MAIN_QUIT="Salir"
EXPL_CMD_MAIN_EXIT="Salir de esta interfaz."
#
# Menú Avanzado
CMD_GET_SYSTEM_STATS="System"
EXPL_CMD_GET_SYSTEM_STATS_INFO="Show device info."
CMD_USER_COMMAND="Comando"
EXPL_CMD_USER_COMMAND="Enviando comandos al demonio."
CMD_DEVELOPER_COMMAND="DevCmd"
EXPL_CMD_DEVELOPER_COMMAND="Developer mode."
CMD_CHANGE_WALLET_PW="Reencriptar"
EXPL_CMD_CHANGE_WALLET_PW="Cambiar contraseña del monedero."
CMD_STAKING_ANALYSE="Staking"
EXPL_CMD_STAKING_ANALYSE="Obtener detalles de staking."
CMD_GET_WALLET_INFO="Monedero"
EXPL_CMD_GET_WALLET_INFO="Obtener info del monedero."
CMD_UPDATE="Actualizar"
EXPL_CMD_UPDATE="Actualizar los binarios de Aliaswallet"
CMD_VIEW_LOG="Archivo Log"
EXPL_CMD_VIEW_LOG="Ver archivo Log"
CMD_CHANGE_LANGUAGE="Idioma"
EXPL_CMD_CHANGE_LANGUAGE="Cambiar el idioma de esta IU."
CMD_GET_PEER_INFO="Pares"
EXPL_CMD_GET_PEER_INFO="Mostrar los pares actuales."
CMD_MAIN_MENU="Principal"
EXPL_CMD_MAIN_MENU="Volver al menú principal."
#
# Error Feedback
ERROR_MAINMENU_FATAL="Error fatal inesperado en el diálogo del menú principal."
ERROR_ADVMENU_FATAL="Error fatal inesperado en el diálogo del menú avanzado."
ERROR_SYSTEM_STATS_FATAL="Unexpected fatal error in system stats dialog."
ERROR_USERCOMMAND_FATAL="Error fatal inesperado en el diálogo del comando del usuario."
ERROR_PW_FATAL="Error fatal inesperado en el diálogo de contraseña."
ERROR_SEND_FATAL="Error fatal inesperado en el diálogo de envío."
ERROR_CONVERT_FATAL="Error fatal inesperado en el diálogo de conversión de monedas."
ERROR_TRANS_FATAL="Error fatal inesperado al ver el diálogo de todas las transacciones."
ERROR_GOODBYE_FATAL="Error fatal inesperado en el diálogo de detención del demonio (adiós)."
ERROR_SEND_INVALID_ADDRESS="\Z1Ingresó una dirección no válida. \Zn\n\nUna dirección Public válida debe tener la siguiente forma:\n- Comenzando con 'S'\n- Longitud 27-34\n- Letra en mayúscula 'O', 'I', la letra minúscula 'l' y el número '0' nunca se usan para evitar la ambigüedad visual"
ERROR_SEND_INVALID_PRIVATE_ADDRESS="\Z1 Ingresó una dirección no válida. \Zn\n\nUna dirección private válida debe tener la forma: \n- Longitud 102 caracteres\n- Letra mayúscula 'O', 'I', letra minúscula 'l' y el número '0' nunca se usa para evitar la ambigüedad visual"
ERROR_SEND_INVALID_AMOUNT="La cantidad debe ser un número, con:\n- mayor que 0\n- máx. 8 dígitos detrás del punto decimal"
ERROR_CURL_MSG_PROMPT="Mensaje de error CURL:"
ERROR_401_UNAUTHORIZED="Error: Error al iniciar sesión en RPC. ¿Cambió la contraseña sin reiniciar el demonio? Nota: Puede detener el demonio con el comando: wallet-stop"
ERROR_DAEMON_NO_CONNECT_FROM_REMOTE="No se pudo establecer una conexión con Sprectrecoind.\nEs posible que deba verificar su configuración."
ERROR_DAEMON_NO_CONNECT="El demonio no respondió en 60 segundos.\nNo se pudo establecer una conexión con Sprectrecoind.\nEs posible que deba verificar su configuración."
#
# use \ para una nueva línea - nota: no habrá ruptura de línea automática
ERROR_DAEMON_ALREADY_RUNNING="¡Aliaswalletd (demonio) ya se está ejecutando!Pero no se pudo establecer conexión.\nEsto significa que el demonio se acaba de iniciar."
ERROR_DAEMON_STARTING="Aliaswalletd no se está ejecutando.\nIniciando Aliaswalletd (demonio)..."
ERROR_DAEMON_WAITING_BEGIN="El demonio necesita algo de tiempo para inicializarse.\nEsperando 1 minuto al demonio..."
ERROR_DAEMON_WAITING_MSG="segundos para ir..."
ERROR_DAEMON_WAITING_MSG_SUCCESS="Demonio conectado.\nTodo está bien."
ERROR_DAEMON_WAITING_END="Todo listo. Iniciando Interfaz..."
#
TEXT_HEADLINE_WALLET_INFO="Info del monedero"
TEXT_BALANCE="Saldo"
TEXT_CURRENCY="Public"
TEXT_CURRENCY_PRIVATE="Private"
TEXT_WALLET_STATE="Monedero"
TEXT_WALLET_HAS_NO_PW="\Z1no PW\Zn"
TEXT_WALLET_IS_UNLOCKED="\Z4desbloqueado\Zn"
TEXT_WALLET_IS_LOCKED="\Z1bloqueado\Zn"
#
TEXT_HEADLINE_CLIENT_INFO="Info del cliente"
TEXT_DAEMON_VERSION="Version"
TEXT_DAEMON_ERRORS_DURING_RUNTIME="Errores"
TEXT_DAEMON_NO_ERRORS_DURING_RUNTIME="ninguno"
TEXT_DAEMON_IP="IP"
TEXT_DAEMON_PEERS="Pares"
TEXT_DAEMON_DOWNLOADED_DATA="Descargar"
TEXT_DAEMON_UPLOADED_DATA="Subir"
#
TEXT_HEADLINE_STAKING_INFO="Info de replanteo"
TEXT_STAKING_STATE="Staking"
TEXT_STAKING_ON="\Z4ON\Zn"
TEXT_STAKING_OFF="\Z1OFF\Zn"
TEXT_STAKING_COINS="Monedas"
TEXT_MATURING_COINS="envejecimiento"
TEXT_EXP_TIME="Tiempo esperado"
TEXT_STAKING_AVAILABLE="Disponible"
TEXT_STAKING_STAKED="Staked"
#
TEXT_STAKE="\Z4STAKE\Zn"
TEXT_IMMATURE="\Z5INMADURA\Zn"
TEXT_RECEIVED="\Z2RECIBIDO\Zn"
TEXT_TRANSFERRED="\Z1ENVIADO\Zn"
TEXT_CONTRIBUTE="\Z6CONTRIBUCIÓN\Zn"
TEXT_CONFIRMATIONS="Confirmaciones"
TEXT_ADDRESS="Dirección"
TEXT_TXID="TxID"
TEXT_NARRATION="Narración"
TEXT_FEE="Tarifa"
#
TEXT_CLIPBOARD_HINT="En Linux: Use \Z6[CTRL]\Zn + \Z6[SHIFT]\Zn + \Z6[V]\Zn para pegar desde el portapapeles."
TEXT_SEND_DESTINATION_ADDRESS_EXPL="Dirección de destino"
TEXT_SEND_DESTINATION_ADDRESS="Dirección"
TEXT_SEND_AMOUNT_EXPL="Cantidad de"
TEXT_SEND_AMOUNT="Cantidad"
TEXT_SEND_EXPL="Ingrese la dirección de destino."
TEXT_SEND_NARRATION="Narración"
#
TEXT_PW_EXPL="Ingresar la contraseña del monedero"
TEXT_CURRENT_PW_EXPL="Ingresar la contraseña actual del monedero"
TEXT_NEW_PW1_EXPL="Ingresar la nueva contraseña del monedero"
TEXT_NEW_PW2_EXPL="Volver a ingresar la nueva contraseña"
TEXT_NO_PASS_GIVEN="No se ha proporcionado una contraseña"
TEXT_NO_NEW_PASS_GIVEN="No se ha proporcionado una nueva contraseña"
TEXT_NEW_PASS_NOT_EQUAL="Las contraseñas nuevas no coinciden"
TEXT_PASS_CHANGE_SUCCESSFUL="Cambio de frase de contraseña ejecutado correctamente"
TEXT_WALLET_ENCRYPTION_SUCCESSFUL="Monedero encriptado correctamente. Reiniciando el demonio ..."
#
TEXT_USERCOMMAND_EXPL="Aquí puede ingresar comandos que se enviarán al demonio."
TEXT_USERCOMMAND_CMD_EXPL="escriba help para info"
TEXT_USERCOMMAND_CMD="Comando"
TEXT_USERCOMMAND_PARAMS_EXPL="separados por espacios"
TEXT_USERCOMMAND_PARAMS="Parámetro"
TEXT_USERCOMMAND_AMOUNT="Amount"
#
TEXT_SYSTEM="System"
TEXT_MAX_FREQENCY="Max. Frequency"
TEXT_THRESHOLD="Threshold"
TEXT_TEMPERATURE="Temperature"
TEXT_SD_CARD="SD Card"
TEXT_FREE_DISK_SPACE="Available free disk space"
TEXT_FREE_RAM="Available free RAM"
TEXT_OS="Operating System"
TEXT_KERNEL="Linux Kernel Version"
TEXT_SWAP_DISABLED="Swapping is disabled."
TEXT_SWAP_SIZE="Swap Size"
#
TEXT_GAUGE_ALLDONE="Todo listo."
TEXT_GAUGE_DEFAULT="Obteniendo datos del demonio..."
TEXT_GAUGE_GET_INFO="Obteniendo datos de info general del demonio..."
TEXT_GAUGE_PROCESS_INFO="Procesando datos de info general..."
TEXT_GAUGE_GET_STAKING_DATA="Obteniendo datos de staking del demonio..."
TEXT_GAUGE_PROCESS_STAKING_DATA="Procesando datos de staking..."
TEXT_GAUGE_GET_TRANS="Obteniendo datos de transacciones del demonio..."
TEXT_GAUGE_PROCESS_TRANS="Procesando datos de transacciones..."
#
TEXT_GOODBYE_WARNING="\Z1Si planea apagar el sistema, ¡el demonio debe detenerse antes para evitar inconsistencias en la base de datos!\Zn\n\n¿Desea detener el demonio (no más staking) o sólo salir de la IU?\Zn"
TEXT_GOODBYE_DAEMON_STILL_RUNNING="El demonio todavía se está ejecutando."
TEXT_GOODBYE_DAEMON_STOPPED="Demonio detenido."
TEXT_GOODBYE_FEEDBACK="Cualquier comentario apreciado, por favor déjanos saber. ¡Gracias!"
TEXT_GOODBYE_DAEMON_NOT_SYNCED="El demonio Alias wallet todavía no está completamente sincronizado.\n\nVuelva y muestre la salida del registro o salga a cmdline?"
#
TEXT_LOGFILE_HEADER="El demonio está sincronizado si ve \Z1'height = '\Zn seguido de la altura actual de la cadena en la salida del registro a continuación. Tenga paciencia, esto tomará un tiempo! Desplácese hacia la izquierda/derecha con las teclas del cursor."
#
TEXT_FEEDBACK_WALLET_LOCKED="El monedero se ha bloqueado exitosamente.\n\n\Z5Ya no podrá stake más.\Zn\n\nUtilice \Z4${CMD_MAIN_UNLOCK_WALLET}\Zn en el menú principal para desbloquear la billetera y staking de nuevo."
TEXT_FEEDBACK_WALLET_UNLOCKED="Monedero desbloqueado exitosamente."
TEXT_SUGGESTION_STAKING="El demonio tardará un poco en actualizar el estado de staking, luego de que el monedero se desbloquee/bloquee.\nUtilice el comando \Z4${CMD_MAIN_REFRESH}\Zn en el menú principal para actualizar la pantalla."
TEXT_FEEDBACK_RECEIVE="Presione regresar para continuar con el menú principal."
TEXT_DEFAULT_PUBLIC_ADDRESS="Dirección Public predeterminada"
TEXT_DEFAULT_PRIVATE_ADDRESS="Dirección Private predeterminada"
#
TEXT_SEND_UNLOCK_WALLET_AGAIN="Aviso\nPor favor, tenga en cuenta:\nTiene que 'desbloquear' el monedero para volver a staking.\n"
TEXT_SUGGESTION_TO_INCREASE_TERMINAL_SIZE="\nAumente el tamaño del terminal al menos"
TEXT_PLACEHOLDER_FUNCTION="\nUnder construction...\n\nSry ahora mismo, este es un marcador de posición."
#
TEXT_ESTIMATIONS="Estimaciones"
TEXT_ONE_MONTH="un mes"
TEXT_HALF_YEAR="medio año"
TEXT_ONE_YEAR="un año"
TEXT_TWO_YEARS="dos años"
TEXT_THREE_YEARS="tres años"
TEXT_FOUR_YEARS="cuatro años"
TEXT_FIVE_YEARS="cinco años"
TEXT_STAKING_ANALYSIS_TIMEFRAME="Marco de tiempo de estimación"
TEXT_STAKING_ANALYSIS_LAST_THOUSAND="Dentro de las últimas 1000 transacciones"
TEXT_STAKING_ANALYSIS_AMOUNTS="transacciones de staking"
TEXT_STAKING_ANALYSIS_TOTAL_REWARD="Recompensa total"
TEXT_STAKING_ANALYSIS_TOTAL_TODAY="Total de monedas"
TEXT_STAKING_ANALYSIS_REWARD_PER_YEAR="- Tasa de recompensa de staking por año"
TEXT_STAKING_ANALYSIS_COINS_IN_ONE_MONTH="- Total de monedas en un mes"
TEXT_STAKING_ANALYSIS_STAKED_COINS_IN="- Monedas Staked en"
TEXT_STAKING_ANALYSIS_TOTAL_COINS_IN="- Total de monedas en"
#
TEXT_COIN_TYPE_TO_SEND_QUESTION="\n¿Qué tipo de moneda desea enviar?"
TEXT_CONVERSION_QUESTION="\n¿En qué dirección quieres convertir?"
TEXT_AMOUNT_TO_CONVERT="Cantidad a convertir"
#
TEXT_QUESTION_DO_UPDATE="¿Actualizar binarios de Aliaswallet?\nSe detendrá el demonio de Aliaswallet!\n"
TEXT_UPDATE_CANCELED="Actualización cancelada"
TEXT_UPDATE_CHOOSE_VERSION_HINT="Seleccione la versión deseada con espacio:"
#
TEXT_CHOOSE_LANGUAGE="Elegir un idioma"
TEXT_CHOOSE_LANGUAGE_CANCELED="Cambio de idioma cancelado"
#
TEXT_USE_AT_YOUR_OWN_RISC="               ¡¡¡Use a su propio riesgo!!!\n\n"
#
TEXT_BOOTSTRAPPING="Installation of bootstrap chain running, please wait..."
TEXT_ALIAS_SERVICE_NOT_ENABLED="The Alias wallet service is not enabled, so it will not be started after next reboot. Enable the service now?"
