CREATE OR REPLACE VIEW TestsUnionView AS
SELECT
       outid,
       year,
       ukrtest as test,
       NULL as lang,
       ukrteststatus as teststatus,
       NULL as DPALevel,
       ukrBall100 as Ball100,
       ukrBall12 as Ball12,
       ukrBall as Ball,
       ukradaptscale as adaptscale,
       ukrptname as ptname,
       ukrpttername as pttername,
       ukrptareaname as ptareaname,
       ukrptregname as ptregname
FROM zno_stats
WHERE ukrtest IS NOT NULL
UNION
SELECT
       outid,
       year,
       histtest,
       histlang,
       histteststatus,
       NULL as DPALevel,
       histBall100,
       histBall12,
       histBall,
       NULL as adaptscale,
       histptname,
       histpttername,
       histptareaname,
       histptregname
FROM zno_stats
WHERE histtest IS NOT NULL
UNION
SELECT
       outid,
       year,
       mathtest,
       mathlang,
       mathteststatus,
       NULL as DPALevel,
       mathBall100,
       mathBall12,
       mathBall,
       NULL as adaptscale,
       mathptname,
       mathpttername,
       mathptareaname,
       mathptregname
FROM zno_stats
WHERE mathtest IS NOT NULL
UNION
SELECT
       outid,
       year,
       phystest,
       physlang,
       physteststatus,
       NULL as DPALevel,
       physBall100,
       physBall12,
       physBall,
       NULL as adaptscale,
       physptname,
       physpttername,
       physptareaname,
       physptregname
FROM zno_stats
WHERE phystest IS NOT NULL
UNION
SELECT
       outid,
       year,
       chemtest,
       chemlang,
       chemteststatus,
       NULL as DPALevel,
       chemBall100,
       chemBall12,
       chemBall,
       NULL as adaptscale,
       chemptname,
       chempttername,
       chemptareaname,
       chemptregname
FROM zno_stats
WHERE chemtest IS NOT NULL
UNION
SELECT
       outid,
       year,
       biotest,
       biolang,
       bioteststatus,
       NULL as DPALevel,
       bioBall100,
       bioBall12,
       bioBall,
       NULL as adaptscale,
       bioptname,
       biopttername,
       bioptareaname,
       bioptregname
FROM zno_stats
WHERE biotest IS NOT NULL
UNION
SELECT
       outid,
       year,
       geotest,
       geolang,
       geoteststatus,
       NULL as DPALevel,
       geoBall100,
       geoBall12,
       geoBall,
       NULL as adaptscale,
       geoptname,
       geopttername,
       geoptareaname,
       geoptregname
FROM zno_stats
WHERE geotest IS NOT NULL
UNION
SELECT
       outid,
       year,
       engtest,
       NULL as lang,
       engteststatus,
       engdpalevel,
       engBall100,
       engBall12,
       engBall,
       NULL as adaptscale,
       engptname,
       engpttername,
       engptareaname,
       engptregname
FROM zno_stats
WHERE engtest IS NOT NULL
UNION
SELECT
       outid,
       year,
       fratest,
       NULL as lang,
       frateststatus,
       fradpalevel,
       fraBall100,
       fraBall12,
       fraBall,
       NULL as adaptscale,
       fraptname,
       frapttername,
       fraptareaname,
       fraptregname
FROM zno_stats
WHERE fratest IS NOT NULL
UNION
SELECT outid,
       year,
       deutest,
       NULL as lang,
       deuteststatus,
       deudpalevel,
       deuBall100,
       deuBall12,
       deuBall,
       NULL as adaptscale,
       deuptname,
       deupttername,
       deuptareaname,
       deuptregname
FROM zno_stats
WHERE deutest IS NOT NULL
UNION
SELECT outid,
       year,
       spatest,
       NULL as lang,
       spateststatus,
       spadpalevel,
       spaBall100,
       spaBall12,
       spaball,
       NULL as adaptscale,
       spaptname,
       spapttername,
       spaptareaname,
       spaptregname
FROM zno_stats
WHERE spatest IS NOT NULL;