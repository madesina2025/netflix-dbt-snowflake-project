# Netflix Data Analytics with dbt and Snowflake

End-to-end analytics engineering project built with **dbt**, **Snowflake**, snapshots, tests, documentation, and dimensional modelling using the MovieLens dataset.

---

# Architecture

```
CSV Files
     ↓
Snowflake RAW Layer
     ↓
Staging Models
     ↓
Dimension Models
     ↓
Fact Models
     ↓
Mart Layer
     ↓
dbt Tests
     ↓
Snapshots
     ↓
dbt Docs
```

---

# Technology Stack

- dbt Core
- Snowflake
- Jinja
- SQL
- GitHub Actions
- Snapshots
- Tests
- Documentation
- Star Schema Modelling

---

# Dataset

MovieLens Dataset

Tables loaded into Snowflake RAW schema:

- RAW_MOVIES
- RAW_RATINGS
- RAW_TAGS
- RAW_LINKS
- RAW_GENOME_TAGS
- RAW_GENOME_SCORES

---

# Project Structure

```text
netflix_analysis
│
├── analyses
├── macros
├── models
│     ├── staging
│     ├── dim
│     ├── fact
│     └── mart
│
├── seeds
├── snapshots
├── screenshots
├── architecture
├── tests
├── dbt_project.yml
└── README.md
```

---

# Data Model

### Staging

- src_movies
- src_ratings
- src_tags
- src_links
- src_genome_tags
- src_genome_scores

### Dimensions

- dim_movies
- dim_users
- dim_genome_tags

### Facts

- fct_ratings
- fct_genome_scores

### Mart

- mart_movies_releases

---

# Snapshots

Snapshot table:

```sql
SNAP_TAGS
```

Tracks historical changes using:

- timestamp strategy
- surrogate key
- invalidate_hard_delete=True

---

# Tests Implemented

### Generic Tests

- not_null
- unique
- relationships

Examples:

- dim_movies.movie_id
- dim_users.user_id
- fct_ratings.movie_id
- fct_genome_scores.tag_id

---

# dbt Run

Successful execution:

![dbt run](screenshots/dbt-run-success.png)

---

# dbt Tests

Successful data tests:

![dbt tests](screenshots/dbt-test-success.png)

---

# dbt Snapshot

Snapshot execution:

![snapshot](screenshots/dbt-snapshot-success.png)

---

# dbt Documentation

Generated docs:

![docs](screenshots/dbt-docs-overview.png)

---

# Lineage Graph

End-to-end lineage:

![lineage](screenshots/dbt-lineage-graph.png)

---

# Snowflake RAW Tables

RAW schema:

![raw](screenshots/snowflake-raw-tables.png)

---

# Snowflake DEV Models

Analytics models:

![dev](screenshots/snowflake-dev-models.png)

---

# Example Commands

### Install dependencies

```bash
dbt deps
```

### Load seeds

```bash
dbt seed
```

### Run models

```bash
dbt run
```

### Execute tests

```bash
dbt test
```

### Create snapshots

```bash
dbt snapshot
```

### Generate docs

```bash
dbt docs generate
```

### Serve docs

```bash
dbt docs serve
```

---

# CI/CD

GitHub Actions pipeline:

```yaml
dbt deps
dbt seed
dbt run
dbt test
dbt snapshot
dbt docs generate
```

---

# Key Concepts Demonstrated

- Analytics Engineering
- Star Schema Design
- Fact and Dimension Modeling
- Incremental Models
- Snapshots
- Data Quality Testing
- Documentation
- Jinja Macros
- Surrogate Keys
- Historical Tracking
- Data Lineage
- Snowflake Warehouse
- GitHub CI/CD

---

# Future Enhancements

- Airflow orchestration
- Incremental pipelines
- S3 integration
- Snowpipe ingestion
- Power BI dashboards
- dbt Cloud deployment
- Great Expectations data quality framework

---

## Author

**Mukaila Adesina**

Data Engineer | Analytics Engineer | BI Developer

GitHub:

https://github.com/madesina2025
