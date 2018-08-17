/********************************************************************************
** Form generated from reading UI file 'main_window.ui'
**
** Created by: Qt User Interface Compiler version 5.9.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAIN_WINDOW_H
#define UI_MAIN_WINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDockWidget>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QTreeWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionOpen_Image;
    QAction *actionQuit;
    QAction *actionUndo;
    QAction *actionRedo;
    QAction *actionClear;
    QAction *actionSave;
    QAction *actionSave_config_file;
    QAction *actionOpen_config_file;
    QAction *actionOpenDir;
    QAction *actionAbout;
    QAction *actionOpen_jsq;
    QWidget *centralwidget;
    QGridLayout *gridLayout_2;
    QTabWidget *tabWidget;
    QWidget *tab;
    QWidget *tab_2;
    QMenuBar *menubar;
    QMenu *menuFile;
    QMenu *menuEdit;
    QMenu *menuTool;
    QMenu *menuHelp;
    QStatusBar *statusbar;
    QDockWidget *dock_label;
    QWidget *dockWidgetContents;
    QVBoxLayout *verticalLayout_2;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLabel *label_2;
    QDoubleSpinBox *spinbox_alpha;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label;
    QDoubleSpinBox *spinbox_scale;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label_3;
    QSpinBox *spinbox_pen_size;
    QListWidget *list_label;
    QCheckBox *checkbox_border_ws;
    QCheckBox *checkbox_manuel_mask;
    QCheckBox *checkbox_watershed_mask;
    QPushButton *button_watershed;
    QDockWidget *dockWidget_3;
    QWidget *dockWidgetContents_3;
    QVBoxLayout *verticalLayout_3;
    QTreeWidget *tree_widget_img;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(4095, 4095);
        MainWindow->setToolButtonStyle(Qt::ToolButtonIconOnly);
        MainWindow->setAnimated(false);
        MainWindow->setDocumentMode(true);
        MainWindow->setDockNestingEnabled(false);
        actionOpen_Image = new QAction(MainWindow);
        actionOpen_Image->setObjectName(QStringLiteral("actionOpen_Image"));
        actionQuit = new QAction(MainWindow);
        actionQuit->setObjectName(QStringLiteral("actionQuit"));
        actionUndo = new QAction(MainWindow);
        actionUndo->setObjectName(QStringLiteral("actionUndo"));
        actionRedo = new QAction(MainWindow);
        actionRedo->setObjectName(QStringLiteral("actionRedo"));
        actionClear = new QAction(MainWindow);
        actionClear->setObjectName(QStringLiteral("actionClear"));
        actionSave = new QAction(MainWindow);
        actionSave->setObjectName(QStringLiteral("actionSave"));
        actionSave_config_file = new QAction(MainWindow);
        actionSave_config_file->setObjectName(QStringLiteral("actionSave_config_file"));
        actionOpen_config_file = new QAction(MainWindow);
        actionOpen_config_file->setObjectName(QStringLiteral("actionOpen_config_file"));
        actionOpenDir = new QAction(MainWindow);
        actionOpenDir->setObjectName(QStringLiteral("actionOpenDir"));
        actionAbout = new QAction(MainWindow);
        actionAbout->setObjectName(QStringLiteral("actionAbout"));
        actionOpen_jsq = new QAction(MainWindow);
        actionOpen_jsq->setObjectName(QStringLiteral("actionOpen_jsq"));
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        gridLayout_2 = new QGridLayout(centralwidget);
        gridLayout_2->setSpacing(2);
        gridLayout_2->setObjectName(QStringLiteral("gridLayout_2"));
        gridLayout_2->setContentsMargins(2, 2, 2, 2);
        tabWidget = new QTabWidget(centralwidget);
        tabWidget->setObjectName(QStringLiteral("tabWidget"));
        tabWidget->setTabShape(QTabWidget::Triangular);
        tabWidget->setElideMode(Qt::ElideLeft);
        tabWidget->setUsesScrollButtons(false);
        tabWidget->setDocumentMode(false);
        tabWidget->setTabsClosable(true);
        tabWidget->setMovable(true);
        tab = new QWidget();
        tab->setObjectName(QStringLiteral("tab"));
        tabWidget->addTab(tab, QString());
        tab_2 = new QWidget();
        tab_2->setObjectName(QStringLiteral("tab_2"));
        tabWidget->addTab(tab_2, QString());

        gridLayout_2->addWidget(tabWidget, 0, 0, 1, 1);

        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 4095, 25));
        menuFile = new QMenu(menubar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        menuEdit = new QMenu(menubar);
        menuEdit->setObjectName(QStringLiteral("menuEdit"));
        menuTool = new QMenu(menubar);
        menuTool->setObjectName(QStringLiteral("menuTool"));
        menuHelp = new QMenu(menubar);
        menuHelp->setObjectName(QStringLiteral("menuHelp"));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        MainWindow->setStatusBar(statusbar);
        dock_label = new QDockWidget(MainWindow);
        dock_label->setObjectName(QStringLiteral("dock_label"));
        dock_label->setFeatures(QDockWidget::DockWidgetFloatable|QDockWidget::DockWidgetMovable);
        dockWidgetContents = new QWidget();
        dockWidgetContents->setObjectName(QStringLiteral("dockWidgetContents"));
        verticalLayout_2 = new QVBoxLayout(dockWidgetContents);
        verticalLayout_2->setSpacing(2);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout_2->setContentsMargins(2, 2, 2, 2);
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        label_2 = new QLabel(dockWidgetContents);
        label_2->setObjectName(QStringLiteral("label_2"));

        horizontalLayout->addWidget(label_2);

        spinbox_alpha = new QDoubleSpinBox(dockWidgetContents);
        spinbox_alpha->setObjectName(QStringLiteral("spinbox_alpha"));
        spinbox_alpha->setMaximum(1);
        spinbox_alpha->setSingleStep(0.01);
        spinbox_alpha->setValue(0.4);

        horizontalLayout->addWidget(spinbox_alpha);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        label = new QLabel(dockWidgetContents);
        label->setObjectName(QStringLiteral("label"));

        horizontalLayout_2->addWidget(label);

        spinbox_scale = new QDoubleSpinBox(dockWidgetContents);
        spinbox_scale->setObjectName(QStringLiteral("spinbox_scale"));
        spinbox_scale->setMinimum(0.5);
        spinbox_scale->setMaximum(8);
        spinbox_scale->setSingleStep(0.5);
        spinbox_scale->setValue(1);

        horizontalLayout_2->addWidget(spinbox_scale);


        verticalLayout->addLayout(horizontalLayout_2);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        label_3 = new QLabel(dockWidgetContents);
        label_3->setObjectName(QStringLiteral("label_3"));

        horizontalLayout_3->addWidget(label_3);

        spinbox_pen_size = new QSpinBox(dockWidgetContents);
        spinbox_pen_size->setObjectName(QStringLiteral("spinbox_pen_size"));
        spinbox_pen_size->setMinimum(0);
        spinbox_pen_size->setSingleStep(5);
        spinbox_pen_size->setValue(30);

        horizontalLayout_3->addWidget(spinbox_pen_size);


        verticalLayout->addLayout(horizontalLayout_3);

        list_label = new QListWidget(dockWidgetContents);
        list_label->setObjectName(QStringLiteral("list_label"));

        verticalLayout->addWidget(list_label);

        checkbox_border_ws = new QCheckBox(dockWidgetContents);
        checkbox_border_ws->setObjectName(QStringLiteral("checkbox_border_ws"));

        verticalLayout->addWidget(checkbox_border_ws);

        checkbox_manuel_mask = new QCheckBox(dockWidgetContents);
        checkbox_manuel_mask->setObjectName(QStringLiteral("checkbox_manuel_mask"));
        checkbox_manuel_mask->setCheckable(true);
        checkbox_manuel_mask->setChecked(true);

        verticalLayout->addWidget(checkbox_manuel_mask);

        checkbox_watershed_mask = new QCheckBox(dockWidgetContents);
        checkbox_watershed_mask->setObjectName(QStringLiteral("checkbox_watershed_mask"));

        verticalLayout->addWidget(checkbox_watershed_mask);

        button_watershed = new QPushButton(dockWidgetContents);
        button_watershed->setObjectName(QStringLiteral("button_watershed"));

        verticalLayout->addWidget(button_watershed);


        verticalLayout_2->addLayout(verticalLayout);

        dock_label->setWidget(dockWidgetContents);
        MainWindow->addDockWidget(static_cast<Qt::DockWidgetArea>(1), dock_label);
        dockWidget_3 = new QDockWidget(MainWindow);
        dockWidget_3->setObjectName(QStringLiteral("dockWidget_3"));
        dockWidgetContents_3 = new QWidget();
        dockWidgetContents_3->setObjectName(QStringLiteral("dockWidgetContents_3"));
        verticalLayout_3 = new QVBoxLayout(dockWidgetContents_3);
        verticalLayout_3->setSpacing(2);
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        verticalLayout_3->setContentsMargins(2, 2, 2, 2);
        tree_widget_img = new QTreeWidget(dockWidgetContents_3);
        QTreeWidgetItem *__qtreewidgetitem = new QTreeWidgetItem();
        __qtreewidgetitem->setText(0, QStringLiteral("1"));
        tree_widget_img->setHeaderItem(__qtreewidgetitem);
        tree_widget_img->setObjectName(QStringLiteral("tree_widget_img"));

        verticalLayout_3->addWidget(tree_widget_img);

        dockWidget_3->setWidget(dockWidgetContents_3);
        MainWindow->addDockWidget(static_cast<Qt::DockWidgetArea>(2), dockWidget_3);

        menubar->addAction(menuFile->menuAction());
        menubar->addAction(menuEdit->menuAction());
        menubar->addAction(menuTool->menuAction());
        menubar->addAction(menuHelp->menuAction());
        menuFile->addAction(actionOpenDir);
        menuFile->addSeparator();
        menuFile->addAction(actionQuit);
        menuTool->addAction(actionOpen_config_file);
        menuTool->addAction(actionSave_config_file);
        menuTool->addAction(actionClear);
        menuHelp->addAction(actionAbout);

        retranslateUi(MainWindow);
        QObject::connect(actionQuit, SIGNAL(triggered()), MainWindow, SLOT(close()));

        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "\346\240\207\346\263\250\345\267\245\345\205\267", Q_NULLPTR));
        actionOpen_Image->setText(QApplication::translate("MainWindow", "Open image", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionOpen_Image->setShortcut(QApplication::translate("MainWindow", "Ctrl+O", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionQuit->setText(QApplication::translate("MainWindow", "Quit", Q_NULLPTR));
        actionUndo->setText(QApplication::translate("MainWindow", "Undo", Q_NULLPTR));
        actionRedo->setText(QApplication::translate("MainWindow", "Redo", Q_NULLPTR));
        actionClear->setText(QApplication::translate("MainWindow", "Clear mask", Q_NULLPTR));
        actionSave->setText(QApplication::translate("MainWindow", "Save mask", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionSave->setShortcut(QApplication::translate("MainWindow", "Ctrl+S", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionSave_config_file->setText(QApplication::translate("MainWindow", "Save config file", Q_NULLPTR));
        actionOpen_config_file->setText(QApplication::translate("MainWindow", "Open config file", Q_NULLPTR));
        actionOpenDir->setText(QApplication::translate("MainWindow", "Open directory", Q_NULLPTR));
        actionAbout->setText(QApplication::translate("MainWindow", "About", Q_NULLPTR));
        actionOpen_jsq->setText(QApplication::translate("MainWindow", "Open JSQ", Q_NULLPTR));
        tabWidget->setTabText(tabWidget->indexOf(tab), QApplication::translate("MainWindow", "Tab 1", Q_NULLPTR));
        tabWidget->setTabText(tabWidget->indexOf(tab_2), QApplication::translate("MainWindow", "Tab 2", Q_NULLPTR));
        menuFile->setTitle(QApplication::translate("MainWindow", "File", Q_NULLPTR));
        menuEdit->setTitle(QApplication::translate("MainWindow", "Edit", Q_NULLPTR));
        menuTool->setTitle(QApplication::translate("MainWindow", "Tool", Q_NULLPTR));
        menuHelp->setTitle(QApplication::translate("MainWindow", "Help", Q_NULLPTR));
        label_2->setText(QApplication::translate("MainWindow", "Alpha Mask :", Q_NULLPTR));
        label->setText(QApplication::translate("MainWindow", "Resize factor : ", Q_NULLPTR));
        label_3->setText(QApplication::translate("MainWindow", "Circle size :", Q_NULLPTR));
        checkbox_border_ws->setText(QApplication::translate("MainWindow", "keep border provide by the watershed", Q_NULLPTR));
        checkbox_manuel_mask->setText(QApplication::translate("MainWindow", "Manuel Mask", Q_NULLPTR));
        checkbox_watershed_mask->setText(QApplication::translate("MainWindow", "Watershed Mask", Q_NULLPTR));
        button_watershed->setText(QApplication::translate("MainWindow", "Watershed", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAIN_WINDOW_H
