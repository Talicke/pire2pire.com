CREATE TABLE tags(
   title_tag VARCHAR(50) ,
   PRIMARY KEY(title_tag)
);

CREATE TABLE roles(
   title_role VARCHAR(50) ,
   PRIMARY KEY(title_role)
);

CREATE TABLE Status(
   title_status VARCHAR(50) ,
   PRIMARY KEY(title_status)
);

CREATE TABLE zipcodes(
   code INTEGER,
   PRIMARY KEY(code)
);

CREATE TABLE courses(
   id_course SERIAL,
   title_course VARCHAR(255)  NOT NULL,
   description_course TEXT NOT NULL,
   title_status VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_course),
   UNIQUE(title_course),
   FOREIGN KEY(title_status) REFERENCES Status(title_status)
);

CREATE TABLE modules(
   id_modules SERIAL,
   tilte_module VARCHAR(255)  NOT NULL,
   objectif_module VARCHAR(255)  NOT NULL,
   title_status VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_modules),
   UNIQUE(tilte_module),
   FOREIGN KEY(title_status) REFERENCES Status(title_status)
);

CREATE TABLE city(
   id_city SERIAL,
   name_city VARCHAR(50)  NOT NULL,
   code INTEGER,
   PRIMARY KEY(id_city),
   FOREIGN KEY(code) REFERENCES zipcodes(code)
);

CREATE TABLE adress(
   id_adress SERIAL,
   number_adress VARCHAR(8) ,
   road_adress VARCHAR(50) ,
   id_city INTEGER,
   PRIMARY KEY(id_adress),
   FOREIGN KEY(id_city) REFERENCES city(id_city)
);

CREATE TABLE users(
   id_user VARCHAR(36) ,
   firstname_user VARCHAR(50)  NOT NULL,
   lastname_user VARCHAR(50)  NOT NULL,
   birthdate_user DATE NOT NULL,
   id_adress INTEGER,
   title_role VARCHAR(50) ,
   PRIMARY KEY(id_user),
   FOREIGN KEY(id_adress) REFERENCES adress(id_adress),
   FOREIGN KEY(title_role) REFERENCES roles(title_role)
);

CREATE TABLE lessons(
   id_lesson SERIAL,
   title_lesson VARCHAR(255)  NOT NULL,
   description_lesson TEXT NOT NULL,
   content_lesson TEXT NOT NULL,
   image_lesson VARCHAR(255)  NOT NULL,
   video_lesson VARCHAR(255)  NOT NULL,
   create_at_lesson TIMESTAMP NOT NULL,
   review_at_lesson TIMESTAMP,
   title_status VARCHAR(50)  NOT NULL,
   id_user VARCHAR(36) ,
   PRIMARY KEY(id_lesson),
   UNIQUE(title_lesson),
   FOREIGN KEY(title_status) REFERENCES Status(title_status),
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
   title_tag VARCHAR(50) ,
   PRIMARY KEY(id_modules, title_tag),
   FOREIGN KEY(id_modules) REFERENCES modules(id_modules),
   FOREIGN KEY(title_tag) REFERENCES tags(title_tag)
);

CREATE TABLE regroup(
   id_modules INTEGER,
   id_lesson INTEGER,
   position_lesson VARCHAR(50) ,
   PRIMARY KEY(id_modules, id_lesson),
   FOREIGN KEY(id_modules) REFERENCES modules(id_modules),
   FOREIGN KEY(id_lesson) REFERENCES lessons(id_lesson)
);

CREATE TABLE follow(
   id_course INTEGER,
   id_user VARCHAR(36) ,
   PRIMARY KEY(id_course, id_user),
   FOREIGN KEY(id_course) REFERENCES courses(id_course),
   FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE Validate(
   id_course INTEGER,
   id_lesson INTEGER,
   id_user VARCHAR(36) ,
   validate_at TIMESTAMP,
   PRIMARY KEY(id_course, id_lesson, id_user),
   FOREIGN KEY(id_course) REFERENCES courses(id_course),
   FOREIGN KEY(id_lesson) REFERENCES lessons(id_lesson),
   FOREIGN KEY(id_user) REFERENCES users(id_user)
);