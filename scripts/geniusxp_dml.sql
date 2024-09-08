-- INSERTS NA TABELA T_GXP_USER
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_USER (
    id_user, ds_email, ds_password, nr_cpf, dt_birth, url_avatar, tx_description, tx_interests
) VALUES (
    seq_t_gxp_user.NEXTVAL, 'alice.santos@example.com', 'encryptedPassword1', '12345678901', TO_DATE('1985-05-10', 'YYYY-MM-DD'), 
    'https://example.com/avatars/alice.png', 
    'Profissional de marketing com mais de 10 anos de experi�ncia em eventos corporativos.', 
    'Tecnologia, Marketing Digital, Eventos Corporativos'
);

INSERT INTO T_GXP_USER (
    id_user, ds_email, ds_password, nr_cpf, dt_birth, url_avatar, tx_description, tx_interests
) VALUES (
    seq_t_gxp_user.NEXTVAL, 'bruno.oliveira@example.com', 'encryptedPassword2', '23456789012', TO_DATE('1990-07-21', 'YYYY-MM-DD'), 
    'https://example.com/avatars/bruno.png', 
    'Engenheiro de software apaixonado por inova��o e solu��es tecnol�gicas.', 
    'Desenvolvimento de Software, Intelig�ncia Artificial, Inova��o'
);

INSERT INTO T_GXP_USER (
    id_user, ds_email, ds_password, nr_cpf, dt_birth, url_avatar, tx_description, tx_interests
) VALUES (
    seq_t_gxp_user.NEXTVAL, 'carla.martins@example.com', 'encryptedPassword3', '34567890123', TO_DATE('1992-03-15', 'YYYY-MM-DD'), 
    'https://example.com/avatars/carla.png', 
    'Gestora de eventos com foco em sustentabilidade e inclus�o.', 
    'Sustentabilidade, Inclus�o Social, Networking'
);

INSERT INTO T_GXP_USER (
    id_user, ds_email, ds_password, nr_cpf, dt_birth, url_avatar, tx_description, tx_interests
) VALUES (
    seq_t_gxp_user.NEXTVAL, 'diego.ferreira@example.com', 'encryptedPassword4', '45678901234', TO_DATE('1988-11-30', 'YYYY-MM-DD'), 
    'https://example.com/avatars/diego.png', 
    'Empreendedor com experi�ncia em startups e economia digital.', 
    'Empreendedorismo, Startups, Economia Digital'
);

INSERT INTO T_GXP_USER (
    id_user, ds_email, ds_password, nr_cpf, dt_birth, url_avatar, tx_description, tx_interests
) VALUES (
    seq_t_gxp_user.NEXTVAL, 'elisa.costa@example.com', 'encryptedPassword5', '56789012345', TO_DATE('1995-08-05', 'YYYY-MM-DD'), 
    'https://example.com/avatars/elisa.png', 
    'Consultora em gest�o de eventos, com foco em experi�ncias imersivas.', 
    'Experi�ncias Imersivas, Gest�o de Eventos, Psicologia do Consumidor'
);


-- INSERTS NA TABELA T_GXP_EVENT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_EVENT (
    id_event, nm_event, tx_description, ds_event_type, url_image
) VALUES (
    SEQ_T_GXP_EVENT.NEXTVAL, 
    'Tech Summit 2024', 
    'Um dos maiores eventos de tecnologia do ano, reunindo os principais l�deres do setor para discutir inova��es e tend�ncias.', 
    'Presencial', 
    'https://example.com/images/tech_summit_2024.png'
);

INSERT INTO T_GXP_EVENT (
    id_event, nm_event, tx_description, ds_event_type, url_image
) VALUES (
    SEQ_T_GXP_EVENT.NEXTVAL, 
    'Confer�ncia de Intelig�ncia Artificial', 
    'Explorando os �ltimos avan�os em intelig�ncia artificial, aprendizado de m�quina e automa��o.', 
    'Online', 
    'https://example.com/images/ai_conference.png'
);

INSERT INTO T_GXP_EVENT (
    id_event, nm_event, tx_description, ds_event_type, url_image
) VALUES (
    SEQ_T_GXP_EVENT.NEXTVAL, 
    'F�rum de Sustentabilidade', 
    'Discuss�o sobre pr�ticas sustent�veis e solu��es inovadoras para a preserva��o do meio ambiente.', 
    'H�brido', 
    'https://example.com/images/sustainability_forum.png'
);

