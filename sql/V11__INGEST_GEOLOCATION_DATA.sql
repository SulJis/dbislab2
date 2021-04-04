INSERT INTO GeoLocation(tername, areaname, regname, tertypename)
SELECT DISTINCT g.tername, g.AreaName, g.RegName, z.tertypename FROM GeoUnion as g
LEFT JOIN zno_stats z
ON g.TerName = z.tername AND g.AreaName = z.areaname AND g.RegName = z.regname
WHERE g.TerName IS NOT NULL AND g.AreaName IS NOT NULL AND g.RegName IS NOT NULL;