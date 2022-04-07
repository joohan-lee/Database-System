-- Create MyUSC table --
CREATE TABLE MyUSC(label VARCHAR(1000), coords GEOMETRY);

-- Insert my 13 location coordinates --
INSERT INTO MyUSC VALUES
('1_Home_Troy Hall',ST_GeomFromText('POINT(-118.2816544 34.0262128)')),
('2_Doheny Memorial Library',ST_GeomFromText('POINT(-118.2839420 34.0202806)')),
('3_Hoose Library',ST_GeomFromText('POINT(-118.2865578 34.0187499)')),
('4_Helen Library',ST_GeomFromText('POINT(-118.2878959 34.0193132)')),
('5_Seaver Science Library',ST_GeomFromText('POINT(-118.2889269 34.0194939)')),
('6_Wilson dental library',ST_GeomFromText('POINT(-118.2857947 34.0236635)')),
('7_Leavey Library',ST_GeomFromText('POINT(-118.2828839 34.0213079)')),
('8_Sumway fountain',ST_GeomFromText('POINT(-118.2850909 34.0202175)')),
('9_Prentiss memorial fountain',ST_GeomFromText('POINT(-118.2845479 34.0206215)')),
('10_Mudd hall fountain',ST_GeomFromText('POINT(-118.2867154 34.0186621)')),
('11_USC Family center fountain',ST_GeomFromText('POINT(-118.2906727 34.0201933)')),
('12_Douglas fountain',ST_GeomFromText('POINT(-118.2863954 34.0234968)')),
('13_Generations fountain',ST_GeomFromText('POINT(-118.2831913 34.0222672)'));

-- Compute convex hull --
CREATE TABLE ConvexHull AS (SELECT ST_ConvexHull(ST_Multi(ST_Collect(coords))) Hull from MyUSC);
SELECT ST_AsText(Hull) Hull FROM ConvexHull;

-- Find the nearest neighbor of home --
SELECT b.label, ST_AsText(a.coords) as Home, ST_AsText(b.coords) as USC
FROM MyUSC a, MyUSC b WHERE a.label = '1_Home_Troy Hall' and b.label <> '1_Home_Troy Hall'
ORDER BY ST_Distance(a.coords, b.coords) ASC LIMIT 1;