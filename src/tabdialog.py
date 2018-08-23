#!/usr/bin/env python


#############################################################################
##
## Copyright (C) 2013 Riverbank Computing Limited.
## Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies).
## All rights reserved.
##
## This file is part of the examples of PyQt.
##
## $QT_BEGIN_LICENSE:BSD$
## You may use this file under the terms of the BSD license as follows:
##
## "Redistribution and use in source and binary forms, with or without
## modification, are permitted provided that the following conditions are
## met:
##   * Redistributions of source code must retain the above copyright
##     notice, this list of conditions and the following disclaimer.
##   * Redistributions in binary form must reproduce the above copyright
##     notice, this list of conditions and the following disclaimer in
##     the documentation and/or other materials provided with the
##     distribution.
##   * Neither the name of Nokia Corporation and its Subsidiary(-ies) nor
##     the names of its contributors may be used to endorse or promote
##     products derived from this software without specific prior written
##     permission.
##
## THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
## "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
## LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
## A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
## OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
## SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
## LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
## DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
## THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
## (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
## OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
## $QT_END_LICENSE$
##
#############################################################################


from PyQt5.QtCore import QFileInfo
from PyQt5.QtWidgets import (QApplication, QCheckBox, QDialog,
        QDialogButtonBox, QFrame, QGroupBox, QLabel, QLineEdit, QListWidget,
        QTabWidget, QVBoxLayout, QWidget, QFormLayout,QPushButton)
from PyQt5.QtWidgets import (QApplication, QComboBox, QDialog,
        QDialogButtonBox, QFormLayout, QGridLayout, QGroupBox, QHBoxLayout,QInputDialog,
        QLabel, QLineEdit, QMenu, QMenuBar, QPushButton, QSpinBox, QTextEdit,
        QVBoxLayout)
import os
import configparser

class TabDialog(QDialog):
    def __init__(self, fileName, parent=None):
        super(TabDialog, self).__init__(parent)

        fileInfo = QFileInfo(fileName)

        tabWidget = QTabWidget()
        tabWidget.addTab(GeneralTab(fileInfo), "训练")
        tabWidget.addTab(PermissionsTab(fileInfo), "部署")
        tabWidget.addTab(ApplicationsTab(fileInfo), "转换")

        buttonBox = QDialogButtonBox(QDialogButtonBox.Ok | QDialogButtonBox.Cancel)

        buttonBox.accepted.connect(self.accept)
        buttonBox.rejected.connect(self.reject)

        mainLayout = QVBoxLayout()
        mainLayout.addWidget(tabWidget)
        mainLayout.addWidget(buttonBox)
        self.setLayout(mainLayout)

        self.setWindowTitle("参数设置")


