-- Requests Agrupados por Dia
SELECT  count(log_server_request_id) as qtde, date(data_ini) as data_insert
FROM agendadb.log_server_request t 
group by date(data_ini)
order by data_insert_server desc;


-- Requests
SELECT data_ini,metodo,  t.* FROM agendadb.log_server_request t 
order by data_insert_server desc;


-- Erros
SELECT data, data_insert_server, agendadb.log_error .* 
FROM agendadb.log_error 
--  where msg_error like '% Cannot perform the action, %'
--  where msg_error like '%Cannot begin edit row%'
order by data desc;




