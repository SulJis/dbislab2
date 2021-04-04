CREATE OR REPLACE VIEW GeoUnion AS
SELECT TerName, AreaName, RegName
FROM zno_stats
UNION
SELECT eotername, eoareaname, eoregname
FROM zno_stats
UNION
SELECT pttername, ptareaname, ptregname
FROM TestsUnionView;
