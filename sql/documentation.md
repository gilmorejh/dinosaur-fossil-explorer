# Build SQL Database

## Objective

Build a SQL Server database containing the cleaned PBDB dinosaur fossil occurrence dataset and validate that the imported data maintains the structure and values established during the Python cleaning process.

## Database Structure

Created a SQL Server database named `DinosaurFossilExplorer`.

Created the primary table:

`dbo.DinosaurOccurrences`

The table contains **48 columns** organized into several logical groups:

- Identification
- Taxonomy
- Geological Time
- Geography
- Geological Context
- Preservation
- Provenance
- Derived Variables

`occurrence_no` was established as the primary key because each occurrence has a unique PBDB occurrence identifier.

Identifier fields such as `occurrence_no`, `collection_no`, `accepted_no`, and `reference_no` were stored as text because they represent identifiers rather than numerical measurements.

Numeric measurements and derived values such as geological ages and geographic coordinates were stored using appropriate numeric SQL data types.

## Data Import

Imported the cleaned dataset:

`pbdb_dinosaur_occurrences_clean.csv`

into `dbo.DinosaurOccurrences`.

The final SQL table contains **37,835 records**, matching the cleaned dataset produced during Phase 3.

## Import Validation

Several validation checks were performed after importing the data.

### Record Count

The SQL table contains:

**37,835 records**

This matches the cleaned Python dataset.

### Primary Key Validation

`occurrence_no` contains:

- 37,835 total records
- 37,835 unique occurrence numbers
- 0 missing occurrence numbers

This confirms that the primary key remained unique and populated after import.

### Numeric Field Validation

Validated the ranges of major numeric fields including:

- `max_ma`
- `min_ma`
- `lat`
- `lng`

Latitude and longitude values remained within valid geographic ranges.

### Derived Variable Validation

The following fields were fully populated after import:

- `age_range_ma`
- `geological_era`
- `geological_period`

All contained 37,835 values.

### Text Field Validation

Checked the maximum lengths of several text fields to ensure imported values were not truncated.

The longest observed values remained comfortably within the SQL column definitions, including:

- `identified_name`: 53 characters
- `accepted_name`: 40 characters
- `family`: 22 characters
- `genus`: 29 characters
- `pres_mode`: 112 characters
- `formation`: 41 characters
- `ref_author`: 46 characters

## Initial SQL Queries

Created several queries to verify that the database could support basic analysis.

### Occurrences by Geological Period

Grouped fossil occurrences by `geological_period` to examine the distribution of records across geological time.

### Most Frequently Represented Accepted Taxa

Used `accepted_name` to identify the most frequently represented taxonomic names.

This revealed that the dataset contains a mixture of species, genera, families, and higher-level clades, so raw taxon occurrence counts should be interpreted alongside taxonomic rank.

### Occurrences by Taxonomic Rank

Grouped records by `accepted_rank` to understand the taxonomic resolution represented in the dataset.

Species were the most common rank, followed by unranked clades, genera, and families.

### Occurrences by Class

Grouped records by `class` to examine the overall taxonomic composition.

This confirmed that the original PBDB `Dinosauria` query includes substantial numbers of Aves and broader Reptilia records in addition to Ornithischia and Saurischia.

## Key Finding

The SQL validation confirmed an important limitation of the original PBDB dataset.

Querying PBDB using `Dinosauria` does not produce a dataset consisting exclusively of non-avian dinosaurs. The dataset contains records classified as:

- Aves
- Reptilia
- Ornithischia
- Saurischia

This issue will be addressed during the exploratory and analytical phases rather than modifying the underlying cleaned dataset without justification.

## Outcome

The cleaned PBDB dataset has been successfully transferred from Python into a structured SQL Server database.

The database structure, imported records, primary key, numeric values, derived variables, and text fields were validated.

The SQL database is now ready to support the exploratory analysis and subsequent GIS and visualization work.