INSERT INTO T_GXP_EVENT (
    id_event, nm_event, tx_description, ds_event_type, url_image
) VALUES (
    SEQ_T_GXP_EVENT.NEXTVAL, 
    'Encontro de Startups', 
    'Oportunidade �nica para startups se conectarem com investidores e apresentarem suas ideias.', 
    'Presencial', 
    'https://example.com/images/startup_meeting.png'
);

INSERT INTO T_GXP_EVENT (
    id_event, nm_event, tx_description, ds_event_type, url_image
) VALUES (
    SEQ_T_GXP_EVENT.NEXTVAL, 
    'Workshop de Design Thinking', 
    'Aprenda sobre design thinking e como aplic�-lo para resolver problemas complexos.', 
    'Online', 
    'https://example.com/images/design_thinking_workshop.png'
);


-- INSERTS NA TABELA T_GXP_SPEAKER
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_SPEAKER (
    id_speaker, nm_speaker, tx_description, url_social_media, ds_language, url_avatar
) VALUES (
    SEQ_T_GXP_SPEAKER.NEXTVAL, 
    'Alice Silva', 
    'Especialista em Intelig�ncia Artificial com mais de 15 anos de experi�ncia no setor de tecnologia.', 
    'https://linkedin.com/in/alicesilva', 
    'Portugu�s', 
    'https://example.com/avatars/alice_silva.png'
);

INSERT INTO T_GXP_SPEAKER (
    id_speaker, nm_speaker, tx_description, url_social_media, ds_language, url_avatar
) VALUES (
    SEQ_T_GXP_SPEAKER.NEXTVAL, 
    'Bruno Costa', 
    'Palestrante internacional, autor de best-sellers sobre inova��o e empreendedorismo.', 
    'https://twitter.com/brunocosta', 
    'Ingl�s', 
    'https://example.com/avatars/bruno_costa.png'
);

INSERT INTO T_GXP_SPEAKER (
    id_speaker, nm_speaker, tx_description, url_social_media, ds_language, url_avatar
) VALUES (
    SEQ_T_GXP_SPEAKER.NEXTVAL, 
    'Carla Souza', 
    'Consultora em design thinking e metodologias �geis, com foco em transforma��o digital.', 
    'https://linkedin.com/in/carlasouza', 
    'Portugu�s', 
    'https://example.com/avatars/carla_souza.png'
);

INSERT INTO T_GXP_SPEAKER (
    id_speaker, nm_speaker, tx_description, url_social_media, ds_language, url_avatar
) VALUES (
    SEQ_T_GXP_SPEAKER.NEXTVAL, 
    'Diego Mendes', 
    'Empreendedor e mentor de startups, com experi�ncia em inova��o e neg�cios digitais.', 
    'https://twitter.com/diegomendes', 
    'Ingl�s', 
    'https://example.com/avatars/diego_mendes.png'
);

INSERT INTO T_GXP_SPEAKER (
    id_speaker, nm_speaker, tx_description, url_social_media, ds_language, url_avatar
) VALUES (
    SEQ_T_GXP_SPEAKER.NEXTVAL, 
    'Elisa Costa', 
    'Pesquisadora e palestrante sobre sustentabilidade e mudan�as clim�ticas.', 
    'https://linkedin.com/in/elisacosta', 
    'Portugu�s', 
    'https://example.com/avatars/elisa_costa.png'
);


-- INSERTS NA TABELA T_GXP_ADMINISTRATOR
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_ADMINISTRATOR (
    id_administrator, ds_email, ds_password
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR.NEXTVAL, 
    'admin1@example.com', 
    'passwordHash1'
);

INSERT INTO T_GXP_ADMINISTRATOR (
    id_administrator, ds_email, ds_password
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR.NEXTVAL, 
    'admin2@example.com', 
    'passwordHash2'
);

INSERT INTO T_GXP_ADMINISTRATOR (
    id_administrator, ds_email, ds_password
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR.NEXTVAL, 
    'admin3@example.com', 
    'passwordHash3'
);

INSERT INTO T_GXP_ADMINISTRATOR (
    id_administrator, ds_email, ds_password
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR.NEXTVAL, 
    'admin4@example.com', 
    'passwordHash4'
);

