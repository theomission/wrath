
FURYQTKeyCodeMadnessQt3defined.tcc generated via:

gcc -E -I /usr/local/Trolltech/Qt-4.8.0/include/ -DQT3_SUPPORT=1 /usr/local/Trolltech/Qt-4.8.0/include/QtCore/qnamespace.h | grep Key_ | sed 's/Key_\([^= ]*\)[\t ]*=.*/FURY_QT_KEYCODE(\1)=Qt::Key_\1,/g'

FURYQTKeyCodeMadnessQt3Notdefined.tcc generated via:

gcc -E -I /usr/local/Trolltech/Qt-4.8.0/include/ /usr/local/Trolltech/Qt-4.8.0/include/QtCore/qnamespace.h | grep Key_ | sed 's/Key_\([^= ]*\)[\t ]*=.*/FURY_QT_KEYCODE(\1)=Qt::Key_\1,/g'


command generated by Petri Latvala less than 3 minute wizardry
