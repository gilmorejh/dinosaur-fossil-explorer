BULK INSERT dbo.DinosaurOccurrences
FROM 'C:\Users\john_\dinosaur-fossil-explorer\data\processed\pbdb_dinosaur_occurrences_clean.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n',
	TABLOCK
);