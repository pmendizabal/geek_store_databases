CREATE OR REPLACE FUNCTION modified_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.modified = current_timestamp AT time ZONE 'UTC';
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER updates_rows_modified BEFORE UPDATE ON store_goods_stock FOR EACH ROW EXECUTE PROCEDURE modified_column();
