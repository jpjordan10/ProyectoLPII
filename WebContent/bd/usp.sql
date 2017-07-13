USE BD_PLPII;

insert into TIPO_TRABAJO values('W1000', 'Excavaciones para delimitar', '18-06-2017','ACTIVO');
insert into TIPO_TRABAJO values('W1001', 'Excavaciones para medir potencia', '18-06-2017','ACTIVO');
insert into TIPO_TRABAJO values('W1002', 'Excavaciones de rescate', '18-06-2017','ACTIVO');
insert into TIPO_TRABAJO values('W1003', 'Prospecciones Arqueológicas', '18-06-2017', 'ACTIVO');
insert into TIPO_TRABAJO values('W1004', 'Monitoreo Arqueológico', '18-06-2017','ACTIVO');
insert into TIPO_TRABAJO values('W1005', 'Tramite de CIRA', '18-06-2017','ACTIVO');
insert into TIPO_TRABAJO values('W1006', 'Proyectos de puesta en valor', '18-06-2017', 'ACTIVO');

/*LISTA DE TODOS LOS TRBAJADORES*/

delimiter $$
create procedure usp_ListaTrabajador()
begin
select * from TRABAJADOR
WHERE TIPO_TRABAJADOR = 'OBRERO' or TIPO_TRABAJADOR = 'ARQUEOLOGO' or TIPO_TRABAJADOR = 'ARQUEOLOGO MAYOR';
end $$
delimiter ;

/*LISTA DE ARQUEOLOGOS Y OBREROS ACTIVOS*/

delimiter $$
create procedure usp_ListaTrabajadorArqObr()
begin
select * from TRABAJADOR
WHERE TIPO_TRABAJADOR = 'OBRERO' or TIPO_TRABAJADOR = 'ARQUEOLOGO' AND ESTADO_TRABAJADOR = 'ACTIVO';
end $$
delimiter ;

/*LISTA DE ARQUEOLOGOS MAYORES ACTIVOS*/

delimiter $$
create procedure usp_ListaTrabajadorAr()
begin
select * from TRABAJADOR
WHERE TIPO_TRABAJADOR = 'ARQUEOLOGO MAYOR' AND ESTADO_TRABAJADOR = 'ACTIVO';
end $$
delimiter ;

/*LISTA DE CLIENTES*/

delimiter $$
create procedure usp_ListaCliente()
begin
select * from CLIENTE;
end $$
delimiter ;

/*LISTA DE CLIENTES ACTIVOS*/
delimiter $$
create procedure usp_ListaClienteAct()
begin
select * from CLIENTE where ESTADO_CLIENTE = 'ACTIVO';
end $$
delimiter ;

/*LISTA DE TIPO DE TRABAJOS*/
delimiter $$
create procedure usp_ListaTipoTrabajo()
begin
select * from TIPO_TRABAJO;
end $$
delimiter ;

/*LISTA DE TIPO DE TRABAJOS ACITVOS*/
delimiter $$
create procedure usp_ListaTipoTrabajoAct()
begin
select * from TIPO_TRABAJO where ESTADO_TIPTRABAJO = 'ACTIVO';
end $$
delimiter ;


/*LISTA DE SOLICITUDES*/
delimiter $$
create procedure usp_ListarSolicitud()
begin
	SELECT S.NUM_SOLICITUD, C.RUC_CLIENTE, C.RAZSOC_CLIENTE, C.REPRESENTANTE_CLIENTE,S.PERMISOS_SOLICITUD, S.ESTADO_SOLICITUD, S.FECHA_REG_SOLICITUD, S.FECHA_ACT_SOLICITUD FROM SOLICITUD S INNER JOIN CLIENTE C 
	ON C.COD_CLIENTE = S.COD_CLIENTE;
end $$
delimiter ;

