select * from histsensores;

--Condições do solo, baixa umidade
select 
    cultura,
    (umidade * 0.01) as umidade,
    datahora
from histsensores
order by datahora;


--Verificar acidez do solo
select
    cultura,
    count(*) as total_amostras,
    sum(case when (ph * 0.01) between 5.5 and 6.5 then 1 else 0 end) as aceitavel,
    sum(case when (ph * 0.01) < 5.5 then 1 else 0 end) as acido,
    sum(case when (ph * 0.01) > 6.5 then 1 else 0 end) as alcalino,
    round(100.0 * sum(case when (ph * 0.01) between 5.5 and 6.5 then 1 else 0 end) / count(*), 1) as perc_aceitavel
from histsensores
group by cultura;


--Nutrientes abaixo do ideal
select
    cultura,
    count(*) as total_amostras,
    sum(case when (n_ppm * 0.1) < 20.0 then 1 else 0 end) as baixo_N,
    sum(case when (p_ppm * 0.1) < 15.0 then 1 else 0 end) as baixo_P,
    sum(case when (k_ppm * 0.1) < 100.0 then 1 else 0 end) as baixo_K,
    round(100.0 * sum(case when (n_ppm * 0.1) < 20 or (p_ppm * 0.1) < 15 or (k_ppm * 0.1) < 100 then 1 else 0 end) / count(*), 1) as perc_abaixo
from histsensores
group by cultura;
    
    
    
    
