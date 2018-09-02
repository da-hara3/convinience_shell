# !/bin/bash
# ubuntu用のtouchpad切り替えコマンド
# このシェルをショートカットに設定して利用

state=`xinput list-props $1 | grep "Device Enabled" | tail -c 2`

if test $state = '1'
then
    xinput disable $1
else
    xinput enable $1
fi
