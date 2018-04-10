CREATE KEYSPACE IF NOT EXISTS dev
  with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
USE dev;
CREATE TABLE IF NOT EXISTS dev.application (
    id uuid PRIMARY KEY,
    createddate date,
    formtext text,
    formtype text
);
INSERT INTO dev.application
    (id, createddate, formtext, formtype)
    values (now(), '2017-12-22', '{"appid": 10, "provider": {"\"provid\": \"100\", \"name\": \"Provider 1\"}}', 'XYZ-123')
    IF NOT EXISTS;