/*LISTA DE SOLICITUDES PENDIENTES Y PERMISOS CONCEDIDOS*/
delimiter $$
create procedure usp_ListarSolicitudPendientes()
begin
	SELECT S.NUM_SOLICITUD, C.RUC_CLIENTE, C.RAZSOC_CLIENTE, C.REPRESENTANTE_CLIENTE, C.TIPO_CLIENTE, S.ESTADO_SOLICITUD FROM SOLICITUD S INNER JOIN CLIENTE C 
	ON C.COD_CLIENTE = S.COD_CLIENTE
    WHERE S.ESTADO_SOLICITUD = 'PENDIENTE' AND S.PERMISOS_SOLICITUD = 'CONCEDIDOS';
end $$
delimiter ;

/*LISTA DE PROYECTO*/
delimiter $$
create procedure usp_ListarProyectos()
begin
	SELECT P.NUM_PROYECTO, C.RAZSOC_CLIENTE, P.FECHA_REG_PROYECTO, P.DEPARTAMENTO_PROYECTO, P.PROVINCIA_PROYECTO, P.DISTRITO_PROYECTO, P.DIRECCION_PROYECTO, T.DES_TIPTRABAJO, P.ETAPA_PROYECTO, P.COSTO_PROYECTO, P.CAN_MES_TRABAJO, P.FECHA_ACT_PROYECTO FROM PROYECTO P INNER JOIN SOLICITUD S
    ON S.NUM_SOLICITUD = P.NUM_SOLICITUD INNER JOIN CLIENTE C
    ON C.COD_CLIENTE = S.COD_CLIENTE INNER JOIN TIPO_TRABAJO T
    ON T.COD_TIPTRABAJO = P.COD_TIPTRABAJO;
end $$
delimiter ;

/*INSERTAR TRABAJADOR*/
delimiter $$
create procedure usp_InsertaTrabajador
(
	P_COD_TRABAJADOR			CHAR(5),
    P_NOM_TRABAJADOR			VARCHAR(20),
    P_APEP_TRABAJADOR			VARCHAR(20),
    P_APEM_TRABAJADOR			VARCHAR(20),
    P_DNI_TRABAJADOR			VARCHAR(8),
    P_EMAIL_TRABAJADOR			VARCHAR(30),
    P_TELEFONO_TRABAJADOR		VARCHAR(9),
    P_DEPARTAMENTO_TRABAJADOR	VARCHAR(20),
    P_PROVINCIA_TRABAJADOR		VARCHAR(20),
    P_DISTRITO_TRABAJADOR		VARCHAR(20),
    P_DIRECCION_TRABAJADOR		VARCHAR(50),
    P_PASS_TRABAJADOR			VARCHAR(15),
    P_TIPO_TRABAJADOR			VARCHAR(20),
    P_FECHA_REG_TRABAJADOR		VARCHAR(10),
    P_ESTADO_TRABAJADOR			VARCHAR(9)
    
)
begin
insert into TRABAJADOR values (P_COD_TRABAJADOR, P_NOM_TRABAJADOR, P_APEP_TRABAJADOR, P_APEM_TRABAJADOR, P_DNI_TRABAJADOR, P_EMAIL_TRABAJADOR, P_TELEFONO_TRABAJADOR, P_DEPARTAMENTO_TRABAJADOR, P_PROVINCIA_TRABAJADOR, P_DISTRITO_TRABAJADOR, P_DIRECCION_TRABAJADOR, P_PASS_TRABAJADOR, P_TIPO_TRABAJADOR, P_FECHA_REG_TRABAJADOR, P_ESTADO_TRABAJADOR);
end $$
delimiter ;

