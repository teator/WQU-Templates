# -*- coding: utf-8 -*-
"""gw1_WQU_MLiF_GroupWork-sub1.ipynb

Original file is located at
    https://colab.research.google.com/drive/1Sp5O

---   ---   ---   ---   ---   ---   ---

# WorldQuant University  
##  (19/11) MScFE 650 Machine Learning in Finance (C18-S4) 
## Group work Assignment  \ :: \  Timezone Group 2-A  \ :: \ Submission 1

Tea Toradze 

November 2019 

---   ---   ---   ---   ---   ---   ---
"""

# Load packages
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import plotly.graph_objects as go

# %matplotlib inline
plt.rcParams['figure.figsize'] = [9, 5]



"""**Task 1. 
Create time bars.**
"""

# Read the data
time_bars = pd.read_csv('time_bars.csv')
time_bars.index = pd.to_datetime(time_bars.index)

# Show example
dollar_bars.head()



"""**Task 2. 
Plot the time bars.**
"""

# Plotting time bars
fig = go.Figure(data=go.Ohlc(x=time_bars['date'],
                    open=time_bars['open'],
                    high=time_bars['high'],
                    low=time_bars['low'],
                    close=time_bars['close']))
fig.update_layout(title = 'Time Bars')
fig.show()



"""**Task 3. 
Compute the serial correlation**
"""

