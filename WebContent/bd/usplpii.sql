USE BD_PLPII;

/*LISTAR*/
delimiter $$
create procedure usp_ListaTrabajador()
begin
select * from TRABAJADOR
WHERE TIPO_TRABAJADOR = 'OBRERO' or TIPO_TRABAJADOR = 'ARQUEOLOGO';
end $$
delimiter ;

call usp_ListaTrabajador();

delimiter $$
create procedure usp_ListaCliente()
begin
select * from CLIENTE;
end $$
delimiter ;

call usp_ListaCliente();

delimiter $$
create procedure usp_ListaTipoTrabajo()
begin
select * from TIPO_TRABAJO;
end $$
delimiter ;

call usp_ListaTipoTrabajo();

/*INSERTAR*/
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
    P_USER_TRABAJADOR			VARCHAR(10),
    P_PASS_TRABAJADOR			VARCHAR(15),
    P_TIPO_TRABAJADOR			VARCHAR(20),
    P_ESTADO_TRABAJADOR			VARCHAR(9),
    P_FECHA_REG_TRABAJADOR		DATE
)
begin
insert into TRABAJADOR values (P_COD_TRABAJADOR, P_NOM_TRABAJADOR, P_APEP_TRABAJADOR, P_APEM_TRABAJADOR, P_DNI_TRABAJADOR, P_EMAIL_TRABAJADOR, P_TELEFONO_TRABAJADOR, P_DEPARTAMENTO_TRABAJADOR, P_PROVINCIA_TRABAJADOR, P_DISTRITO_TRABAJADOR, P_DIRECCION_TRABAJADOR, P_USER_TRABAJADOR, P_PASS_TRABAJADOR, P_TIPO_TRABAJADOR, P_ESTADO_TRABAJADOR, P_FECHA_REG_TRABAJADOR);
end $$
delimiter ;

call usp_InsertaTrabajador('T1000', 'Jean Pierre', 'Jordan', 'Solis', '73755436', 'jeanpierrejordan@outlook.com', '962571835', 'Lima', 'Lima', 'Los Olivos', 'Psj Fobos 141 Urb Mercurio', 'jotape', 'jotape123', 'GESTOR ARQUEOLOGO', 'ACTIVO', CURDATE());
call usp_InsertaTrabajador('T1001', 'Juan', 'Lopez', 'Baldeon', '78964752', 'juanlopez@outlook.com', '968947146', 'Lima', 'Lima', 'SMP', 'Psj Diamante148', 'juanjo', 'juan1345', 'ARQUEOLOGO', 'ACTIVO', CURDATE());

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
    P_ESTADO_TRABAJADOR		VARCHAR(9),
    P_FECHA_REG_CLIENTE		DATE
)
begin
insert into CLIENTE values (P_COD_CLIENTE, P_RAZSOC_CLIENTE, P_RUC_CLIENTE, P_EMAIL_CLIENTE, P_TELEFONO_CLIENTE, P_DEPARTAMENTO_CLIENTE, P_PROVINCIA_CLIENTE, P_DISTRITO_CLIENTE, P_DIRECCION_CLIENTE, P_TIPO_CLIENTE, P_REPRESENTANTE_CLIENTE, P_ESTADO_TRABAJADOR,P_FECHA_REG_CLIENTE);
end $$
delimiter ;

call usp_InsertaCliente('C1000', 'Empresa x', '12345678912', 'empresax@hotmail.com', '123456789', 'Lima', 'Lima', 'Surco', 'Una direccion x 134', 'GAS', 'Manuel Nuñez', 'ACTIVO',curdate());

delimiter $$
create procedure usp_InsertaTipoTrabajo
(
	P_COD_TIPTRABAJO			CHAR(5),
    P_DES_TIPTRABAJO			VARCHAR(50),
    P_ESTADO_TIPTRABAJO			VARCHAR(9),
    P_FECHA_REG_TIPOTRABAJO	DATE
)
begin
insert into TIPO_TRABAJO values (P_COD_TIPTRABAJO, P_DES_TIPTRABAJO, P_ESTADO_TIPTRABAJO, P_FECHA_REG_TIPOTRABAJO);
end $$
delimiter ;

/*call usp_InsertaTipoTrabajo('W1007', 'Test', 'ACTIVO',curdate());*/

/*ACTUALIZAR*/
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
    P_USER_TRABAJADOR			VARCHAR(10),
    P_PASS_TRABAJADOR			VARCHAR(15),
    P_TIPO_TRABAJADOR			VARCHAR(20)
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
    USER_TRABAJADOR = P_USER_TRABAJADOR,
    PASS_TRABAJADOR = P_PASS_TRABAJADOR,
    TIPO_TRABAJADOR = P_TIPO_TRABAJADOR
    WHERE COD_TRABAJADOR = P_COD_TRABAJADOR;
end $$
delimiter ;

/*call usp_ActualizaTrabajador('T1000', 'Jean', 'Jordan', 'Solis', '73755436', 'jeanpierrejordan@outlook.com', '962571835', 'Lima', 'Lima', 'Los Olivos', 'Psj Fobos 141 Urb Mercurio', 'jotape', 'jotape123', 'GESTOR ARQUEOLOGO');*/

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
    P_TIPO_CLIENTE			VARCHAR(20),
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
    TIPO_CLIENTE = P_TIPO_CLIENTE,
    REPRESENTANTE_CLIENTE = P_REPRESENTANTE_CLIENTE
    WHERE COD_CLIENTE = P_COD_CLIENTE;
end $$
delimiter ;

/*call usp_ActualizaCliente('C1000', 'Empresa x1', '12345678912', 'empresax@hotmail.com', '123456789', 'Lima', 'Lima', 'Surco', 'Una direccion x 134', 'GASAAA', 'Manuel Nuñez');*/

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

/*call usp_ActualizaTipTrabajo('W1007', 'TestAct');*/


/*DESACTIVA*/
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

/*call usp_DesactivaTrabajador('T1000');*/

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

/*call usp_DesactivaTipoTrabajo('TR107');*/

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

/*call usp_DesactivaCliente('C1000');*/

/*ACTIVA*/
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

/*call usp_ActivaTrabajador('T1000');*/

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

/*call usp_ActivaTipoTrabajo('TR107');*/

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

/*call usp_ActivaCliente('C1000');*/

/*Elimina*/
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

/*call usp_EliminaTrabajador('T1000');*/

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

/*call usp_EliminaTipoTrabajo('TR107');*/

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

/*call usp_EliminaCliente('C1000');*/


/*
select COD_TRABAJADOR from TRABAJADOR order by COD_TRABAJADOR desc limit 1;
select COD_TIPTRABAJO from TIPO_TRABAJO order by COD_TIPTRABAJO desc limit 1;
select COD_CLIENTE from CLIENTE order by COD_CLIENTE desc limit 1;
*/