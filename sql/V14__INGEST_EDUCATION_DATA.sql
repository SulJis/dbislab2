INSERT INTO Education (outid, InstID, classprofilename, classlangname)
SELECT z.outid, i.instid, z.classprofilename, z.classlangname FROM zno_stats as z
JOIN Institution as i
ON z.eoname = i.eoname AND z.eoparent = i.eoparent AND z.eotypename = i.eotypename;