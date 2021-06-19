use sistemaventas
go

-- procedimientos almacenados
-- Tabla Accion
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarAccion')
drop procedure SP_RegistrarAccion
go

create procedure SP_RegistrarAccion
@nom varchar(20),
@est bit

as begin
begin tran SP_RegistrarAccion

begin try
insert into T_Accion values(@nom,@est)
commit tran SP_RegistrarAccion
end try

begin catch
rollback tran SP_RegistrarAccion
end catch

end
go




-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarAccion')
drop procedure SP_ActualizarAccion
go
create procedure SP_ActualizarAccion
@cod int,
@nom varchar(20),
@est bit
as begin
begin tran SP_ActualizarAccion
begin try
update t_Accion set nomacc=@nom, estacc=@est where codacc=@cod
commit tran SP_ActualizarAccion
end try
begin catch
rollback tran SP_ActualizarAccion
end catch
end
go
-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarAccion')
drop procedure SP_EliminarAccion
go
create procedure SP_EliminarAccion
@cod int
as begin
begin tran SP_EliminarAccion
begin try
update t_Accion set estacc=0 where codacc=@cod
commit tran SP_EliminarAccion
end try
begin catch
rollback tran SP_EliminarAccion
end catch
end
go
-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarAccion')
drop procedure SP_MostrarAccion
go
create procedure SP_MostrarAccion
as
select * from T_Accion where estacc=1
go
-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarAccionTodo')
drop procedure SP_MostrarAccionTodo
go
create procedure SP_MostrarAccionTodo
as
select * from T_Accion
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarAccion')
drop procedure SP_BuscarAccion
go
create procedure SP_BuscarAccion
@cod int
as
select * from T_Accion where codacc=@cod
go


-- procedimientos almacenados
-- Tabla categoria
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarCategoria')
drop procedure SP_RegistrarCategoria
go

create procedure SP_RegistrarCategoria
@nom varchar(40),
@est bit

as begin
begin tran SP_RegistrarCategoria

begin try
insert into T_Categoria values(@nom,@est)
commit tran SP_RegistrarCategoria
end try

begin catch
rollback tran SP_RegistrarCategoria
end catch

end
go


-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarCategoria')
drop procedure SP_ActualizarCategoria
go
create procedure SP_ActualizarCategoria
@cod int,
@nom varchar(40),
@est bit
as begin
begin tran SP_ActualizarCategoria
begin try
update T_Categoria set nomcat=@nom, estcat=@est where codcat=@cod
commit tran SP_ActualizarCategoria
end try
begin catch
rollback tran SP_ActualizarCategoria
end catch
end
go


-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarCategoria')
drop procedure SP_EliminarCategoria
go
create procedure SP_EliminarCategoria
@cod int
as begin
begin tran SP_EliminarCategoria
begin try
update T_Categoria set estcat=0 where codcat=@cod
commit tran SP_EliminarCategoria
end try
begin catch
rollback tran SP_EliminarCategoria
end catch
end
go


-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarCategoria')
drop procedure SP_MostrarCategoria
go
create procedure SP_MostrarCategoria
as
select * from T_Categoria where estcat=1
go



-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarCategoriaTodo')
drop procedure SP_MostrarCategoriaTodo
go
create procedure SP_MostrarCategoriaTodo
as
select * from T_Categoria
go

-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarCategoria')
drop procedure SP_BuscarCategoria
go
create procedure SP_BuscarCategoria
@cod int
as
select * from T_Categoria where codcat=@cod
go


-- procedimientos almacenados
-- Tabla direccion
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarDireccion')
drop procedure SP_RegistrarDireccion
go

create procedure SP_RegistrarDireccion
@pred varchar(20),
@nom varchar(40),
@desd varchar(40),
@est bit

as begin
begin tran SP_RegistrarDireccion

begin try
insert into T_Direccion values(@pred, @nom, @desd,@est)
commit tran SP_RegistrarDireccion
end try

begin catch
rollback tran SP_RegistrarDireccion
end catch

end
go


-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarDireccion')
drop procedure SP_ActualizarDireccion
go
create procedure SP_ActualizarDireccion
@cod int,
@pred varchar(20),
@nom varchar(40),
@desd varchar(40),
@est bit

as begin
begin tran SP_ActualizarDireccion
begin try
update T_Direccion set predir=@pred, nomdir=@nom, desdir=@desd, estdir=@est where coddir=@cod
commit tran SP_ActualizarDireccion
end try
begin catch
rollback tran SP_ActualizarDireccion
end catch
end
go

