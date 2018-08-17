import PyQt5
from PyQt5 import QtWidgets
from PyQt5.QtCore import QTime, QThread, QEventLoop
from PyQt5.QtWidgets import QApplication, QMainWindow, QMessageBox

from GIF import loadingGif
import TryAccess, icon, Globvar
import sys, ctypes
from loginUI import *


class mywindow(QMainWindow, Ui_MainWindow):
    def Login(self):
        """Login , and try to access server"""
        Username = self.lineEdit.text()
        Password = self.lineEdit_2.text()
        Globvar._Glob.sendUserMessage(Username, Password)
        Access = TryAccess.Access()
        Access.TryAccess(self)
        Access.DealWithAccessResult(self)

    def Register(self):
        reply = QMessageBox.information(self, "Sorry", "此功能暂未开放")

    def __init__(self):
        super(mywindow, self).__init__()

        self.setupUi(self)
        self.pushButton.clicked.connect(self.Login)
        self.pushButton_2.clicked.connect(self.Register)


if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    ctypes.windll.shell32.SetCurrentProcessExplicitAppUserModelID("myappid")
    Globvar._Glob = Globvar.Glob()
    myshow = mywindow()
    myshow.show()
sys.exit(app.exec_())