USE BD_PLPII;
/*Archivo sql de Nahomy*/
/*Reporte TipoxTrabajador*/
drop procedure if exists usp_ReporteXTipoTrabajo
delimiter $$
create procedure usp_ListarXTipoTrabajo(ESTADO varchar(9))
begin
select COD_TIPTRABAJO,DES_TIPTRABAJO,FECHA_REG_TIPOTRABAJO, ESTADO_TIPTRABAJO from TIPO_TRABAJO
where ESTADO_TIPTRABAJO= ESTADO AND (ESTADO_TIPTRABAJO = 'ACTIVO' or ESTADO_TIPTRABAJO = 'INACTIVO');
end $$
delimiter ;

call usp_ListarXTipoTrabajo('INACTIVO');

/*insertar algunos tipo= inactivo*/
insert into TIPO_TRABAJO values('W1007', 'Excavaciones para delimitar', '18-06-2017','INACTIVO');
insert into TIPO_TRABAJO values('W1008', 'Excavaciones para delimitar', '18-06-2017','INACTIVO');




/*Reporte por rango de fechas*/

	delimiter $$
		create procedure usp_rangofecha  (fecha_r VARCHAR(10), fecha_a	VARCHAR(10))
		begin
		  select * 
		   from solicitud
		   where FECHA_REG_SOLICITUD = fecha_r AND FECHA_ACT_SOLICITUD = fecha_a;
		
           end$$
           DELIMiTER ;

call usp_rangofecha( '19-06-2017', '19-06-2017');

/*Reporte por cliente*/

delimiter $$
create procedure usp_ReporteCliente()
begin
select cod_cliente, razsoc_cliente from cliente;
end $$
delimiter ;

call usp_ReporteCliente();