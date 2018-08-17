# -*- coding:utf-8 -*-
from PyQt5.QtWidgets import QMainWindow, QApplication
from ui_main import Ui_MainWindow
from  ui_import_dialog import Ui_Dialog
import sys


class Main(QMainWindow, Ui_MainWindow):
    def __init__(self):
        super(Main, self).__init__()
        self.setupUi(self)
        # ch = Child()
        # ch.OPEN()


class Child(QMainWindow, Ui_Dialog):
    def __init__(self):
        super(Child, self).__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.close)

    def OPEN(self):
        self.show()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    main = Main()

    main.show()
    ch = Child()
    # main.pushButton.clicked.connect(ch.OPEN)
    ch.OPEN()
    sys.exit(app.exec_())