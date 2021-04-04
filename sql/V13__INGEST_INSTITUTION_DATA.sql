INSERT INTO Institution (EOName, EOParent, EOTypeName, TerID)
SELECT DISTINCT z.eoname, z.eoparent, z.eotypename, g.terid FROM zno_stats as z
JOIN geolocation g
ON z.eotername = g.tername AND z.eoregname = g.regname AND z.eoareaname = g.areaname;