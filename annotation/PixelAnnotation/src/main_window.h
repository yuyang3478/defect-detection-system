/**
 * Image Annotation Tool for image annotations with pixelwise masks
 *
 * Author: Rudra Poudel
 */
#ifndef TestWindow_H
#define TestWindow_H

#include <QMainWindow>
#include <QRectF>
#include <QCloseEvent>
#include <QStringList>
#include <QVector>
#include <QList>
#include <QColor>
#include <QScrollArea>
#include <QAbstractListModel>

#include <qstringlistmodel.h>

#include "ui_main_window.h"
#include "image_canvas.h"
#include "label_widget.h"
#include "labels.h"

class MainWindow : public QMainWindow, public Ui::MainWindow {
    Q_OBJECT

public:
    MainWindow(QWidget *parent = 0, Qt::WindowFlags flags = 0);

private:
	
	void loadConfigLabels();
	ImageCanvas * newImageCanvas();
	int getImageCanvas(QString name, ImageCanvas *ic) ;
    ImageCanvas * getImageCanvas(int index);

public:
	ImageCanvas   *  image_canvas ;
    //std::vector<ImageCanvas*> _image_canvas;
	//QScrollArea   *  scroll_area  ;

	Name2Labels      labels       ;
	Id2Labels        id_labels    ;
	QAction        * save_action  ;
    QAction        * close_tab_action;
	QAction        * undo_action  ;
	QAction        * redo_action  ;
	QString          curr_open_dir;
public:
	QString currentDir() const;
	QString currentFile() const;
	void updateConnect(const ImageCanvas * ic);
    void allDisconnnect(const ImageCanvas * ic);
    void runWatershed(ImageCanvas * ic);
    void setStarAtNameOfTab(bool star);
    void open_anno_images();

public slots:

	void changeLabel(QListWidgetItem*, QListWidgetItem*);
	void changeColor(QListWidgetItem*);
	void saveConfigFile();
	void loadConfigFile();
	void runWatershed();
	void on_tree_widget_img_currentItemChanged(QTreeWidgetItem *, QTreeWidgetItem *);
	void on_actionOpenDir_triggered();
	//void on_actionOpen_jsq_triggered();
	void on_actionAbout_triggered();
	void closeTab(int index);
    void closeCurrentTab();
	void updateConnect(int index);
    void treeWidgetClicked();
};

#endif
