
import pandas as pd
import numpy as py
import seaborn as sb
import matplotlib.pyplot as plt

df = pd.read_csv("heatmap.csv")
x_axis_labels=[0,1,2,3,4,5]
y_axis_labels=[0,1,2,3,4,5,6]
heat_map=sb.heatmap(df,xticklabels=x_axis_labels,yticklabels=y_axis_labels)
plt.xlabel("Goals Scored by Arsenal")
plt.ylabel("Goals Scored by Liverpool")
plt.show()
