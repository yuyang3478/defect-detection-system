from PyQt5.QtWidgets import QApplication
from PyQt5.QtWebEngineWidgets import QWebEngineView
from PyQt5.QtCore import QUrl
import sys
if sys.platform.startswith('linux') :
    import ctypes
    ctypes.CDLL("libGL.so.1", mode=ctypes.RTLD_GLOBAL)
app = QApplication([])
view = QWebEngineView()
view.load(QUrl("http://www.baidu.com"))
view.show()
app.exec_()