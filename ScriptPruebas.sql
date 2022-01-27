/* --------------CREACION DE TABLAS*---------*/

/*USUARIOS*/
CREATE TABLE `Notas`.`Usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  
  /*NOTAS*/
  CREATE TABLE `Notas`.`Notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `fecha_creacion` DATE NULL,
  `fecha_modificacion` DATE NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `habilitado_borrar` TINYINT(1) NULL DEFAULT 0,
  `id_usuario` VARCHAR(45) NULL,
  `categorias_id_nota` INT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_usuario`) REFERENCES usuarios(`id`),
  FOREIGN KEY (`categorias_id_nota`) REFERENCES categorias(`id`)
);


/*CATEGORIAS*/
  CREATE TABLE `Notas`.`Notas` (
  `id_nota` INT NOT NULL AUTO_INCREMENT
);

/*-------------------Caso de prueba  USUARIOS------------------*/
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (1, "Facundo", "facuprueba1@hotmail.com");
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (2, "Joaquin", "joacoprueba2@hotmail.com");
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (3, "Simon", "simonprueba3@hotmail.com");
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (4, "Candelaria", "candelariaprueba4@hotmail.com");
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (5, "Luciana", "lucianaprueba5@hotmail.com");
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (6, "Juan", "juanprueba6@hotmail.com");
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (7, "Rodolfo", "rodolfoprueba7@hotmail.com");
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (8, "Justo", "justoprueba8@hotmail.com");
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (9, "Pedro", "pedroprueba9@hotmail.com");
INSERT INTO `Notas`.`Usuarios` (`id`, `nombre`, `email`) VALUES (10, "Agustin", "Agustinprueba10@hotmail.com");



/*-------------------Caso de pruebas NOTAS---------*/
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (1, "titulo - 1", sysdate, sysdate, "descripcion - 1", DEFAULT, NULL, NULL);
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (2, "titulo - 2", sysdate, sysdate, "descripcion - 2", DEFAULT, NULL, NULL);
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (3, "titulo - 3", sysdate, sysdate, "descripcion - 3", DEFAULT, NULL, NULL);
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (4, "titulo - 4", sysdate, sysdate, "descripcion - 4", DEFAULT, NULL, NULL);
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (5, "titulo - 5", sysdate, sysdate, "descripcion - 5", DEFAULT, NULL, NULL);
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (6, "titulo - 6", sysdate, sysdate, "descripcion - 6", DEFAULT, NULL, NULL);
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (7, "titulo - 7", sysdate, sysdate, "descripcion - 7", DEFAULT, NULL, NULL);
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (8, "titulo - 8", sysdate, sysdate, "descripcion - 8", DEFAULT, NULL, NULL);
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (9, "titulo - 9", sysdate, sysdate, "descripcion - 9", DEFAULT, NULL, NULL);
INSERT INTO `Notas`.`Notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `habilitado_borrar`, `id_usuario`, `categorias_id_nota`) VALUES (10, "titulo - 10", sysdate, sysdate, "descripcion - 10", DEFAULT, NULL, NULL);

/*-------------------Caso prueba CATEGORIAS*/
/*me hubiera faltado poner un campo de "nombres" en esta tabla*/
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (1);
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (2);
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (3);
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (4);
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (5);
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (6);
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (7);
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (8);
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (9);
INSERT INTO `Notas`.`categorias` (`id_nota`) VALUES (10);
