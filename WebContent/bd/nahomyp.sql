USE BD_PLPII;
/*Archivo sql de Nahomy*/
DROP PROCEDURE IF EXISTS usp_ReportePorTipoDeTrabajo;
DROP PROCEDURE IF EXISTS usp_ReportePorCliente;
DROP PROCEDURE IF EXISTS usp_ReporteTipoDeTrabajo;
DROP PROCEDURE IF EXISTS usp_ReporteCliente;

/*ReportePorTipoDeTrabajo*/
delimiter $$
create procedure usp_ReporteTipoDeTrabajo()
begin
	select p.NUM_PROYECTO, c.RAZSOC_CLIENTE, p.ETAPA_PROYECTO, p.FECHA_ACT_PROYECTO, p.DEPARTAMENTO_PROYECTO, p.PROVINCIA_PROYECTO, p.DISTRITO_PROYECTO, p.DIRECCION_PROYECTO, tt.DES_TIPTRABAJO from tipo_trabajo tt inner join proyecto p
    on p.COD_TIPTRABAJO = tt.COD_TIPTRABAJO inner join solicitud s
    on s.NUM_SOLICITUD = p.NUM_SOLICITUD inner join cliente c
    on c.COD_CLIENTE = s.COD_CLIENTE;
end $$
delimiter ;
call usp_ReporteTipoDeTrabajo();

/*ReportePorTipoDeTrabajo*/
delimiter $$
create procedure usp_ReportePorTipoDeTrabajo(CODT CHAR(5))
begin
	select p.NUM_PROYECTO, c.RAZSOC_CLIENTE, p.ETAPA_PROYECTO, p.FECHA_ACT_PROYECTO, p.DEPARTAMENTO_PROYECTO, p.PROVINCIA_PROYECTO, p.DISTRITO_PROYECTO, p.DIRECCION_PROYECTO, tt.DES_TIPTRABAJO from tipo_trabajo tt inner join proyecto p
    on p.COD_TIPTRABAJO = tt.COD_TIPTRABAJO inner join solicitud s
    on s.NUM_SOLICITUD = p.NUM_SOLICITUD inner join cliente c
    on c.COD_CLIENTE = s.COD_CLIENTE
    where tt.COD_TIPTRABAJO = CODT;
end $$
delimiter ;
call usp_ReportePorTipoDeTrabajo('W1006');

/*ReportePorCliente*/
delimiter $$
create procedure usp_ReporteCliente()
begin
	select p.NUM_PROYECTO, c.RAZSOC_CLIENTE, p.ETAPA_PROYECTO, p.FECHA_ACT_PROYECTO, p.DEPARTAMENTO_PROYECTO, p.PROVINCIA_PROYECTO, p.DISTRITO_PROYECTO, p.DIRECCION_PROYECTO, tt.DES_TIPTRABAJO from tipo_trabajo tt inner join proyecto p
    on p.COD_TIPTRABAJO = tt.COD_TIPTRABAJO inner join solicitud s
    on s.NUM_SOLICITUD = p.NUM_SOLICITUD inner join cliente c
    on c.COD_CLIENTE = s.COD_CLIENTE;
end $$
delimiter ;
call usp_ReporteCliente();

/*ReportePorCliente*/
delimiter $$
create procedure usp_ReportePorCliente(CODC CHAR(5))
begin
	select p.NUM_PROYECTO, c.RAZSOC_CLIENTE, p.ETAPA_PROYECTO, p.FECHA_ACT_PROYECTO, p.DEPARTAMENTO_PROYECTO, p.PROVINCIA_PROYECTO, p.DISTRITO_PROYECTO, p.DIRECCION_PROYECTO, tt.DES_TIPTRABAJO from tipo_trabajo tt inner join proyecto p
    on p.COD_TIPTRABAJO = tt.COD_TIPTRABAJO inner join solicitud s
    on s.NUM_SOLICITUD = p.NUM_SOLICITUD inner join cliente c
    on c.COD_CLIENTE = s.COD_CLIENTE
    where c.COD_CLIENTE = CODC;
end $$
delimiter ;
call usp_ReportePorCliente('C1001');