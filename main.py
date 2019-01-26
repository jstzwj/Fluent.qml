from PySide2.QtWidgets import QApplication
from PySide2.QtCore import QObject
from PySide2.QtQuick import QQuickView
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QUrl

app = QApplication([])
view = QQuickView()
view.engine().addImportPath("./Modules")
url = QUrl("demo/view.qml")

view.setSource(url)
view.show()
app.exec_()