INSERT INTO T_GXP_ADMINISTRATOR (
    id_administrator, ds_email, ds_password
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR.NEXTVAL, 
    'admin5@example.com', 
    'passwordHash5'
);


-- INSERTS NA TABELA T_GXP_COUPON 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_COUPON (
    id_coupon, nm_coupon, tx_description, cod_coupon, vl_discount
) VALUES (
    SEQ_T_GXP_COUPON.NEXTVAL, 
    'Desconto Inaugural', 
    'Cupom de desconto para participantes do primeiro evento da plataforma.', 
    'INAUGURAL2024', 
    5.00
);

INSERT INTO T_GXP_COUPON (
    id_coupon, nm_coupon, tx_description, cod_coupon, vl_discount
) VALUES (
    SEQ_T_GXP_COUPON.NEXTVAL, 
    'Desconto Fim de Ano', 
    'Desconto especial para eventos realizados em dezembro.', 
    'FIMDEANO2024', 
    2.00
);

INSERT INTO T_GXP_COUPON (
    id_coupon, nm_coupon, tx_description, cod_coupon, vl_discount
) VALUES (
    SEQ_T_GXP_COUPON.NEXTVAL, 
    'Desconto Black Friday', 
    'Oferta de Black Friday com desconto exclusivo para eventos selecionados.', 
    'BLACKFRIDAY2024', 
    3.00
);

INSERT INTO T_GXP_COUPON (
    id_coupon, nm_coupon, tx_description, cod_coupon, vl_discount
) VALUES (
    SEQ_T_GXP_COUPON.NEXTVAL, 
    'Desconto Amigo', 
    'Desconto para aqueles que indicarem amigos para participar do evento.', 
    'AMIGO2024', 
    1.00
);

INSERT INTO T_GXP_COUPON (
    id_coupon, nm_coupon, tx_description, cod_coupon, vl_discount
) VALUES (
    SEQ_T_GXP_COUPON.NEXTVAL, 
    'Desconto Especial', 
    'Desconto oferecido para participantes VIPs dos eventos.', 
    'VIP2024', 
    5.00
);


-- INSERTS NA TABELA T_GXP_TICKET_TYPE
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_TICKET_TYPE (
    id_ticket_type, vl_price, ds_category, tx_description, nr_quantity, nr_sold, dt_finished_at, id_event
) VALUES (
    SEQ_T_GXP_TICKET_TYPE.NEXTVAL, 
    150.00, 
    'Padr�o', 
    'Ingresso padr�o para o evento Tech Summit 2024.', 
    500, 
    0, 
    TO_DATE('2024-12-01', 'YYYY-MM-DD'), 
    1
);

INSERT INTO T_GXP_TICKET_TYPE (
    id_ticket_type, vl_price, ds_category, tx_description, nr_quantity, nr_sold, dt_finished_at, id_event
) VALUES (
    SEQ_T_GXP_TICKET_TYPE.NEXTVAL, 
    300.00, 
    'VIP', 
    'Ingresso VIP com acesso exclusivo ao evento Tech Summit 2024.', 
    100, 
    0, 
    TO_DATE('2024-12-01', 'YYYY-MM-DD'), 
    1
);

INSERT INTO T_GXP_TICKET_TYPE (
    id_ticket_type, vl_price, ds_category, tx_description, nr_quantity, nr_sold, dt_finished_at, id_event
) VALUES (
    SEQ_T_GXP_TICKET_TYPE.NEXTVAL, 
    75.00, 
    'Online', 
    'Ingresso online para participar do evento Confer�ncia de Intelig�ncia Artificial.', 
    1000, 
    0, 
    TO_DATE('2024-11-15', 'YYYY-MM-DD'), 
    2
);

INSERT INTO T_GXP_TICKET_TYPE (
    id_ticket_type, vl_price, ds_category, tx_description, nr_quantity, nr_sold, dt_finished_at, id_event
) VALUES (
    SEQ_T_GXP_TICKET_TYPE.NEXTVAL, 
    200.00, 
    'Padr�o', 
    'Ingresso padr�o para o F�rum de Sustentabilidade.', 
    300, 
    0, 
    TO_DATE('2024-10-10', 'YYYY-MM-DD'), 
    3
);

