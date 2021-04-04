INSERT INTO Person (outid, birth, sextypename, regtypename, terid)
SELECT z.outid, z.birth, z.sextypename, z.regtypename, g.terid FROM zno_stats z
JOIN geolocation g
ON z.tername = g.tername AND z.regname = g.regname AND z.areaname = g.areaname;