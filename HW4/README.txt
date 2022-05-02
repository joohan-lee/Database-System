Q1. WEKA
How many terms are in the equation, and why? In other words, discuss the resulting equation. 

> I built a linear regression equation to predict MEDV using a classifier, LinearRegression with the M5 method(attributeSelectionMethod). 
In the equation, there are 12 terms(since I used M5 method). Each term has one weight and one attribute value, for example, '0.0458*ZN' includes weight: 0.0458 and attribute value: ZN.
However, the last term, '36.3411', is just the constant weight(w0).  Each term affects the MEDV(class). A negative value would decrease the MEDV(median home price),
while a positive value would increase the MEDV.


------------------------------------------------------------------------------------------------------------------------------------------------
Q2. KNIME
Linear equation:
-0.8249 * (sex=I) + 0.0577 * (sex=M) -0.4583 * length + 11.0751 * diameter + 10.7615 * height + 8.9754 * whole_weight -19.7869 * shucked_weight
-10.5818 * viscera_weight + 8.7418 * shell_weight + 3.8946

------------------------------------------------------------------------------------------------------------------------------------------------
Q3. RapidMiner
Linear equation:
- 11.933 * length
+ 25.766 * diameter
+ 20.358 * height
+ 2.836

(I attached Q3_1 for data of result and Q3_2 for data-flow)