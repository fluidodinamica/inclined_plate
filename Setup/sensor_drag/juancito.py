
import serial,socket,os,glob
import matplotlib.pyplot as plt
#import atexit
import numpy as np
import pandas as pd
import time, threading,sys
#from ipywidgets import interact, interact_manual,interactive,widgets,Layout
colores = (plt.rcParams['axes.prop_cycle'].by_key()['color'])
from serial import Serial
port = '/dev/ttyUSB0'
global running
def lee_arduino(arduino):
    linea = arduino.readline()

    return linea
fileout = 'vel_carro_999_2'
#fileout = 'cero_carro'
arduino = serial.Serial(port, 115200)

original_stdout = sys.stdout # Save a reference to the original standard output

out1 = lee_arduino(arduino)
with open(fileout, 'w') as archivo:
    for i in range(2000):
        
        sys.stdout = archivo # Change the standard output to the file we created.
        time.sleep(0.05)
        out1 = lee_arduino(arduino)
        texto = str(out1.decode('ascii')).strip().split('\r')[0]
        print(texto)
        sys.stdout = original_stdout # Reset the standard output to its original value

arduino.close()
archivo.close()
A = pd.read_csv(fileout,names = ['t','D','L','r'])

print(A)
print(fileout)


