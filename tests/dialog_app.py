import sys
from PyQt5.QtWidgets import QDialog, QApplication
from dialog import MyDialog
from PyQt5 import QtWidgets
class MainWindow(QtWidgets.QMainWindow):
    MaxRecentFiles = 5
    windowList = []

    def __init__(self):
        app = QApplication(sys.argv)
        super(MainWindow, self).__init__()
        self.show()
        w = AppWindow()
        w.show()

        sys.exit(app.exec_())



class AppWindow(QDialog):
    def __init__(self):
        super().__init__()
        self.ui = MyDialog()
        self.ui.setupUi(self)
        self.show()

# app = QApplication(sys.argv)
w = MainWindow()
# w.show()
# sys.exit(app.exec_())