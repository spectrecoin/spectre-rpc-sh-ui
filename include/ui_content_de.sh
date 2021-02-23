#!/bin/bash
# ============================================================================
#
# This is a component of the Aliaswallet shell rpc ui
#
# SPDX-FileCopyrightText: © 2020 Alias Developers
# SPDX-FileCopyrightText: © 2016 SpectreCoin Developers
# SPDX-License-Identifier: MIT
#
# Author: 2018 HLXEasy
#
# ============================================================================

# ============================================================================
# Set global variables for text output(i.e. for main menu).
#
# Interpret embedded "\Z" sequences in the dialog text by the following character,
# which tells dialog to set colors or video attributes: 0 through 7 are the ANSI
# used in curses: black, red, green, yellow, blue, magenta, cyan and white respectively.
# Bold is set by 'b', reset by 'B'.
# Reverse is set by 'r', reset by 'R'.
# Underline is set by 'u', reset by 'U'.
# The settings are cumulative,
# e.g., "\Zb\Z1" makes the following text bold (perhaps bright) red.
# Restore normal settings with "\Zn".
TITLE_BACK=" Aliaswallet Bash Interface "
TITLE_TRANS=" Letzte Transaktionen "
TITLE_INFO=""
TITLE_GAUGE=" Bitte warten "
TITLE_ERROR=" Fehler "
TITLE_SUCCESS=" Erfolgreich "
TITLE_STARTING_DAEMON=" Starte Daemon "
TITLE_GOODBYE=" Auf wiedersehen "
TITLE_SEND_PUBLIC=" Sende Public "
TITLE_SEND_PRIVATE=" Sende Privat "
TITLE_CONVERT=" Konvertiere Coins "
TITLE_USERCOMMAND=" Führe Kommando aus "
TITLE_CURL_RESULT=" cURL Resultat "
TITLE_RECEIVE=" Wallet Addressen "
TITLE_SUGGESTION=" Vorschlag "
TITLE_PLACEHOLDER_FUNCTION=" Verzeihung "
TITLE_ENCRYPT_WALLET=" Wallet verschlüsseln "
TITLE_VIEW_TRANSACTIONS=" Seite "
TITLE_ADV_MENU=" Erweiterte Optionen "
TITLE_WALLET_INFO=" Wallet Info "
TITLE_STAKING_INFO=" Staking Info "
TITLE_PLEASE_CHOOSE=" Bitte wählen "
TITLE_UPDATE_BINARIES=" Aliaswallet aktualisieren "
TITLE_LANGUAGE_SELECTION=" Aktuelle Sprache: deutsch "
TITLE_AVAILABLE_VERSIONS=" Verfügbare Versionen "
TITLE_SYSTEM_STATS=" Systeminformation "
#
BUTTON_LABEL_ENCRYPT="Verschlüsseln"
BUTTON_LABEL_RESTART_DAEMON="Daemon neustarten"
BUTTON_LABEL_ENTER="Enter"
BUTTON_LABEL_OK="OK"
BUTTON_LABEL_LEAVE="Verlassen"
BUTTON_LABEL_CONTINUE="Weiter"
BUTTON_LABEL_PREVIOUS="Vorherige"
BUTTON_LABEL_NEXT="Nächste"
BUTTON_LABEL_SEND="Senden"
BUTTON_LABEL_EXECUTE="Ausführen"
BUTTON_LABEL_HELP="Hilfe"
BUTTON_LABEL_ADDRESS_BOOK="Addressbuch"
BUTTON_LABEL_MAIN_MENU="Hauptmenu"
BUTTON_LABEL_SHOW_STAKES="Zeige Stakes"
BUTTON_LABEL_HIDE_STAKES="Verberge Stakes"
BUTTON_LABEL_JUST_LEAVE="Nein, UI beenden"
BUTTON_LABEL_STOP_DAEMON="Ja, Daemon stoppen"
BUTTON_LABEL_I_HAVE_UNDERSTOOD="Ja, ich habe verstanden"
BUTTON_LABEL_SHOW_BALANCE="Zeige Saldo"
BUTTON_LABEL_HIDE_BALANCE="Verberge Saldo"
BUTTON_LABEL_PUBLIC_TO_PRIVATE="Public in Private"
BUTTON_LABEL_PRIVATE_TO_PUBLIC="Private in Public"
BUTTON_LABEL_CLOSE="Fenster schliessen"
BUTTON_LABEL_RETURN="Zurück"
BUTTON_LABEL_EXIT="UI beenden"
BUTTON_LABEL_UPDATE_TO_LATEST_RELEASE="Aktuelles Release"
BUTTON_LABEL_UPDATE_CHOOSE_VERSION="Version wählen"
BUTTON_LABEL_REFRESH="Aktualisieren"
BUTTON_LABEL_BACK="Zurück"
BUTTON_LABEL_YES="Ja"
BUTTON_LABEL_NO="Nein"
#
# Main Menu
CMD_MAIN_LOCK_WALLET="Sperren"
EXPL_CMD_MAIN_WALLETLOCK="Wallet sperren, kein Staking."
CMD_MAIN_UNLOCK_WALLET="Entsperren"
EXPL_CMD_MAIN_WALLETUNLOCK="Wallet entsperren, Staking."
CMD_MAIN_ENCRYPT_WALLET="Verschlüsseln"
EXPL_CMD_MAIN_WALLETENCRYPT="Wallet verschlüsseln."
CMD_MAIN_REFRESH="Aktualisieren"
EXPL_CMD_MAIN_REFRESH="GUI aktualisieren."
CMD_MAIN_TRANS="Transaktionen"
EXPL_CMD_MAIN_VIEWTRANS="Zeige alle Transaktionen."
CMD_MAIN_SEND="Coins senden"
EXPL_CMD_MAIN_SEND="Entweder Public oder Private."
CMD_MAIN_CONVERT_COINS="Coins konvertieren"
EXPL_CMD_MAIN_CONVERT_COINS="Public <-> Private."
CMD_MAIN_RECEIVE="Empfangen"
EXPL_CMD_MAIN_RECEIVE="Zeige wallet adressen."
CMD_MAIN_ADVANCED_MENU="Erweitert"
EXPL_CMD_MAIN_ADVANCEDMENU="Erweiterte Optionen."
CMD_MAIN_QUIT="Verlassen"
EXPL_CMD_MAIN_EXIT="GUI beenden."
#
# Advanced Menu
CMD_GET_SYSTEM_STATS="System"
EXPL_CMD_GET_SYSTEM_STATS_INFO="Systeminformationen anzeigen."
CMD_USER_COMMAND="Kommando"
EXPL_CMD_USER_COMMAND="Kommando an den Daemon schicken."
CMD_DEVELOPER_COMMAND="EntwicklerKommando"
EXPL_CMD_DEVELOPER_COMMAND="Entwicklermodus."
CMD_CHANGE_WALLET_PW="Reencrypt"
EXPL_CMD_CHANGE_WALLET_PW="Wallet Passwort ändern."
CMD_STAKING_ANALYSE="Staking"
EXPL_CMD_STAKING_ANALYSE="Staking-Details anzeigen."
CMD_GET_WALLET_INFO="Wallet"
EXPL_CMD_GET_WALLET_INFO="Wallet-Info anzeigen."
CMD_UPDATE="Update"
EXPL_CMD_UPDATE="Aliaswallet aktualisieren"
CMD_VIEW_LOG="Logfile"
EXPL_CMD_VIEW_LOG="Log anzeigen"
CMD_CHANGE_LANGUAGE="Sprache"
EXPL_CMD_CHANGE_LANGUAGE="Sprache des GUI wechseln."
CMD_GET_PEER_INFO="Verbindungen"
EXPL_CMD_GET_PEER_INFO="Aktuelle Verbindungen zeigen."
CMD_MAIN_MENU="Hauptmenü"
EXPL_CMD_MAIN_MENU="Zurück zum Hauptmenü."
#
# Error Feedback
ERROR_MAINMENU_FATAL="Unerwarteter schwerer Fehler im Hauptmenü-Dialog."
ERROR_ADVMENU_FATAL="Unerwarteter schwerer Fehler im erweiterten Menü-Dialog."
ERROR_SYSTEM_STATS_FATAL="Unerwarteter schwerer Fehler im Systeminfo-Dialog."
ERROR_USERCOMMAND_FATAL="Unerwarteter schwerer Fehler im Kommando-Dialog."
ERROR_PW_FATAL="Unerwarteter schwerer Fehler im Passwort-Dialog."
ERROR_SEND_FATAL="Unerwarteter schwerer Fehler im Senden-Dialog."
ERROR_CONVERT_FATAL="Unerwarteter schwerer Fehler im Konvertieren-Dialog."
ERROR_TRANS_FATAL="Unerwarteter schwerer Fehler im Transaktionslisten-Dialog."
ERROR_GOODBYE_FATAL="Unerwarteter schwerer Fehler beim Stoppen des Daemon."
ERROR_SEND_INVALID_ADDRESS="\Z1Ungültige Adresse eingegeben.\Zn\n\nEine gültige Public-Adresse setzt sich wie folgt zusammen:\n- Beginnt mit 'S'\n- Länge 27-34 Zeichen\n- Grossbuchstaben 'O' und 'I', Kleinbuchstabe 'l' sowie die Ziffer '0' werden nie verwendet, um Verwechslungen zu vermeiden."
ERROR_SEND_INVALID_PRIVATE_ADDRESS="\Z1Ungültige Adresse eingegeben.\Zn\n\nEine gültige private Adresse setzt sich wie folgt zusammen:\n- Länge 102 Zeichen\n- Grossbuchstaben 'O' und 'I', Kleinbuchstabe 'l' sowie die Ziffer '0' werden nie verwendet, um Verwechslungen zu vermeiden."
ERROR_SEND_INVALID_AMOUNT="Betrag muss eine Zahl wie folgt sein:\n- Grösser 0\n- Max. 8 Stellen hinter dem Dezimalpunkt"
ERROR_CURL_MSG_PROMPT="CURL Fehlermeldung:"
ERROR_401_UNAUTHORIZED="Fehler: RPC-Login fehlgeschlagen. Evtl. das Passwort ohne Daemon-Neustart geändert? Hinweis: Der Daemon kann mit dem Befehl 'wallet-stop' gestoppt werden."
ERROR_DAEMON_NO_CONNECT_FROM_REMOTE="Keine Verbindung zum Alias wallet daemon möglich.\nBitte Konfiguration prüfen."
ERROR_DAEMON_NO_CONNECT="Daemon hat innerhalb von 60s nicht reagiert.\nVerbindung konnte nicht aufgebaut werden.\nBitte Konfiguration prüfen."
#
ERROR_DAEMON_ALREADY_RUNNING="Aliaswallet Daemon läuft bereits aber es konnte keine Verbindung aufgebaut werden. Bitte warten."
ERROR_DAEMON_STARTING="Aliaswalletd Daemon läuft nicht, wird jetzt gestartet..."
ERROR_DAEMON_WAITING_BEGIN="Der Aliaswalletd Daemon braucht etwas Zeit für Initialisierung/Sync. Warte eine Minute..."
ERROR_DAEMON_WAITING_MSG="Sekunden noch..."
ERROR_DAEMON_WAITING_MSG_SUCCESS="Daemon verbunden, alles gut."
ERROR_DAEMON_WAITING_END="Vorbereitungen erledigt, starte GUI..."
#
TEXT_HEADLINE_WALLET_INFO="Wallet Info"
TEXT_BALANCE="Saldo"
TEXT_CURRENCY="Public"
TEXT_CURRENCY_PRIVATE="Private"
TEXT_WALLET_STATE="Wallet"
TEXT_WALLET_HAS_NO_PW="\Z1Kein Passwort\Zn"
TEXT_WALLET_IS_UNLOCKED="\Z4entsperrt\Zn"
TEXT_WALLET_IS_LOCKED="\Z1gesperrt\Zn"
#
TEXT_HEADLINE_CLIENT_INFO="Client Info"
TEXT_DAEMON_VERSION="Version"
TEXT_DAEMON_ERRORS_DURING_RUNTIME="Fehler"
TEXT_DAEMON_NO_ERRORS_DURING_RUNTIME="keine"
TEXT_DAEMON_IP="IP"
TEXT_DAEMON_PEERS="Verbindungen"
TEXT_DAEMON_DOWNLOADED_DATA="Download"
TEXT_DAEMON_UPLOADED_DATA="Upload"
#
TEXT_HEADLINE_STAKING_INFO="Staking Info"
TEXT_STAKING_STATE="Staking"
TEXT_STAKING_ON="\Z4AN\Zn"
TEXT_STAKING_OFF="\Z1AUS\Zn"
TEXT_STAKING_COINS="Coins"
TEXT_MATURING_COINS="aging"
TEXT_EXP_TIME="Erwartete Zeit"
TEXT_STAKING_AVAILABLE="Verfügbar"
TEXT_STAKING_STAKED="Staked"
#
TEXT_STAKE="\Z4STAKE\Zn"
TEXT_IMMATURE="\Z5IMMATURE\Zn"
TEXT_RECEIVED="\Z2RECEIVED\Zn"
TEXT_TRANSFERRED="\Z1SENDED\Zn"
TEXT_CONTRIBUTE="\Z6CONTRIBUTION\Zn"
TEXT_CONFIRMATIONS="Bestätigungen"
TEXT_ADDRESS="Adresse"
TEXT_TXID="TxID"
TEXT_NARRATION="Kommentar"
TEXT_FEE="Gebühr"
#
TEXT_CLIPBOARD_HINT="On Linux: Use \Z6[CTRL]\Zn + \Z6[SHIFT]\Zn + \Z6[V]\Zn to paste from clipboard."
TEXT_SEND_DESTINATION_ADDRESS_EXPL="Zieladresse"
TEXT_SEND_DESTINATION_ADDRESS="Adresse"
TEXT_SEND_AMOUNT_EXPL="Betrag an"
TEXT_SEND_AMOUNT="Betrag"
TEXT_SEND_EXPL="Bitte Empfängeradresse eingeben."
TEXT_SEND_NARRATION="Kommentar"
#
TEXT_PW_EXPL="Wallet-Passwort eingeben"
TEXT_CURRENT_PW_EXPL="Aktuelles Wallet-Passwort eingeben"
TEXT_NEW_PW1_EXPL="Neues Wallet-Passwort eingeben"
TEXT_NEW_PW2_EXPL="Neues Wallet-Passwort erneut eingeben"
TEXT_NO_PASS_GIVEN="Kein Passwort eingegeben"
TEXT_NO_NEW_PASS_GIVEN="Kein neues Passwort eingegeben"
TEXT_NEW_PASS_NOT_EQUAL="Neue Passwörter nicht identisch"
TEXT_PASS_CHANGE_SUCCESSFUL="Passwort erfolgreich geändert"
TEXT_WALLET_ENCRYPTION_SUCCESSFUL="Wallet erfolgreich verschlüsselt. Daemon wird neu gestartet..."
#
TEXT_USERCOMMAND_EXPL="Here you can enter commands that will be send to the Daemon."
TEXT_USERCOMMAND_CMD_EXPL="Für mögliche Befehle 'help' eingeben"
TEXT_USERCOMMAND_CMD="Kommando"
TEXT_USERCOMMAND_PARAMS_EXPL="getrennt durch Leerzeichen"
TEXT_USERCOMMAND_PARAMS="Parameter"
TEXT_USERCOMMAND_AMOUNT="Betrag"
#
TEXT_SYSTEM="System"
TEXT_MAX_FREQENCY="Max. Frequenz"
TEXT_THRESHOLD="Schwelle"
TEXT_TEMPERATURE="Temperatur"
TEXT_SD_CARD="SD Karte"
TEXT_FREE_DISK_SPACE="Freier SD-Speicher"
TEXT_FREE_RAM="Freies RAM"
TEXT_OS="Betriebssystem"
TEXT_KERNEL="Linux Kernel Version"
TEXT_SWAP_DISABLED="Swapping ist deaktiviert."
TEXT_SWAP_SIZE="Swap Grösse"
#
TEXT_GAUGE_ALLDONE="Alles erledigt."
TEXT_GAUGE_DEFAULT="Daten vom Daemon holen..."
TEXT_GAUGE_GET_INFO="Allgemeine Infos vom Daemon holen..."
TEXT_GAUGE_PROCESS_INFO="Allgemeine Daten verarbeiten..."
TEXT_GAUGE_GET_STAKING_DATA="Staking Daten vom Daemon holen..."
TEXT_GAUGE_PROCESS_STAKING_DATA="Staking Data verarbeiten..."
TEXT_GAUGE_GET_TRANS="Transaktionsdaten vom Daemon holen..."
TEXT_GAUGE_PROCESS_TRANS="Transaktionsdaten verarbeiten..."
#
TEXT_GOODBYE_WARNING="\Z1Wenn das System heruntergefahren werden soll, muss der Aliaswallet-Daemon vorher gestoppt werden, um Dateninkonsistenzen zu vermeiden!\Zn\n\nSoll der Daemon jetzt gestoppt (kein weiteres Staking) oder nur das GUI beendet werden?\Zn"
TEXT_GOODBYE_DAEMON_STILL_RUNNING="Daemon läuft noch."
TEXT_GOODBYE_DAEMON_STOPPED="Daemon gestoppt."
TEXT_GOODBYE_FEEDBACK="Jegliches Feedback ist gern gesehen! Vielen Dank."
TEXT_GOODBYE_DAEMON_NOT_SYNCED="Der Aliaswallet Daemon ist noch nicht vollständig synchronisiert.\n\nZurück zur Logausgabe oder das UI beenden?"
#
TEXT_LOGFILE_HEADER="Der Daemon ist synchronisiert, wenn unten Ausgaben der Art \Z1'height='\Zn gefolgt von der aktuellen Blockchain-Höhe zu sehen sind. Bitte Geduld, das kann etwas dauern! (Links/Rechts scrollen mit den Pfeiltasten)"
#
TEXT_FEEDBACK_WALLET_LOCKED="Wallet erfolgreich gesperrt.\n\n\Z5Es wird nicht mehr gestaked.\Zn\n\nBitte \Z4${CMD_MAIN_UNLOCK_WALLET}\Zn im Hauptmenü benutzen, um Staking wieder zu aktivieren."
TEXT_FEEDBACK_WALLET_UNLOCKED="Wallet erfolgreich entsperrt."
TEXT_SUGGESTION_STAKING="Nach dem Entsperren des Wallet dauert es eine Weile, bis der Daemon den korreten Staking-Status ermittelt hat.\nBenutze \Z4${CMD_MAIN_REFRESH}\Zn im Hauptmenü, um das GUI zu aktualisieren."
TEXT_FEEDBACK_RECEIVE="Zurück ins Hauptmenu."
TEXT_DEFAULT_PUBLIC_ADDRESS="Standard Public-Adresse"
TEXT_DEFAULT_PRIVATE_ADDRESS="Standard Private-Adresse"
#
TEXT_SEND_UNLOCK_WALLET_AGAIN="Achtung,\num wieder zu staken, muss das Wallet entsperrt werden!\n"
TEXT_SUGGESTION_TO_INCREASE_TERMINAL_SIZE="\nTerminalgrösse mindestens vergrössern auf "
TEXT_PLACEHOLDER_FUNCTION="\nNoch in Entwicklung...\n\nSorry, im Moment nur ein Platzhalter."
#
TEXT_ESTIMATIONS="Schätzung"
TEXT_ONE_MONTH="einem Monat"
TEXT_HALF_YEAR="einem halben Jahr"
TEXT_ONE_YEAR="ein Jahr"
TEXT_TWO_YEARS="zwei Jahre"
TEXT_THREE_YEARS="drei Jahre"
TEXT_FOUR_YEARS="vier Jahre"
TEXT_FIVE_YEARS="fünf Jahre"
TEXT_STAKING_ANALYSIS_TIMEFRAME="Geschätzter Zeitraum"
TEXT_STAKING_ANALYSIS_LAST_THOUSAND="Innerhalb der letzten 1000 Transaktionen"
TEXT_STAKING_ANALYSIS_AMOUNTS="Staking Transaktionen"
TEXT_STAKING_ANALYSIS_TOTAL_REWARD="Gesamtgewinn"
TEXT_STAKING_ANALYSIS_TOTAL_TODAY="Anzahl Coins"
TEXT_STAKING_ANALYSIS_REWARD_PER_YEAR="- Staking Gewinnrate pro Jahr"
TEXT_STAKING_ANALYSIS_COINS_IN_ONE_MONTH="- Coins pro Monat"
TEXT_STAKING_ANALYSIS_STAKED_COINS_IN="- Staked Coins innerhalb"
TEXT_STAKING_ANALYSIS_TOTAL_COINS_IN="- Gesamt Coins innerhalb"
#
TEXT_COIN_TYPE_TO_SEND_QUESTION="\nWelchen Coin-Typ möchten Sie senden?"
TEXT_CONVERSION_QUESTION="\nIn welche Richtung möchten Sie Coins konvertieren?"
TEXT_AMOUNT_TO_CONVERT="Zu konvertierender Betrag"
#
TEXT_QUESTION_DO_UPDATE="Aliaswallet aktualisieren?\nDer Aliaswallet-Daemon wird gestoppt!\n"
TEXT_UPDATE_CANCELED="Update abgebrochen"
TEXT_UPDATE_CHOOSE_VERSION_HINT="Bitte gewünschte Version mit Leertaste selektieren:"
#
TEXT_CHOOSE_LANGUAGE="Bitte Sprache auswählen"
TEXT_CHOOSE_LANGUAGE_CANCELED="Sprachumschaltung abgebrochen"
#
TEXT_USE_AT_YOUR_OWN_RISC="          Verwendung auf eigene Verantwortung!!!\n\n"
#
TEXT_BOOTSTRAPPING="Installation der Bootstrap-Chain läuft, bitte warten..."
TEXT_ALIAS_SERVICE_NOT_ENABLED="Der Alias Wallet Service ist nicht aktiviert und wird somit nach dem nächsten Reboot nicht laufen. Service jetzt aktivieren?"
