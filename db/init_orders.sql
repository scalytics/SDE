CREATE TABLE orders (
                        o_orderkey INT PRIMARY KEY,
                        o_custkey INT,
                        o_orderstatus CHAR(1),
                        o_totalprice DECIMAL,
                        o_orderdate DATE,
                        o_orderpriority TEXT,
                        o_clerk TEXT,
                        o_shippriority INT,
                        o_comment TEXT
);

COPY orders FROM '/docker-entrypoint-initdb.d/orders.tbl' DELIMITER '|' NULL AS '';