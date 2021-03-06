-- Requests Agrupados por Dia
SELECT  count(log_server_request_id) as qtde, date(data_ini) as data_insert
FROM log_server_request t 
group by date(data_ini)
order by data_insert_server desc;


-- Requests
SELECT data_ini,metodo,  t.* FROM log_server_request t 
order by data_insert_server desc;


-- Erros
SELECT data, data_insert_server, log_error .* 
FROM log_error 
--  where msg_error like '% Cannot perform the action, %'
--  where msg_error like '%Cannot begin edit row%'
order by data desc;


-- Funcionario
select * from funcionario
where funcionario.email = 'f';


-- resposanvel
select * from responsavel
where funcionario.email = 'f';

-- agenda
select * from agenda ag
order by agenda.agenda_id desc;


-- cloud log
select * from log_cloud_messaging
order by data_insert_server desc;

-- Devices
select * from device_usuario

-- Processo Atualizacao
SELECT * FROM dbdev.processo_atualizacao
order by data desc






