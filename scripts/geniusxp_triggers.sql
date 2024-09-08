--  Trigger de auditoria que registra operações de inserção, atualização e exclusão na tabela T_GXP_EVENT
--------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER tbiud_event BEFORE
    DELETE OR INSERT OR UPDATE ON t_gxp_event
    FOR EACH ROW
DECLARE
    v_operation t_gxp_audit.ds_operation%TYPE;
BEGIN
    CASE
        WHEN deleting THEN
            v_operation := 'DELETE';
        WHEN inserting THEN
            v_operation := 'INSERT';
        WHEN updating THEN
            v_operation := 'UPDATE';
    END CASE;

    INSERT INTO t_gxp_audit (
        id_audit,
        old_nm_event,
        old_tx_description,
        old_ds_event_type,
        old_url_image,
        new_nm_event,
        new_tx_description,
        new_ds_event_type,
        new_url_image,
        nm_author,
        ds_operation
    ) VALUES (
        seq_t_gxp_audit.NEXTVAL,
        :old.nm_event,
        :old.tx_description,
        :old.ds_event_type,
        :old.url_image,
        :new.nm_event,
        :new.tx_description,
        :new.ds_event_type,
        :new.url_image,
        user,
        v_operation
    );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Houve um erro na execução da trigger: ' || sqlerrm);
END;