-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarDireccion')
drop procedure SP_EliminarDireccion
go
create procedure SP_EliminarDireccion
@cod int
as begin
begin tran SP_EliminarDireccion
begin try
update T_Direccion set estdir=0 where coddir=@cod
commit tran SP_EliminarDireccion
end try
begin catch
rollback tran SP_EliminarDireccion
end catch
end
go


-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarDireccion')
drop procedure SP_MostrarDireccion
go
create procedure SP_MostrarDireccion
as
select * from T_Direccion where estdir=1
go

-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarDireccionTodo')
drop procedure SP_MostrarDireccionTodo
go
create procedure SP_MostrarDireccionTodo
as
select * from T_Direccion
go

-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarDireccion')
drop procedure SP_BuscarDireccion
go
create procedure SP_BuscarDireccion
@cod int
as
select * from T_Direccion where coddir=@cod
go



-- procedimientos almacenados
-- Tabla Perfil
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarPerfil')
drop procedure SP_RegistrarPerfil
go

create procedure SP_RegistrarPerfil
@nom varchar(30),
@est bit

as begin
begin tran SP_RegistrarPerfil

begin try
insert into T_Perfil values(@nom,@est)
commit tran SP_RegistrarPerfil
end try

begin catch
rollback tran SP_RegistrarPerfil
end catch

end
go


-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarPerfil')
drop procedure SP_ActualizarPerfil
go
create procedure SP_ActualizarPerfil
@cod int,
@nom varchar(30),
@est bit
as begin
begin tran SP_ActualizarPerfil
begin try
update T_Perfil set nomper=@nom, estper=@est where codper=@cod
commit tran SP_ActualizarPerfil
end try
begin catch
rollback tran SP_ActualizarPerfil
end catch
end
go


-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarPerfil')
drop procedure SP_EliminarPerfil
go
create procedure SP_EliminarPerfil
@cod int
as begin
begin tran SP_EliminarPerfil
begin try
update T_Perfil set estper=0 where codper=@cod
commit tran SP_EliminarPerfil
end try
begin catch
rollback tran SP_EliminarPerfil
end catch
end
go

-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarPerfil')
drop procedure SP_MostrarPerfil
go
create procedure SP_MostrarPerfil
as
select * from T_Perfil where estper=1
go


-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarPerfilTodo')
drop procedure SP_MostrarPerfilTodo
go
create procedure SP_MostrarPerfilTodo
as
select * from T_Perfil
go

-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarPerfil')
drop procedure SP_BuscarPerfil
go
create procedure SP_BuscarPerfil
@cod int
as
select * from T_Perfil where codper=@cod
go



-- procedimientos almacenados
-- Tabla tipo de documento
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarTipoDocumento')
drop procedure SP_RegistrarTipoDocumento
go

create procedure SP_RegistrarTipoDocumento
@nom varchar(20),
@est bit

as begin
begin tran SP_RegistrarTipoDocumento

begin try
insert into T_TipoDocumento values(@nom,@est)
commit tran SP_RegistrarTipoDocumento
end try

begin catch
rollback tran SP_RegistrarTipoDocumento
end catch

end
go

-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarTipoDocumento')
drop procedure SP_ActualizarTipoDocumento
go
create procedure SP_ActualizarTipoDocumento
@cod int,
@nom varchar(20),
@est bit
as begin
begin tran SP_ActualizarTipoDocumento
begin try
update T_TipoDocumento set nomtdo=@nom, esttdo=@est where codtdo=@cod
commit tran SP_ActualizarTipoDocumento
end try
begin catch
rollback tran SP_ActualizarTipoDocumento
end catch
end
go
-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarTipoDocumento')
drop procedure SP_EliminarTipoDocumento
go
create procedure SP_EliminarTipoDocumento
@cod int
as begin
begin tran SP_EliminarTipoDocumento
begin try
update T_TipoDocumento set esttdo=0 where codtdo=@cod
commit tran SP_EliminarTipoDocumento
end try
begin catch
rollback tran SP_EliminarTipoDocumento
end catch
end
go
-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarTipoDocumento')
drop procedure SP_MostrarTipoDocumento
go
create procedure SP_MostrarTipoDocumento
as
select * from T_TipoDocumento where esttdo=1
go
-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarTipoDocumentoTodo')
drop procedure SP_MostrarTipoDocumentoTodo
go
create procedure SP_MostrarTipoDocumentoTodo
as
select * from T_TipoDocumento
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarTipoDocumento')
drop procedure SP_BuscarTipoDocumento
go
create procedure SP_BuscarTipoDocumento
@cod int
as
select * from T_TipoDocumento where codtdo=@cod
go



-- procedimientos almacenados
-- Tabla producto
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarProducto')
drop procedure SP_RegistrarProducto
go

create procedure SP_RegistrarProducto
@nom varchar(40),
@des varchar(300),
@can numeric(7, 2),
@est bit, 
@img image, 
@codc int, 
@pc money, 
@pv money


