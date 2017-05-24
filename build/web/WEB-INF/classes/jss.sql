
select count( date(i.fecha_apertura) )from 
(select   date(i1.fecha_apertura) as fecha_mov from mydb.INCIDENCIA as	i1 
group by date(i1.fecha_apertura)
union 
select date(i2.fecha_solucion) as fecha_mov from mydb.INCIDENCIA as i2
where date(i2.fecha_solucion) is not null
group by date(i2.fecha_solucion)
order by fecha_mov) as u, mydb.INCIDENCIA as i where u.fecha_mov = '2017-02-28' 
group by date(i.fecha_apertura)

select * from mydb.INCIDENCIA as I where  I.fecha_apertura = '2017-02-28' 


select count( date(i.fecha_solucion) )from (select   date(i1.fecha_apertura) as fecha_mov from mydb.INCIDENCIA as	i1 
group by date(i1.fecha_apertura)
union 
select date(i2.fecha_solucion) as fecha_mov from mydb.INCIDENCIA as i2
where date(i2.fecha_solucion) is not null
group by date(i2.fecha_solucion)
order by fecha_mov) as u, mydb.INCIDENCIA as i where u.fecha_mov = date(i.fecha_solucion)
group by date(i.fecha_solucion)