INSERT INTO T_GXP_TICKET_TYPE (
    id_ticket_type, vl_price, ds_category, tx_description, nr_quantity, nr_sold, dt_finished_at, id_event
) VALUES (
    SEQ_T_GXP_TICKET_TYPE.NEXTVAL, 
    350.00, 
    'Premium', 
    'Ingresso Premium com benef�cios adicionais para o F�rum de Sustentabilidade.', 
    150, 
    0, 
    TO_DATE('2024-10-10', 'YYYY-MM-DD'), 
    3
);

-- INSERTS NA TABELA T_GXP_TICKET
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_TICKET (
    id_ticket, dt_of_use, dt_issued, nr_ticket, id_user, id_ticket_type, id_coupon
) VALUES (
    SEQ_T_GXP_TICKET.NEXTVAL, 
    NULL, 
    TO_DATE('2024-09-10', 'YYYY-MM-DD'), 
    'TICKET001', 
    1, 
    1, 
    1
);

INSERT INTO T_GXP_TICKET (
    id_ticket, dt_of_use, dt_issued, nr_ticket, id_user, id_ticket_type, id_coupon
) VALUES (
    SEQ_T_GXP_TICKET.NEXTVAL, 
    NULL, 
    TO_DATE('2024-09-11', 'YYYY-MM-DD'), 
    'TICKET002', 
    2, 
    2, 
    2
);

INSERT INTO T_GXP_TICKET (
    id_ticket, dt_of_use, dt_issued, nr_ticket, id_user, id_ticket_type, id_coupon
) VALUES (
    SEQ_T_GXP_TICKET.NEXTVAL, 
    TO_DATE('2024-10-01', 'YYYY-MM-DD'), 
    TO_DATE('2024-09-15', 'YYYY-MM-DD'), 
    'TICKET003', 
    3, 
    3, 
    NULL
);

INSERT INTO T_GXP_TICKET (
    id_ticket, dt_of_use, dt_issued, nr_ticket, id_user, id_ticket_type, id_coupon
) VALUES (
    SEQ_T_GXP_TICKET.NEXTVAL, 
    NULL, 
    TO_DATE('2024-09-20', 'YYYY-MM-DD'), 
    'TICKET004', 
    4, 
    1, 
    3
);

INSERT INTO T_GXP_TICKET (
    id_ticket, dt_of_use, dt_issued, nr_ticket, id_user, id_ticket_type, id_coupon
) VALUES (
    SEQ_T_GXP_TICKET.NEXTVAL, 
    NULL, 
    TO_DATE('2024-09-25', 'YYYY-MM-DD'), 
    'TICKET005', 
    5, 
    2, 
    NULL
);

-- INSERTS NA TABELA T_GXP_PAYMENT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_PAYMENT (
    id_payment, ds_payment_method, st_payment, vl_total_price, dt_due, dt_payment, id_ticket
) VALUES (
    SEQ_T_GXP_PAYMENT.NEXTVAL, 
    'Cart�o de Cr�dito', 
    'Pendente', 
    150.00, 
    TO_DATE('2024-09-15', 'YYYY-MM-DD'), 
    NULL, 
    1
);

INSERT INTO T_GXP_PAYMENT (
    id_payment, ds_payment_method, st_payment, vl_total_price, dt_due, dt_payment, id_ticket
) VALUES (
    SEQ_T_GXP_PAYMENT.NEXTVAL, 
    'Pix', 
    'Aprovado', 
    300.00, 
    TO_DATE('2024-09-10', 'YYYY-MM-DD'), 
    TO_DATE('2024-09-09', 'YYYY-MM-DD'), 
    2
);

INSERT INTO T_GXP_PAYMENT (
    id_payment, ds_payment_method, st_payment, vl_total_price, dt_due, dt_payment, id_ticket
) VALUES (
    SEQ_T_GXP_PAYMENT.NEXTVAL, 
    'Boleto', 
    'Cancelado', 
    75.00, 
    TO_DATE('2024-09-20', 'YYYY-MM-DD'), 
    NULL, 
    3
);

INSERT INTO T_GXP_PAYMENT (
    id_payment, ds_payment_method, st_payment, vl_total_price, dt_due, dt_payment, id_ticket
) VALUES (
    SEQ_T_GXP_PAYMENT.NEXTVAL, 
    'Cart�o de D�bito', 
    'Conclu�do', 
    200.00, 
    TO_DATE('2024-10-05', 'YYYY-MM-DD'), 
    TO_DATE('2024-09-30', 'YYYY-MM-DD'), 
    4
);