call usp_InsertaTrabajador('T1000', 'Jean Pierre', 'Jordan', 'Solis', '73755436', 'jeanpierrejordan@outlook.com', '962571835', 'Lima', 'Lima', 'Los Olivos', 'Psj Fobos 141 Urb Mercurio', '123', 'GESTOR ARQUEOLOGO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1001', 'Adrian Rodrigo', 'Cubas', 'Cardenas', '78954625', 'rodrigocardenas@outlook.com', '984657185', 'Lima', 'Lima', 'San Miguel', 'Jiron Cascada 135', '123', 'ARQUEOLOGO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1002', 'Oliver Aaron', 'Diaz', 'Tello', '09645781', 'aarontello@outlook.com', '909074658', 'Lima', 'Lima', 'Miraflores', 'Calle A mz 134', '123', 'OBRERO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1003', 'Gustavo Romario', 'Romero', 'Cordova', '45614795', 'romarioromero@outlook.com', '966024710', 'Lima', 'Lima', 'Miraflores', 'Calle 306 Las Manzanas', '123', 'OBRERO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1004', 'Claudio Alejandro', 'Roman', 'Carrillo', '84512639', 'alejandroclau@outlook.com', '954786125', 'Lima', 'Lima', 'Lince', 'Psj Industrial 4567', '123', 'OBRERO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1005', 'Sthefanno Javier', 'Natividad', 'Velasco', '65474982', 'javiervel@outlook.com', '945111087', 'Lima', 'Lima', 'Magadalena', 'Calle Lima 147 doble', '123', 'ARQUEOLOGO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1006', 'Piero Paolo', 'Robatti', 'Sosa', '69321548', 'paososa@outlook.com', '960123478', 'Lima', 'Lima', 'San Martin de Porres', 'Los ingenieros 143 calle', '123', 'OBRERO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1007', 'Jhonatan Walter', 'Ricaldi', 'Alban', '69478516', 'walaban@outlook.com', '945781459', 'Lima', 'Lima', 'Independencia', 'Las Bananas 148', '123', 'OBRERO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1008', 'Andres Ivan', 'Chavez', 'Menacho', '73196548', 'ivmena@outlook.com', '900278945', 'Lima', 'Lima', 'Ancon', 'Calle 145 Urb Manzanal', '123', 'OBRERO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1009', 'Henry Bob', 'Manrique', 'Marley', '71934852', 'bobman@outlook.com', '938471548', 'Lima', 'Lima', 'Independencia', 'Avenida Ternera 146', '123', 'OBRERO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1010', 'Pedro Manuel', 'Lujan', 'Luna', '94051278', 'manuluj@outlook.com', '964000147', 'Lima', 'Lima', 'Surquillo', 'Pasaje 7854', '123', 'ARQUEOLOGO', '18-06-2017', 'ACTIVO');
call usp_InsertaTrabajador('T1011', 'Donkey', 'Kong', 'Country', '12348578', 'dk@outlook.com', '974692017', 'Lima', 'Lima', 'Surquillo', 'Jungla hejeje', '123', 'ARQUEOLOGO MAYOR', '18-06-2017', 'ACTIVO');

/*INSERTAR CLIENTE*/
delimiter $$
create procedure usp_InsertaCliente
(
	P_COD_CLIENTE			CHAR(5),		
    P_RAZSOC_CLIENTE		VARCHAR(20),
    P_RUC_CLIENTE			VARCHAR(11),
    P_EMAIL_CLIENTE			VARCHAR(30),
    P_TELEFONO_CLIENTE		VARCHAR(9),
    P_DEPARTAMENTO_CLIENTE	VARCHAR(20),
    P_PROVINCIA_CLIENTE		VARCHAR(20),
    P_DISTRITO_CLIENTE		VARCHAR(20),
    P_DIRECCION_CLIENTE		VARCHAR(20),
    P_TIPO_CLIENTE			VARCHAR(20),
    P_REPRESENTANTE_CLIENTE	VARCHAR(20),
    P_FECHA_REG_CLIENTE		VARCHAR(10),
    P_ESTADO_TRABAJADOR		VARCHAR(9)
)
begin
insert into CLIENTE values (P_COD_CLIENTE, P_RAZSOC_CLIENTE, P_RUC_CLIENTE, P_EMAIL_CLIENTE, P_TELEFONO_CLIENTE, P_DEPARTAMENTO_CLIENTE, P_PROVINCIA_CLIENTE, P_DISTRITO_CLIENTE, P_DIRECCION_CLIENTE, P_TIPO_CLIENTE, P_REPRESENTANTE_CLIENTE, P_FECHA_REG_CLIENTE, P_ESTADO_TRABAJADOR);
end $$
delimiter ;