as begin
begin tran SP_RegistrarProducto

begin try
insert into T_Producto values(@nom, @des, @can, @est, @img, @codc, @pc, @pv)
commit tran SP_RegistrarProducto
end try

begin catch
rollback tran SP_RegistrarProducto
end catch

end
go


-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarProducto')
drop procedure SP_ActualizarProducto
go
create procedure SP_ActualizarProducto
@cod int,
@nom varchar(40),
@des varchar(300),
@can numeric(7, 2),
@est bit, 
@img image, 
@codc int, 
@pc money, 
@pv money
as begin
begin tran SP_ActualizarProducto
begin try
update T_Producto set nompro=@nom, despro=@des, canpro=@can, estpro=@est, 
imgpro=@img, codcat=@codc, prcpro=@pc, prvpro=@pv where codpro=@cod
commit tran SP_ActualizarProducto
end try
begin catch
rollback tran SP_ActualizarProducto
end catch
end
go


-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarProducto')
drop procedure SP_EliminarProducto
go
create procedure SP_EliminarProducto
@cod int
as begin
begin tran SP_EliminarProducto
begin try
update T_Producto set estpro=0 where codpro=@cod
commit tran SP_EliminarProducto
end try
begin catch
rollback tran SP_EliminarProducto
end catch
end
go

-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarProducto')
drop procedure SP_MostrarProducto
go
create procedure SP_MostrarProducto
as
  select p.codpro,  p.nompro, p.despro, p.canpro, p.estpro,p.imgpro, c.nomcat, p.prcpro, p.prvpro
  from T_producto as p, (select codcat, nomcat from T_Categoria) as c
  
   where p.codcat=c.codcat and p.estpro=1
go


-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarProductoTodo')
drop procedure SP_MostrarProductoTodo
go
create procedure SP_MostrarProductoTodo
as
 select p.codpro,  p.nompro, p.despro, p.canpro, p.estpro,p.imgpro, c.nomcat, p.prcpro, p.prvpro
  from T_producto as p, (select codcat, nomcat from T_Categoria) as c
  
   where p.codcat=c.codcat
go

-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarProducto')
drop procedure SP_BuscarProducto
go
create procedure SP_BuscarProducto
@cod int
as
select p.codpro,  p.nompro, p.despro, p.canpro, p.estpro,p.imgpro, c.nomcat, p.prcpro, p.prvpro
  from T_producto as p, (select codcat, nomcat from T_Categoria) as c
  
   where p.codcat=c.codcat and p.codpro=@cod
go




-- procedimientos almacenados
-- Tabla Cliente
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarCliente')
drop procedure SP_RegistrarCliente
go

create procedure SP_RegistrarCliente
@nom varchar(40),
@ape varchar(40),
@tel varchar(7),
@cel varchar(9),
@cor varchar(40), 
@est bit,
@cdir int, 
@cubi int,
@cdoc int,
@fcli datetime

as begin
begin tran SP_RegistrarCliente

begin try
insert into T_Cliente values(@nom, @ape, @tel, @cel, @cor, @est, @cdir, @cubi, @cdoc, @fcli)
commit tran SP_RegistrarCliente
end try

begin catch
rollback tran SP_RegistrarCliente
end catch

end
go




-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarCliente')
drop procedure SP_ActualizarCliente
go
create procedure SP_ActualizarCliente
@cod int,
@nom varchar(40),
@ape varchar(40),
@tel varchar(7),
@cel varchar(9),
@cor varchar(40), 
@est bit,
@cdir int, 
@cubi int,
@cdoc int,
@fcli datetime
as begin
begin tran SP_ActualizarCliente
begin try
update t_Cliente set nomcli=@nom, apecli=@ape, telcli=@tel, celcli=@cel, corcli=@cor, 
estcli=@est, coddir=@cdir, codubi=@cubi, coddoc=@cdoc, feccli=@fcli where codcli=@cod
commit tran SP_ActualizarCliente
end try
begin catch
rollback tran SP_ActualizarCliente
end catch
end
go
-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarCliente')
drop procedure SP_EliminarCliente
go
create procedure SP_EliminarCliente
@cod int
as begin
begin tran SP_EliminarCliente
begin try
update t_Cliente set estcli=0 where codcli=@cod
commit tran SP_EliminarCliente
end try
begin catch
rollback tran SP_EliminarCliente
end catch
end
go
-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarCliente')
drop procedure SP_MostrarCliente
go
create procedure SP_MostrarCliente
as
select c.codcli,  c.nomcli, c.apecli, c.telcli, c.celcli, c.corcli ,c.estcli,d.coddir,  d.nomdir, u.codubi, dc.coddoc, dc.numdoc, c.feccli
  from T_Cliente as c, (select coddir, nomdir from T_Direccion) as d, (select codubi from T_Ubigeo) as u, 
  (select coddoc, numdoc from T_Documento) as dc
  
   where c.coddir=d.coddir and c.codubi=u.codubi and c.coddoc=dc.coddoc and c.estcli=1
