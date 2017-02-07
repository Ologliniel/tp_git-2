#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Poney
#------------------------------------------------------------

CREATE TABLE Poney(
        id_poney     int (11) Auto_increment  NOT NULL ,
        name_poney   Varchar (25) NOT NULL ,
        weight_poney Int ,
        PRIMARY KEY (id_poney )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: jockey
#------------------------------------------------------------

CREATE TABLE jockey(
        id_jockey       int (11) Auto_increment  NOT NULL ,
        name_jockey     Varchar (25) NOT NULL ,
        lastname_jockey Varchar (25) NOT NULL ,
        weight_jockey   Int NOT NULL ,
        PRIMARY KEY (id_jockey )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: courses
#------------------------------------------------------------

CREATE TABLE courses(
        id_courses  int (11) Auto_increment  NOT NULL ,
        date_course Date NOT NULL ,
        PRIMARY KEY (id_courses )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: courir
#------------------------------------------------------------

CREATE TABLE courir(
        rank       Int NOT NULL ,
        id_poney   Int NOT NULL ,
        id_jockey  Int NOT NULL ,
        id_courses Int NOT NULL ,
        PRIMARY KEY (id_poney ,id_jockey ,id_courses )
)ENGINE=InnoDB;

ALTER TABLE courir ADD CONSTRAINT FK_courir_id_poney FOREIGN KEY (id_poney) REFERENCES Poney(id_poney);
ALTER TABLE courir ADD CONSTRAINT FK_courir_id_jockey FOREIGN KEY (id_jockey) REFERENCES jockey(id_jockey);
ALTER TABLE courir ADD CONSTRAINT FK_courir_id_courses FOREIGN KEY (id_courses) REFERENCES courses(id_courses);