call usp_InsertaCliente('C1000', 'Empresa x', '12345678912', 'empresax@hotmail.com', '987654148', 'Lima', 'Lima', 'Surco', 'Una direccion x 134', 'GAS', 'Manuel Nuñez', '18-06-2017', 'ACTIVO');
call usp_InsertaCliente('C1001', 'Empresa y', '78954125014', 'empresay@hotmail.com', '900570014', 'Lima', 'Lima', 'La Molina', 'Una direccion y 458', 'PETROLERO', 'Diego Landa', '18-06-2017', 'ACTIVO');
call usp_InsertaCliente('C1002', 'Empresa z', '96454421236', 'empresaz@hotmail.com', '963554785', 'Lima', 'Lima', 'Surquillo', 'Una direccion z 496', 'CONSTRUCTOR', 'Alex Daser', '18-06-2017', 'ACTIVO');
call usp_InsertaCliente('C1003', 'Empresa a', '89445621456', 'empresaa@hotmail.com', '987445896', 'Lima', 'Lima', 'Independencia', 'Una direccion z 4798', 'MUNICIPAL', 'Juan Lopez', '18-06-2017', 'ACTIVO');
call usp_InsertaCliente('C1004', 'Empa', '89445621456', 'empresaa@hotmail.com', '987445896', 'Lima', 'Lima', 'Independencia', 'Una direccion z 4798', 'MUNICIPAL', 'Juan Lopez', '18-06-2017', 'INACTIVO');

/*INSERTAR TIPO DE TRABAJO*/
delimiter $$
create procedure usp_InsertaTipoTrabajo
(
	P_COD_TIPTRABAJO			CHAR(5),
    P_DES_TIPTRABAJO			VARCHAR(50),
    P_FECHA_REG_TIPOTRABAJO		VARCHAR(10),
	P_ESTADO_TIPTRABAJO			VARCHAR(9)
)
begin
insert into TIPO_TRABAJO values (P_COD_TIPTRABAJO, P_DES_TIPTRABAJO, P_FECHA_REG_TIPOTRABAJO, P_ESTADO_TIPTRABAJO);
end $$
delimiter ;

/*ACTUALIZAR TRABAJADOR*/
delimiter $$
create procedure usp_ActualizaTrabajador
(
	P_COD_TRABAJADOR			CHAR(5),
    P_NOM_TRABAJADOR			VARCHAR(20),
    P_APEP_TRABAJADOR			VARCHAR(20),
    P_APEM_TRABAJADOR			VARCHAR(20),
    P_DNI_TRABAJADOR			VARCHAR(8),
    P_EMAIL_TRABAJADOR			VARCHAR(30),
    P_TELEFONO_TRABAJADOR		VARCHAR(9),
    P_DEPARTAMENTO_TRABAJADOR	VARCHAR(20),
    P_PROVINCIA_TRABAJADOR		VARCHAR(20),
    P_DISTRITO_TRABAJADOR		VARCHAR(20),
    P_DIRECCION_TRABAJADOR		VARCHAR(50),
    P_PASS_TRABAJADOR			VARCHAR(15)
)
begin
UPDATE TRABAJADOR
SET
	NOM_TRABAJADOR = P_NOM_TRABAJADOR,
    APEP_TRABAJADOR = P_APEP_TRABAJADOR,
    APEM_TRABAJADOR = P_APEM_TRABAJADOR,
    DNI_TRABAJADOR = P_DNI_TRABAJADOR,
    EMAIL_TRABAJADOR = P_EMAIL_TRABAJADOR,
    TELEFONO_TRABAJADOR = P_TELEFONO_TRABAJADOR,
    DEPARTAMENTO_TRABAJADOR = P_DEPARTAMENTO_TRABAJADOR,
    PROVINCIA_TRABAJADOR = P_PROVINCIA_TRABAJADOR,
    DISTRITO_TRABAJADOR = P_DISTRITO_TRABAJADOR,
    DIRECCION_TRABAJADOR = P_DIRECCION_TRABAJADOR,
    PASS_TRABAJADOR = P_PASS_TRABAJADOR
    WHERE COD_TRABAJADOR = P_COD_TRABAJADOR;
