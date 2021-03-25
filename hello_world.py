#!/bin/env python3

import sys
import random

from PySide6 import QtCore
from PySide6 import QtWidgets
from PySide6 import QtGui

class MyWidget(QtWidgets.QWidget):
    def __init__(self):
        super().__init__()
        self.hello = ['Hallo Welt', 'Hei Maailma', 'Hola Mundo', 'Hello World']
        self.button = QtWidgets.QPushButton('Click Me!')
        self.text = QtWidgets.QLabel('Hello World',
                                     alignment=QtCore.Qt.AlignCenter)
        self.layout = QtWidgets.QVBoxLayout(self)
        self.layout.addWidget(self.text)
        self.layout.addWidget(self.button)

        self.button.clicked.connect(self.magic)

    @QtCore.Slot()
    def magic(self):
        txt = random.choice(self.hello)
        txt = '{} (index : {})'.format(txt, self.hello.index(txt))
        self.text.setText(txt)

if __name__=='__main__':
    app = QtWidgets.QApplication([])
    widget = MyWidget()
    widget.resize(800, 600)
    widget.show()

    sys.exit(app.exec_())