go
-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarClienteTodo')
drop procedure SP_MostrarClienteTodo
go
create procedure SP_MostrarClienteTodo
as

select c.codcli,  c.nomcli, c.apecli, c.telcli, c.celcli, c.corcli ,c.estcli,d.coddir,  d.nomdir, u.codubi, dc.coddoc, dc.numdoc, c.feccli
  from T_Cliente as c, (select coddir, nomdir from T_Direccion) as d, (select codubi from T_Ubigeo) as u, 
  (select coddoc, numdoc from T_Documento) as dc
  
   where c.coddir=d.coddir and c.codubi=u.codubi and c.coddoc=dc.coddoc
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarCliente')
drop procedure SP_BuscarCliente
go
create procedure SP_BuscarCliente
@cod int
as
select c.codcli,  c.nomcli, c.apecli, c.telcli, c.celcli, c.corcli ,c.estcli,d.coddir,  d.nomdir, u.codubi, dc.coddoc, dc.numdoc, c.feccli
  from T_Cliente as c, (select coddir, nomdir from T_Direccion) as d, (select codubi from T_Ubigeo) as u, 
  (select coddoc, numdoc from T_Documento) as dc
  
   where c.coddir=d.coddir and c.codubi=u.codubi and c.coddoc=dc.coddoc and c.codcli=@cod

go



-- procedimientos almacenados
-- Tabla ControlAccion
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarControlAccion')
drop procedure SP_RegistrarControlAccion
go

create procedure SP_RegistrarControlAccion
@coem int,
@coda int,
@feca datetime


as begin
begin tran SP_RegistrarControlAccion

begin try
insert into T_ControlAccion values(@coem,@coda, @feca)
commit tran SP_RegistrarControlAccion
end try

begin catch
rollback tran SP_RegistrarControlAccion
end catch

end
go

-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarControlAccion')
drop procedure SP_ActualizarControlAccion
go
create procedure SP_ActualizarControlAccion
@cod int,
@coem int,
@coda int,
@feca datetime
as begin
begin tran SP_ActualizarControlAccion
begin try
update T_ControlAccion set codemp=@coem, codacc=@coda, fecacac=@feca where codcac=@cod
commit tran SP_ActualizarControlAccion
end try
begin catch
rollback tran SP_ActualizarControlAccion
end catch
end
go


-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarControlAccionTodo')
drop procedure SP_MostrarControlAccionTodo
go
create procedure SP_MostrarControlAccionTodo
as
select ca.codcac,  e.codemp, e.nomemp, e.apeemp, a.codacc, a.nomacc, ca.fecacac
  from T_ControlAccion as ca, (select codemp, nomemp, apeemp from T_Empleado) as e, (select codacc, nomacc from T_Accion) as a
   
   where ca.codemp=e.codemp and ca.codacc=a.codacc 
go

-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarControlAccion')
drop procedure SP_BuscarControlAccion
go
create procedure SP_BuscarControlAccion
@cod int
as
select ca.codcac,  e.codemp, e.nomemp, e.apeemp, a.codacc, a.nomacc, ca.fecacac
  from T_ControlAccion as ca, (select codemp, nomemp, apeemp from T_Empleado) as e, (select codacc, nomacc from T_Accion) as a
   
   where ca.codemp=e.codemp and ca.codacc=a.codacc and  ca.codcac=@cod
go







-- procedimientos almacenados
-- Tabla Documento
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarDocumento')
drop procedure SP_RegistrarDocumento
go

create procedure SP_RegistrarDocumento
@num varchar(20),
@est bit,
@cdo int

as begin
begin tran SP_RegistrarDocumento

begin try
insert into T_Documento values(@num,@est, @cdo)
commit tran SP_RegistrarDocumento
end try

begin catch
rollback tran SP_RegistrarDocumento
end catch

end
go