end $$
delimiter ;

/*ACTUALIZAR CLIENTE*/
delimiter $$
create procedure usp_ActualizaCliente
(
	P_COD_CLIENTE			CHAR(5),		
    P_RAZSOC_CLIENTE		VARCHAR(20),
    P_RUC_CLIENTE			VARCHAR(11),
    P_EMAIL_CLIENTE			VARCHAR(30),
    P_TELEFONO_CLIENTE		VARCHAR(9),
    P_DEPARTAMENTO_CLIENTE	VARCHAR(20),
    P_PROVINCIA_CLIENTE		VARCHAR(20),
    P_DISTRITO_CLIENTE		VARCHAR(20),
    P_DIRECCION_CLIENTE		VARCHAR(20),
    P_REPRESENTANTE_CLIENTE	VARCHAR(20)
)
begin
UPDATE CLIENTE
SET	
    RAZSOC_CLIENTE = P_RAZSOC_CLIENTE,
    RUC_CLIENTE = P_RUC_CLIENTE,
    EMAIL_CLIENTE = P_EMAIL_CLIENTE,
    TELEFONO_CLIENTE = P_TELEFONO_CLIENTE,
    DEPARTAMENTO_CLIENTE = P_DEPARTAMENTO_CLIENTE,
    PROVINCIA_CLIENTE = P_PROVINCIA_CLIENTE,
    DISTRITO_CLIENTE = P_DISTRITO_CLIENTE,
    DIRECCION_CLIENTE = P_DIRECCION_CLIENTE,
    REPRESENTANTE_CLIENTE = P_REPRESENTANTE_CLIENTE
    WHERE COD_CLIENTE = P_COD_CLIENTE;
end $$
delimiter ;

/*ACTUALIZAR TIPO DE TRABAJO*/
delimiter $$
create procedure usp_ActualizaTipTrabajo
(
	P_COD_TIPTRABAJO			CHAR(5),
    P_DES_TIPTRABAJO			VARCHAR(50)
)
begin
UPDATE TIPO_TRABAJO
SET	
    DES_TIPTRABAJO = P_DES_TIPTRABAJO
    WHERE COD_TIPTRABAJO = P_COD_TIPTRABAJO;
end $$
delimiter ;

/*DESACTIVA TRABAJADOR*/
delimiter $$
create procedure usp_DesactivaTrabajador
(
	P_COD_TRABAJADOR	CHAR(5)
)
begin
UPDATE TRABAJADOR
SET
	ESTADO_TRABAJADOR = 'INACTIVO'
    WHERE COD_TRABAJADOR = P_COD_TRABAJADOR;
end $$
delimiter ;

/*DESACTIVA TIPO DE TRABAJO*/
delimiter $$
create procedure usp_DesactivaTipoTrabajo
(
	P_COD_TIPTRABAJO	CHAR(5)
)
begin
UPDATE TIPO_TRABAJO
SET
	ESTADO_TIPTRABAJO = 'INACTIVO'
    WHERE COD_TIPTRABAJO = P_COD_TIPTRABAJO;
end $$
delimiter ;

/*DESACTIVA CLIENTE*/
delimiter $$
create procedure usp_DesactivaCliente
(
	P_COD_CLIENTE	CHAR(5)
)
begin
UPDATE CLIENTE
SET
	ESTADO_CLIENTE = 'INACTIVO'
    WHERE COD_CLIENTE = P_COD_CLIENTE;
end $$
delimiter ;

/*ACTIVA TRABAJADOR*/
delimiter $$
create procedure usp_ActivaTrabajador
(
	P_COD_TRABAJADOR	CHAR(5)
)
begin
UPDATE TRABAJADOR
SET
	ESTADO_TRABAJADOR = 'ACTIVO'
    WHERE COD_TRABAJADOR = P_COD_TRABAJADOR;
