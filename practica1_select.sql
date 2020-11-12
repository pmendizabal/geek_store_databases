--Primer query, uso general

select 
    *
from
    store_goods_stock;

--Escoger columnas

select
    name,
    quantity
from 
    store_goods_stock;

--Con where 

select
    name,
    quantity,
    unit_price 
from 
    store_goods_stock
where 
    quantity > 100;

--con order

select
    name,
    quantity,
    unit_price
from 
    store_goods_stock
where 
    quantity > 10 and quantity < 50
order by 
    name asc;

--joins

select
    st.name "Mercancía",
    sgt.name "Tipo de mercancía",
    sc.name "Categoría"
from 
    store_goods_stock st 
    inner join store_goods_categories sgc on st.store_good_category_id = sgc.id
    inner join store_categories sc on sc.id = sgc.store_categories_id
    inner join store_goods_types sgt on sgt.id = sgc.store_good_type_id;

select
    *
from 
    store_goods_stock st 
    left join store_goods_categories sgc on st.store_good_category_id = sgc.id
    left join store_categories sc on sc.id = sgc.store_categories_id
    left join store_goods_types sgt on sgt.id = sgc.store_good_type_id;


select
    *
from 
    store_goods_stock st 
    RIGHT join store_goods_categories sgc on st.store_good_category_id = sgc.id
    RIGHT join store_categories sc on sc.id = sgc.store_categories_id
    RIGHT join store_goods_types sgt on sgt.id = sgc.store_good_type_id;

--con group by 

select
    sgt.name "Tipo de mercancía",
    sum(st.quantity) "Total de existencias",
    avg(st.unit_price) "Precio unitario promedio",
    sum(st.quantity)*avg(st.unit_price) "Potencial de ganancias brutas"
from 
    store_goods_stock st 
    inner join store_goods_categories sgc on st.store_good_category_id = sgc.id
    inner join store_categories sc on sc.id = sgc.store_categories_id
    inner join store_goods_types sgt on sgt.id = sgc.store_good_type_id
where 
    quantity > 10 and quantity < 50
    AND st.is_active is TRUE
group by
    sgt.name;


--Especiales

select
    (created at time zone 'America/Mexico_City') "Fecha de creación",
    created "Fecha",
    name,
    quantity
from 
    store_goods_stock;


