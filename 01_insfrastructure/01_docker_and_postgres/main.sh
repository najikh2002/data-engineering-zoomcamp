# untuk build pipeline sederhana (for testing)
docker build -t test:pandas .

# untuk jalankan image yang telah dibuild dan 
# langsung hapus container setelah image dijalankan
docker run -it --rm test:pandas tess 08-12-2024

# setup data ingestion from csv to postgres
docker run -it \
    -e POSTGRES_USER="root" \
    -e POSTGRES_PASSWORD="root" \
    -e POSTGRES_DB="ny_taxi" \
    -v $(pwd)/ny_taxi_postgres_data:/var/lib/postgresql/data \
    -p 5433:5432 \
    postgres