# -*- coding: utf-8 -*-
"""
Created on Sun Sep 11 23:56:21 2016

@author: REDDY
"""

# -*- coding: utf-8 -*-
"""
Created on Fri Apr 22 17:41:52 2016

@author: gtec
"""
## .........................................................
## ........... MOTOR IMAGERY BRAIN COMPUTER INTERFACE ......
## ............... Motor Imaginary Training ................
## .........................................................

# ==========================================================
# |1| TRAINNG PARADIGM DESCRIPTION
# ==========================================================
#
# MI Training PARADIGM
# One session = 4 runs
# One Run = 40 trials
# One run = 40 trials
#           20 trials for left motor imaginary movement
#           20 trials for right motor imaginary movement
# a)  trigger 1 (Fixation Cross)
# b)  warning signal ( win sound Beep)        
# c)  trigger 2 --> cue onset
# d)  trigger 3 --> left cue
#               --> right cue
# e)  mental task performance (Based on Left and right arrow)
# f)  break time ( random break ( between .5 to 2.5 second))

# --- 160 trials in total and 80 trials per class
# --- 30 trials for training and 30 trials for testing


# ==========================================================
# |2| MODULES IMPORTING
# ==========================================================
# 2.1 PythonXY modules
#from __future__ import division
import datetime
import pygtk
pygtk.require('2.0')
import sys
import ctypes
import time
from serial import win32
import serial
#import serial
import gtk
import gobject
import threading
import multiprocessing
import time
import winsound

#import serialwin32 as win32
import numpy as np
import random as rd
#import scipy as sp
#from scipy import io
#import arduinotopython as dataread
# classes for PythonXY
from Constructors_gui import Image, Label
# ==========================================================
# |3| GLOBAL CONSTANT DECLARATION
# ==========================================================
#
# 3.1 MI Training Design
Fs = 256
experiment = 'interrupted'
# --- number of runs per session
num_runs = 1
# --- number of left mov trials
left_tr = 1
# --- number of right mov trials
right_tr = 1
# --- number of recorded channels
#recorded_ch = 2

orange = '#FFFFFF'
light_orange = '#FFFFFF'
EventData = 0;
# --- beep (200 ms/44.1kHz/1kbps)
beep = 'Sounds\\Cue.wav'

