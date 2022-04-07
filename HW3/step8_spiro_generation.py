import math


# x(t) = (R+r)*cos((r/R)*t) - a*cos((1+r/R)*t)
# y(t) = (R+r)*sin((r/R)*t) - a*sin((1+r/R)*t)

R, r, a = 8, 1, 4
# SGM123 Point
CenterX = 34.0213021
CenterY = -118.2892954
pi = math.pi
nRev = 16

f = open('step8_spiro.kml', 'w')

f.write('<?xml version="1.0" encoding="UTF-8"?>\n')
f.write('<kml xmlns="http://earth.google.com/kml/2.0">\n')
f.write('<Document>\n')
f.write('<Style id="z1">\n')
f.write('<IconStyle><Icon><href>http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png</href></Icon></IconStyle>\n')
f.write('</Style>\n')
f.write('<Placemark>\n')
f.write('<name>Spiro</name>\n')
f.write('<description>Spiro with center of SGM123</description>\n')
f.write('<styleUrl>#yellowLineGreenPoly</styleUrl>\n')
f.write(
    '<Style><LineStyle><color>ff0000ff</color><width>2</width></LineStyle></Style>\n')
f.write('<LineString>\n')
f.write('<coordinates>\n')

t = 0.0
while t < pi*nRev:
    _x = (R+r)*math.cos((r/R)*t) - a*math.cos((1+r/R)*t)
    _y = (R+r)*math.sin((r/R)*t) - a*math.sin((1+r/R)*t)
    #ctx.lineTo(150+10*x, 150+10*y);
    x = CenterX + 0.0001*_x
    y = CenterY + 0.0001*_y
    f.write(str(y)+','+str(x) + '\n')
    t += 0.01

f.write('</coordinates>\n')
f.write('</LineString> </Placemark>\n')

# If there are two kinds of geometries, I could not convert kml to shapefile.
# So I did set center point as SGM123, but did not draw center point on my kml file.
# f.write('<Placemark>\n')
# f.write('<styleUrl>#z1</styleUrl><Point><coordinates>' +
#         str(CenterY)+','+str(CenterX)+'</coordinates></Point>\n')
# f.write('</Placemark>\n')

f.write('</Document></kml>\n')

f.close()