class GeneralTab(QWidget):
    def __init__(self, fileInfo, parent=None):
        super(GeneralTab, self).__init__(parent)
        # self.trainformGroupBox = QGroupBox("train parameters")
        self.config = configparser.ConfigParser()
        self.config.read('config/model.ini')
        layout = QFormLayout()
        training_number_of_steps_label = QLabel("iteration number")
        self.training_number_of_steps_editor = QLineEdit(self.config['train']['training_number_of_steps'])
        train_crop_size_label = QLabel("crop size")
        self.train_crop_size_editor = QLineEdit(self.config['train']['train_crop_size'])
        train_batch_size_label = QLabel("batch size")
        self.train_batch_size_editor = QLineEdit(self.config['train']['train_batch_size'])
        model_variant_label = QLabel("model")
        self.model_variant_editor = QLineEdit(self.config['train']['model_variant'])
        output_stride_label = QLabel("output variant")
        self.output_stride_editor = QLineEdit(self.config['train']['output_stride'])
        log_steps_label = QLabel("log steps")
        self.log_steps_editor = QLineEdit(self.config['train']['log_steps'])
        save_interval_secs_lable = QLabel("save interval secs")
        self.save_interval_secs_editor = QLineEdit(self.config['train']['save_interval_secs'])
        save_summaries_secs_lable = QLabel("save summaries secs")
        self.save_summaries_secs_editor = QLineEdit(self.config['train']['save_summaries_secs'])

        base_learning_rate_label = QLabel("base learning rate")
        self.base_learning_rate_editor = QLineEdit(self.config['train']['base_learning_rate'])

        learning_rate_decay_step_label = QLabel("learning rate decay step")
        self.learning_rate_decay_step_editor = QLineEdit(self.config['train']['learning_rate_decay_step'])

        weight_decay_label = QLabel("weight decay")
        self.weight_decay_editor = QLineEdit(self.config['train']['weight_decay'])
        min_scale_factor_label = QLabel("min scale factor")
        self.min_scale_factor_editor = QLineEdit(self.config['train']['min_scale_factor'])
        max_scale_factor_label = QLabel("max scale factor")
        self.max_scale_factor_editor = QLineEdit(self.config['train']['max_scale_factor'])

        scale_factor_step_size_label = QLabel("scale factor step size")
        self.scale_factor_step_size_editor = QLineEdit(self.config['train']['scale_factor_step_size'])

        layout.addRow(training_number_of_steps_label, self.training_number_of_steps_editor)
        layout.addRow(train_crop_size_label, self.train_crop_size_editor)
        layout.addRow(train_batch_size_label, self.train_batch_size_editor)
        layout.addRow(model_variant_label, self.model_variant_editor)
        layout.addRow(output_stride_label, self.output_stride_editor)
        layout.addRow(log_steps_label, self.log_steps_editor)
        layout.addRow(save_interval_secs_lable, self.save_interval_secs_editor)
        layout.addRow(save_summaries_secs_lable, self.save_summaries_secs_editor)
        layout.addRow(base_learning_rate_label, self.base_learning_rate_editor)
        layout.addRow(learning_rate_decay_step_label, self.learning_rate_decay_step_editor)
        layout.addRow(weight_decay_label, self.weight_decay_editor)
        layout.addRow(min_scale_factor_label, self.min_scale_factor_editor)
        layout.addRow(max_scale_factor_label, self.max_scale_factor_editor)
        layout.addRow(scale_factor_step_size_label, self.scale_factor_step_size_editor)

        # savebutton = QPushButton("save", self)
        # savebutton.setToolTip("保存所有训练参数")
        # savebutton.clicked.connect(self.save_click)
        #
        # clearbutton = QPushButton("stop", self)
        # clearbutton.setToolTip("清空所有参数")
        # clearbutton.clicked.connect(self.stop_click)
        #
        # # trainbutton = QPushButton("start", self)
        # # trainbutton.setToolTip("清空所有参数")
        # # trainbutton.clicked.connect(self.train_click)
        #
        # hbox = QHBoxLayout()
        # hbox.addStretch(1)
        # hbox.addWidget(savebutton)
        #
        # # hbox.addWidget(trainbutton)
        # hbox.addWidget(clearbutton)
        #
        # vbox = QVBoxLayout()
        # vbox.addStretch(1)
        # vbox.addLayout(hbox)

        # layout.addRow(vbox)

        # self.trainformGroupBox.setLayout(layout)
        self.setLayout(layout)

    def stop_click(self):
        # self.trainbash.kill()
        pass
    def save_click(self):
        # self.config = configparser.ConfigParser()
        # self.config.read('config/model.ini')
        # imganno_dir = self.config['train']['imganno_dir']
        self.config.set("train", "training_number_of_steps", self.training_number_of_steps_editor.text())
        self.config.set("train", "train_crop_size", self.train_crop_size_editor.text())
        self.config.set("train", "train_batch_size", self.train_batch_size_editor.text())
        self.config.set("train", "model_variant", self.model_variant_editor.text())
        self.config.set("train", "output_stride", self.output_stride_editor.text())
        self.config.set("train", "log_steps", self.log_steps_editor.text())
        self.config.set("train", "save_interval_secs", self.save_interval_secs_editor.text())
        self.config.set("train", "save_summaries_secs", self.save_summaries_secs_editor.text())
        self.config.set("train", "base_learning_rate", self.base_learning_rate_editor.text())
        self.config.set("train", "learning_rate_decay_step", self.learning_rate_decay_step_editor.text())
        self.config.set("train", "weight_decay", self.weight_decay_editor.text())
        self.config.set("train", "min_scale_factor", self.min_scale_factor_editor.text())
        self.config.set("train", "max_scale_factor", self.max_scale_factor_editor.text())
        self.config.set("train", "scale_factor_step_size", self.scale_factor_step_size_editor.text())
        self.config.write(open("config/model.ini", "w"))
        # print(self.training_number_of_steps_editor.text())
        print("parameters saved!")