#Serial Port Settings
SERIAL_PORT1 = 'COM19' #c3
SERIAL_PORT2 = 'COM28' #c4
#ser = 0
#win32n.Serial.set_buffer_size(32768)
#ser1 = serial.Serial(SERIAL_PORT1,19200, timeout=0)
#ser2 = serial.Serial(SERIAL_PORT2,19200, timeout=0)
#ser.flushInput()
#ser.flushOutput()
#Open a File to store data
#set_buffer_size(32768)
outputFile1 = open("sensorLog_VittalaT04I_c3_01_07_2016.csv", "a")
outputFile2 = open("sensorLog_vittalaT04I_c4_01_07_2016.csv", "a")
outputFile3 = open("sensorLog_vittalaT04I_Events_01_07_2016.csv", "a")
## ==========================================================
## |4| CLASS DECLARATION - BCI Motor Imaginary Training
## ==========================================================
class MITraining(threading.Thread):
    'Class to control motor imaginary movements training session'

    def __init__(self):
        'Interface Creation'

        threading.Thread.__init__(self)
        # (1) WINDOW 
        ## -- window creation
        self.window = gtk.Window(gtk.WINDOW_TOPLEVEL)
        self.window.set_title("RAMAN RESEARCH INSTITUTE- MOTOR IMAGERY BCI")
        background = gtk.gdk.color_parse('white')
        self.window.modify_bg(gtk.STATE_NORMAL, background)
        ## -- window events connection
        self.window.connect('delete_event', self.delete_event)
        self.window.connect('destroy', self.destroy)
        self.window.show()

        # (2) TABLE - Widget container
        table = gtk.Table(5, 3, False)
        table.show()
        self.window.add(table)

        # (3) PRESENTATION
        # --- Title
        self.Title = []
        msg = '    BRAIN  COMPUTER  INTERFACE \n    Motor Imaginary Movements Training\n'
        self.Title.append(Label(msg, 'Tahoma 25', '#466289', 0, 0.5))
        #self.Title.append(Label(msg, 'Tahoma 20', 0, 0.5))
        table.attach(self.Title[0], 0, 2, 0, 2)
        self.Title.append(Image('Images\\startTraining.png'))
        # --- Instructions
        self.Instructions = []
        self.Instructions.append(Label(' 1.- Trial Organization\n', 'Tahoma 18', 'black', 0, 0.5))
        table.attach(self.Instructions[0], 0, 3, 2, 3)
        self.Instructions.append(Image('Images\\Instructions1.png'))
        table.attach(self.Instructions[1], 0, 3, 3, 4)
        self.Instructions.append(Label('\n 2.- Instructions', 'Tahoma 18', 'black', 0, 0.5))
        table.attach(self.Instructions[2], 0, 3, 4, 5)
        self.Instructions.append(Label('FIXATION CROSS', 'Tahoma 18', 'green', 0.5, 0.5))
        table.attach(self.Instructions[3], 0, 1, 5, 6)
        self.Instructions.append(Label('BEEP- WARNING', 'Tahoma 18', 'green', 0.5, 0.5))
        table.attach(self.Instructions[4], 0, 1, 6, 7)
        self.Instructions.append(Label('ACTUAL MOVEMENT/ IMAGINATION', 'Tahoma 18', 'green', 0.5, 0.5))
        table.attach(self.Instructions[5], 0, 1, 7, 8)
        self.Instructions.append(Image('Images\\IMG-20160329-WA0001.jpg'))
        table.attach(self.Instructions[6], 1, 2, 5, 6)
        self.Instructions.append(Image('Images\\Picture3.jpg'))
        table.attach(self.Instructions[7], 1, 2, 6, 7)
        self.Instructions.append(Image('Images\\IMG-20160329-WA0000.jpg'))
        table.attach(self.Instructions[8], 1, 2, 7, 8)
        
        msg = 'Keep Cool, just Foucs at the center of Fixation Cross'
        self.Instructions.append(Label(msg, 'Tahoma 18', 'black', 0, 0.5))
        table.attach(self.Instructions[9], 2, 3, 5, 6)
        msg = 'Get ready to perform a mental task according to the following cue.'
        self.Instructions.append(Label(msg, 'Tahoma 18', 'black', 0, 0.5))
        table.attach(self.Instructions[10], 2, 3, 6, 7)
        msg = 'Imagine the showed cue Movement.'
        self.Instructions.append(Label(msg, 'Tahoma 18', 'black', 0, 0.5))
        table.attach(self.Instructions[11], 2, 3, 7, 8)