-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarDocumento')
drop procedure SP_ActualizarDocumento
go
create procedure SP_ActualizarDocumento
@cod int,
@num varchar(20),
@est bit,
@cdo int
as begin
begin tran SP_ActualizarDocumento
begin try
update T_Documento set numdoc=@num, estdoc=@est, codtdo=@cdo where coddoc=@cod
commit tran SP_ActualizarDocumento
end try
begin catch
rollback tran SP_ActualizarDocumento
end catch
end
go
-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarDocumento')
drop procedure SP_EliminarDocumento
go
create procedure SP_EliminarDocumento
@cod int
as begin
begin tran SP_EliminarDocumento
begin try
update T_Documento set estdoc=0 where coddoc=@cod
commit tran SP_EliminarDocumento
end try
begin catch
rollback tran SP_EliminarDocumento
end catch
end
go
-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarDocumento')
drop procedure SP_MostrarDocumento
go
create procedure SP_MostrarDocumento
as
 select d.coddoc,  d.numdoc, d.estdoc, td.codtdo, td.nomtdo
  from T_Documento as d, (select codtdo, nomtdo from T_TipoDocumento) as td
  where d.codtdo=td.codtdo and d.estdoc=1
go
-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarDocumentoTodo')
drop procedure SP_MostrarDocumentoTodo
go
create procedure SP_MostrarDocumentoTodo
as
select d.coddoc,  d.numdoc, d.estdoc, td.codtdo, td.nomtdo
  from T_Documento as d, (select codtdo, nomtdo from T_TipoDocumento) as td
  where d.codtdo=td.codtdo
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarDocumento')
drop procedure SP_BuscarDocumento
go
create procedure SP_BuscarDocumento
@cod int
as
select d.coddoc,  d.numdoc, d.estdoc, td.codtdo, td.nomtdo
  from T_Documento as d, (select codtdo, nomtdo from T_TipoDocumento) as td
  where d.codtdo=td.codtdo and d.coddoc=@cod
go




-- procedimientos almacenados
-- Tabla Empleado
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarEmpleado')
drop procedure SP_RegistrarEmpleado
go

create procedure SP_RegistrarEmpleado
@nom varchar(40),
@ape varchar(40),
@fec datetime,
@tel varchar(7),
@cel varchar(9),
@cor varchar(40),
@img image, 
@usu varchar(40),
@cla varchar(40),
@est bit,
@cou int,
@cod int,
@codp int,
@codd int

as begin
begin tran SP_RegistrarEmpleado

begin try
insert into T_Empleado values(@nom, @ape, @fec, @tel, @cel, @cor, @img, @usu, @cla, @est, @cou, @cod, @codp, @codd)
commit tran SP_RegistrarEmpleado
end try

begin catch
rollback tran SP_RegistrarEmpleado
end catch

end
go




-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarEmpleado')
drop procedure SP_ActualizarEmpleado
go
create procedure SP_ActualizarEmpleado
@code int,
@nom varchar(40),
@ape varchar(40),
@fec datetime,
@tel varchar(7),
@cel varchar(9),
@cor varchar(40),
@img image, 
@usu varchar(40),
@cla varchar(40),
@est bit,
@cou int,
@cod int,
@codp int,
@codd int
as begin
begin tran SP_ActualizarEmpleado
begin try
update t_Empleado set nomemp=@nom, apeemp=@ape, fecemp=@fec, telemp=@tel, celemp=@cel, coremp=@cor, 
 imgemp=@img, usuemp=@usu, claemp=@cla, estemp=@est, codubi=@cou, coddir=@cod, codper=@codp, coddoc=@codd  where codemp=@code
commit tran SP_ActualizarEmpleado
end try
begin catch
rollback tran SP_ActualizarEmpleado
end catch
end
go
-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarEmpleado')
drop procedure SP_EliminarEmpleado
go
create procedure SP_EliminarEmpleado
@cod int
as begin
begin tran SP_EliminarEmpleado
begin try
update T_Empleado set estemp=0 where codemp=@cod
commit tran SP_EliminarEmpleado
end try
begin catch
rollback tran SP_EliminarEmpleado
end catch
end
go
-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarEmpleado')
drop procedure SP_MostrarEmpleado
go
create procedure SP_MostrarEmpleado
as
select e.codemp,  e.apeemp, e.fecemp, e.telemp, e.celemp, e.coremp, e.imgemp, e.usuemp, e.claemp, e.estemp,
 d.coddir, d.nomdir, u.codubi, dc.coddoc, dc.numdoc, p.codper, p.nomper
  from T_Empleado as e, (select coddir, nomdir from T_Direccion) as d, (select codubi from T_Ubigeo) as u,
  (select coddoc, numdoc from T_Documento) as dc, (select codper, nomper from T_Perfil) as p
  
   where e.coddir=d.coddir and e.codubi=u.codubi and e.coddoc=dc.coddoc  and e.codper=p.codper and e.estemp=1