end $$
delimiter ;

/*ACTIVA TIPO DE TRABAJO*/
delimiter $$
create procedure usp_ActivaTipoTrabajo
(
	P_COD_TIPTRABAJO	CHAR(5)
)
begin
UPDATE TIPO_TRABAJO
SET
	ESTADO_TIPTRABAJO = 'ACTIVO'
    WHERE COD_TIPTRABAJO = P_COD_TIPTRABAJO;
end $$
delimiter ;

/*ACTIVA CLIENTE*/
delimiter $$
create procedure usp_ActivaCliente
(
	P_COD_CLIENTE	CHAR(5)
)
begin
UPDATE CLIENTE
SET
	ESTADO_CLIENTE = 'ACTIVO'
    WHERE COD_CLIENTE = P_COD_CLIENTE;
end $$
delimiter ;

/*ELIMINA TRABAJADOR*/
delimiter $$
create procedure usp_EliminaTrabajador
(
	P_COD_TRABAJADOR	CHAR(5)
)
begin
DELETE FROM TRABAJADOR
    WHERE COD_TRABAJADOR = P_COD_TRABAJADOR;
end $$
delimiter ;

/*ELIMINA TIPO DE TRABAJO*/
delimiter $$
create procedure usp_EliminaTipoTrabajo
(
	P_COD_TIPTRABAJO	CHAR(5)
)
begin
DELETE FROM tipo_trabajo
    WHERE COD_TIPTRABAJO = P_COD_TIPTRABAJO;
end $$
delimiter ;

/*ELIMINA CLIENTE*/
delimiter $$
create procedure usp_EliminaCliente
(
	P_COD_CLIENTE	CHAR(5)
)
begin
DELETE FROM CLIENTE
    WHERE COD_CLIENTE = P_COD_CLIENTE;
end $$
delimiter ;

/*REGISTRO DE SOLICITUD*/
delimiter $$
create procedure usp_RegistraSolicitud
(
	P_NUM_SOLICITUD			CHAR(8) ,
    P_PERMISOS_SOLICITUD	VARCHAR(20),
    P_ESTADO_SOLICITUD		VARCHAR(10),
    P_FECHA_REG_SOLICITUD	VARCHAR(10),
    P_FECHA_ACT_SOLICITUD	VARCHAR(10),
    P_COD_CLIENTE			CHAR(5)
)
begin
	insert into SOLICITUD values(P_NUM_SOLICITUD, P_PERMISOS_SOLICITUD, P_ESTADO_SOLICITUD, P_FECHA_REG_SOLICITUD, P_FECHA_ACT_SOLICITUD, P_COD_CLIENTE);
end $$
delimiter ;

/*CONCEDER PERMISOS A SOLICITUD*/
delimiter $$
create procedure usp_ActualizaSolicitud
(
	P_NUM_SOLICITUD			CHAR(8) ,
    P_PERMISOS_SOLICITUD	VARCHAR(20),
    P_FECHA_ACT_SOLICITUD	VARCHAR(10)
)
begin
	UPDATE SOLICITUD
    SET PERMISOS_SOLICITUD = P_PERMISOS_SOLICITUD,
        FECHA_ACT_SOLICITUD = P_FECHA_ACT_SOLICITUD
    WHERE NUM_SOLICITUD = P_NUM_SOLICITUD;
end $$
delimiter ;

/*ACTUALIZAR SOLICITUD A ATENDIDA*/
delimiter $$
create procedure usp_ActualizarSolicitudAtendida
(
	P_NUM_SOLICITUD				CHAR(8)
)
begin
	UPDATE SOLICITUD SET ESTADO_SOLICITUD = 'ATENDIDA' WHERE NUM_SOLICITUD = P_NUM_SOLICITUD;
end $$
delimiter ;

