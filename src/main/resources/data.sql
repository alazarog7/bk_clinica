--USUARIOS DE EJEMPLO CON CLAVE 123

INSERT INTO paciente(apellidos,dni,email,direccion,nombres,telefono) VALUES ('LAZARO','84351152','a.lazaro.g7@gmail.com','CALLE PRIMAVERA','ALEJANDRO','720560911');
INSERT INTO paciente(apellidos,dni,email,direccion,nombres,telefono) VALUES ('CASTRO','84351154','j.castro@gmail.com','CALLE PRIMAVERA','JUAN','720560911');
INSERT INTO paciente(apellidos,dni,email,direccion,nombres,telefono) VALUES ('FLORES','84351155','c.flores@gmail.com','CALLE PRIMAVERA','CARMEN','720560911');
INSERT INTO paciente(apellidos,dni,email,direccion,nombres,telefono) VALUES ('GORRITI','84351151','c.gorriti@gmail.com','CALLE PRIMAVERA','CARLA','720560911');
INSERT INTO paciente(apellidos,dni,email,direccion,nombres,telefono) VALUES ('BORDA','84351156','p.borda@gmail.com','CALLE PRIMAVERA','PAOLA','720560911');
INSERT INTO especialidad(nombre) VALUES ('MEDICINA GENERAL');
INSERT INTO especialidad(nombre) VALUES ('PEDRIATRIA');
INSERT INTO examen(descripcion,nombre) VALUES ('AYUNAS','SANGRE');
INSERT INTO examen(descripcion,nombre) VALUES ('AYUNAS','RADIOGRAFIA');
INSERT INTO examen(descripcion,nombre) VALUES ('AYUNAS','TOMOGRAFIA');
INSERT INTO medico(nombres,apellidos,cmp,foto_url) VALUES ('CHESPIRITO','CHAPATIN',1234,'https://i.ytimg.com/vi/5gLlO5EUjFo/hqdefault.jpg');

-- PASSWORD: 123
-- mito@gmail.com -> [ ADMIN, DBA]
INSERT INTO usuario(id_usuario, nombre, clave, estado) values (1, 'mito@gmail.com', '$2a$10$ju20i95JTDkRa7Sua63JWOChSBc0MNFtG/6Sps2ahFFqN.HCCUMW.', '1');
-- jaime -> [ USER]
INSERT INTO usuario(id_usuario, nombre, clave, estado) values (2, 'jaime', '$2a$10$ju20i95JTDkRa7Sua63JWOChSBc0MNFtG/6Sps2ahFFqN.HCCUMW.', '1');

INSERT INTO rol (id_rol, nombre, descripcion) VALUES (1, 'ADMIN', 'Administrador');
INSERT INTO rol (id_rol, nombre, descripcion) VALUES (2, 'USER', 'Usuario');
INSERT INTO rol (id_rol, nombre, descripcion) VALUES (3, 'DBA', 'Admin de bd');

INSERT INTO usuario_rol (id_usuario, id_rol) VALUES (1, 1);
INSERT INTO usuario_rol (id_usuario, id_rol) VALUES (1, 3);
INSERT INTO usuario_rol (id_usuario, id_rol) VALUES (2, 2);

--select m.* from menu_rol mr
--inner join usuario_rol ur on ur.id_rol = mr.id_rol
--inner join menu m on m.id_menu = mr.id_menu
--inner join usuario u on u.id_usuario = ur.id_usuario
--where u.nombre = 'mito@gmail.com';

INSERT INTO menu(id_menu, nombre, icono, url) VALUES (1, 'Buscar', 'search', '/buscar');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (2, 'Registrar', 'insert_drive_file', '/consulta');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (3, 'Registrar E.', 'insert_drive_file', '/consulta-especial');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (4, 'Registrar W.', 'view_carousel', '/consulta-wizard');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (5, 'Especialiades', 'star_rate', '/especialidad');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (6, 'Médicos', 'healing', '/medico');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (7, 'Examenes', 'assignment', '/examen');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (8, 'Pacientes', 'accessibility', '/paciente');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (9, 'Reportes', 'assessment', '/reporte');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (10, 'Signos', 'assessment', '/signos');
INSERT INTO menu(id_menu, nombre, icono, url) VALUES (11, 'Perfil', 'account_box', '/perfil');

--UPDATE menu SET icono='assessment' WHERE id_menu=10;
--UPDATE menu SET icono='account_box' WHERE id_menu=11;
--UPDATE menu SET url='/consulta-wizard' WHERE id_menu=4;



INSERT INTO menu_rol (id_menu, id_rol) VALUES (1, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (2, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (3, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (4, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (5, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (6, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (7, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (8, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (9, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (3, 2);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (4, 2);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (5, 2);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (6, 2);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (10, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (11, 1);
INSERT INTO menu_rol (id_menu, id_rol) VALUES (11, 2);

--UPDATE menu_rol set id_rol = 1 WHERE id_menu=10;



--SELECT  * FROM USUARIO;