#       (4) CUE Images
        self.mental_task = [Image('Images\\FixationCross.png'), Image('Images\\stop.gif'), \
                            Image('Images\\Left.png'), Image('Images\\Right.png'), \
                            Image('Image\\IAF.png')]                   
        ## -- event box
        self.event_box = gtk.EventBox()
        STYLE = self.event_box.get_style().copy()
        STYLE.bg[gtk.STATE_NORMAL]= self.event_box.get_colormap().alloc_color('#FFFFFF')
        self.event_box.set_style(STYLE)
        self.event_box.add(self.Title[1])
        self.event_box.connect('button_press_event', self.Control)
        self.event_box.show()
        table.attach(self.event_box, 2, 3, 0, 2)        

        # (5) Control Signals
        ## -- on/off system signal
        self.ON = True
        ## -- one run performance signal
        self.OneRun = False
        ## -- number of current runs
        self.runs = 0

    #CLOSING GUI
    def delete_event(self, widget, event, data = None):
        self.OneRun = False
        gtk.main_quit()
        return False

    def destroy(self,widget,data = None):
        self.OneRun = False
        gtk.main_quit()

    #Stimuli Control
    def Control(self, widget, event):
        'Stimulation Control'
        # (1) ON Stimuli
        if self.ON == True:
            if self.runs == 0:
                self.ON = False
                self.OneRun = True
                self.current = self.Title[1]
                for widget in self.Title: widget.hide()
                for widget in self.Instructions: widget.hide()
                self.window.fullscreen()
            else:
                self.ON = False            

        # (2) OFF Stimuli
        else:
            # -- break time setup
            self.window.unfullscreen()
            self.OneRun = False

          
    #One Run Control
    def run(self):
        global EventData
        global SerialThread
        global ser1
        global ser2
        global outputFile1
        global outputFile2
        global outputFile3
        'One Session Control'
        #eegdatalog.logSensors()
        while self.runs < num_runs:
            while self.ON: None
            # -- start saving continuos eeg data
            AI1.start()
            AI2.start()
            #time.sleep(1.000)
            #Run Setup
            trials = [2, 3] * (left_tr + right_tr)
            #print trials
            # (2) Run Performance
            #AI.start()
            while all([self.OneRun, trials != []]):
                #ser.reset_input_buffer()
                #ser.reset_output_buffer()
                tr = rd.choice(trials)
                EventData = tr
                outputFile3.write((str(EventData) )+ "\n")
                
                #AI.start()
                trials.remove(tr)
                #warning --> 2 sec
                gobject.idle_add(self.Warning)
                time.sleep(2.000)
                # *beep --> 200ms
                winsound.PlaySound(beep, winsound.SND_FILENAME)
                time.sleep(1.000)
                # cue onset 
#                tr = rd.choice(trials)
#                EventData = tr
#                #AI.start()
#                trials.remove(tr)
                gobject.idle_add(self.CueOnset, tr)
                # MI Performance                
                time.sleep(1.250)
                # break --> Random break from 0.5 sec up to 2.5 sec
                gobject.idle_add(self.MIperformance, tr)
                time.sleep(3.750)
                gobject.idle_add(self.Break, tr)
                #time.sleep(rd.uniform(0.500, 1))
                #ser = serial.Serial(SERIAL_PORT, 115200, timeout=0)
                #ser.reset_input_buffer()
                #ser.reset_output_buffer()
#                ser.flushInput()
#                ser.flushOutput()
                #time.sleep(0.25)
                #self.SerialThread.ser.close()
                #AI.stop()
                #ser.flush()
                #time.sleep(0.5)
                #ser.flushOutput()
                self.current = self.mental_task[1]
            # (3) Run End (break)
            if not(all([self.OneRun, trials == []])): break
            #SerialThread.ser.close()            
            #self.SerialThread.ser.close()
            #AI1.daemon = False
            #AI2.daemon = False
            #ser1.close()
            #ser2.close()
            AI1.stop()
            AI2.stop()
            #AI1.daemon = False
            #AI2.daemon = False
            outputFile1.close()
            outputFile2.close()
            outputFile3.close()
            #ser.close()
            #AI.quit = True
            # -- stop saving continuos eeg data
            self.event_box.remove(self.current)
            self.current = Image('Images\\break.png')
            self.event_box.add(self.current)
            self.runs += 1
            self.ON = True
        if not(all([self.OneRun, trials == []])):
            return
            #AI1.stop()
            #AI2.stop()
        self.event_box.remove(self.current)
        self.event_box.add(Image('Images\\Gift.jpg'))
        msg = 'Dear Subject:\n\n\
               Thank you very much!'
        self.Title[0].set_text(msg)
        self.Title[0].show()
        self.ON = False
        global experiment
        experiment = 'concluded'

    #Warning: display of fixation cross
    def Warning(self):
        'Warning Control'
        
        self.event_box.remove(self.current)
        self.event_box.add(self.mental_task[0])
        STYLE = self.event_box.get_style().copy()
        STYLE.bg[gtk.STATE_NORMAL]= self.event_box.get_colormap().alloc_color(light_orange)
        self.event_box.set_style(STYLE)

    #Cue Onset
    def CueOnset(self, tr):
        'Training Cue'
        
        self.event_box.remove(self.mental_task[0])
        self.event_box.add(self.mental_task[tr])
        STYLE = self.event_box.get_style().copy()
        STYLE.bg[gtk.STATE_NORMAL]= self.event_box.get_colormap().alloc_color(orange)
        self.event_box.set_style(STYLE)
        
    # Motor Imagery: Mental task performance   
    def MIperformance(self, tr):
        'Motor Imaginary Performance'
        
        self.event_box.remove(self.mental_task[tr])
        self.event_box.add(self.mental_task[0])
        STYLE = self.event_box.get_style().copy()
        STYLE.bg[gtk.STATE_NORMAL]= self.event_box.get_colormap().alloc_color('white')
        self.event_box.set_style(STYLE)        
        
    #Break
    def Break(self, tr):
        'Random Break'
        
        self.event_box.remove(self.mental_task[0])
        self.event_box.add(self.mental_task[1])
        STYLE = self.event_box.get_style().copy()
        STYLE.bg[gtk.STATE_NORMAL]= self.event_box.get_colormap().alloc_color('white')
        self.event_box.set_style(STYLE)

