##install.packages("leaflet")

library("leaflet")

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
m <- addCircleMarkers(m, lng=-118.2816544,lat=34.0262128,label="1_Home_Troy Hall", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2839420,lat=34.0202806,label="2_Doheny Memorial Library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2865578,lat=34.0187499,label="3_Hoose library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2878959,lat=34.0193132,label="4_Helen library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2889269,lat=34.0194939,label="5_Seaver Science Library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2857947,lat=34.0236635,label="6_Wilson dental library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2828839,lat=34.0213079,label="7_Leavey Library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2850909,lat=34.0202175,label="8_Sumway fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2845479,lat=34.0206215,label="9_Prentiss memorial fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2867154,lat=34.0186621,label="10_mudd hall fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2906727,lat=34.0201933,label="11_USC family center fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2863954,lat=34.0234968,label="12_Douglas fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2831913,lat=34.0222672,label="13_Generations fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")


m