# Netflix Analytics Architecture

```mermaid
flowchart TD
    A[CSV files in AWS S3] --> B[Snowflake External Stage]
    B --> C[Snowflake RAW Schema]
    C --> D[dbt Sources]
    D --> E[Staging Models]
    E --> F[Dimension Models]
    E --> G[Fact Models]
    F --> H[Mart Models]
    G --> H
    H --> I[dbt Docs + Lineage]
    H --> J[Power BI Dashboard]