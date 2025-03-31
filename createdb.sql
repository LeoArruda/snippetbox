-- Create a `snippets` table.
CREATE TABLE snippets (
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
title VARCHAR(100) NOT NULL,
content TEXT NOT NULL,
created DATETIME NOT NULL,
expires DATETIME NOT NULL
);

-- Add an index on the created column.
CREATE INDEX idx_snippets_created ON snippets(created);

-- Create table to store session data.
CREATE TABLE sessions (
token CHAR(43) PRIMARY KEY,
data BLOB NOT NULL,
expiry TIMESTAMP(6) NOT NULL
);
CREATE INDEX sessions_expiry_idx ON sessions (expiry);

-- Create table to store user data.
CREATE TABLE users (
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
hashed_password CHAR(60) NOT NULL,
created DATETIME NOT NULL
);

ALTER TABLE users ADD CONSTRAINT users_uc_email UNIQUE (email);


-- Add some dummy records (which we'll use in the next couple of chapters).
INSERT INTO snippets (title, content, created, expires) VALUES (
'An old silent pond',
'An old silent pond...
A frog jumps into the pond, 
splash! Silence again.
 
– Matsuo Bashō',
current_timestamp,
DATE(current_timestamp,'+365 days')
);
INSERT INTO snippets (title, content, created, expires) VALUES (
'Over the wintry forest',
'Over the wintry
forest, winds howl in rage
with no leaves to blow.
 
– Natsume Soseki',
current_timestamp,
DATE(current_timestamp,'+365 days')
);
INSERT INTO snippets (title, content, created, expires) VALUES (
'First autumn morning',
'First autumn morning
the mirror I stare into
shows my father''s face.
 
– Murakami Kijo',
current_timestamp,
DATE(current_timestamp,'+7 days')
);