CREATE DATABASE "howdoiqa_development";
CREATE DATABASE "howdoiqa_test";

CREATE USER howdoiqa WITH PASSWORD '<YOUR PASSWORD HERE>';

GRANT ALL PRIVILEGES ON DATABASE howdoiqa_development TO howdoiqa;
GRANT ALL PRIVILEGES ON DATABASE howdoiqa_test TO howdoiqa;

ALTER DATABASE howdoiqa_development OWNER TO howdoiqa;
ALTER DATABASE howdoiqa_test OWNER TO howdoiqa;
ALTER ROLE howdoiqa CREATEDB;
