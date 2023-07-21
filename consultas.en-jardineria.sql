-- 1
select id as codigo, ciudad
from oficinas;

-- 2
select ciudad, telefono
from oficinas
where pais = 'Spain';

-- 3
select nombre, primer_apellido, segundo_apellido, email
from empleados
where id_jefe = 7;

-- 4
select c.id as codigo_cliente, DATE_FORMAT(p.fecha_pago, '%W %M %Y') as fecha_pago
from pagos p
inner join clientes c
	on c.id = p.id_cliente
where YEAR(p.fecha_pago) = '2008';

-- 5
select count(*) as total_empleados
from empleados;
    
-- 6
select pais, count(*) as total
from clientes
group by pais;

-- 7
select avg(total) as promedio_pagos_2009
from pagos
where YEAR(fecha_pago) = '2009';
       
-- 8
select estado, count(*) as total_pedidos
from pedidos
group by estado;

-- 9
select min(precio_venta) as min_precio_venta, max(precio_venta) as max_precio_venta
from productos;

-- 10
select nombre, limite_credito
from clientes
order by limite_credito desc limit 1;

-- 11
select nombre
from productos
order by precio_venta desc limit 1;

-- 12
select po.nombre, p.cantidad as cantidad_pedidos_vendidos
from pedidos p
inner join productos po
	 on po.id = p.id_producto
order by p.cantidad desc limit 1;

-- 13
select c.*
from clientes c,
(
	select id_cliente, sum(p.total) as total_pagos_realizados
	from pagos p
	group by id_cliente
) as pagos_realizados
where pagos_realizados.id_cliente = c.id
and c.limite_credito > pagos_realizados.total_pagos_realizados;

-- 14 Y 17
select c.nombre, count(*) total_pedidos
from pedidos p
inner join clientes c
	on c.id = p.id_cliente
group by p.id_cliente;

-- 15
select e.nombre, e.primer_apellido, e.segundo_apellido, e.puesto, o.telefono as telefono_oficina
from empleados e
inner join oficinas o
	on o.id = e.id_oficina
where e.id not in (
	select id_empleado
    from clientes
);

-- 16
select e.id as id_empleado, o.*
from oficinas o
inner join empleados e
	on e.id_oficina = o.id
where e.id not in (
	select c.id_empleado
	from clientes c
	inner join pedidos p
		on p.id_cliente = c.id
	inner join productos po
		on po.id = p.id_producto
	inner join gamas g
		on g.id = po.id_gama
	where g.nombre = 'Frutales'
) order by e.id;
    
-- 18
select c.nombre, sum(p.total) as total_pagos_realizados
from pagos p
inner join clientes c
	on c.id = p.id_cliente
group by id_cliente