INSERT INTO T_GXP_PAYMENT (
    id_payment, ds_payment_method, st_payment, vl_total_price, dt_due, dt_payment, id_ticket
) VALUES (
    SEQ_T_GXP_PAYMENT.NEXTVAL, 
    'Pix', 
    'Pendente', 
    350.00, 
    TO_DATE('2024-09-25', 'YYYY-MM-DD'), 
    NULL, 
    5
);


-- INSERTS NA TABELA T_GXP_POLL
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_POLL (
    id_poll, nm_poll, dt_created_at, id_event
) VALUES (
    SEQ_T_GXP_POLL.NEXTVAL, 
    'Pesquisa de Satisfa��o - Tech Summit 2024', 
    SYSTIMESTAMP, 
    1
);

INSERT INTO T_GXP_POLL (
    id_poll, nm_poll, dt_created_at, id_event
) VALUES (
    SEQ_T_GXP_POLL.NEXTVAL, 
    'Feedback do Evento - Confer�ncia AI 2024', 
    SYSTIMESTAMP, 
    2
);

INSERT INTO T_GXP_POLL (
    id_poll, nm_poll, dt_created_at, id_event
) VALUES (
    SEQ_T_GXP_POLL.NEXTVAL, 
    'Avalia��o do F�rum de Sustentabilidade', 
    SYSTIMESTAMP, 
    3
);

INSERT INTO T_GXP_POLL (
    id_poll, nm_poll, dt_created_at, id_event
) VALUES (
    SEQ_T_GXP_POLL.NEXTVAL, 
    'Opini�o sobre o Webinar de Inova��o', 
    SYSTIMESTAMP, 
    4
);

INSERT INTO T_GXP_POLL (
    id_poll, nm_poll, dt_created_at, id_event
) VALUES (
    SEQ_T_GXP_POLL.NEXTVAL, 
    'Enquete de Melhoria - Evento de Tecnologia', 
    SYSTIMESTAMP, 
    5
);


-- INSERTS NA TABELA T_GXP_POLL_OPTION
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_POLL_OPTION (
    id_poll_option, tx_description, nr_votes, id_poll
) VALUES (
    SEQ_T_GXP_POLL_OPTION.NEXTVAL, 
    'Muito Satisfeito', 
    0, 
    1
);

INSERT INTO T_GXP_POLL_OPTION (
    id_poll_option, tx_description, nr_votes, id_poll
) VALUES (
    SEQ_T_GXP_POLL_OPTION.NEXTVAL, 
    'Satisfeito', 
    0, 
    1
);

INSERT INTO T_GXP_POLL_OPTION (
    id_poll_option, tx_description, nr_votes, id_poll
) VALUES (
    SEQ_T_GXP_POLL_OPTION.NEXTVAL, 
    'Neutro', 
    0, 
    1
);

INSERT INTO T_GXP_POLL_OPTION (
    id_poll_option, tx_description, nr_votes, id_poll
) VALUES (
    SEQ_T_GXP_POLL_OPTION.NEXTVAL, 
    'Insatisfeito', 
    0, 
    1
);

INSERT INTO T_GXP_POLL_OPTION (
    id_poll_option, tx_description, nr_votes, id_poll
) VALUES (
    SEQ_T_GXP_POLL_OPTION.NEXTVAL, 
    'Muito Insatisfeito', 
    0, 
    1
);


-- INSERTS NA TABELA T_GXP_VOTE
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_VOTE (
    id_vote, dt_created_at, id_poll_option, id_user
) VALUES (
    SEQ_T_GXP_VOTE.NEXTVAL, 
    SYSTIMESTAMP, 
    1, 
    1
);

INSERT INTO T_GXP_VOTE (
    id_vote, dt_created_at, id_poll_option, id_user
) VALUES (
    SEQ_T_GXP_VOTE.NEXTVAL, 
    SYSTIMESTAMP, 
    2, 
    2
);

INSERT INTO T_GXP_VOTE (
    id_vote, dt_created_at, id_poll_option, id_user
) VALUES (
    SEQ_T_GXP_VOTE.NEXTVAL, 
    SYSTIMESTAMP, 
    3, 
    3
);