class PermissionsTab(QWidget):
    def __init__(self, fileInfo, parent=None):
        super(PermissionsTab, self).__init__(parent)
        self.config = configparser.ConfigParser()
        self.config.read('config/model.ini')

        inferlayout = QFormLayout()

        vis_crop_sizeLabel = QLabel("vis crop size")
        self.vis_crop_sizeEditor = QLineEdit(self.config['inference']['vis_crop_size'])

        vis_logdirLabel = QLabel("vis logdir")
        self.vis_logdirEditor = QLineEdit(self.config['inference']['vis_logdir'])

        inferlayout.addRow(vis_crop_sizeLabel, self.vis_crop_sizeEditor)
        inferlayout.addRow(vis_logdirLabel, self.vis_logdirEditor)

        # isavebutton = QPushButton("save", self)
        # isavebutton.setToolTip("保存")
        # isavebutton.clicked.connect(self.infer_save_click)
        #
        # iclearbutton = QPushButton("stop", self)
        # iclearbutton.setToolTip("终止")
        # iclearbutton.clicked.connect(self.infer_stop_click)
        #
        # # itrainbutton = QPushButton("start", self)
        # # itrainbutton.setToolTip("转换")
        # # itrainbutton.clicked.connect(self.infer_click)
        #
        # ihbox = QHBoxLayout()
        # ihbox.addStretch(1)
        # ihbox.addWidget(isavebutton)
        # # hbox.addWidget(clearbutton)
        # # ihbox.addWidget(itrainbutton)
        # ihbox.addWidget(iclearbutton)
        #
        # ivbox = QVBoxLayout()
        # # ivbox.addStretch(1)
        # ivbox.addLayout(ihbox)
        #
        # # layout.addRow(rvbox)
        # inferlayout.addRow(ivbox)
        self.setLayout(inferlayout)

    def infer_save_click(self):
        self.config.set("inference", "vis_crop_size", self.vis_crop_sizeEditor.text())
        self.config.set("inference", "vis_logdir", self.vis_logdirEditor.text())
        self.config.write(open("config/model.ini", "w"))
        print("inference parameters saved!")

    def infer_stop_click(self):
        # self.inferencebash.kill()
        pass

class ApplicationsTab(QWidget):
    def __init__(self, fileInfo, parent=None):
        super(ApplicationsTab, self).__init__(parent)
        self.config = configparser.ConfigParser()
        self.config.read('config/model.ini')
        recordlayout = QFormLayout()
        recordImgFolderLabel = QLabel("image folder：")
        self.recordImgFolderEditor = QLineEdit(os.path.join(self.config['convert']['imganno_dir'], "JPEGImages"))
        recordSegmentationFolderLabel = QLabel("semantic segmentation folder：")
        recordSegmentationFolderEditor = QLineEdit(
            os.path.join(self.config['convert']['imganno_dir'], "SegmentationClassRaw"))
        recordListFolderLabel = QLabel("list folder")
        recordListFolderEditor = QLineEdit(
            os.path.join(self.config['convert']['imganno_dir'], "ImageSets/Segmentation"))
        recordOutputFolderLabel = QLabel("output dir")
        self.recordOutputFolderEditor = QLineEdit(self.config['convert']['tf_record_dir'])

        recordlayout.addRow(recordImgFolderLabel, self.recordImgFolderEditor)
        recordlayout.addRow(recordSegmentationFolderLabel, recordSegmentationFolderEditor)
        recordlayout.addRow(recordListFolderLabel, recordListFolderEditor)
        recordlayout.addRow(recordOutputFolderLabel, self.recordOutputFolderEditor)

        # rsavebutton = QPushButton("保存", self)
        # rsavebutton.setToolTip("保存")
        # rsavebutton.clicked.connect(self.tfrecord_save_click)
        #
        # rclearbutton = QPushButton("清空", self)
        # rclearbutton.setToolTip("清空")
        # rclearbutton.clicked.connect(self.tfrecord_stop_click)
        #
        # # rtrainbutton = QPushButton("转换", self)
        # # rtrainbutton.setToolTip("转换")
        # # rtrainbutton.clicked.connect(self.tfrecord_convert_click)
        #
        # rhbox = QHBoxLayout()
        # rhbox.addStretch(1)
        # rhbox.addWidget(rsavebutton)
        # # hbox.addWidget(clearbutton)
        # # rhbox.addWidget(rtrainbutton)
        # rhbox.addWidget(rclearbutton)
        #
        # rvbox = QVBoxLayout()
        # rvbox.addStretch(1)
        # rvbox.addLayout(rhbox)
        #
        # # layout.addRow(rvbox)
        # recordlayout.addRow(rvbox)
        # self.recordFormGroupBox.setLayout(recordlayout)
        self.setLayout(recordlayout)

    def tfrecord_save_click(self):
        # print( self.recordOutputFolderEditor.text())
        imgannodir = os.path.split(self.recordImgFolderEditor.text())[0]
        self.config.set("convert", "imganno_dir", imgannodir)
        self.config.set("convert", "tf_record_dir", self.recordOutputFolderEditor.text())
        self.config.write(open("config/model.ini", "w"))
        # print(self.training_number_of_steps_editor.text())
        print("convert parameters saved!")

    def tfrecord_stop_click(self):
        pass
        # self.convertbash.kill()

if __name__ == '__main__':

    import sys

    app = QApplication(sys.argv)

    if len(sys.argv) >= 2:
        fileName = sys.argv[1]
    else:
        fileName = "."

    tabdialog = TabDialog(fileName)
    tabdialog.show()
    sys.exit(app.exec_())
