CREATE DATABASE "howdoiqa_development";
CREATE DATABASE "howdoiqa_test";

CREATE USER howdoiqa WITH PASSWORD 'howdoiqa';

GRANT ALL PRIVILEGES ON DATABASE howdoiqa_development TO howdoiqa;
GRANT ALL PRIVILEGES ON DATABASE howdoiqa_test TO howdoiqa;

ALTER DATABASE webinarium_test OWNER TO howdoiqa;
ALTER ROLE howdoiqa CREATEDB;
