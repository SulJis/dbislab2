INSERT INTO Test(outid, test, year, ptid, lang, teststatus, dpalevel, ball100, ball12, ball, adaptscale)
SELECT t.outid, t.test, t.year, tgeo.PtID, t.Lang, t.TestStatus, t.DPALevel, t.Ball100, t.Ball12, t.Ball, t.AdaptScale
FROM TestsUnionView t
LEFT JOIN (TestPoint tp JOIN GeoLocation GL on tp.TerID = GL.TerID) tgeo
ON tgeo.PTName = t.ptname AND tgeo.tername = t.pttername AND tgeo.RegName = t.ptregname AND tgeo.AreaName=t.ptareaname;