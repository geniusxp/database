CREATE OR REPLACE TYPE get_user_event_record_type AS OBJECT(
    nm_event VARCHAR2(150),
    ds_event_type VARCHAR2(70),
    vl_total_price NUMBER(6, 2),
    nr_ticket VARCHAR2(100),
    dt_of_use DATE
);

CREATE OR REPLACE TYPE get_user_events_table_type AS TABLE OF get_user_event_record_type;

CREATE OR REPLACE TYPE column_comparison_record_type AS OBJECT (
    id_event INTEGER,
    ds_event_type VARCHAR2(70),
    nm_last_event VARCHAR2(150),
    nm_current_event VARCHAR2(150),
    nm_next_event VARCHAR2(150)
); 

CREATE OR REPLACE TYPE column_comparison_table_type AS TABLE OF column_comparison_record_type;