SELECT id name FROM users   -- ❌ missing comma

select * from orders where id = NULL;  -- ❌ should be IS NULL

INSERT INTO products (id, name VALUES (1, 'Phone'); -- ❌ missing closing )


SELECT * FROM non_existing_table;   -- ❌ table not exist

INSERT INTO users(id, email)
VALUES (1, 'test@test.com');

INSERT INTO users(id, email)
VALUES (1, 'duplicate@test.com');  -- ❌ duplicate PK
