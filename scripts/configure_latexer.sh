#!/bin/sh
#
# NAME: CONFIG LATEXER


echo "Installing required python packages..."

if ! which pip3 > /dev/null; then
    echo -e "pip3 not found! install it? (Y/n) \c"
    read
    if "$REPLY" = "n"; then
        exit 0
    fi
    apt install pip3
fi

pip3 install flask latex loguru pytesseract
sudo apt install npm
sudo apt install nodejs

echo "Installed required python packages succesfully."


echo "Installing required software components.."

apt install latexmk tesseract-ocr=3 -y
cd ../latexConverter
npm install

echo "Installed required software components."

exit 0