go
-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarEmpleadoTodo')
drop procedure SP_MostrarEmpleadoTodo
go
create procedure SP_MostrarEmpleadoTodo
as
select e.codemp,  e.apeemp, e.fecemp, e.telemp, e.celemp, e.coremp, e.imgemp, e.usuemp, e.claemp, e.estemp,
 d.coddir, d.nomdir, u.codubi, dc.coddoc, dc.numdoc,  p.codper, p.nomper
  from T_Empleado as e, (select coddir, nomdir from T_Direccion) as d, (select codubi from T_Ubigeo) as u,
  (select coddoc, numdoc from T_Documento) as dc, (select codper, nomper from T_Perfil) as p
  
   where e.coddir=d.coddir and e.codubi=u.codubi and e.coddoc=dc.coddoc  and e.codper=p.codper
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarEmpleado')
drop procedure SP_BuscarEmpleado
go
create procedure SP_BuscarEmpleado
@cod int
as
select e.codemp,  e.apeemp, e.fecemp, e.telemp, e.celemp, e.coremp, e.imgemp, e.usuemp, e.claemp, e.estemp,
 d.coddir, d.nomdir, u.codubi, dc.coddoc, dc.numdoc,  p.codper, p.nomper
  from T_Empleado as e, (select coddir, nomdir from T_Direccion) as d, (select codubi from T_Ubigeo) as u,
  (select coddoc, numdoc from T_Documento) as dc, (select codper, nomper from T_Perfil) as p
  
   where e.coddir=d.coddir and e.codubi=u.codubi and e.coddoc=dc.coddoc  and e.codper=p.codper and e.codemp=@cod
go




-- procedimientos almacenados
-- Tabla Menu
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarMenu')
drop procedure SP_RegistrarMenu
go

create procedure SP_RegistrarMenu
@nom varchar(20),
@rut varchar(20),
@est bit,
@icon varchar(20)

as begin
begin tran SP_RegistrarMenu

begin try
insert into T_Menu values(@nom, @rut, @est, @icon)
commit tran SP_RegistrarMenu
end try

begin catch
rollback tran SP_RegistrarMenu
end catch

end
go


--------------------------------------------------------------

-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarMenu')
drop procedure SP_ActualizarMenu
go
create procedure SP_ActualizarMenu
@cod int,
@nom varchar(20),
@rut varchar(20),
@est bit,
@icon varchar(20)

as begin
begin tran SP_ActualizarMenu
begin try
update T_Menu set nomen=@nom, rutmen=@rut, estmen=@est, icomen=@icon where codmen=@cod
commit tran SP_ActualizarMenu
end try
begin catch
rollback tran SP_ActualizarMenu
end catch
end
go
-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarMenu')
drop procedure SP_EliminarMenu
go
create procedure SP_EliminarMenu
@cod int
as begin
begin tran SP_EliminarMenu
begin try
update T_Menu set estmen=0 where codmen=@cod
commit tran SP_EliminarMenu
end try
begin catch
rollback tran SP_EliminarMenu
end catch
end
go
-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarMenu')
drop procedure SP_MostrarMenu
go
create procedure SP_MostrarMenu
as
select * from T_Menu where estmen=1
go
-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarMenuTodo')
drop procedure SP_MostrarMenuTodo
go
create procedure SP_MostrarMenuTodo
as
select * from T_Menu
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarMenu')
drop procedure SP_BuscarMenu
go
create procedure SP_BuscarMenu
@cod int
as
select * from T_Menu where codmen=@cod
go



-- procedimientos almacenados
-- Tabla submenu
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarSubmenu')
drop procedure SP_RegistrarSubmenu
go

create procedure SP_RegistrarSubmenu
@nom varchar(20),
@rut varchar(20),
@est bit,
@icon varchar(20)

as begin
begin tran SP_RegistrarSubmenu

begin try
insert into T_SubMenu values(@nom, @rut, @est, @icon)
commit tran SP_RegistrarSubmenu
end try

begin catch
rollback tran SP_RegistrarSubmenu
end catch

end
go




-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarSubmenu')
drop procedure SP_ActualizarSubmenu
go
create procedure SP_ActualizarSubmenu
@cod int,
@nom varchar(20),
@rut varchar(20),
@est bit,
@icon varchar(20)
as begin
begin tran SP_ActualizarSubmenu
begin try
update T_SubMenu set nomsme=@nom, rutsme=@rut, estsme=@est, icosme=@icon where codsme=@cod
commit tran SP_ActualizarSubmenu
end try
begin catch
rollback tran SP_ActualizarSubmenu
end catch
end
go
-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarSubmenu')
drop procedure SP_EliminarSubmenu
go
create procedure SP_EliminarSubmenu
@cod int
as begin
begin tran SP_EliminarSubmenu
begin try
update T_SubMenu set estsme=0 where codsme=@cod
commit tran SP_EliminarSubmenu
end try
begin catch
rollback tran SP_EliminarSubmenu
end catch
end
go
-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarSubmenu')
drop procedure SP_MostrarSubmenu
go
create procedure SP_MostrarSubmenu
as
select * from T_SubMenu where estsme=1
go
-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarSubmenuTodo')
drop procedure SP_MostrarSubmenuTodo
go
create procedure SP_MostrarSubmenuTodo
as
select * from T_SubMenu
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarSubmenu')
drop procedure SP_BuscarSubmenu
go
create procedure SP_BuscarSubmenu
@cod int
as
select * from T_SubMenu where codsme=@cod
go


