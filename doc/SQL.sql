CREATE TABLE courses(
   id_course SERIAL,
   title_course VARCHAR(255)  NOT NULL,
   description_course TEXT NOT NULL,
   status_course VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_course),
   UNIQUE(title_course)
);

CREATE TABLE modules(
   id_modules SERIAL,
   tilte_module VARCHAR(255)  NOT NULL,
   objectif_module VARCHAR(255)  NOT NULL,
   status_module VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_modules),
   UNIQUE(tilte_module)
);

CREATE TABLE tags(
   id_tags SERIAL,
   title_tag VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_tags),
   UNIQUE(title_tag)
);

CREATE TABLE roles(
   id_role SERIAL,
   title_role VARCHAR(50) ,
   PRIMARY KEY(id_role)
);

CREATE TABLE users(
   id_user SERIAL,
   firstname_user VARCHAR(50)  NOT NULL,
   lastname_user VARCHAR(50)  NOT NULL,
   address_user VARCHAR(255)  NOT NULL,
   birthdate_user DATE NOT NULL,
   id_role INTEGER,
   PRIMARY KEY(id_user),
   FOREIGN KEY(id_role) REFERENCES roles(id_role)
);

CREATE TABLE lessons(
   id_lessons SERIAL,
   title_lesson VARCHAR(255)  NOT NULL,
   description_lesson TEXT NOT NULL,
   content_lesson TEXT NOT NULL,
   image_lesson VARCHAR(255)  NOT NULL,
   video_lesson VARCHAR(255)  NOT NULL,
   create_at_lesson TIMESTAMP NOT NULL,
   review_at_lesson TIMESTAMP,
   status_lesson VARCHAR(50)  NOT NULL,
   id_user INTEGER,
   PRIMARY KEY(id_lessons),
   UNIQUE(title_lesson),
   FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE contain(
   id_course INTEGER,
   id_modules INTEGER,
   position_module INTEGER NOT NULL,
   PRIMARY KEY(id_course, id_modules),
   FOREIGN KEY(id_course) REFERENCES courses(id_course),
   FOREIGN KEY(id_modules) REFERENCES modules(id_modules)
);

CREATE TABLE identify(
   id_modules INTEGER,
   id_tags INTEGER,
   PRIMARY KEY(id_modules, id_tags),
   FOREIGN KEY(id_modules) REFERENCES modules(id_modules),
   FOREIGN KEY(id_tags) REFERENCES tags(id_tags)
);

CREATE TABLE regroup(
   id_modules INTEGER,
   id_lessons INTEGER,
   position_lesson VARCHAR(50) ,
   PRIMARY KEY(id_modules, id_lessons),
   FOREIGN KEY(id_modules) REFERENCES modules(id_modules),
   FOREIGN KEY(id_lessons) REFERENCES lessons(id_lessons)
);

CREATE TABLE follow(
   id_course INTEGER,
   id_user INTEGER,
   PRIMARY KEY(id_course, id_user),
   FOREIGN KEY(id_course) REFERENCES courses(id_course),
   FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE Validate(
   id_course INTEGER,
   id_lessons INTEGER,
   id_user INTEGER,
   validate_at TIMESTAMP,
   PRIMARY KEY(id_course, id_lessons, id_user),
   FOREIGN KEY(id_course) REFERENCES courses(id_course),
   FOREIGN KEY(id_lessons) REFERENCES lessons(id_lessons),
   FOREIGN KEY(id_user) REFERENCES users(id_user)
);
