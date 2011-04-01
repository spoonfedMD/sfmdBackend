--
-- Add user and role tables, along with a many-to-many join table
--
PRAGMA foreign_keys = ON;
CREATE TABLE user (
        id            INTEGER PRIMARY KEY AUTOINCREMENT,
        username      TEXT,
        password      TEXT,
        active        INTEGER
);
CREATE TABLE known_hosts (
		known_host	  INTEGER PRIMARY KEY AUTOINCREMENT,
		username	  TEXT,
		host_id		  TEXT
);
CREATE TABLE role (
        id   INTEGER PRIMARY KEY,
        role TEXT
);
CREATE TABLE user_role (
        user_id INTEGER REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE,
        role_id INTEGER REFERENCES role(id) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (user_id, role_id)
);

INSERT INTO role VALUES (1, 'user');
INSERT INTO role VALUES (2, 'admin');
INSERT INTO user VALUES (1, 'admin', 'admin', 1);
INSERT INTO user_role VALUES (1, 1);