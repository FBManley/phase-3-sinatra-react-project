-- SQLite
CREATE TABLE locations (
    id INTEGER PRIMARY KEY,
    state TEXT,
    street TEXT,
    address INTEGER,
);
INSERT INTO locations (id, state, address) VALUES (1, 'Idaho', '1221')

SELECT * FROM locations;