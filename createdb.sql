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