INSERT INTO T_GXP_VOTE (
    id_vote, dt_created_at, id_poll_option, id_user
) VALUES (
    SEQ_T_GXP_VOTE.NEXTVAL, 
    SYSTIMESTAMP, 
    4, 
    4
);

INSERT INTO T_GXP_VOTE (
    id_vote, dt_created_at, id_poll_option, id_user
) VALUES (
    SEQ_T_GXP_VOTE.NEXTVAL, 
    SYSTIMESTAMP, 
    5, 
    5
);


-- INSERTS NA TABELA T_GXP_ADMINISTRATOR_EVENT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_ADMINISTRATOR_EVENT (
    id_administrator_event, id_administrator, id_event
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR_EVENT.NEXTVAL, 
    1, 
    1
);

INSERT INTO T_GXP_ADMINISTRATOR_EVENT (
    id_administrator_event, id_administrator, id_event
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR_EVENT.NEXTVAL, 
    2, 
    2
);

INSERT INTO T_GXP_ADMINISTRATOR_EVENT (
    id_administrator_event, id_administrator, id_event
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR_EVENT.NEXTVAL, 
    3, 
    3
);

INSERT INTO T_GXP_ADMINISTRATOR_EVENT (
    id_administrator_event, id_administrator, id_event
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR_EVENT.NEXTVAL, 
    4, 
    4
);

INSERT INTO T_GXP_ADMINISTRATOR_EVENT (
    id_administrator_event, id_administrator, id_event
) VALUES (
    SEQ_T_GXP_ADMINISTRATOR_EVENT.NEXTVAL, 
    5, 
    5
);


-- INSERTS NA TABELA T_GXP_NOTIFICATION 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_NOTIFICATION (
    id_notification, dt_notification, ds_notification_type, tx_content, id_event
) VALUES (
    SEQ_T_GXP_NOTIFICATION.NEXTVAL, 
    TO_DATE('2024-09-01', 'YYYY-MM-DD'), 
    'Lembrete', 
    'Lembrete: O evento Tech Summit 2024 est� se aproximando. Verifique a programa��o!',
    1
);

INSERT INTO T_GXP_NOTIFICATION (
    id_notification, dt_notification, ds_notification_type, tx_content, id_event
) VALUES (
    SEQ_T_GXP_NOTIFICATION.NEXTVAL, 
    TO_DATE('2024-09-05', 'YYYY-MM-DD'), 
    'Atualiza��o', 
    'Atualiza��o: Novo palestrante confirmado para a Confer�ncia AI 2024.',
    2
);

INSERT INTO T_GXP_NOTIFICATION (
    id_notification, dt_notification, ds_notification_type, tx_content, id_event
) VALUES (
    SEQ_T_GXP_NOTIFICATION.NEXTVAL, 
    TO_DATE('2024-09-10', 'YYYY-MM-DD'), 
    'Cancelamento', 
    'Cancelamento: A palestra sobre Sustentabilidade foi cancelada.',
    3
);

INSERT INTO T_GXP_NOTIFICATION (
    id_notification, dt_notification, ds_notification_type, tx_content, id_event
) VALUES (
    SEQ_T_GXP_NOTIFICATION.NEXTVAL, 
    TO_DATE('2024-09-15', 'YYYY-MM-DD'), 
    'Confirma��o', 
    'Confirma��o: Sua inscri��o para o Webinar de Inova��o foi recebida com sucesso.',
    4
);

INSERT INTO T_GXP_NOTIFICATION (
    id_notification, dt_notification, ds_notification_type, tx_content, id_event
) VALUES (
    SEQ_T_GXP_NOTIFICATION.NEXTVAL, 
    TO_DATE('2024-09-20', 'YYYY-MM-DD'), 
    'Aviso', 
    'Aviso: A data de encerramento para feedback sobre o evento Tecnologia se aproxima.',
    5
);


-- INSERTS NA TABELA T_GXP_EVENT_DAY
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_EVENT_DAY (
    id_event_day, dt_start, dt_end, url_transmission, id_event
) VALUES (
    SEQ_T_GXP_EVENT_DAY.NEXTVAL, 
    TO_DATE('2024-09-01', 'YYYY-MM-DD'), 
    TO_DATE('2024-09-01', 'YYYY-MM-DD'), 
    'http://example.com/stream1', 
    1
);