-- procedimientos almacenados
-- Tabla Ticketventa
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarTicketVenta')
drop procedure SP_RegistrarTicketVenta
go

create procedure SP_RegistrarTicketVenta
@fec datetime,
@est bit,
@codc int,
@code int

as begin
begin tran SP_RegistrarTicketVenta

begin try
insert into T_TicketVenta values(@fec, @est, @codc, @code)
commit tran SP_RegistrarTicketVenta
end try

begin catch
rollback tran SP_RegistrarTicketVenta
end catch

end
go




-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarTicketVenta')
drop procedure SP_ActualizarTicketVenta
go
create procedure SP_ActualizarTicketVenta
@cod int,
@fec datetime,
@est bit,
@codc int,
@code int
as begin
begin tran SP_ActualizarTicketVenta
begin try
update T_TicketVenta set fectic=@fec, esttic=@est, codcli=@codc, codemp=@code where nrotic=@cod
commit tran SP_ActualizarTicketVenta
end try
begin catch
rollback tran SP_ActualizarTicketVenta
end catch
end
go
-- Eliminar
if exists(select * from sys.procedures where name='SP_EliminarTicketVenta')
drop procedure SP_EliminarTicketVenta
go
create procedure SP_EliminarTicketVenta
@cod int
as begin
begin tran SP_EliminarTicketVenta
begin try
update T_TicketVenta set esttic=0 where nrotic=@cod
commit tran SP_EliminarTicketVenta
end try
begin catch
rollback tran SP_EliminarTicketVenta
end catch
end
go
-- Mostrar
if exists(select * from sys.procedures where name='SP_MostrarTicketVenta')
drop procedure SP_MostrarTicketVenta
go
create procedure SP_MostrarTicketVenta
as
select t.nrotic,  c.codcli, c.nomcli, c.apecli, c.telcli, c.celcli, c.corcli, c.feccli, 
e.codemp, e.nomemp, e.apeemp, e.fecemp, e.telemp, e.celemp, e.coremp, e.imgemp, e.usuemp, e.claemp, t.fectic, t.esttic
  from T_TicketVenta as t, (select codcli, nomcli, apecli, telcli, celcli, corcli, feccli from T_Cliente) as c,
   (select codemp, nomemp, apeemp, fecemp, telemp, celemp, coremp, imgemp, usuemp, claemp from T_Empleado) as e
  
   where t.codcli=c.codcli and t.codemp=e.codemp and t.esttic=1
go
-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarTicketVentaTodo')
drop procedure SP_MostrarTicketVentaTodo
go
create procedure SP_MostrarTicketVentaTodo
as
select t.nrotic,  c.codcli, c.nomcli, c.apecli, c.telcli, c.celcli, c.corcli, c.feccli, 
e.codemp, e.nomemp, e.apeemp, e.fecemp, e.telemp, e.celemp, e.coremp, e.imgemp, e.usuemp, e.claemp, t.fectic, t.esttic
  from T_TicketVenta as t, (select codcli, nomcli, apecli, telcli, celcli, corcli, feccli from T_Cliente) as c,
   (select codemp, nomemp, apeemp, fecemp, telemp, celemp, coremp, imgemp, usuemp, claemp from T_Empleado) as e
  
   where t.codcli=c.codcli and t.codemp=e.codemp
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarTicketVenta')
drop procedure SP_BuscarTicketVenta
go
create procedure SP_BuscarTicketVenta
@cod int
as
select t.nrotic,  c.codcli, c.nomcli, c.apecli, c.telcli, c.celcli, c.corcli, c.feccli, 
e.codemp, e.nomemp, e.apeemp, e.fecemp, e.telemp, e.celemp, e.coremp, e.imgemp, e.usuemp, e.claemp, t.fectic, t.esttic
  from T_TicketVenta as t, (select codcli, nomcli, apecli, telcli, celcli, corcli, feccli from T_Cliente) as c,
   (select codemp, nomemp, apeemp, fecemp, telemp, celemp, coremp, imgemp, usuemp, claemp from T_Empleado) as e
  
   where t.codcli=c.codcli and t.codemp=e.codemp  and t.nrotic=@cod
go


