-- Converte uma coleção de registros (p_user_events) em um formato JSON estruturado
--------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION fn_convert_to_json (
    p_user_events get_user_events_table_type
) RETURN CLOB IS
    v_json     CLOB;
    v_object   CLOB;
    ex_no_data_found EXCEPTION;
BEGIN
    v_json := '[';
    FOR i IN 1..p_user_events.count LOOP
        v_object := '{'
                    || '"nm_event":"'
                    || p_user_events(i).nm_event
                    || '",'
                    || '"ds_event_type":"'
                    || p_user_events(i).ds_event_type
                    || '",'
                    || '"vl_total_price":"'
                    || p_user_events(i).vl_total_price
                    || '",'
                    || '"nr_ticket":"'
                    || p_user_events(i).nr_ticket
                    || '",'
                    || '"dt_of_use":"'
                    || p_user_events(i).dt_of_use
                    || '"}';

        v_json := v_json || v_object;
    END LOOP;

    v_json := v_json || ']';
    RETURN v_json;
EXCEPTION
    WHEN value_error THEN
        RETURN '{"error": "Erro ao converter valores para JSON."}';
    WHEN no_data_found THEN
        RETURN '{"error": "Nenhum dado encontrado na coleção."}';
    WHEN OTHERS THEN
        RETURN '{"error": "Um erro inesperado aconteceu na função: '
               || sqlerrm
               || '"}';
END;



-- Calcula a receita total gerada por um evento específico com base no ID do evento fornecido.
--------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION fn_calculate_event_revenue(
    p_event_id IN T_GXP_EVENT.id_event%TYPE
) RETURN NUMBER IS
    v_total_revenue NUMBER := 0;
    v_count_event NUMBER;
    ex_event_not_found EXCEPTION;
BEGIN
    SELECT COUNT(*) INTO v_count_event FROM T_GXP_EVENT WHERE id_event = p_event_id;
    
    IF v_count_event = 0 THEN
        RAISE ex_event_not_found;
    END IF;

    SELECT SUM(tgp.vl_total_price)
    INTO v_total_revenue
    FROM T_GXP_PAYMENT tgp
    INNER JOIN T_GXP_TICKET tgt ON tgp.id_ticket = tgt.id_ticket
    INNER JOIN T_GXP_TICKET_TYPE tgtt ON tgt.id_ticket_type = tgtt.id_ticket_type
    WHERE tgtt.id_event = p_event_id
      AND tgp.st_payment IN ('Aprovado', 'Concluído');
    
    RETURN NVL(v_total_revenue, 0);
    
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Erro: Nenhum dado foi encontrado.');
            RETURN 0;
        WHEN ex_event_not_found THEN
            DBMS_OUTPUT.PUT_LINE('Erro: Evento Inexistente');
            RETURN 0;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Houve um erro inesperado!');
            RETURN 0;
END;

select fn_calculate_event_revenue(19) as from dual;