INSERT INTO T_GXP_EVENT_DAY (
    id_event_day, dt_start, dt_end, url_transmission, id_event
) VALUES (
    SEQ_T_GXP_EVENT_DAY.NEXTVAL, 
    TO_DATE('2024-09-02', 'YYYY-MM-DD'), 
    TO_DATE('2024-09-02', 'YYYY-MM-DD'), 
    'http://example.com/stream2', 
    2
);

INSERT INTO T_GXP_EVENT_DAY (
    id_event_day, dt_start, dt_end, url_transmission, id_event
) VALUES (
    SEQ_T_GXP_EVENT_DAY.NEXTVAL, 
    TO_DATE('2024-09-03', 'YYYY-MM-DD'), 
    TO_DATE('2024-09-03', 'YYYY-MM-DD'), 
    'http://example.com/stream3', 
    3
);

INSERT INTO T_GXP_EVENT_DAY (
    id_event_day, dt_start, dt_end, url_transmission, id_event
) VALUES (
    SEQ_T_GXP_EVENT_DAY.NEXTVAL, 
    TO_DATE('2024-09-04', 'YYYY-MM-DD'), 
    TO_DATE('2024-09-04', 'YYYY-MM-DD'), 
    'http://example.com/stream4', 
    4
);

INSERT INTO T_GXP_EVENT_DAY (
    id_event_day, dt_start, dt_end, url_transmission, id_event
) VALUES (
    SEQ_T_GXP_EVENT_DAY.NEXTVAL, 
    TO_DATE('2024-09-05', 'YYYY-MM-DD'), 
    TO_DATE('2024-09-05', 'YYYY-MM-DD'), 
    'http://example.com/stream5', 
    5
);


-- INSERTS NA TABELA T_GXP_LECTURE 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO T_GXP_LECTURE (
    id_lecture, nm_lecture, tx_description, dt_lecture, id_event_day, id_speaker
) VALUES (
    SEQ_T_GXP_LECTURE.NEXTVAL, 
    'Introdu��o � Intelig�ncia Artificial', 
    'Uma palestra sobre os conceitos b�sicos de Intelig�ncia Artificial e suas aplica��es.',
    TO_DATE('2024-09-01', 'YYYY-MM-DD'), 
    1, 
    1
);

INSERT INTO T_GXP_LECTURE (
    id_lecture, nm_lecture, tx_description, dt_lecture, id_event_day, id_speaker
) VALUES (
    SEQ_T_GXP_LECTURE.NEXTVAL, 
    'Avan�os em Machine Learning', 
    'Explora��o dos mais recentes avan�os em Machine Learning e suas implica��es pr�ticas.',
    TO_DATE('2024-09-02', 'YYYY-MM-DD'), 
    2, 
    2
);

INSERT INTO T_GXP_LECTURE (
    id_lecture, nm_lecture, tx_description, dt_lecture, id_event_day, id_speaker
) VALUES (
    SEQ_T_GXP_LECTURE.NEXTVAL, 
    'Sustentabilidade e Tecnologia', 
    'Como a tecnologia pode contribuir para pr�ticas sustent�veis no mundo moderno.',
    TO_DATE('2024-09-03', 'YYYY-MM-DD'), 
    3, 
    3
);

INSERT INTO T_GXP_LECTURE (
    id_lecture, nm_lecture, tx_description, dt_lecture, id_event_day, id_speaker
) VALUES (
    SEQ_T_GXP_LECTURE.NEXTVAL, 
    'Seguran�a da Informa��o', 
    'Principais conceitos e pr�ticas para garantir a seguran�a da informa��o em sistemas.',
    TO_DATE('2024-09-04', 'YYYY-MM-DD'), 
    4, 
    4
);

INSERT INTO T_GXP_LECTURE (
    id_lecture, nm_lecture, tx_description, dt_lecture, id_event_day, id_speaker
) VALUES (
    SEQ_T_GXP_LECTURE.NEXTVAL, 
    'O Futuro da Computa��o Qu�ntica', 
    'Discuss�o sobre o potencial da computa��o qu�ntica e seus impactos futuros.',
    TO_DATE('2024-09-05', 'YYYY-MM-DD'), 
    5, 
    5
);
