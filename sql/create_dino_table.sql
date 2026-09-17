IF OBJECT_ID('dbo.DinosaurOccurrences','U') IS NULL
BEGIN

		CREATE TABLE dbo.DinosaurOccurrences
		(
		-- Identification
		occurrence_no VARCHAR(50) NOT NULL,
		record_type VARCHAR(10) NULL,
		collection_no VARCHAR(50) NULL,

		-- Taxonomy
		identified_name VARCHAR(100) NULL,
		identified_rank VARCHAR(50) NULL,
		accepted_name VARCHAR(100) NULL,
		accepted_rank VARCHAR(50) NULL,
		accepted_no VARCHAR(50) NULL,
		taxon_environment VARCHAR(50) NULL,
		

		-- Geological Time
		early_interval VARCHAR(50) NULL,
		late_interval VARCHAR(50) NULL,
		max_ma DECIMAL(10,4) NULL,
		min_ma DECIMAL(10,4) NULL,

		-- Taxonomy (cont)
		phylum VARCHAR(50) NULL,
		class VARCHAR(50) NULL,
		[order] VARCHAR(50) NULL,
		family VARCHAR(50) NULL,
		genus VARCHAR(50) NULL,

		-- Geography
		cc VARCHAR(5) NULL,
		[state] VARCHAR(50) NULL,
		county VARCHAR(50) NULL,
		lat DECIMAL(9,6) NULL,
		lng DECIMAL(9,6) NULL,
		latlng_basis VARCHAR(50) NULL,
		latlng_precision VARCHAR(50) NULL,
		geogscale VARCHAR(50) NULL,
		paleolat DECIMAL(9,6) NULL,
		paleolng DECIMAL(9,6) NULL,
		geoplate VARCHAR (75) NULL,

		-- Geological Context
		formation VARCHAR(100) NULL,
		geological_group VARCHAR(100) NULL,
		stratscale VARCHAR(50) NULL,
		lithology1 VARCHAR(75) NULL,
		lithology2 VARCHAR(75) NULL,
		environment VARCHAR(75) NULL,
		tectonic_setting VARCHAR(75) NULL,

		-- Preservation
		pres_mode VARCHAR(150) NULL,
		preservation_quality VARCHAR(50) NULL,
		lagerstatten VARCHAR(50) NULL,
		collection_coverage VARCHAR(100) NULL,
		collection_type VARCHAR(75) NULL,

		-- Provenance
		ref_author VARCHAR(100) NULL,
		ref_pubyr INT NULL,
		reference_no VARCHAR(50) NULL,
		research_group VARCHAR(100) NULL,

		-- Derived Variables
		age_range_ma DECIMAL(10,4) NULL,
		geological_era VARCHAR(50) NULL,
		geological_period VARCHAR(100) NULL,

		-- Primary Key
		CONSTRAINT PK_DinosaurOccurrences
			PRIMARY KEY (occurrence_no)
	);
END;