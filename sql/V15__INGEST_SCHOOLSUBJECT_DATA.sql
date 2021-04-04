INSERT INTO SchoolSubject(test)
SELECT DISTINCT test FROM TestsUnionView;