-- procedimientos almacenados
-- Tabla DetalleTicket
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarDetalleTicket')
drop procedure SP_RegistrarDetalleTicket
go

create procedure SP_RegistrarDetalleTicket
@nr int,
@cod int,
@can int,
@pre money

as begin
begin tran SP_RegistrarDetalleTicket

begin try
insert into T_DetalleTicket values(@nr, @cod, @can, @pre)
commit tran SP_RegistrarDetalleTicket
end try

begin catch
rollback tran SP_RegistrarDetalleTicket
end catch

end
go




-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarDetalleTicketTodo')
drop procedure SP_MostrarDetalleTicketTodo
go
create procedure SP_MostrarDetalleTicketTodo
as
select  t.*,  p.*,  dt.candet, dt.predet
  from T_DetalleTicket as dt, (select * from T_TicketVenta) as t, (select * from T_Producto) as p
 
   where dt.nrotic=t.nrotic and dt.codpro=p.codpro 
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarDetalleTicket')
drop procedure SP_BuscarDetalleTicket
go
create procedure SP_BuscarDetalleTicket
@cod int
as
select  t.*,  p.*,  dt.candet, dt.predet
  from T_DetalleTicket as dt, (select * from T_TicketVenta) as t, (select * from T_Producto) as p
 
   where dt.nrotic=t.nrotic and dt.codpro=p.codpro and dt.nrotic=@cod and dt.codpro=@cod
go


-- procedimientos almacenados
-- Tabla DetalleMenu
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarDetalleMenu')
drop procedure SP_RegistrarDetalleMenu
go

create procedure SP_RegistrarDetalleMenu
@codm int,
@cos int,
@cop int

as begin
begin tran SP_RegistrarDetalleMenu

begin try
insert into T_DetalleMenu values(@codm, @cos, @cop)
commit tran SP_RegistrarDetalleMenu
end try

begin catch
rollback tran SP_RegistrarDetalleMenu
end catch

end
go


-- Actualizar
if exists(select * from sys.procedures where name='SP_ActualizarDetalleMenu')
drop procedure SP_ActualizarDetalleMenu
go
create procedure SP_ActualizarDetalleMenu
@cod int,
@codm int,
@cos int,
@cop int

as begin
begin tran SP_ActualizarDetalleMenu
begin try
update T_DetalleMenu set codmen=@codm, codsme=@cos, codper=@cop where coddme=@cod
commit tran SP_ActualizarDetalleMenu
end try
begin catch
rollback tran SP_ActualizarDetalleMenu
end catch
end
go


-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarDetalleMenuTodo')
drop procedure SP_MostrarDetalleMenuTodo
go
create procedure SP_MostrarDetalleMenuTodo
as
select dm.coddme, m.* ,sb.*,  p.codper, p.nomper
  from T_DetalleMenu as dm, (select * from T_Menu) as m, (select * from T_SubMenu) as sb, 
  (select codper, nomper from T_Perfil) as p
  
   where dm.codmen=m.codmen and dm.codsme=sb.codsme and dm.codper=p.codper
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarDetalleMenu')
drop procedure SP_BuscarDetalleMenu
go
create procedure SP_BuscarDetalleMenu
@cod int
as
select  dm.coddme, m.* ,sb.*,  p.codper, p.nomper
  from T_DetalleMenu as dm, (select * from  T_Menu) as m, (select * from T_SubMenu) as sb, 
  (select codper, nomper from T_Perfil) as p
  
   where dm.codmen=m.codmen and dm.codsme=sb.codsme and dm.codper=p.codper and dm.coddme=@cod
go



-- procedimientos almacenados
-- Tabla Ubigeo
-- Registrar
if exists(select * from sys.procedures where name='SP_RegistrarUbigeo')
drop procedure SP_RegistrarUbigeo
go

create procedure SP_RegistrarUbigeo
@dep varchar(8),
@prov varchar(8),
@dis varchar(8),
@nombre varchar(40)

as begin
begin tran SP_RegistrarUbigeo

begin try
insert into T_Ubigeo values(@dep, @prov, @dis, @nombre)
commit tran SP_RegistrarUbigeo
end try

begin catch
rollback tran SP_RegistrarUbigeo
end catch

end
go


-- Mostrar todo
if exists(select * from sys.procedures where name='SP_MostrarUbigeoTodo')
drop procedure SP_MostrarUbigeoTodo
go
create procedure SP_MostrarUbigeoTodo
as
select * from T_Ubigeo
go
-- Buscar por codigo
if exists(select * from sys.procedures where name='SP_BuscarUbigeo')
drop procedure SP_BuscarUbigeo
go
create procedure SP_BuscarUbigeo
@cod int
as
select * from T_Ubigeo where codubi=@cod
go

