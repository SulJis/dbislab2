INSERT INTO TestPoint(PTName, TerID)
SELECT DISTINCT t.ptname, g.TerID FROM TestsUnionView t
JOIN GeoLocation g
ON t.pttername = g.tername AND t.ptareaname = g.areaname AND t.ptregname = g.regname;