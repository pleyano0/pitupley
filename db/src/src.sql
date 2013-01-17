

CREATE TABLE grupos (

	id_grupo int(11) auto_increment PRIMARY KEY,
	nombre_grupo varchar(255) NOT NULL
	
) engine = InnoDB;

CREATE TABLE usuarios (

	id_usuario int(11) auto_increment PRIMARY KEY,
	nombre_usuario varchar(255) NOT NULL,
	grupo int(11) NOT NULL,
	contrasena varchar(255) NOT NULL,
	email varchar(255),
	avatar varchar(255),
	FOREIGN KEY (grupo) REFERENCES grupos(id_grupo)
	
) engine = InnoDB;

CREATE TABLE foros (

	id_foro int(11) auto_increment PRIMARY KEY,
	nombre_foro varchar(255) NOT NULL,
	descripcion_foro varchar(255)

) engine = InnoDB;

CREATE TABLE temas (

	id_tema int(11) auto_increment PRIMARY KEY,
	foro int(11) NOT NULL,
	nombre_tema varchar(255) NOT NULL,
	descripcion varchar(11),
	autor int(11) NOT NULL,
	fecha_creacion timestamp NOT NULL,
	FOREIGN KEY (foro) REFERENCES foros(id_foro),
	FOREIGN KEY (autor) REFERENCES usuarios(id_usuario)

) engine = InnoDB;

CREATE TABLE mensajes (

	id_mensaje int(11) auto_increment PRIMARY KEY,
	tema int(11) NOT NULL,
	foro int(11) NOT NULL,
	autor int(11) NOT NULL,
	texto mediumtext NOT NULL,
	fecha_creacion timestamp NOT NULL,
	FOREIGN KEY (tema) REFERENCES temas(id_tema),
	FOREIGN KEY (foro) REFERENCES foros(id_foro),
	FOREIGN KEY (autor) REFERENCES usuarios(id_usuario) 

) engine = InnoDB;

/*

CREATE TABLE  (


) engine = InnoDB;

*/
