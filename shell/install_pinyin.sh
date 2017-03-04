#!/usr/bin/env bash
pinyin=$1
if [ "$pinyin" = "sogou" ];
    then echo "please go to http://pinyin.sogou.com/linux/?r=pinyin and
    download your version then do sudo dpkg -i ~/Downloads/sogoupinyin*.deb; sudo apt -f install"
else
    echo "installing googlepinyin"
    sudo apt install fcitx fcitx-googlepinyin -y
fi