/*BUSQUEDA DE SOLICITUD*/
delimiter $$
create procedure usp_ListarBusquedaSolicitud(num char(8))
begin
	SELECT S.NUM_SOLICITUD, S.PERMISOS_SOLICITUD, S.ESTADO_SOLICITUD, S.FECHA_REG_SOLICITUD, S.FECHA_ACT_SOLICITUD, C.COD_CLIENTE, C.RUC_CLIENTE, C.RAZSOC_CLIENTE, C.REPRESENTANTE_CLIENTE, C.TIPO_CLIENTE FROM SOLICITUD S INNER JOIN CLIENTE C 
	ON C.COD_CLIENTE = S.COD_CLIENTE
    WHERE S.NUM_SOLICITUD = num;
end $$
delimiter ;

/*REGISTRAR PROYECTO*/
delimiter $$
create procedure usp_RegistrarProyecto
(
	P_NUM_PROYECTO				CHAR(8),
    P_FECHA_REG_PROYECTO		VARCHAR(10),
    P_FECHA_ACT_PROYECTO		VARCHAR(10),
    P_DEPARTAMENTO_PROYECTO		VARCHAR(20),
    P_PROVINCIA_PROYECTO		VARCHAR(20),
    P_DISTRITO_PROYECTO			VARCHAR(20),
    P_DIRECCION_PROYECTO		VARCHAR(50),
    P_ETAPA_PROYECTO			VARCHAR(7),
    P_COSTO_PROYECTO			DECIMAL(10,2),
    P_CAN_MES_TRABAJO			INT,
    P_NUM_SOLICITUD				CHAR(8),
    P_COD_TIPTRABAJO			CHAR(5),
    P_ESTADO_PERSONAL			INT
)
begin
	INSERT INTO PROYECTO VALUES (P_NUM_PROYECTO, P_FECHA_REG_PROYECTO, P_FECHA_ACT_PROYECTO, P_DEPARTAMENTO_PROYECTO, P_PROVINCIA_PROYECTO, P_DISTRITO_PROYECTO, P_DIRECCION_PROYECTO, P_ETAPA_PROYECTO, P_COSTO_PROYECTO, P_CAN_MES_TRABAJO, P_NUM_SOLICITUD, P_COD_TIPTRABAJO, P_ESTADO_PERSONAL);
end $$
delimiter ;

/*BUSQUEDA DE PROYECTOS*/
 delimiter $$
create procedure usp_ListarBusquedaProyecto(num char(8))
begin
	SELECT P.NUM_PROYECTO, C.RAZSOC_CLIENTE, P.FECHA_REG_PROYECTO, P.DEPARTAMENTO_PROYECTO, P.PROVINCIA_PROYECTO, P.DISTRITO_PROYECTO, P.DIRECCION_PROYECTO, T.DES_TIPTRABAJO, P.COSTO_PROYECTO, P.CAN_MES_TRABAJO, P.FECHA_ACT_PROYECTO, P.ETAPA_PROYECTO FROM PROYECTO P INNER JOIN SOLICITUD S
    ON S.NUM_SOLICITUD = P.NUM_SOLICITUD INNER JOIN CLIENTE C
    ON C.COD_CLIENTE = S.COD_CLIENTE INNER JOIN TIPO_TRABAJO T
    ON T.COD_TIPTRABAJO = P.COD_TIPTRABAJO
    WHERE P.NUM_PROYECTO = num;
end $$
delimiter ;

/*ACTUALIZAR PROYECTOS*/
delimiter $$
create procedure usp_ActualizaProyecto
(
	P_NUM_PROYECTO			CHAR(8),
    P_FECHA_ACT_PROYECTO	VARCHAR(10),
    P_ETAPA_PROYECTO		VARCHAR(7)
)
begin
	UPDATE PROYECTO
    SET FECHA_ACT_PROYECTO = P_FECHA_ACT_PROYECTO,
		ETAPA_PROYECTO = P_ETAPA_PROYECTO
    WHERE NUM_PROYECTO = P_NUM_PROYECTO;   
end $$
delimiter ;