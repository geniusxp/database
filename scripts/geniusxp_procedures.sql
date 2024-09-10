-- Gera um JSON contendo os eventos associados a um usuário específico
--------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE proc_get_user_events (
    p_user_id       IN    t_gxp_user.id_user%TYPE,
    p_json_result   OUT   CLOB
) IS

    CURSOR cur_get_user_events (
        param_user_id t_gxp_user.id_user%TYPE
    ) IS
    SELECT
        get_user_event_record_type(tge.nm_event, tge.ds_event_type, tgp.vl_total_price, tgt.nr_ticket, tgt.dt_of_use)
    FROM
        t_gxp_user          tgu
        INNER JOIN t_gxp_ticket        tgt ON tgu.id_user = tgt.id_user
        INNER JOIN t_gxp_payment       tgp ON tgp.id_ticket = tgt.id_ticket
        INNER JOIN t_gxp_ticket_type   tgtt ON tgtt.id_ticket_type = tgt.id_ticket_type
        INNER JOIN t_gxp_event         tge ON tge.id_event = tgtt.id_event
    WHERE
        tgu.id_user = param_user_id;

    v_user_events   get_user_events_table_type;
    v_user_count    NUMBER;
    ex_no_data_found EXCEPTION;
    ex_non_existent_user EXCEPTION;
BEGIN
    SELECT
        COUNT(*)
    INTO v_user_count
    FROM
        t_gxp_user tgu
    WHERE
        tgu.id_user = p_user_id;

    IF v_user_count = 0 THEN
        RAISE ex_non_existent_user;
    END IF;
    
    OPEN cur_get_user_events(p_user_id);
    FETCH cur_get_user_events BULK COLLECT INTO v_user_events;
    CLOSE cur_get_user_events;
    
    IF v_user_events.count = 0 THEN
        RAISE ex_no_data_found;
    END IF;
    
    p_json_result := fn_convert_to_json(v_user_events);
    
EXCEPTION
    WHEN ex_no_data_found THEN
        p_json_result := '{"error": "Nenhum dado encontrado"}';
    WHEN ex_non_existent_user THEN
        p_json_result := '{"error": "Usuário inexistente"}';
    WHEN value_error THEN
        p_json_result := '{"error": "Value error: '
                         || sqlerrm
                         || '"}';
    WHEN OTHERS THEN
        p_json_result := '{"error": "Um erro inesperado aconteceu: '
                         || sqlerrm
                         || '"}';
END;


DECLARE
    v_json_result CLOB;
BEGIN
    proc_get_user_events(30, v_json_result);
    DBMS_OUTPUT.PUT_LINE(v_json_result);
END;



-- Realiza a comparação entre valores de eventos consecutivos na tabela t_gxp_event
--------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE proc_column_value_comparison IS
    CURSOR cur_event_column_comparison IS
    SELECT column_comparison_record_type(
    tge.id_event,
    tge.ds_event_type,
    CASE 
        WHEN lag(tge.nm_event, 1) OVER(ORDER BY tge.id_event) IS NULL THEN 'Vazio'
        ELSE lag(tge.nm_event, 1) OVER(ORDER BY tge.id_event)
    END,
    tge.nm_event,
    CASE
        WHEN LEAD(tge.nm_event, 1) OVER(ORDER BY tge.id_event) IS NULL THEN 'Vazio'
        ELSE LEAD(tge.nm_event, 1) OVER(ORDER BY tge.id_event)
    END
) FROM t_gxp_event tge;
    v_result column_comparison_table_type;
    ex_insufficient_data EXCEPTION;
    ex_query_failure EXCEPTION;
BEGIN
    BEGIN
        OPEN cur_event_column_comparison;
        FETCH cur_event_column_comparison BULK COLLECT INTO v_result;
        CLOSE cur_event_column_comparison;
    
        EXCEPTION
            WHEN OTHERS THEN
                CLOSE cur_event_column_comparison;
                RAISE ex_query_failure;
    END;
    
    IF v_result.COUNT < 5 THEN
        RAISE ex_insufficient_data;
    END IF;
    
    FOR i IN 1..v_result.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('ID do Evento: ' || v_result(i).id_event);
        DBMS_OUTPUT.PUT_LINE('Tipo do Evento: ' || v_result(i).ds_event_type);
        DBMS_OUTPUT.PUT_LINE('Evento Anterior: ' || v_result(i).nm_last_event);
        DBMS_OUTPUT.PUT_LINE('Evento Atual: ' || v_result(i).nm_current_event);
        DBMS_OUTPUT.PUT_LINE('Próximo Evento: ' || v_result(i).nm_next_event);
        DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------------------------------');
    END LOOP; 
    
    EXCEPTION 
        WHEN ex_insufficient_data THEN
            DBMS_OUTPUT.PUT_LINE('Erro! Dados insuficientes!');
        WHEN ex_query_failure THEN
            DBMS_OUTPUT.PUT_LINE('Erro na consulta ou falha na coleta de dados!');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Um erro inesperado aconteceu: ' || sqlerrm);
END;

EXEC proc_column_value_comparison;