#============================================================
# /5/ Serial Communication using python Threads
#============================================================
class SerialThread1(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
    def run (self):
        global EventData
        global outputFile1
        global outputFile3
#        global ser1
#        ser1.setDTR(False)
#        time.sleep(.2)
#        ser1.setDTR(True)
#        #ser1.set_buffer_size(rx_size=32768) 
#        ser1.reset_input_buffer()
#        #ser1.reset_output_buffer()
        #ser.set_buffer_size(self, rx_size=32768, tx_size=None)
        #ser.set_buffer_size(rx_size=32768)        
        #ser = serial.Serial(SERIAL_PORT, 9600, timeout=0)
        #ser.flushInput()
        #ser.flushOutput()                     
        #timestamp = time.clock()
        while True:
        #while ser.inWaiting()!=0:
            #timestamp = time.clock()
            #buffer= ser.read(32768)
            #data1 = ser1.read()
            data1 = ser1.readline().strip()
            time.sleep(0.008)
            #outputFile.write(data + "\n")
            if data1:
                        #print data
                 #outputFile.write((data +","+str(EventData)) + "\n")
                 outputFile1.write(data1 + "\n")
                 #outputFile3.write((str(EventData) )+ "\n")
                #outputFile.write(data  + "\n")
                #outputFile.write(data + "\n")
    def stop(self):
        self.run = False
    
class SerialThread2(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
    def run (self):
        global EventData
        global outputFile2
        global ser2
#        ser2.setDTR(False)
#        time.sleep(.2)
#        ser2.setDTR(True)
#        #ser2.set_buffer_size(rx_size=32768) 
#        ser2.reset_input_buffer()
        #ser2.reset_output_buffer()
        #ser.set_buffer_size(self, rx_size=32768, tx_size=None)
        #ser1.set_buffer_size(rx_size=32768)        
        #ser = serial.Serial(SERIAL_PORT, 9600, timeout=0)
        #ser.flushInput()
        #ser.flushOutput()                     
        #timestamp = time.clock()
        while True:
        #while ser.inWaiting()!=0:
            #timestamp = time.clock()
            #buffer= ser.read(32768)
            #data2 = ser2.read()
            data2 = ser2.readline().strip()
            time.sleep(0.008)
            #outputFile.write(data + "\n")
            if data2:
                        #print data
                 #outputFile.write((data +","+str(EventData)) + "\n")
                 outputFile2.write(data2 + "\n")
                 #outputFile.write((data +","+str(EventData)) + "\n")
                #outputFile.write(data  + "\n")
                #outputFile.write(data + "\n")
    def stop(self):
        self.run = False
# ==========================================================
# |6| MAIN BODY
# ==========================================================
if __name__ == '__main__':
    # START MI training stimuli control --> threading design
    gobject.threads_init()
    MI = MITraining()
    AI1 = SerialThread1()
    AI1.daemon = True
    AI2 = SerialThread2()
    AI2.daemon = True
    MI.start()
    #GUI control --> main thread
    gtk.main()
    AI1.quit = True
    AI2.quit = True
    MI.quit = True
    