import pandas as pd
import pyarrow.parquet as pq
import pyarrow as pa
from sqlalchemy import create_engine

chunk_size = 100000

engine = create_engine('postgresql://root:root@localhost:5432/ny_taxi')
engine.connect()
parquet_file = pq.ParquetFile("data/yellow_tripdata_2023-01.parquet")

for batch in parquet_file.iter_batches(batch_size=chunk_size):
    chunk_df = pa.Table.from_batches([batch]).to_pandas(split_blocks=True, self_destruct=True)
    chunk_df.to_sql(name="yellow_taxi_data", con=engine, if_exists="append")

