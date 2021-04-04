SELECT tgeo.RegName, t.year, AVG(t.Ball100) FROM Test t
JOIN (TestPoint JOIN GeoLocation GL on TestPoint.TerID = GL.TerID) tgeo
ON t.PtID = tgeo.PtID
WHERE t.teststatus='Зараховано' AND t.test='Англійська мова'
GROUP BY tgeo.RegName, t.year;
