CREATE TABLE customer (
                           c_custkey INT PRIMARY KEY,
                           c_name TEXT,
                           c_address TEXT,
                           c_nationkey INT,
                           c_phone TEXT,
                           c_acctbal DECIMAL,
                           c_mktsegment TEXT,
                           c_comment TEXT
);

COPY customer FROM '/docker-entrypoint-initdb.d/customer.tbl' DELIMITER '|' NULL AS '';