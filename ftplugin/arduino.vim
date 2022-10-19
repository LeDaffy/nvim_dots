" Arduino settings


setlocal tabstop=4
setlocal shiftwidth=4

nnoremap ;c :wa<Enter> :!arduino-cli compile -b arduino:avr:uno<Enter>
imap ;c <Esc>;ca
nnoremap ;u :wa<Enter> :!arduino-cli upload -b arduino:avr:uno -p /dev/ttyUSB0<Enter>
imap ;u <Esc>;ua

nnoremap ;ec :wa<Enter> :!arduino-cli compile -b esp32:esp32:featheresp32<Enter>
imap ;ec <Esc>;eca
nnoremap ;eu :wa<Enter> :!arduino-cli upload -b esp32:esp32:featheresp32 -p /dev/ttyUSB0<Enter>
imap ;eu <Esc>;eua
