#!/usr/bin/env sh
#  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
#  ▓ ████ ███ Usage? use current filename of THIS file: █
#  ▒ ████ ███    $ ./K.sh --help                        █
#    ▓███▀█▄  Feel free to copy/rename/edit THIS file.  █
#  ▒ ▒▓██ ███ Feel free to uncomment examples, but      █
#  ▓ ░▒▓█ ███ do not define multiple times a variable.  █
#  █ configurable! executable! K.sh initialization file █
#  █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀▄▄██▄▌ ▌▐ ▐▄██▄▄▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄█
#  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▄▀▀▀▀▀▌▄  ▄▐▀▀▀▀▀▄▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
#  █▌ Today, is a beautiful day.▐▌ btw, on THIS file.. ▐█
#  ██   I. Define hardcoded optional K argumentss. F F ██
#  ██  II. Define initial mandatory UI argumentss. E R ██
#  ██ III. Define initial mandatory API arguments. E E ██
#  ██  IV. Execute K loop until CTRL+C or kill -9. L E ██
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄.▄!▄!▄██
#  ▌___                                                 .
#  ▌ I ▐________________________________________________.
#  ▌¯¯¯                                                 .
#  █ OPTIONAL_ARGUMENTS                                 .
#  ██ - Allows a list of arguments, to avoid write it always in the command-line.
#OPTIONAL_ARGUMENTS="--colors --autobot"
OPTIONAL_ARGUMENTS="--colors --naked"
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#  ▌____                                                .
#  ▌ II ▐_______________________________________________.
#  ▌¯¯¯¯                                                .
#  █ UI_USERNAME                                        .
#  ██ - Allows any username, to authenticate UI connections.
#UI_USERNAME=1234abcd
UI_USERNAME=NULL
#  ▌____________________________________________________.
#  █ UI_PASSWORD                                        .
#  ██ - Allows any password, to authenticate UI connections.
#UI_PASSWORD=efgh5678
UI_PASSWORD=NULL
#  ▌____________________________________________________.
#  █ UI_OPENPORT                                        .
#  ██ - Allows any port number, to listen to UI connections.
#UI_OPENPORT=6969
UI_OPENPORT=3000
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#  ▌_____                                               .
#  ▌ III ▐______________________________________________.
#  ▌¯¯¯¯¯                                               .
#  █ API_EXCHANGE                                       .
#  ██ - Allows one of the following exchange names (or leave NULL for test mode):
#API_EXCHANGE=COINBASE
#API_EXCHANGE=BITFINEX
#API_EXCHANGE=HITBTC
#API_EXCHANGE=OKCOIN
#API_EXCHANGE=KORBIT
#API_EXCHANGE=POLONIEX
API_EXCHANGE=NULL
#  ▌____________________________________________________.
#  █ API_CURRENCY                                       .
#  ██ - Allows any existent currency pair (see the website of the exchange), the format must be "AAA/BBB".
#API_CURRENCY=BTC/EUR
API_CURRENCY=BTC/USD
#  ▌____________________________________________________.
#  █ API_ORDERS_DESTINATION                             .
#  ██ - Allows NULL to send fake orders, otherwise if is not NULL orders will be send to the real exchange API.
#API_ORDERS_DESTINATION=REAL
API_ORDERS_DESTINATION=NULL
#  ▌____________________________________________________.
#  █ API_KEY                                            .
#  ██ - Allows any valid API KEY (see the website of the exchange).
#  ██ - All exchanges must have API KEY.
#API_KEY=exampleapikey
API_KEY=NULL
#  ▌____________________________________________________.
#  █ API_SECRET                                         .
#  ██ - Allows any valid API SECRET (see the website of the exchange).
#  ██ - All exchanges must have API SECRET.
#API_SECRET=exampleapisecret
API_SECRET=NULL
#  ▌____________________________________________________.
#  █ API_PASSPHRASE                                     .
#  ██ - Allows any valid API PASSPHRASE (see the website of the exchange).
#  ██ - Only COINBASE and KORBIT exchanges must have API PASSPHRASE, other exchanges can be NULL.
#API_PASSPHRASE=exampleapipassphrase
API_PASSPHRASE=NULL
#  ▌____________________________________________________.
#  █ API_USERNAME                                       .
#  ██ - Allows any valid API USERNAME (see the website of the exchange).
#  ██ - Only KORBIT exchange must have API USERNAME, other exchanges can be NULL.
#API_USERNAME=exampleapiusername
API_USERNAME=NULL
#  ▌____________________________________________________.
#  █ API_HTTP_ENDPOINT                                  .
#  ██ - Allows one of the following urls (see the website of the exchange).
#  ██ - All exchanges must have API_HTTP_ENDPOINT.
#API_HTTP_ENDPOINT=https://api.gdax.com
#API_HTTP_ENDPOINT=https://api.bitfinex.com/v1
#API_HTTP_ENDPOINT=http://api.hitbtc.com
#API_HTTP_ENDPOINT=https://www.okcoin.com/api/v1/
#API_HTTP_ENDPOINT=https://api.korbit.co.kr/v1
#API_HTTP_ENDPOINT=https://poloniex.com
API_HTTP_ENDPOINT=NULL
#  ▌____________________________________________________.
#  █ API_WSS_ENDPOINT                                   .
#  ██ - Allows one of the following urls (see the website of the exchange).
#  ██ - Almost all exchanges must have API_WSS_ENDPOINT, only KORBIT exchange can be NULL.
#API_WSS_ENDPOINT=wss://ws-feed.gdax.com
#API_WSS_ENDPOINT=wss://api.bitfinex.com/ws/2
#API_WSS_ENDPOINT=wss://api.hitbtc.com:8080
#API_WSS_ENDPOINT=wss://real.okcoin.com:10440/websocket/okcoinapi
#API_WSS_ENDPOINT=wss://api.poloniex.com
API_WSS_ENDPOINT=NULL
#  ▌____________________________________________________.
#  █ API_WS_ENDPOINT                                    .
#  ██ - Allows one of the following urls (see the website of the exchange).
#  ██ - Only HITBTC exchange must have API_WS_ENDPOINT, other exchanges can be NULL.
#API_WS_ENDPOINT=ws://api.hitbtc.com:80
API_WS_ENDPOINT=NULL
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#  ▌____                                                .
#  ▌ IV ▐______________________________________________ .
#  ▌¯¯¯¯                                                .
until ./app/server/K                                    \
    --title      ${0##*/}                               \
    --port       $UI_OPENPORT                           \
    --user       $UI_USERNAME                           \
    --pass       $UI_PASSWORD                           \
    --exchange   $API_EXCHANGE                          \
    --currency   $API_CURRENCY                          \
    --target     $API_ORDERS_DESTINATION                \
    --apikey     $API_KEY                               \
    --secret     $API_SECRET                            \
    --passphrase $API_PASSPHRASE                        \
    --username   $API_USERNAME                          \
    --http       $API_HTTP_ENDPOINT                     \
    --wss        $API_WSS_ENDPOINT                      \
    --ws         $API_WS_ENDPOINT                       \
                 $OPTIONAL_ARGUMENTS "$@"           ;   #
  do                                                # K #
    echo K crashed with exit code $?.. Respawning.. ;   #
    sleep 3                                         ;   #
done                                                ;   #
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄;▄:wq
