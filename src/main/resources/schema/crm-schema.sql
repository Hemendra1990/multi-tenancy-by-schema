

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
--SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;


CREATE TABLE accounts (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    account_number bigint,
    account_site character varying(255),
    annual_revenue bigint,
    city character varying(255),
    country character varying(255),
    postal_code character varying(255),
    state character varying(255),
    street character varying(255),
    contact_is_inactive boolean,
    contact_role character varying(255),
    description character varying(255),
    email_address character varying(255),
    fax character varying(255),
    industry character varying(255),
    name character varying(255),
    no_of_employee integer,
    ownership character varying(255),
    phone_number character varying(255),
    rating character varying(255),
    shipping_address_city character varying(255),
    shipping_address_country character varying(255),
    shipping_address_postal_code character varying(255),
    shipping_address_state character varying(255),
    shipping_address_street character varying(255),
    sic_code character varying(255),
    ticker_symbol character varying(255),
    type character varying(255),
    website character varying(255),
    assigned_user_id bigint,
    campaign_id bigint
);

ALTER TABLE accounts OWNER TO postgres;

CREATE SEQUENCE accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE accounts_id_seq OWNER TO postgres;

ALTER SEQUENCE accounts_id_seq OWNED BY accounts.id;

CREATE TABLE act_ge_bytearray (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    deployment_id_ character varying(64),
    bytes_ bytea,
    generated_ boolean,
    tenant_id_ character varying(64),
    type_ integer,
    create_time_ timestamp without time zone,
    root_proc_inst_id_ character varying(64),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_ge_bytearray OWNER TO postgres;


CREATE TABLE act_ge_property (
    name_ character varying(64) NOT NULL,
    value_ character varying(300),
    rev_ integer
);


ALTER TABLE act_ge_property OWNER TO postgres;


CREATE TABLE act_ge_schema_log (
    id_ character varying(64) NOT NULL,
    timestamp_ timestamp without time zone,
    version_ character varying(255)
);


ALTER TABLE act_ge_schema_log OWNER TO postgres;


CREATE TABLE act_hi_actinst (
    id_ character varying(64) NOT NULL,
    parent_act_inst_id_ character varying(64),
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64) NOT NULL,
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64) NOT NULL,
    execution_id_ character varying(64) NOT NULL,
    act_id_ character varying(255) NOT NULL,
    task_id_ character varying(64),
    call_proc_inst_id_ character varying(64),
    call_case_inst_id_ character varying(64),
    act_name_ character varying(255),
    act_type_ character varying(255) NOT NULL,
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    act_inst_state_ integer,
    sequence_counter_ bigint,
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_actinst OWNER TO postgres;


CREATE TABLE act_hi_attachment (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(255),
    name_ character varying(255),
    description_ character varying(4000),
    type_ character varying(255),
    task_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    url_ character varying(4000),
    content_id_ character varying(64),
    tenant_id_ character varying(64),
    create_time_ timestamp without time zone,
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_attachment OWNER TO postgres;


CREATE TABLE act_hi_batch (
    id_ character varying(64) NOT NULL,
    type_ character varying(255),
    total_jobs_ integer,
    jobs_per_seed_ integer,
    invocations_per_job_ integer,
    seed_job_def_id_ character varying(64),
    monitor_job_def_id_ character varying(64),
    batch_job_def_id_ character varying(64),
    tenant_id_ character varying(64),
    create_user_id_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    removal_time_ timestamp without time zone,
    exec_start_time_ timestamp without time zone
);


ALTER TABLE act_hi_batch OWNER TO postgres;


CREATE TABLE act_hi_caseactinst (
    id_ character varying(64) NOT NULL,
    parent_act_inst_id_ character varying(64),
    case_def_id_ character varying(64) NOT NULL,
    case_inst_id_ character varying(64) NOT NULL,
    case_act_id_ character varying(255) NOT NULL,
    task_id_ character varying(64),
    call_proc_inst_id_ character varying(64),
    call_case_inst_id_ character varying(64),
    case_act_name_ character varying(255),
    case_act_type_ character varying(255),
    create_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    state_ integer,
    required_ boolean,
    tenant_id_ character varying(64)
);


ALTER TABLE act_hi_caseactinst OWNER TO postgres;


CREATE TABLE act_hi_caseinst (
    id_ character varying(64) NOT NULL,
    case_inst_id_ character varying(64) NOT NULL,
    business_key_ character varying(255),
    case_def_id_ character varying(64) NOT NULL,
    create_time_ timestamp without time zone NOT NULL,
    close_time_ timestamp without time zone,
    duration_ bigint,
    state_ integer,
    create_user_id_ character varying(255),
    super_case_instance_id_ character varying(64),
    super_process_instance_id_ character varying(64),
    tenant_id_ character varying(64)
);


ALTER TABLE act_hi_caseinst OWNER TO postgres;


CREATE TABLE act_hi_comment (
    id_ character varying(64) NOT NULL,
    type_ character varying(255),
    time_ timestamp without time zone NOT NULL,
    user_id_ character varying(255),
    task_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    action_ character varying(255),
    message_ character varying(4000),
    full_msg_ bytea,
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_comment OWNER TO postgres;


CREATE TABLE act_hi_dec_in (
    id_ character varying(64) NOT NULL,
    dec_inst_id_ character varying(64) NOT NULL,
    clause_id_ character varying(64),
    clause_name_ character varying(255),
    var_type_ character varying(100),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    tenant_id_ character varying(64),
    create_time_ timestamp without time zone,
    root_proc_inst_id_ character varying(64),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_dec_in OWNER TO postgres;


CREATE TABLE act_hi_dec_out (
    id_ character varying(64) NOT NULL,
    dec_inst_id_ character varying(64) NOT NULL,
    clause_id_ character varying(64),
    clause_name_ character varying(255),
    rule_id_ character varying(64),
    rule_order_ integer,
    var_name_ character varying(255),
    var_type_ character varying(100),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    tenant_id_ character varying(64),
    create_time_ timestamp without time zone,
    root_proc_inst_id_ character varying(64),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_dec_out OWNER TO postgres;


CREATE TABLE act_hi_decinst (
    id_ character varying(64) NOT NULL,
    dec_def_id_ character varying(64) NOT NULL,
    dec_def_key_ character varying(255) NOT NULL,
    dec_def_name_ character varying(255),
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    proc_inst_id_ character varying(64),
    case_def_key_ character varying(255),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    act_inst_id_ character varying(64),
    act_id_ character varying(255),
    eval_time_ timestamp without time zone NOT NULL,
    removal_time_ timestamp without time zone,
    collect_value_ double precision,
    user_id_ character varying(255),
    root_dec_inst_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    dec_req_id_ character varying(64),
    dec_req_key_ character varying(255),
    tenant_id_ character varying(64)
);


ALTER TABLE act_hi_decinst OWNER TO postgres;


CREATE TABLE act_hi_detail (
    id_ character varying(64) NOT NULL,
    type_ character varying(255) NOT NULL,
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    case_def_key_ character varying(255),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_execution_id_ character varying(64),
    task_id_ character varying(64),
    act_inst_id_ character varying(64),
    var_inst_id_ character varying(64),
    name_ character varying(255) NOT NULL,
    var_type_ character varying(64),
    rev_ integer,
    time_ timestamp without time zone NOT NULL,
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    sequence_counter_ bigint,
    tenant_id_ character varying(64),
    operation_id_ character varying(64),
    removal_time_ timestamp without time zone,
    initial_ boolean
);


ALTER TABLE act_hi_detail OWNER TO postgres;


CREATE TABLE act_hi_ext_task_log (
    id_ character varying(64) NOT NULL,
    timestamp_ timestamp without time zone NOT NULL,
    ext_task_id_ character varying(64) NOT NULL,
    retries_ integer,
    topic_name_ character varying(255),
    worker_id_ character varying(255),
    priority_ bigint DEFAULT 0 NOT NULL,
    error_msg_ character varying(4000),
    error_details_id_ character varying(64),
    act_id_ character varying(255),
    act_inst_id_ character varying(64),
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    proc_def_key_ character varying(255),
    tenant_id_ character varying(64),
    state_ integer,
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_ext_task_log OWNER TO postgres;


CREATE TABLE act_hi_identitylink (
    id_ character varying(64) NOT NULL,
    timestamp_ timestamp without time zone NOT NULL,
    type_ character varying(255),
    user_id_ character varying(255),
    group_id_ character varying(255),
    task_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    operation_type_ character varying(64),
    assigner_id_ character varying(64),
    proc_def_key_ character varying(255),
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_identitylink OWNER TO postgres;


CREATE TABLE act_hi_incident (
    id_ character varying(64) NOT NULL,
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    create_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    incident_msg_ character varying(4000),
    incident_type_ character varying(255) NOT NULL,
    activity_id_ character varying(255),
    failed_activity_id_ character varying(255),
    cause_incident_id_ character varying(64),
    root_cause_incident_id_ character varying(64),
    configuration_ character varying(255),
    history_configuration_ character varying(255),
    incident_state_ integer,
    tenant_id_ character varying(64),
    job_def_id_ character varying(64),
    annotation_ character varying(4000),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_incident OWNER TO postgres;


CREATE TABLE act_hi_job_log (
    id_ character varying(64) NOT NULL,
    timestamp_ timestamp without time zone NOT NULL,
    job_id_ character varying(64) NOT NULL,
    job_duedate_ timestamp without time zone,
    job_retries_ integer,
    job_priority_ bigint DEFAULT 0 NOT NULL,
    job_exception_msg_ character varying(4000),
    job_exception_stack_id_ character varying(64),
    job_state_ integer,
    job_def_id_ character varying(64),
    job_def_type_ character varying(255),
    job_def_configuration_ character varying(255),
    act_id_ character varying(255),
    failed_act_id_ character varying(255),
    execution_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    process_instance_id_ character varying(64),
    process_def_id_ character varying(64),
    process_def_key_ character varying(255),
    deployment_id_ character varying(64),
    sequence_counter_ bigint,
    tenant_id_ character varying(64),
    hostname_ character varying(255),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_job_log OWNER TO postgres;


CREATE TABLE act_hi_op_log (
    id_ character varying(64) NOT NULL,
    deployment_id_ character varying(64),
    proc_def_id_ character varying(64),
    proc_def_key_ character varying(255),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_execution_id_ character varying(64),
    task_id_ character varying(64),
    job_id_ character varying(64),
    job_def_id_ character varying(64),
    batch_id_ character varying(64),
    user_id_ character varying(255),
    timestamp_ timestamp without time zone NOT NULL,
    operation_type_ character varying(64),
    operation_id_ character varying(64),
    entity_type_ character varying(30),
    property_ character varying(64),
    org_value_ character varying(4000),
    new_value_ character varying(4000),
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone,
    category_ character varying(64),
    external_task_id_ character varying(64),
    annotation_ character varying(4000)
);


ALTER TABLE act_hi_op_log OWNER TO postgres;


CREATE TABLE act_hi_procinst (
    id_ character varying(64) NOT NULL,
    proc_inst_id_ character varying(64) NOT NULL,
    business_key_ character varying(255),
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64) NOT NULL,
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    removal_time_ timestamp without time zone,
    duration_ bigint,
    start_user_id_ character varying(255),
    start_act_id_ character varying(255),
    end_act_id_ character varying(255),
    super_process_instance_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    super_case_instance_id_ character varying(64),
    case_inst_id_ character varying(64),
    delete_reason_ character varying(4000),
    tenant_id_ character varying(64),
    state_ character varying(255)
);


ALTER TABLE act_hi_procinst OWNER TO postgres;


CREATE TABLE act_hi_taskinst (
    id_ character varying(64) NOT NULL,
    task_def_key_ character varying(255),
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    case_def_key_ character varying(255),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_execution_id_ character varying(64),
    act_inst_id_ character varying(64),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    owner_ character varying(255),
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    delete_reason_ character varying(4000),
    priority_ integer,
    due_date_ timestamp without time zone,
    follow_up_date_ timestamp without time zone,
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_taskinst OWNER TO postgres;


CREATE TABLE act_hi_varinst (
    id_ character varying(64) NOT NULL,
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    act_inst_id_ character varying(64),
    case_def_key_ character varying(255),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_execution_id_ character varying(64),
    task_id_ character varying(64),
    name_ character varying(255) NOT NULL,
    var_type_ character varying(100),
    create_time_ timestamp without time zone,
    rev_ integer,
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    tenant_id_ character varying(64),
    state_ character varying(20),
    removal_time_ timestamp without time zone
);


ALTER TABLE act_hi_varinst OWNER TO postgres;


CREATE TABLE act_id_group (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    type_ character varying(255)
);


ALTER TABLE act_id_group OWNER TO postgres;


CREATE TABLE act_id_info (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(64),
    type_ character varying(64),
    key_ character varying(255),
    value_ character varying(255),
    password_ bytea,
    parent_id_ character varying(255)
);


ALTER TABLE act_id_info OWNER TO postgres;


CREATE TABLE act_id_membership (
    user_id_ character varying(64) NOT NULL,
    group_id_ character varying(64) NOT NULL
);


ALTER TABLE act_id_membership OWNER TO postgres;


CREATE TABLE act_id_tenant (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255)
);


ALTER TABLE act_id_tenant OWNER TO postgres;


CREATE TABLE act_id_tenant_member (
    id_ character varying(64) NOT NULL,
    tenant_id_ character varying(64) NOT NULL,
    user_id_ character varying(64),
    group_id_ character varying(64)
);


ALTER TABLE act_id_tenant_member OWNER TO postgres;


CREATE TABLE act_id_user (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    first_ character varying(255),
    last_ character varying(255),
    email_ character varying(255),
    pwd_ character varying(255),
    salt_ character varying(255),
    lock_exp_time_ timestamp without time zone,
    attempts_ integer,
    picture_id_ character varying(64)
);


ALTER TABLE act_id_user OWNER TO postgres;


CREATE TABLE act_re_camformdef (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    tenant_id_ character varying(64)
);


ALTER TABLE act_re_camformdef OWNER TO postgres;


CREATE TABLE act_re_case_def (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    tenant_id_ character varying(64),
    history_ttl_ integer
);


ALTER TABLE act_re_case_def OWNER TO postgres;


CREATE TABLE act_re_decision_def (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    dec_req_id_ character varying(64),
    dec_req_key_ character varying(255),
    tenant_id_ character varying(64),
    history_ttl_ integer,
    version_tag_ character varying(64)
);


ALTER TABLE act_re_decision_def OWNER TO postgres;


CREATE TABLE act_re_decision_req_def (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    tenant_id_ character varying(64)
);


ALTER TABLE act_re_decision_req_def OWNER TO postgres;


CREATE TABLE act_re_deployment (
    id_ character varying(64) NOT NULL,
    name_ character varying(255),
    deploy_time_ timestamp without time zone,
    source_ character varying(255),
    tenant_id_ character varying(64)
);


ALTER TABLE act_re_deployment OWNER TO postgres;


CREATE TABLE act_re_procdef (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    has_start_form_key_ boolean,
    suspension_state_ integer,
    tenant_id_ character varying(64),
    version_tag_ character varying(64),
    history_ttl_ integer,
    startable_ boolean DEFAULT true NOT NULL
);


ALTER TABLE act_re_procdef OWNER TO postgres;


CREATE TABLE act_ru_authorization (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    type_ integer NOT NULL,
    group_id_ character varying(255),
    user_id_ character varying(255),
    resource_type_ integer NOT NULL,
    resource_id_ character varying(255),
    perms_ integer,
    removal_time_ timestamp without time zone,
    root_proc_inst_id_ character varying(64)
);


ALTER TABLE act_ru_authorization OWNER TO postgres;


CREATE TABLE act_ru_batch (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    type_ character varying(255),
    total_jobs_ integer,
    jobs_created_ integer,
    jobs_per_seed_ integer,
    invocations_per_job_ integer,
    seed_job_def_id_ character varying(64),
    batch_job_def_id_ character varying(64),
    monitor_job_def_id_ character varying(64),
    suspension_state_ integer,
    configuration_ character varying(255),
    tenant_id_ character varying(64),
    create_user_id_ character varying(255),
    start_time_ timestamp without time zone,
    exec_start_time_ timestamp without time zone
);


ALTER TABLE act_ru_batch OWNER TO postgres;


CREATE TABLE act_ru_case_execution (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    case_inst_id_ character varying(64),
    super_case_exec_ character varying(64),
    super_exec_ character varying(64),
    business_key_ character varying(255),
    parent_id_ character varying(64),
    case_def_id_ character varying(64),
    act_id_ character varying(255),
    prev_state_ integer,
    current_state_ integer,
    required_ boolean,
    tenant_id_ character varying(64)
);


ALTER TABLE act_ru_case_execution OWNER TO postgres;


CREATE TABLE act_ru_case_sentry_part (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    case_inst_id_ character varying(64),
    case_exec_id_ character varying(64),
    sentry_id_ character varying(255),
    type_ character varying(255),
    source_case_exec_id_ character varying(64),
    standard_event_ character varying(255),
    source_ character varying(255),
    variable_event_ character varying(255),
    variable_name_ character varying(255),
    satisfied_ boolean,
    tenant_id_ character varying(64)
);


ALTER TABLE act_ru_case_sentry_part OWNER TO postgres;


CREATE TABLE act_ru_event_subscr (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    event_type_ character varying(255) NOT NULL,
    event_name_ character varying(255),
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    activity_id_ character varying(255),
    configuration_ character varying(255),
    created_ timestamp without time zone NOT NULL,
    tenant_id_ character varying(64)
);


ALTER TABLE act_ru_event_subscr OWNER TO postgres;


CREATE TABLE act_ru_execution (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    business_key_ character varying(255),
    parent_id_ character varying(64),
    proc_def_id_ character varying(64),
    super_exec_ character varying(64),
    super_case_exec_ character varying(64),
    case_inst_id_ character varying(64),
    act_id_ character varying(255),
    act_inst_id_ character varying(64),
    is_active_ boolean,
    is_concurrent_ boolean,
    is_scope_ boolean,
    is_event_scope_ boolean,
    suspension_state_ integer,
    cached_ent_state_ integer,
    sequence_counter_ bigint,
    tenant_id_ character varying(64)
);


ALTER TABLE act_ru_execution OWNER TO postgres;


CREATE TABLE act_ru_ext_task (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    worker_id_ character varying(255),
    topic_name_ character varying(255),
    retries_ integer,
    error_msg_ character varying(4000),
    error_details_id_ character varying(64),
    lock_exp_time_ timestamp without time zone,
    suspension_state_ integer,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    proc_def_key_ character varying(255),
    act_id_ character varying(255),
    act_inst_id_ character varying(64),
    tenant_id_ character varying(64),
    priority_ bigint DEFAULT 0 NOT NULL,
    last_failure_log_id_ character varying(64)
);


ALTER TABLE act_ru_ext_task OWNER TO postgres;


CREATE TABLE act_ru_filter (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    resource_type_ character varying(255) NOT NULL,
    name_ character varying(255) NOT NULL,
    owner_ character varying(255),
    query_ text NOT NULL,
    properties_ text
);


ALTER TABLE act_ru_filter OWNER TO postgres;


CREATE TABLE act_ru_identitylink (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    group_id_ character varying(255),
    type_ character varying(255),
    user_id_ character varying(255),
    task_id_ character varying(64),
    proc_def_id_ character varying(64),
    tenant_id_ character varying(64)
);


ALTER TABLE act_ru_identitylink OWNER TO postgres;


CREATE TABLE act_ru_incident (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    incident_timestamp_ timestamp without time zone NOT NULL,
    incident_msg_ character varying(4000),
    incident_type_ character varying(255) NOT NULL,
    execution_id_ character varying(64),
    activity_id_ character varying(255),
    failed_activity_id_ character varying(255),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    cause_incident_id_ character varying(64),
    root_cause_incident_id_ character varying(64),
    configuration_ character varying(255),
    tenant_id_ character varying(64),
    job_def_id_ character varying(64),
    annotation_ character varying(4000)
);


ALTER TABLE act_ru_incident OWNER TO postgres;


CREATE TABLE act_ru_job (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    lock_exp_time_ timestamp without time zone,
    lock_owner_ character varying(255),
    exclusive_ boolean,
    execution_id_ character varying(64),
    process_instance_id_ character varying(64),
    process_def_id_ character varying(64),
    process_def_key_ character varying(255),
    retries_ integer,
    exception_stack_id_ character varying(64),
    exception_msg_ character varying(4000),
    failed_act_id_ character varying(255),
    duedate_ timestamp without time zone,
    repeat_ character varying(255),
    repeat_offset_ bigint DEFAULT 0,
    handler_type_ character varying(255),
    handler_cfg_ character varying(4000),
    deployment_id_ character varying(64),
    suspension_state_ integer DEFAULT 1 NOT NULL,
    job_def_id_ character varying(64),
    priority_ bigint DEFAULT 0 NOT NULL,
    sequence_counter_ bigint,
    tenant_id_ character varying(64),
    create_time_ timestamp without time zone,
    last_failure_log_id_ character varying(64)
);


ALTER TABLE act_ru_job OWNER TO postgres;


CREATE TABLE act_ru_jobdef (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    proc_def_id_ character varying(64),
    proc_def_key_ character varying(255),
    act_id_ character varying(255),
    job_type_ character varying(255) NOT NULL,
    job_configuration_ character varying(255),
    suspension_state_ integer,
    job_priority_ bigint,
    tenant_id_ character varying(64),
    deployment_id_ character varying(64)
);


ALTER TABLE act_ru_jobdef OWNER TO postgres;


CREATE TABLE act_ru_meter_log (
    id_ character varying(64) NOT NULL,
    name_ character varying(64) NOT NULL,
    reporter_ character varying(255),
    value_ bigint,
    timestamp_ timestamp without time zone,
    milliseconds_ bigint DEFAULT 0
);


ALTER TABLE act_ru_meter_log OWNER TO postgres;


CREATE TABLE act_ru_task (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    case_execution_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_def_id_ character varying(64),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    task_def_key_ character varying(255),
    owner_ character varying(255),
    assignee_ character varying(255),
    delegation_ character varying(64),
    priority_ integer,
    create_time_ timestamp without time zone,
    last_updated_ timestamp without time zone,
    due_date_ timestamp without time zone,
    follow_up_date_ timestamp without time zone,
    suspension_state_ integer,
    tenant_id_ character varying(64)
);


ALTER TABLE act_ru_task OWNER TO postgres;


CREATE TABLE act_ru_task_meter_log (
    id_ character varying(64) NOT NULL,
    assignee_hash_ bigint,
    timestamp_ timestamp without time zone
);


ALTER TABLE act_ru_task_meter_log OWNER TO postgres;


CREATE TABLE act_ru_variable (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    name_ character varying(255) NOT NULL,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    case_execution_id_ character varying(64),
    case_inst_id_ character varying(64),
    task_id_ character varying(64),
    batch_id_ character varying(64),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    var_scope_ character varying(64),
    sequence_counter_ bigint,
    is_concurrent_local_ boolean,
    tenant_id_ character varying(64)
);


ALTER TABLE act_ru_variable OWNER TO postgres;


CREATE TABLE action_form (
    id bigint NOT NULL,
    create_record_id bigint,
    send_email_id bigint,
    update_record_id bigint
);


ALTER TABLE action_form OWNER TO postgres;


CREATE SEQUENCE action_form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE action_form_id_seq OWNER TO postgres;


ALTER SEQUENCE action_form_id_seq OWNED BY action_form.id;



CREATE TABLE activity (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    activity_type character varying(255),
    description character varying(255),
    duration integer,
    end_date_time timestamp without time zone,
    expression character varying(255),
    frequency character varying(255),
    is_all_day boolean,
    name character varying(255),
    record_id bigint,
    table_name character varying(255),
    reminders character varying(255),
    start_date_time timestamp without time zone,
    status character varying(255),
    subject character varying(255),
    url character varying(255),
    account_id bigint,
    assigned_user_id bigint,
    contact_id bigint,
    email_template_id bigint,
    lead_id bigint
);


ALTER TABLE activity OWNER TO postgres;


CREATE SEQUENCE activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE activity_id_seq OWNER TO postgres;


ALTER SEQUENCE activity_id_seq OWNED BY activity.id;



CREATE TABLE activity_user (
    activity_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE activity_user OWNER TO postgres;


CREATE TABLE address (
    address_id bigint NOT NULL,
    address_line character varying(255),
    city_name character varying(255),
    country_name character varying(255),
    state_name character varying(255),
    street_name character varying(255),
    zip_code character varying(255)
);


ALTER TABLE address OWNER TO postgres;


CREATE SEQUENCE address_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE address_address_id_seq OWNER TO postgres;


ALTER SEQUENCE address_address_id_seq OWNED BY address.address_id;



CREATE TABLE campaign (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    actual_cost bigint,
    budgeted_cost bigint,
    description character varying(255),
    end_date timestamp without time zone,
    expected_response bigint,
    expected_revenue bigint,
    is_active boolean,
    name character varying(255),
    start_date timestamp without time zone,
    status character varying(255),
    type character varying(255),
    assigned_user bigint
);


ALTER TABLE campaign OWNER TO postgres;


CREATE SEQUENCE campaign_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE campaign_id_seq OWNER TO postgres;


ALTER SEQUENCE campaign_id_seq OWNED BY campaign.id;



CREATE TABLE campaign_log_record (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    action character varying(50) NOT NULL,
    action_date timestamp without time zone NOT NULL,
    application character varying(36) NOT NULL,
    data json,
    name character varying(255),
    string_additional_data character varying(100),
    string_data character varying(100),
    campaign bigint
);


ALTER TABLE campaign_log_record OWNER TO postgres;


CREATE SEQUENCE campaign_log_record_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE campaign_log_record_id_seq OWNER TO postgres;


ALTER SEQUENCE campaign_log_record_id_seq OWNED BY campaign_log_record.id;



CREATE TABLE campaign_tracking_url (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    action character varying(255),
    message character varying(255),
    name character varying(255) NOT NULL,
    url character varying(255),
    campaign bigint
);


ALTER TABLE campaign_tracking_url OWNER TO postgres;


CREATE SEQUENCE campaign_tracking_url_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE campaign_tracking_url_id_seq OWNER TO postgres;


ALTER SEQUENCE campaign_tracking_url_id_seq OWNED BY campaign_tracking_url.id;



CREATE TABLE college_test (
    id bigint NOT NULL,
    name character varying(255),
    website character varying(255)
);


ALTER TABLE college_test OWNER TO postgres;


CREATE TABLE college_test2 (
    id character varying(255) NOT NULL,
    name character varying(255),
    website character varying(255)
);


ALTER TABLE college_test2 OWNER TO postgres;


CREATE SEQUENCE college_test_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE college_test_seq OWNER TO postgres;


CREATE TABLE column_metadata (
    id bigint NOT NULL,
    column_name character varying(255) NOT NULL,
    constraints character varying(255),
    control_type character varying(255),
    data_format character varying(255),
    data_type character varying(255),
    default_value character varying(255),
    header_name character varying(255),
    referenceapi character varying(255),
    standard_column boolean,
    static_options character varying(255),
    table_id bigint NOT NULL
);


ALTER TABLE column_metadata OWNER TO postgres;


CREATE SEQUENCE column_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE column_metadata_id_seq OWNER TO postgres;


ALTER SEQUENCE column_metadata_id_seq OWNED BY column_metadata.id;



CREATE TABLE column_validation (
    column_meta_data_id bigint NOT NULL,
    column_validation_id bigint NOT NULL
);


ALTER TABLE column_validation OWNER TO postgres;


CREATE TABLE compact_layout (
    id bigint NOT NULL,
    active boolean,
    layout_name character varying(255),
    organisation_id bigint,
    table_metadata_id bigint
);


ALTER TABLE compact_layout OWNER TO postgres;


CREATE TABLE compact_layout_button (
    id bigint NOT NULL,
    button_name character varying(255)
);


ALTER TABLE compact_layout_button OWNER TO postgres;


CREATE SEQUENCE compact_layout_button_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE compact_layout_button_id_seq OWNER TO postgres;


ALTER SEQUENCE compact_layout_button_id_seq OWNED BY compact_layout_button.id;



CREATE TABLE compact_layout_column (
    id bigint NOT NULL,
    is_link boolean,
    sort_oder integer,
    column_id bigint,
    compact_layout_id bigint
);


ALTER TABLE compact_layout_column OWNER TO postgres;


CREATE SEQUENCE compact_layout_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE compact_layout_column_id_seq OWNER TO postgres;


ALTER SEQUENCE compact_layout_column_id_seq OWNED BY compact_layout_column.id;



CREATE SEQUENCE compact_layout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE compact_layout_id_seq OWNER TO postgres;


ALTER SEQUENCE compact_layout_id_seq OWNED BY compact_layout.id;



CREATE TABLE contact (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    account_is_inactive boolean,
    account_role character varying(255),
    city character varying(255),
    country character varying(255),
    postal_code character varying(255),
    state character varying(255),
    street character varying(255),
    assistant character varying(255),
    asst_phone bigint,
    birth_date timestamp without time zone,
    department character varying(255),
    description text,
    do_not_call boolean,
    email_address character varying(255),
    fax character varying(255),
    first_name character varying(100),
    last_name character varying(100),
    lead_source character varying(255),
    mobile bigint,
    name character varying(255),
    opportunity_role character varying(255),
    phone_number character varying(255),
    salutation_name character varying(255),
    title character varying(255),
    account_id bigint,
    assigned_user_id bigint,
    campaign_id bigint
);


ALTER TABLE contact OWNER TO postgres;


CREATE SEQUENCE contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contact_id_seq OWNER TO postgres;


ALTER SEQUENCE contact_id_seq OWNED BY contact.id;



CREATE TABLE create_record (
    id bigint NOT NULL,
    entity_id bigint
);


ALTER TABLE create_record OWNER TO postgres;


CREATE TABLE create_record_field_relation (
    create_record_id bigint NOT NULL,
    field_value_id bigint NOT NULL
);


ALTER TABLE create_record_field_relation OWNER TO postgres;


CREATE TABLE create_record_field_value (
    id bigint NOT NULL,
    value character varying(255),
    column_id bigint
);


ALTER TABLE create_record_field_value OWNER TO postgres;


CREATE SEQUENCE create_record_field_value_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE create_record_field_value_id_seq OWNER TO postgres;


ALTER SEQUENCE create_record_field_value_id_seq OWNED BY create_record_field_value.id;



CREATE SEQUENCE create_record_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE create_record_id_seq OWNER TO postgres;


ALTER SEQUENCE create_record_id_seq OWNED BY create_record.id;



CREATE TABLE crm_user (
    id bigint NOT NULL,
    allow_forecasting boolean,
    company character varying(255),
    created_by bigint,
    created_on timestamp without time zone,
    crm_content_user boolean,
    department character varying(255),
    division character varying(255),
    email character varying(255) NOT NULL,
    fax character varying(255),
    federation_id character varying(255),
    first_name character varying(255),
    flow_user boolean,
    image text,
    is_active boolean,
    knowledge_user boolean,
    language character varying(255),
    last_name character varying(255) NOT NULL,
    locale character varying(255),
    marketing_user boolean,
    mobile_number character varying(255),
    nick_name character varying(255) NOT NULL,
    offline_user boolean,
    password character varying(255),
    phone_number character varying(255),
    service_cloud_user boolean,
    theme character varying(255),
    time_zone character varying(255),
    title character varying(255),
    updated_by bigint,
    updated_on timestamp without time zone,
    username character varying(255) NOT NULL,
    wdc_user boolean,
    delegated_approver_id bigint,
    mailing_address_id bigint,
    organisation_id bigint,
    profile_id bigint,
    role_id bigint,
    target_list_is_opted_out boolean
);


ALTER TABLE crm_user OWNER TO postgres;


CREATE SEQUENCE crm_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_user_id_seq OWNER TO postgres;


ALTER SEQUENCE crm_user_id_seq OWNED BY crm_user.id;



CREATE TABLE currency (
    id bigint NOT NULL
);


ALTER TABLE currency OWNER TO postgres;


CREATE SEQUENCE currency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE currency_id_seq OWNER TO postgres;


ALTER SEQUENCE currency_id_seq OWNED BY currency.id;



CREATE TABLE dml_workflow (
    id bigint NOT NULL,
    dml_type character varying(255) NOT NULL,
    entity_name character varying(255) NOT NULL,
    is_active boolean,
    is_pre_process boolean,
    process_definition_id character varying(255) NOT NULL,
    workflow_key character varying(255) NOT NULL,
    workflow_name character varying(255) NOT NULL
);


ALTER TABLE dml_workflow OWNER TO postgres;


CREATE SEQUENCE dml_workflow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dml_workflow_id_seq OWNER TO postgres;


ALTER SEQUENCE dml_workflow_id_seq OWNED BY dml_workflow.id;



CREATE TABLE duplicate_action (
    id bigint NOT NULL,
    action_type character varying(255),
    add_alert boolean,
    add_report boolean,
    message character varying(255),
    update_action_type character varying(255),
    update_alert boolean,
    update_report boolean
);


ALTER TABLE duplicate_action OWNER TO postgres;


CREATE SEQUENCE duplicate_action_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE duplicate_action_id_seq OWNER TO postgres;


ALTER SEQUENCE duplicate_action_id_seq OWNED BY duplicate_action.id;



CREATE TABLE duplicate_matching_rule (
    id bigint NOT NULL,
    matching_rule_id bigint,
    table_meta_data_id bigint
);


ALTER TABLE duplicate_matching_rule OWNER TO postgres;


CREATE SEQUENCE duplicate_matching_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE duplicate_matching_rule_id_seq OWNER TO postgres;


ALTER SEQUENCE duplicate_matching_rule_id_seq OWNED BY duplicate_matching_rule.id;



CREATE TABLE duplicate_matching_rule_relation (
    duplicate_rules_id bigint NOT NULL,
    duplicate_matching_rules_id bigint NOT NULL
);


ALTER TABLE duplicate_matching_rule_relation OWNER TO postgres;


CREATE TABLE duplicate_rule (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    active boolean,
    description character varying(255),
    name character varying(255),
    duplicate_action_id bigint,
    table_meta_data_id bigint
);


ALTER TABLE duplicate_rule OWNER TO postgres;


CREATE SEQUENCE duplicate_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE duplicate_rule_id_seq OWNER TO postgres;


ALTER SEQUENCE duplicate_rule_id_seq OWNED BY duplicate_rule.id;



CREATE TABLE e_account (
    id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE e_account OWNER TO postgres;


CREATE SEQUENCE e_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE e_account_id_seq OWNER TO postgres;


ALTER SEQUENCE e_account_id_seq OWNED BY e_account.id;



CREATE TABLE e_contact (
    id bigint NOT NULL,
    name character varying(255),
    account_id bigint
);


ALTER TABLE e_contact OWNER TO postgres;


CREATE SEQUENCE e_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE e_contact_id_seq OWNER TO postgres;


ALTER SEQUENCE e_contact_id_seq OWNED BY e_contact.id;



CREATE TABLE email_placeholder (
    id bigint NOT NULL,
    column_name character varying(255),
    placeholder_name character varying(255),
    table_name character varying(255),
    template_id bigint
);


ALTER TABLE email_placeholder OWNER TO postgres;


CREATE SEQUENCE email_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE email_placeholder_id_seq OWNER TO postgres;


ALTER SEQUENCE email_placeholder_id_seq OWNED BY email_placeholder.id;



CREATE TABLE email_template (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    body text,
    is_html boolean,
    subject character varying(255),
    template_name character varying(255)
);


ALTER TABLE email_template OWNER TO postgres;


CREATE SEQUENCE email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE email_template_id_seq OWNER TO postgres;


ALTER SEQUENCE email_template_id_seq OWNED BY email_template.id;



CREATE TABLE field_permission (
    id bigint NOT NULL,
    editable boolean NOT NULL,
    field_name character varying(255),
    object_name character varying(255),
    readable boolean NOT NULL,
    field_permission_id bigint
);


ALTER TABLE field_permission OWNER TO postgres;


CREATE SEQUENCE field_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE field_permission_id_seq OWNER TO postgres;


ALTER SEQUENCE field_permission_id_seq OWNED BY field_permission.id;



CREATE TABLE lead (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    account_name character varying(255),
    annual_revenue bigint,
    city character varying(255),
    company character varying(255) NOT NULL,
    converted_at timestamp without time zone,
    country character varying(255),
    description character varying(255),
    do_not_call boolean,
    email_address character varying(255),
    fax character varying(255),
    first_name character varying(255),
    industry character varying(255),
    is_converted boolean DEFAULT false,
    last_name character varying(255) NOT NULL,
    lat_long character varying(255),
    lead_status character varying(255) NOT NULL,
    mobile bigint,
    name character varying(255) NOT NULL,
    no_of_employee integer,
    opportunity_amount double precision,
    opportunity_amount_converted double precision,
    phone_number character varying(255),
    postal_code character varying(255),
    rating character varying(255),
    salutation_name character varying(255),
    source character varying(255),
    state character varying(255),
    street character varying(255),
    title character varying(100),
    website character varying(255),
    assigned_user_id bigint,
    campaign_id bigint
);


ALTER TABLE lead OWNER TO postgres;


CREATE SEQUENCE lead_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lead_id_seq OWNER TO postgres;


ALTER SEQUENCE lead_id_seq OWNED BY lead.id;



CREATE TABLE list_view_layout (
    id bigint NOT NULL,
    active boolean,
    filter_details text,
    name character varying(255),
    organisation_id bigint,
    sort_by character varying(255),
    sort_order boolean,
    table_meta_data_id bigint
);


ALTER TABLE list_view_layout OWNER TO postgres;


CREATE TABLE list_view_layout_column (
    id bigint NOT NULL,
    is_link boolean,
    sort_oder integer,
    column_id bigint,
    layout_id bigint
);


ALTER TABLE list_view_layout_column OWNER TO postgres;


CREATE SEQUENCE list_view_layout_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE list_view_layout_column_id_seq OWNER TO postgres;


ALTER SEQUENCE list_view_layout_column_id_seq OWNED BY list_view_layout_column.id;



CREATE SEQUENCE list_view_layout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE list_view_layout_id_seq OWNER TO postgres;


ALTER SEQUENCE list_view_layout_id_seq OWNED BY list_view_layout.id;



CREATE TABLE mapping_rule (
    id bigint NOT NULL,
    table_metadata_id bigint
);


ALTER TABLE mapping_rule OWNER TO postgres;


CREATE TABLE mapping_rule_column (
    id bigint NOT NULL,
    account_column character varying(255),
    contact_column character varying(255),
    is_standard boolean,
    lead_column character varying(255),
    opportunity_column character varying(255)
);


ALTER TABLE mapping_rule_column OWNER TO postgres;


CREATE SEQUENCE mapping_rule_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mapping_rule_column_id_seq OWNER TO postgres;


ALTER SEQUENCE mapping_rule_column_id_seq OWNED BY mapping_rule_column.id;



CREATE TABLE mapping_rule_column_relation (
    mapping_rule_id bigint NOT NULL,
    column_id bigint NOT NULL
);


ALTER TABLE mapping_rule_column_relation OWNER TO postgres;


CREATE SEQUENCE mapping_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mapping_rule_id_seq OWNER TO postgres;


ALTER SEQUENCE mapping_rule_id_seq OWNED BY mapping_rule.id;



CREATE TABLE matching_rule (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    active boolean,
    description character varying(255),
    filter_details text,
    name character varying(255),
    table_meta_data_id bigint
);


ALTER TABLE matching_rule OWNER TO postgres;


CREATE SEQUENCE matching_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE matching_rule_id_seq OWNER TO postgres;


ALTER SEQUENCE matching_rule_id_seq OWNED BY matching_rule.id;



CREATE TABLE object_permission (
    id bigint NOT NULL,
    allow_create boolean NOT NULL,
    allow_delete boolean NOT NULL,
    allow_edit boolean NOT NULL,
    allow_modify_all boolean NOT NULL,
    allow_read boolean NOT NULL,
    allow_view_all boolean NOT NULL,
    object_name character varying(255),
    page_layout_id bigint,
    object_permission_id bigint
);


ALTER TABLE object_permission OWNER TO postgres;


CREATE SEQUENCE object_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE object_permission_id_seq OWNER TO postgres;


ALTER SEQUENCE object_permission_id_seq OWNED BY object_permission.id;



CREATE TABLE opportunity (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    amount double precision,
    amount_converted double precision,
    amount_weighted_converted double precision,
    close_date timestamp without time zone,
    description character varying(255),
    lead_source character varying(255),
    name character varying(255) NOT NULL,
    next_step character varying(255),
    probability integer,
    stage character varying(255),
    type character varying(255),
    account_id bigint,
    campaign_id bigint,
    pricebook_id bigint
);


ALTER TABLE opportunity OWNER TO postgres;


CREATE SEQUENCE opportunity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE opportunity_id_seq OWNER TO postgres;


ALTER SEQUENCE opportunity_id_seq OWNED BY opportunity.id;



CREATE TABLE opportunity_product (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    date timestamp without time zone,
    description character varying(255),
    list_price character varying(255),
    name character varying(255),
    pricebook_entries_id bigint,
    product_code character varying(255),
    product_id bigint,
    product_name character varying(255),
    quantity integer,
    sale_price double precision,
    total_price double precision,
    opportunity_id bigint
);


ALTER TABLE opportunity_product OWNER TO postgres;


CREATE SEQUENCE opportunity_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE opportunity_product_id_seq OWNER TO postgres;


ALTER SEQUENCE opportunity_product_id_seq OWNED BY opportunity_product.id;



CREATE TABLE organisation (
    id bigint NOT NULL,
    logo text,
    name character varying(255) NOT NULL
);


ALTER TABLE organisation OWNER TO postgres;


CREATE SEQUENCE organisation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE organisation_id_seq OWNER TO postgres;


ALTER SEQUENCE organisation_id_seq OWNED BY organisation.id;



CREATE TABLE page_layout (
    id bigint NOT NULL,
    is_default boolean,
    name character varying(255),
    organisation_id bigint,
    table_meta_data_id bigint
);


ALTER TABLE page_layout OWNER TO postgres;


CREATE TABLE page_layout_column (
    id bigint NOT NULL,
    is_required boolean,
    sort_oder integer NOT NULL,
    column_id bigint,
    page_layout_id bigint
);


ALTER TABLE page_layout_column OWNER TO postgres;


CREATE SEQUENCE page_layout_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_layout_column_id_seq OWNER TO postgres;


ALTER SEQUENCE page_layout_column_id_seq OWNED BY page_layout_column.id;



CREATE SEQUENCE page_layout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_layout_id_seq OWNER TO postgres;


ALTER SEQUENCE page_layout_id_seq OWNED BY page_layout.id;



CREATE TABLE pricebook (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    description character varying(255),
    is_active boolean,
    is_standard_price_book boolean,
    name character varying(255) NOT NULL
);


ALTER TABLE pricebook OWNER TO postgres;


CREATE TABLE pricebook_entries (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    currency character varying(255),
    is_active boolean,
    list_price double precision NOT NULL,
    use_standard_price boolean,
    pricebook_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE pricebook_entries OWNER TO postgres;


CREATE SEQUENCE pricebook_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pricebook_entries_id_seq OWNER TO postgres;


ALTER SEQUENCE pricebook_entries_id_seq OWNED BY pricebook_entries.id;



CREATE SEQUENCE pricebook_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pricebook_id_seq OWNER TO postgres;


ALTER SEQUENCE pricebook_id_seq OWNED BY pricebook.id;



CREATE TABLE privilege (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE privilege OWNER TO postgres;


CREATE SEQUENCE privilege_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE privilege_id_seq OWNER TO postgres;


ALTER SEQUENCE privilege_id_seq OWNED BY privilege.id;



CREATE TABLE product (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    description character varying(255),
    is_active boolean,
    manufacturer character varying(255),
    name character varying(255) NOT NULL,
    product_code character varying(255),
    quantity integer,
    unit_price double precision,
    product_family_id bigint
);


ALTER TABLE product OWNER TO postgres;


CREATE TABLE product_family (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    description character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE product_family OWNER TO postgres;


CREATE SEQUENCE product_family_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_family_id_seq OWNER TO postgres;


ALTER SEQUENCE product_family_id_seq OWNED BY product_family.id;



CREATE SEQUENCE product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_id_seq OWNER TO postgres;


ALTER SEQUENCE product_id_seq OWNED BY product.id;



CREATE TABLE profile (
    id bigint NOT NULL,
    description character varying(255),
    is_administrator boolean,
    profile_name character varying(255),
    organisation_id bigint
);


ALTER TABLE profile OWNER TO postgres;


CREATE SEQUENCE profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profile_id_seq OWNER TO postgres;


ALTER SEQUENCE profile_id_seq OWNED BY profile.id;



CREATE TABLE related_layout (
    id bigint NOT NULL,
    related_layout_name character varying(255),
    table_meta_data_id bigint
);


ALTER TABLE related_layout OWNER TO postgres;


CREATE TABLE related_layout_column (
    id bigint NOT NULL,
    sort_order integer,
    column_meta_data_id bigint,
    related_table_meta_data_id bigint
);


ALTER TABLE related_layout_column OWNER TO postgres;


CREATE SEQUENCE related_layout_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE related_layout_column_id_seq OWNER TO postgres;


ALTER SEQUENCE related_layout_column_id_seq OWNED BY related_layout_column.id;



CREATE SEQUENCE related_layout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE related_layout_id_seq OWNER TO postgres;


ALTER SEQUENCE related_layout_id_seq OWNED BY related_layout.id;



CREATE TABLE related_table_meta_data (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    sort_order integer,
    related_layout_id bigint,
    table_meta_data_id bigint
);


ALTER TABLE related_table_meta_data OWNER TO postgres;


CREATE SEQUENCE related_table_meta_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE related_table_meta_data_id_seq OWNER TO postgres;


ALTER SEQUENCE related_table_meta_data_id_seq OWNED BY related_table_meta_data.id;



CREATE TABLE relationship_metadata (
    id bigint NOT NULL,
    reference_column character varying(255),
    reference_table character varying(255),
    source_column character varying(255),
    type character varying(255),
    table_id bigint NOT NULL
);


ALTER TABLE relationship_metadata OWNER TO postgres;


CREATE SEQUENCE relationship_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relationship_metadata_id_seq OWNER TO postgres;


ALTER SEQUENCE relationship_metadata_id_seq OWNED BY relationship_metadata.id;



CREATE TABLE role (
    role_id bigint NOT NULL,
    label character varying(255),
    parent_role_id bigint,
    role_name character varying(255),
    organisation_id bigint,
    sub_roles bigint
);


ALTER TABLE role OWNER TO postgres;


CREATE SEQUENCE role_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE role_role_id_seq OWNER TO postgres;


ALTER SEQUENCE role_role_id_seq OWNED BY role.role_id;



CREATE TABLE send_email (
    id bigint NOT NULL,
    is_opt_out_link boolean,
    is_store_sent_email boolean,
    receiver character varying(255),
    sender character varying(255),
    email_template_id bigint
);


ALTER TABLE send_email OWNER TO postgres;


CREATE SEQUENCE send_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE send_email_id_seq OWNER TO postgres;


ALTER SEQUENCE send_email_id_seq OWNED BY send_email.id;



CREATE TABLE table_metadata (
    id bigint NOT NULL,
    display_name character varying(255),
    icon character varying(255),
    list_display_name character varying(255),
    name_pattern character varying(255),
    read_only boolean,
    standard_table boolean,
    table_name character varying(255) NOT NULL
);


ALTER TABLE table_metadata OWNER TO postgres;


CREATE SEQUENCE table_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE table_metadata_id_seq OWNER TO postgres;


ALTER SEQUENCE table_metadata_id_seq OWNED BY table_metadata.id;



CREATE TABLE update_record (
    id bigint NOT NULL
);


ALTER TABLE update_record OWNER TO postgres;


CREATE TABLE update_record_field_relation (
    update_record_id bigint NOT NULL,
    field_value_id bigint NOT NULL
);


ALTER TABLE update_record_field_relation OWNER TO postgres;


CREATE TABLE update_record_field_value (
    id bigint NOT NULL,
    value character varying(255),
    column_id bigint
);


ALTER TABLE update_record_field_value OWNER TO postgres;


CREATE SEQUENCE update_record_field_value_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE update_record_field_value_id_seq OWNER TO postgres;


ALTER SEQUENCE update_record_field_value_id_seq OWNED BY update_record_field_value.id;



CREATE SEQUENCE update_record_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE update_record_id_seq OWNER TO postgres;


ALTER SEQUENCE update_record_id_seq OWNED BY update_record.id;



CREATE TABLE user_reporting (
    reporter_id bigint NOT NULL,
    reported_to_id bigint NOT NULL
);


ALTER TABLE user_reporting OWNER TO postgres;


CREATE TABLE users_privileges (
    user_id bigint NOT NULL,
    privilege_id bigint NOT NULL
);


ALTER TABLE users_privileges OWNER TO postgres;


CREATE TABLE validation (
    id bigint NOT NULL,
    message character varying(255),
    second_value character varying(255),
    type character varying(255),
    value character varying(255)
);


ALTER TABLE validation OWNER TO postgres;


CREATE SEQUENCE validation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE validation_id_seq OWNER TO postgres;


ALTER SEQUENCE validation_id_seq OWNED BY validation.id;



CREATE TABLE workflow_condition (
    id bigint NOT NULL,
    column_name character varying(255),
    operator character varying(255),
    second_value character varying(255),
    value character varying(255),
    workflow bigint NOT NULL
);


ALTER TABLE workflow_condition OWNER TO postgres;


CREATE SEQUENCE workflow_condition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE workflow_condition_id_seq OWNER TO postgres;


ALTER SEQUENCE workflow_condition_id_seq OWNED BY workflow_condition.id;



CREATE TABLE workflow_rule (
    id bigint NOT NULL,
    created_by bigint,
    created_on timestamp without time zone,
    organisation_id bigint,
    updated_by bigint,
    updated_on timestamp without time zone,
    filter_details text,
    is_pre_processed boolean,
    trigger_type character varying(255),
    trigger_type_component character varying(255),
    workflow_name character varying(255),
    action_form_id bigint,
    target_entity bigint NOT NULL
);


ALTER TABLE workflow_rule OWNER TO postgres;


CREATE SEQUENCE workflow_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE workflow_rule_id_seq OWNER TO postgres;


ALTER SEQUENCE workflow_rule_id_seq OWNED BY workflow_rule.id;


ALTER TABLE ONLY accounts ALTER COLUMN id SET DEFAULT nextval('accounts_id_seq'::regclass);



ALTER TABLE ONLY action_form ALTER COLUMN id SET DEFAULT nextval('action_form_id_seq'::regclass);



ALTER TABLE ONLY activity ALTER COLUMN id SET DEFAULT nextval('activity_id_seq'::regclass);



ALTER TABLE ONLY address ALTER COLUMN address_id SET DEFAULT nextval('address_address_id_seq'::regclass);



ALTER TABLE ONLY campaign ALTER COLUMN id SET DEFAULT nextval('campaign_id_seq'::regclass);



ALTER TABLE ONLY campaign_log_record ALTER COLUMN id SET DEFAULT nextval('campaign_log_record_id_seq'::regclass);



ALTER TABLE ONLY campaign_tracking_url ALTER COLUMN id SET DEFAULT nextval('campaign_tracking_url_id_seq'::regclass);



ALTER TABLE ONLY column_metadata ALTER COLUMN id SET DEFAULT nextval('column_metadata_id_seq'::regclass);



ALTER TABLE ONLY compact_layout ALTER COLUMN id SET DEFAULT nextval('compact_layout_id_seq'::regclass);



ALTER TABLE ONLY compact_layout_button ALTER COLUMN id SET DEFAULT nextval('compact_layout_button_id_seq'::regclass);



ALTER TABLE ONLY compact_layout_column ALTER COLUMN id SET DEFAULT nextval('compact_layout_column_id_seq'::regclass);



ALTER TABLE ONLY contact ALTER COLUMN id SET DEFAULT nextval('contact_id_seq'::regclass);



ALTER TABLE ONLY create_record ALTER COLUMN id SET DEFAULT nextval('create_record_id_seq'::regclass);



ALTER TABLE ONLY create_record_field_value ALTER COLUMN id SET DEFAULT nextval('create_record_field_value_id_seq'::regclass);



ALTER TABLE ONLY crm_user ALTER COLUMN id SET DEFAULT nextval('crm_user_id_seq'::regclass);



ALTER TABLE ONLY currency ALTER COLUMN id SET DEFAULT nextval('currency_id_seq'::regclass);



ALTER TABLE ONLY dml_workflow ALTER COLUMN id SET DEFAULT nextval('dml_workflow_id_seq'::regclass);



ALTER TABLE ONLY duplicate_action ALTER COLUMN id SET DEFAULT nextval('duplicate_action_id_seq'::regclass);



ALTER TABLE ONLY duplicate_matching_rule ALTER COLUMN id SET DEFAULT nextval('duplicate_matching_rule_id_seq'::regclass);



ALTER TABLE ONLY duplicate_rule ALTER COLUMN id SET DEFAULT nextval('duplicate_rule_id_seq'::regclass);



ALTER TABLE ONLY e_account ALTER COLUMN id SET DEFAULT nextval('e_account_id_seq'::regclass);



ALTER TABLE ONLY e_contact ALTER COLUMN id SET DEFAULT nextval('e_contact_id_seq'::regclass);



ALTER TABLE ONLY email_placeholder ALTER COLUMN id SET DEFAULT nextval('email_placeholder_id_seq'::regclass);



ALTER TABLE ONLY email_template ALTER COLUMN id SET DEFAULT nextval('email_template_id_seq'::regclass);



ALTER TABLE ONLY field_permission ALTER COLUMN id SET DEFAULT nextval('field_permission_id_seq'::regclass);



ALTER TABLE ONLY lead ALTER COLUMN id SET DEFAULT nextval('lead_id_seq'::regclass);



ALTER TABLE ONLY list_view_layout ALTER COLUMN id SET DEFAULT nextval('list_view_layout_id_seq'::regclass);



ALTER TABLE ONLY list_view_layout_column ALTER COLUMN id SET DEFAULT nextval('list_view_layout_column_id_seq'::regclass);



ALTER TABLE ONLY mapping_rule ALTER COLUMN id SET DEFAULT nextval('mapping_rule_id_seq'::regclass);



ALTER TABLE ONLY mapping_rule_column ALTER COLUMN id SET DEFAULT nextval('mapping_rule_column_id_seq'::regclass);



ALTER TABLE ONLY matching_rule ALTER COLUMN id SET DEFAULT nextval('matching_rule_id_seq'::regclass);



ALTER TABLE ONLY object_permission ALTER COLUMN id SET DEFAULT nextval('object_permission_id_seq'::regclass);



ALTER TABLE ONLY opportunity ALTER COLUMN id SET DEFAULT nextval('opportunity_id_seq'::regclass);



ALTER TABLE ONLY opportunity_product ALTER COLUMN id SET DEFAULT nextval('opportunity_product_id_seq'::regclass);



ALTER TABLE ONLY organisation ALTER COLUMN id SET DEFAULT nextval('organisation_id_seq'::regclass);



ALTER TABLE ONLY page_layout ALTER COLUMN id SET DEFAULT nextval('page_layout_id_seq'::regclass);



ALTER TABLE ONLY page_layout_column ALTER COLUMN id SET DEFAULT nextval('page_layout_column_id_seq'::regclass);



ALTER TABLE ONLY pricebook ALTER COLUMN id SET DEFAULT nextval('pricebook_id_seq'::regclass);



ALTER TABLE ONLY pricebook_entries ALTER COLUMN id SET DEFAULT nextval('pricebook_entries_id_seq'::regclass);



ALTER TABLE ONLY privilege ALTER COLUMN id SET DEFAULT nextval('privilege_id_seq'::regclass);



ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_id_seq'::regclass);



ALTER TABLE ONLY product_family ALTER COLUMN id SET DEFAULT nextval('product_family_id_seq'::regclass);



ALTER TABLE ONLY profile ALTER COLUMN id SET DEFAULT nextval('profile_id_seq'::regclass);



ALTER TABLE ONLY related_layout ALTER COLUMN id SET DEFAULT nextval('related_layout_id_seq'::regclass);



ALTER TABLE ONLY related_layout_column ALTER COLUMN id SET DEFAULT nextval('related_layout_column_id_seq'::regclass);



ALTER TABLE ONLY related_table_meta_data ALTER COLUMN id SET DEFAULT nextval('related_table_meta_data_id_seq'::regclass);



ALTER TABLE ONLY relationship_metadata ALTER COLUMN id SET DEFAULT nextval('relationship_metadata_id_seq'::regclass);



ALTER TABLE ONLY role ALTER COLUMN role_id SET DEFAULT nextval('role_role_id_seq'::regclass);



ALTER TABLE ONLY send_email ALTER COLUMN id SET DEFAULT nextval('send_email_id_seq'::regclass);



ALTER TABLE ONLY table_metadata ALTER COLUMN id SET DEFAULT nextval('table_metadata_id_seq'::regclass);



ALTER TABLE ONLY update_record ALTER COLUMN id SET DEFAULT nextval('update_record_id_seq'::regclass);



ALTER TABLE ONLY update_record_field_value ALTER COLUMN id SET DEFAULT nextval('update_record_field_value_id_seq'::regclass);



ALTER TABLE ONLY validation ALTER COLUMN id SET DEFAULT nextval('validation_id_seq'::regclass);



ALTER TABLE ONLY workflow_condition ALTER COLUMN id SET DEFAULT nextval('workflow_condition_id_seq'::regclass);



ALTER TABLE ONLY workflow_rule ALTER COLUMN id SET DEFAULT nextval('workflow_rule_id_seq'::regclass);



ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);



ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_ge_bytearray_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ge_property
    ADD CONSTRAINT act_ge_property_pkey PRIMARY KEY (name_);



ALTER TABLE ONLY act_ge_schema_log
    ADD CONSTRAINT act_ge_schema_log_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_actinst
    ADD CONSTRAINT act_hi_actinst_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_attachment
    ADD CONSTRAINT act_hi_attachment_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_batch
    ADD CONSTRAINT act_hi_batch_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_caseactinst
    ADD CONSTRAINT act_hi_caseactinst_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_caseinst
    ADD CONSTRAINT act_hi_caseinst_case_inst_id__key UNIQUE (case_inst_id_);



ALTER TABLE ONLY act_hi_caseinst
    ADD CONSTRAINT act_hi_caseinst_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_comment
    ADD CONSTRAINT act_hi_comment_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_dec_in
    ADD CONSTRAINT act_hi_dec_in_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_dec_out
    ADD CONSTRAINT act_hi_dec_out_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_decinst
    ADD CONSTRAINT act_hi_decinst_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_detail
    ADD CONSTRAINT act_hi_detail_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_ext_task_log
    ADD CONSTRAINT act_hi_ext_task_log_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_identitylink
    ADD CONSTRAINT act_hi_identitylink_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_incident
    ADD CONSTRAINT act_hi_incident_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_job_log
    ADD CONSTRAINT act_hi_job_log_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_op_log
    ADD CONSTRAINT act_hi_op_log_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_proc_inst_id__key UNIQUE (proc_inst_id_);



ALTER TABLE ONLY act_hi_taskinst
    ADD CONSTRAINT act_hi_taskinst_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_hi_varinst
    ADD CONSTRAINT act_hi_varinst_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_id_group
    ADD CONSTRAINT act_id_group_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_id_info
    ADD CONSTRAINT act_id_info_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_id_membership_pkey PRIMARY KEY (user_id_, group_id_);



ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_id_tenant_member_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_id_tenant
    ADD CONSTRAINT act_id_tenant_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_id_user
    ADD CONSTRAINT act_id_user_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_re_camformdef
    ADD CONSTRAINT act_re_camformdef_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_re_case_def
    ADD CONSTRAINT act_re_case_def_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_re_decision_def
    ADD CONSTRAINT act_re_decision_def_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_re_decision_req_def
    ADD CONSTRAINT act_re_decision_req_def_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_re_deployment
    ADD CONSTRAINT act_re_deployment_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_re_procdef
    ADD CONSTRAINT act_re_procdef_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_authorization
    ADD CONSTRAINT act_ru_authorization_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_batch
    ADD CONSTRAINT act_ru_batch_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_case_execution
    ADD CONSTRAINT act_ru_case_execution_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_case_sentry_part
    ADD CONSTRAINT act_ru_case_sentry_part_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_ru_event_subscr_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_ru_execution_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_ext_task
    ADD CONSTRAINT act_ru_ext_task_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_filter
    ADD CONSTRAINT act_ru_filter_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_ru_identitylink_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_ru_incident_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_ru_job_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_jobdef
    ADD CONSTRAINT act_ru_jobdef_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_meter_log
    ADD CONSTRAINT act_ru_meter_log_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_task_meter_log
    ADD CONSTRAINT act_ru_task_meter_log_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_ru_task_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_ru_variable_pkey PRIMARY KEY (id_);



ALTER TABLE ONLY act_ru_authorization
    ADD CONSTRAINT act_uniq_auth_group UNIQUE (type_, group_id_, resource_type_, resource_id_);



ALTER TABLE ONLY act_ru_authorization
    ADD CONSTRAINT act_uniq_auth_user UNIQUE (type_, user_id_, resource_type_, resource_id_);



ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_uniq_tenant_memb_group UNIQUE (tenant_id_, group_id_);



ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_uniq_tenant_memb_user UNIQUE (tenant_id_, user_id_);



ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_uniq_variable UNIQUE (var_scope_, name_);



ALTER TABLE ONLY action_form
    ADD CONSTRAINT action_form_pkey PRIMARY KEY (id);



ALTER TABLE ONLY activity
    ADD CONSTRAINT activity_pkey PRIMARY KEY (id);



ALTER TABLE ONLY activity_user
    ADD CONSTRAINT activity_user_pkey PRIMARY KEY (activity_id, user_id);



ALTER TABLE ONLY address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);



ALTER TABLE ONLY campaign_log_record
    ADD CONSTRAINT campaign_log_record_pkey PRIMARY KEY (id);



ALTER TABLE ONLY campaign
    ADD CONSTRAINT campaign_pkey PRIMARY KEY (id);



ALTER TABLE ONLY campaign_tracking_url
    ADD CONSTRAINT campaign_tracking_url_pkey PRIMARY KEY (id);



ALTER TABLE ONLY college_test2
    ADD CONSTRAINT college_test2_pkey PRIMARY KEY (id);



ALTER TABLE ONLY college_test
    ADD CONSTRAINT college_test_pkey PRIMARY KEY (id);



ALTER TABLE ONLY column_metadata
    ADD CONSTRAINT column_metadata_pkey PRIMARY KEY (id);



ALTER TABLE ONLY compact_layout_button
    ADD CONSTRAINT compact_layout_button_pkey PRIMARY KEY (id);



ALTER TABLE ONLY compact_layout_column
    ADD CONSTRAINT compact_layout_column_pkey PRIMARY KEY (id);



ALTER TABLE ONLY compact_layout
    ADD CONSTRAINT compact_layout_pkey PRIMARY KEY (id);



ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);



ALTER TABLE ONLY create_record_field_value
    ADD CONSTRAINT create_record_field_value_pkey PRIMARY KEY (id);



ALTER TABLE ONLY create_record
    ADD CONSTRAINT create_record_pkey PRIMARY KEY (id);



ALTER TABLE ONLY crm_user
    ADD CONSTRAINT crm_user_pkey PRIMARY KEY (id);



ALTER TABLE ONLY currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (id);



ALTER TABLE ONLY dml_workflow
    ADD CONSTRAINT dml_workflow_pkey PRIMARY KEY (id);



ALTER TABLE ONLY duplicate_action
    ADD CONSTRAINT duplicate_action_pkey PRIMARY KEY (id);



ALTER TABLE ONLY duplicate_matching_rule
    ADD CONSTRAINT duplicate_matching_rule_pkey PRIMARY KEY (id);



ALTER TABLE ONLY duplicate_rule
    ADD CONSTRAINT duplicate_rule_pkey PRIMARY KEY (id);



ALTER TABLE ONLY e_account
    ADD CONSTRAINT e_account_pkey PRIMARY KEY (id);



ALTER TABLE ONLY e_contact
    ADD CONSTRAINT e_contact_pkey PRIMARY KEY (id);



ALTER TABLE ONLY email_placeholder
    ADD CONSTRAINT email_placeholder_pkey PRIMARY KEY (id);



ALTER TABLE ONLY email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);



ALTER TABLE ONLY field_permission
    ADD CONSTRAINT field_permission_pkey PRIMARY KEY (id);



ALTER TABLE ONLY lead
    ADD CONSTRAINT lead_pkey PRIMARY KEY (id);



ALTER TABLE ONLY list_view_layout_column
    ADD CONSTRAINT list_view_layout_column_pkey PRIMARY KEY (id);



ALTER TABLE ONLY list_view_layout
    ADD CONSTRAINT list_view_layout_pkey PRIMARY KEY (id);



ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT mapping_rule_column_pkey PRIMARY KEY (id);



ALTER TABLE ONLY mapping_rule
    ADD CONSTRAINT mapping_rule_pkey PRIMARY KEY (id);



ALTER TABLE ONLY matching_rule
    ADD CONSTRAINT matching_rule_pkey PRIMARY KEY (id);



ALTER TABLE ONLY object_permission
    ADD CONSTRAINT object_permission_pkey PRIMARY KEY (id);



ALTER TABLE ONLY opportunity
    ADD CONSTRAINT opportunity_pkey PRIMARY KEY (id);



ALTER TABLE ONLY opportunity_product
    ADD CONSTRAINT opportunity_product_pkey PRIMARY KEY (id);



ALTER TABLE ONLY organisation
    ADD CONSTRAINT organisation_pkey PRIMARY KEY (id);



ALTER TABLE ONLY page_layout_column
    ADD CONSTRAINT page_layout_column_pkey PRIMARY KEY (id);



ALTER TABLE ONLY page_layout
    ADD CONSTRAINT page_layout_pkey PRIMARY KEY (id);



ALTER TABLE ONLY pricebook_entries
    ADD CONSTRAINT pricebook_entries_pkey PRIMARY KEY (id);



ALTER TABLE ONLY pricebook
    ADD CONSTRAINT pricebook_pkey PRIMARY KEY (id);



ALTER TABLE ONLY privilege
    ADD CONSTRAINT privilege_pkey PRIMARY KEY (id);



ALTER TABLE ONLY product_family
    ADD CONSTRAINT product_family_pkey PRIMARY KEY (id);



ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);



ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);



ALTER TABLE ONLY related_layout_column
    ADD CONSTRAINT related_layout_column_pkey PRIMARY KEY (id);



ALTER TABLE ONLY related_layout
    ADD CONSTRAINT related_layout_pkey PRIMARY KEY (id);



ALTER TABLE ONLY related_table_meta_data
    ADD CONSTRAINT related_table_meta_data_pkey PRIMARY KEY (id);



ALTER TABLE ONLY relationship_metadata
    ADD CONSTRAINT relationship_metadata_pkey PRIMARY KEY (id);



ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);



ALTER TABLE ONLY send_email
    ADD CONSTRAINT send_email_pkey PRIMARY KEY (id);



ALTER TABLE ONLY table_metadata
    ADD CONSTRAINT table_metadata_pkey PRIMARY KEY (id);



ALTER TABLE ONLY column_validation
    ADD CONSTRAINT uk_3u2el6ie6x5n8eb87u2g8nltt UNIQUE (column_validation_id);



ALTER TABLE ONLY organisation
    ADD CONSTRAINT uk_4cj3idr72jukvc49m5dgo9jmo UNIQUE (name);



ALTER TABLE ONLY crm_user
    ADD CONSTRAINT uk_4uwsc0mlvswouyrq5k05xan15 UNIQUE (username);



ALTER TABLE ONLY table_metadata
    ADD CONSTRAINT uk_9d25vd5jfwnaunlgdgw9e0qph UNIQUE (table_name);



ALTER TABLE ONLY crm_user
    ADD CONSTRAINT uk_fcosfimsg2sguoc8dnhb8r0ca UNIQUE (email);



ALTER TABLE ONLY privilege
    ADD CONSTRAINT uk_h7iwbdg4ev8mgvmij76881tx8 UNIQUE (name);



ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT uk_it4xrlxt1am0p5yqid56k2lqi UNIQUE (account_column);



ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT uk_j7dahyh7gxqyf4c4vl01nj22a UNIQUE (contact_column);



ALTER TABLE ONLY mapping_rule_column_relation
    ADD CONSTRAINT uk_jqpfwk5ygdylvcdf74hk6s58t UNIQUE (column_id);



ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT uk_ohweqwubythkhcs2k6ktpgg5e UNIQUE (lead_column);



ALTER TABLE ONLY update_record_field_relation
    ADD CONSTRAINT uk_plwgmt1ycgkfinl4r5bskkvjn UNIQUE (field_value_id);



ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT uk_s8pwn8bbxvxjh4s82n12s3moj UNIQUE (opportunity_column);



ALTER TABLE ONLY create_record_field_relation
    ADD CONSTRAINT uk_tgcugcanerptajfy8xlhlkcv5 UNIQUE (field_value_id);



ALTER TABLE ONLY pricebook_entries
    ADD CONSTRAINT ukjieu628j122o2pw80xwv3icba UNIQUE (product_id, pricebook_id);



ALTER TABLE ONLY update_record_field_value
    ADD CONSTRAINT update_record_field_value_pkey PRIMARY KEY (id);



ALTER TABLE ONLY update_record
    ADD CONSTRAINT update_record_pkey PRIMARY KEY (id);



ALTER TABLE ONLY user_reporting
    ADD CONSTRAINT user_reporting_pkey PRIMARY KEY (reporter_id, reported_to_id);



ALTER TABLE ONLY users_privileges
    ADD CONSTRAINT users_privileges_pkey PRIMARY KEY (user_id, privilege_id);



ALTER TABLE ONLY validation
    ADD CONSTRAINT validation_pkey PRIMARY KEY (id);



ALTER TABLE ONLY workflow_condition
    ADD CONSTRAINT workflow_condition_pkey PRIMARY KEY (id);



ALTER TABLE ONLY workflow_rule
    ADD CONSTRAINT workflow_rule_pkey PRIMARY KEY (id);



CREATE INDEX act_hi_bat_rm_time ON act_hi_batch USING btree (removal_time_);



CREATE INDEX act_hi_ext_task_log_proc_def_key ON act_hi_ext_task_log USING btree (proc_def_key_);



CREATE INDEX act_hi_ext_task_log_procdef ON act_hi_ext_task_log USING btree (proc_def_id_);



CREATE INDEX act_hi_ext_task_log_procinst ON act_hi_ext_task_log USING btree (proc_inst_id_);



CREATE INDEX act_hi_ext_task_log_rm_time ON act_hi_ext_task_log USING btree (removal_time_);



CREATE INDEX act_hi_ext_task_log_root_pi ON act_hi_ext_task_log USING btree (root_proc_inst_id_);



CREATE INDEX act_hi_ext_task_log_tenant_id ON act_hi_ext_task_log USING btree (tenant_id_);



CREATE INDEX act_idx_athrz_procedef ON act_ru_identitylink USING btree (proc_def_id_);



CREATE INDEX act_idx_auth_group_id ON act_ru_authorization USING btree (group_id_);



CREATE INDEX act_idx_auth_resource_id ON act_ru_authorization USING btree (resource_id_);



CREATE INDEX act_idx_auth_rm_time ON act_ru_authorization USING btree (removal_time_);



CREATE INDEX act_idx_auth_root_pi ON act_ru_authorization USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_batch_id ON act_ru_variable USING btree (batch_id_);



CREATE INDEX act_idx_batch_job_def ON act_ru_batch USING btree (batch_job_def_id_);



CREATE INDEX act_idx_batch_monitor_job_def ON act_ru_batch USING btree (monitor_job_def_id_);



CREATE INDEX act_idx_batch_seed_job_def ON act_ru_batch USING btree (seed_job_def_id_);



CREATE INDEX act_idx_bytear_depl ON act_ge_bytearray USING btree (deployment_id_);



CREATE INDEX act_idx_bytearray_name ON act_ge_bytearray USING btree (name_);



CREATE INDEX act_idx_bytearray_rm_time ON act_ge_bytearray USING btree (removal_time_);



CREATE INDEX act_idx_bytearray_root_pi ON act_ge_bytearray USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_case_def_tenant_id ON act_re_case_def USING btree (tenant_id_);



CREATE INDEX act_idx_case_exe_case_def ON act_ru_case_execution USING btree (case_def_id_);



CREATE INDEX act_idx_case_exe_case_inst ON act_ru_case_execution USING btree (case_inst_id_);



CREATE INDEX act_idx_case_exe_parent ON act_ru_case_execution USING btree (parent_id_);



CREATE INDEX act_idx_case_exec_buskey ON act_ru_case_execution USING btree (business_key_);



CREATE INDEX act_idx_case_exec_tenant_id ON act_ru_case_execution USING btree (tenant_id_);



CREATE INDEX act_idx_case_sentry_case_exec ON act_ru_case_sentry_part USING btree (case_exec_id_);



CREATE INDEX act_idx_case_sentry_case_inst ON act_ru_case_sentry_part USING btree (case_inst_id_);



CREATE INDEX act_idx_dec_def_req_id ON act_re_decision_def USING btree (dec_req_id_);



CREATE INDEX act_idx_dec_def_tenant_id ON act_re_decision_def USING btree (tenant_id_);



CREATE INDEX act_idx_dec_req_def_tenant_id ON act_re_decision_req_def USING btree (tenant_id_);



CREATE INDEX act_idx_deployment_name ON act_re_deployment USING btree (name_);



CREATE INDEX act_idx_deployment_tenant_id ON act_re_deployment USING btree (tenant_id_);



CREATE INDEX act_idx_event_subscr ON act_ru_event_subscr USING btree (execution_id_);



CREATE INDEX act_idx_event_subscr_config_ ON act_ru_event_subscr USING btree (configuration_);



CREATE INDEX act_idx_event_subscr_evt_name ON act_ru_event_subscr USING btree (event_name_);



CREATE INDEX act_idx_event_subscr_tenant_id ON act_ru_event_subscr USING btree (tenant_id_);



CREATE INDEX act_idx_exe_parent ON act_ru_execution USING btree (parent_id_);



CREATE INDEX act_idx_exe_procdef ON act_ru_execution USING btree (proc_def_id_);



CREATE INDEX act_idx_exe_procinst ON act_ru_execution USING btree (proc_inst_id_);



CREATE INDEX act_idx_exe_root_pi ON act_ru_execution USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_exe_super ON act_ru_execution USING btree (super_exec_);



CREATE INDEX act_idx_exec_buskey ON act_ru_execution USING btree (business_key_);



CREATE INDEX act_idx_exec_tenant_id ON act_ru_execution USING btree (tenant_id_);



CREATE INDEX act_idx_ext_task_err_details ON act_ru_ext_task USING btree (error_details_id_);



CREATE INDEX act_idx_ext_task_exec ON act_ru_ext_task USING btree (execution_id_);



CREATE INDEX act_idx_ext_task_priority ON act_ru_ext_task USING btree (priority_);



CREATE INDEX act_idx_ext_task_tenant_id ON act_ru_ext_task USING btree (tenant_id_);



CREATE INDEX act_idx_ext_task_topic ON act_ru_ext_task USING btree (topic_name_);



CREATE INDEX act_idx_hi_act_inst_comp ON act_hi_actinst USING btree (execution_id_, act_id_, end_time_, id_);



CREATE INDEX act_idx_hi_act_inst_end ON act_hi_actinst USING btree (end_time_);



CREATE INDEX act_idx_hi_act_inst_proc_def_key ON act_hi_actinst USING btree (proc_def_key_);



CREATE INDEX act_idx_hi_act_inst_procinst ON act_hi_actinst USING btree (proc_inst_id_, act_id_);



CREATE INDEX act_idx_hi_act_inst_rm_time ON act_hi_actinst USING btree (removal_time_);



CREATE INDEX act_idx_hi_act_inst_start_end ON act_hi_actinst USING btree (start_time_, end_time_);



CREATE INDEX act_idx_hi_act_inst_stats ON act_hi_actinst USING btree (proc_def_id_, proc_inst_id_, act_id_, end_time_, act_inst_state_);



CREATE INDEX act_idx_hi_act_inst_tenant_id ON act_hi_actinst USING btree (tenant_id_);



CREATE INDEX act_idx_hi_actinst_root_pi ON act_hi_actinst USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_ai_pdefid_end_time ON act_hi_actinst USING btree (proc_def_id_, end_time_);



CREATE INDEX act_idx_hi_attachment_content ON act_hi_attachment USING btree (content_id_);



CREATE INDEX act_idx_hi_attachment_procinst ON act_hi_attachment USING btree (proc_inst_id_);



CREATE INDEX act_idx_hi_attachment_rm_time ON act_hi_attachment USING btree (removal_time_);



CREATE INDEX act_idx_hi_attachment_root_pi ON act_hi_attachment USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_attachment_task ON act_hi_attachment USING btree (task_id_);



CREATE INDEX act_idx_hi_cas_a_i_comp ON act_hi_caseactinst USING btree (case_act_id_, end_time_, id_);



CREATE INDEX act_idx_hi_cas_a_i_create ON act_hi_caseactinst USING btree (create_time_);



CREATE INDEX act_idx_hi_cas_a_i_end ON act_hi_caseactinst USING btree (end_time_);



CREATE INDEX act_idx_hi_cas_a_i_tenant_id ON act_hi_caseactinst USING btree (tenant_id_);



CREATE INDEX act_idx_hi_cas_i_buskey ON act_hi_caseinst USING btree (business_key_);



CREATE INDEX act_idx_hi_cas_i_close ON act_hi_caseinst USING btree (close_time_);



CREATE INDEX act_idx_hi_cas_i_tenant_id ON act_hi_caseinst USING btree (tenant_id_);



CREATE INDEX act_idx_hi_casevar_case_inst ON act_hi_varinst USING btree (case_inst_id_);



CREATE INDEX act_idx_hi_comment_procinst ON act_hi_comment USING btree (proc_inst_id_);



CREATE INDEX act_idx_hi_comment_rm_time ON act_hi_comment USING btree (removal_time_);



CREATE INDEX act_idx_hi_comment_root_pi ON act_hi_comment USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_comment_task ON act_hi_comment USING btree (task_id_);



CREATE INDEX act_idx_hi_dec_in_clause ON act_hi_dec_in USING btree (dec_inst_id_, clause_id_);



CREATE INDEX act_idx_hi_dec_in_inst ON act_hi_dec_in USING btree (dec_inst_id_);



CREATE INDEX act_idx_hi_dec_in_rm_time ON act_hi_dec_in USING btree (removal_time_);



CREATE INDEX act_idx_hi_dec_in_root_pi ON act_hi_dec_in USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_dec_inst_act ON act_hi_decinst USING btree (act_id_);



CREATE INDEX act_idx_hi_dec_inst_act_inst ON act_hi_decinst USING btree (act_inst_id_);



CREATE INDEX act_idx_hi_dec_inst_ci ON act_hi_decinst USING btree (case_inst_id_);



CREATE INDEX act_idx_hi_dec_inst_id ON act_hi_decinst USING btree (dec_def_id_);



CREATE INDEX act_idx_hi_dec_inst_key ON act_hi_decinst USING btree (dec_def_key_);



CREATE INDEX act_idx_hi_dec_inst_pi ON act_hi_decinst USING btree (proc_inst_id_);



CREATE INDEX act_idx_hi_dec_inst_req_id ON act_hi_decinst USING btree (dec_req_id_);



CREATE INDEX act_idx_hi_dec_inst_req_key ON act_hi_decinst USING btree (dec_req_key_);



CREATE INDEX act_idx_hi_dec_inst_rm_time ON act_hi_decinst USING btree (removal_time_);



CREATE INDEX act_idx_hi_dec_inst_root_id ON act_hi_decinst USING btree (root_dec_inst_id_);



CREATE INDEX act_idx_hi_dec_inst_root_pi ON act_hi_decinst USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_dec_inst_tenant_id ON act_hi_decinst USING btree (tenant_id_);



CREATE INDEX act_idx_hi_dec_inst_time ON act_hi_decinst USING btree (eval_time_);



CREATE INDEX act_idx_hi_dec_out_inst ON act_hi_dec_out USING btree (dec_inst_id_);



CREATE INDEX act_idx_hi_dec_out_rm_time ON act_hi_dec_out USING btree (removal_time_);



CREATE INDEX act_idx_hi_dec_out_root_pi ON act_hi_dec_out USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_dec_out_rule ON act_hi_dec_out USING btree (rule_order_, clause_id_);



CREATE INDEX act_idx_hi_detail_act_inst ON act_hi_detail USING btree (act_inst_id_);



CREATE INDEX act_idx_hi_detail_bytear ON act_hi_detail USING btree (bytearray_id_);



CREATE INDEX act_idx_hi_detail_case_exec ON act_hi_detail USING btree (case_execution_id_);



CREATE INDEX act_idx_hi_detail_case_inst ON act_hi_detail USING btree (case_inst_id_);



CREATE INDEX act_idx_hi_detail_name ON act_hi_detail USING btree (name_);



CREATE INDEX act_idx_hi_detail_proc_def_key ON act_hi_detail USING btree (proc_def_key_);



CREATE INDEX act_idx_hi_detail_proc_inst ON act_hi_detail USING btree (proc_inst_id_);



CREATE INDEX act_idx_hi_detail_rm_time ON act_hi_detail USING btree (removal_time_);



CREATE INDEX act_idx_hi_detail_root_pi ON act_hi_detail USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_detail_task_bytear ON act_hi_detail USING btree (bytearray_id_, task_id_);



CREATE INDEX act_idx_hi_detail_task_id ON act_hi_detail USING btree (task_id_);



CREATE INDEX act_idx_hi_detail_tenant_id ON act_hi_detail USING btree (tenant_id_);



CREATE INDEX act_idx_hi_detail_time ON act_hi_detail USING btree (time_);



CREATE INDEX act_idx_hi_detail_var_inst_id ON act_hi_detail USING btree (var_inst_id_);



CREATE INDEX act_idx_hi_exttasklog_errordet ON act_hi_ext_task_log USING btree (error_details_id_);



CREATE INDEX act_idx_hi_ident_link_rm_time ON act_hi_identitylink USING btree (removal_time_);



CREATE INDEX act_idx_hi_ident_link_task ON act_hi_identitylink USING btree (task_id_);



CREATE INDEX act_idx_hi_ident_lnk_group ON act_hi_identitylink USING btree (group_id_);



CREATE INDEX act_idx_hi_ident_lnk_proc_def_key ON act_hi_identitylink USING btree (proc_def_key_);



CREATE INDEX act_idx_hi_ident_lnk_root_pi ON act_hi_identitylink USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_ident_lnk_tenant_id ON act_hi_identitylink USING btree (tenant_id_);



CREATE INDEX act_idx_hi_ident_lnk_timestamp ON act_hi_identitylink USING btree (timestamp_);



CREATE INDEX act_idx_hi_ident_lnk_user ON act_hi_identitylink USING btree (user_id_);



CREATE INDEX act_idx_hi_incident_create_time ON act_hi_incident USING btree (create_time_);



CREATE INDEX act_idx_hi_incident_end_time ON act_hi_incident USING btree (end_time_);



CREATE INDEX act_idx_hi_incident_proc_def_key ON act_hi_incident USING btree (proc_def_key_);



CREATE INDEX act_idx_hi_incident_procinst ON act_hi_incident USING btree (proc_inst_id_);



CREATE INDEX act_idx_hi_incident_rm_time ON act_hi_incident USING btree (removal_time_);



CREATE INDEX act_idx_hi_incident_root_pi ON act_hi_incident USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_incident_tenant_id ON act_hi_incident USING btree (tenant_id_);



CREATE INDEX act_idx_hi_job_log_ex_stack ON act_hi_job_log USING btree (job_exception_stack_id_);



CREATE INDEX act_idx_hi_job_log_job_conf ON act_hi_job_log USING btree (job_def_configuration_);



CREATE INDEX act_idx_hi_job_log_job_def_id ON act_hi_job_log USING btree (job_def_id_);



CREATE INDEX act_idx_hi_job_log_proc_def_key ON act_hi_job_log USING btree (process_def_key_);



CREATE INDEX act_idx_hi_job_log_procdef ON act_hi_job_log USING btree (process_def_id_);



CREATE INDEX act_idx_hi_job_log_procinst ON act_hi_job_log USING btree (process_instance_id_);



CREATE INDEX act_idx_hi_job_log_rm_time ON act_hi_job_log USING btree (removal_time_);



CREATE INDEX act_idx_hi_job_log_root_pi ON act_hi_job_log USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_job_log_tenant_id ON act_hi_job_log USING btree (tenant_id_);



CREATE INDEX act_idx_hi_op_log_entity_type ON act_hi_op_log USING btree (entity_type_);



CREATE INDEX act_idx_hi_op_log_op_type ON act_hi_op_log USING btree (operation_type_);



CREATE INDEX act_idx_hi_op_log_procdef ON act_hi_op_log USING btree (proc_def_id_);



CREATE INDEX act_idx_hi_op_log_procinst ON act_hi_op_log USING btree (proc_inst_id_);



CREATE INDEX act_idx_hi_op_log_rm_time ON act_hi_op_log USING btree (removal_time_);



CREATE INDEX act_idx_hi_op_log_root_pi ON act_hi_op_log USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_op_log_task ON act_hi_op_log USING btree (task_id_);



CREATE INDEX act_idx_hi_op_log_timestamp ON act_hi_op_log USING btree (timestamp_);



CREATE INDEX act_idx_hi_op_log_user_id ON act_hi_op_log USING btree (user_id_);



CREATE INDEX act_idx_hi_pi_pdefid_end_time ON act_hi_procinst USING btree (proc_def_id_, end_time_);



CREATE INDEX act_idx_hi_pro_i_buskey ON act_hi_procinst USING btree (business_key_);



CREATE INDEX act_idx_hi_pro_inst_end ON act_hi_procinst USING btree (end_time_);



CREATE INDEX act_idx_hi_pro_inst_proc_def_key ON act_hi_procinst USING btree (proc_def_key_);



CREATE INDEX act_idx_hi_pro_inst_proc_time ON act_hi_procinst USING btree (start_time_, end_time_);



CREATE INDEX act_idx_hi_pro_inst_rm_time ON act_hi_procinst USING btree (removal_time_);



CREATE INDEX act_idx_hi_pro_inst_root_pi ON act_hi_procinst USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_pro_inst_tenant_id ON act_hi_procinst USING btree (tenant_id_);



CREATE INDEX act_idx_hi_procvar_name_type ON act_hi_varinst USING btree (name_, var_type_);



CREATE INDEX act_idx_hi_procvar_proc_inst ON act_hi_varinst USING btree (proc_inst_id_);



CREATE INDEX act_idx_hi_task_inst_end ON act_hi_taskinst USING btree (end_time_);



CREATE INDEX act_idx_hi_task_inst_proc_def_key ON act_hi_taskinst USING btree (proc_def_key_);



CREATE INDEX act_idx_hi_task_inst_rm_time ON act_hi_taskinst USING btree (removal_time_);



CREATE INDEX act_idx_hi_task_inst_start ON act_hi_taskinst USING btree (start_time_);



CREATE INDEX act_idx_hi_task_inst_tenant_id ON act_hi_taskinst USING btree (tenant_id_);



CREATE INDEX act_idx_hi_taskinst_procinst ON act_hi_taskinst USING btree (proc_inst_id_);



CREATE INDEX act_idx_hi_taskinst_root_pi ON act_hi_taskinst USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_hi_taskinstid_procinst ON act_hi_taskinst USING btree (id_, proc_inst_id_);



CREATE INDEX act_idx_hi_var_inst_proc_def_key ON act_hi_varinst USING btree (proc_def_key_);



CREATE INDEX act_idx_hi_var_inst_tenant_id ON act_hi_varinst USING btree (tenant_id_);



CREATE INDEX act_idx_hi_var_pi_name_type ON act_hi_varinst USING btree (proc_inst_id_, name_, var_type_);



CREATE INDEX act_idx_hi_varinst_act_inst_id ON act_hi_varinst USING btree (act_inst_id_);



CREATE INDEX act_idx_hi_varinst_bytear ON act_hi_varinst USING btree (bytearray_id_);



CREATE INDEX act_idx_hi_varinst_name ON act_hi_varinst USING btree (name_);



CREATE INDEX act_idx_hi_varinst_rm_time ON act_hi_varinst USING btree (removal_time_);



CREATE INDEX act_idx_hi_varinst_root_pi ON act_hi_varinst USING btree (root_proc_inst_id_);



CREATE INDEX act_idx_ident_lnk_group ON act_ru_identitylink USING btree (group_id_);



CREATE INDEX act_idx_ident_lnk_user ON act_ru_identitylink USING btree (user_id_);



CREATE INDEX act_idx_inc_causeincid ON act_ru_incident USING btree (cause_incident_id_);



CREATE INDEX act_idx_inc_configuration ON act_ru_incident USING btree (configuration_);



CREATE INDEX act_idx_inc_exid ON act_ru_incident USING btree (execution_id_);



CREATE INDEX act_idx_inc_job_def ON act_ru_incident USING btree (job_def_id_);



CREATE INDEX act_idx_inc_procdefid ON act_ru_incident USING btree (proc_def_id_);



CREATE INDEX act_idx_inc_procinstid ON act_ru_incident USING btree (proc_inst_id_);



CREATE INDEX act_idx_inc_rootcauseincid ON act_ru_incident USING btree (root_cause_incident_id_);



CREATE INDEX act_idx_inc_tenant_id ON act_ru_incident USING btree (tenant_id_);



CREATE INDEX act_idx_job_exception ON act_ru_job USING btree (exception_stack_id_);



CREATE INDEX act_idx_job_execution_id ON act_ru_job USING btree (execution_id_);



CREATE INDEX act_idx_job_handler ON act_ru_job USING btree (handler_type_, handler_cfg_);



CREATE INDEX act_idx_job_handler_type ON act_ru_job USING btree (handler_type_);



CREATE INDEX act_idx_job_job_def_id ON act_ru_job USING btree (job_def_id_);



CREATE INDEX act_idx_job_procinst ON act_ru_job USING btree (process_instance_id_);



CREATE INDEX act_idx_job_tenant_id ON act_ru_job USING btree (tenant_id_);



CREATE INDEX act_idx_jobdef_proc_def_id ON act_ru_jobdef USING btree (proc_def_id_);



CREATE INDEX act_idx_jobdef_tenant_id ON act_ru_jobdef USING btree (tenant_id_);



CREATE INDEX act_idx_memb_group ON act_id_membership USING btree (group_id_);



CREATE INDEX act_idx_memb_user ON act_id_membership USING btree (user_id_);



CREATE INDEX act_idx_meter_log ON act_ru_meter_log USING btree (name_, timestamp_);



CREATE INDEX act_idx_meter_log_ms ON act_ru_meter_log USING btree (milliseconds_);



CREATE INDEX act_idx_meter_log_name_ms ON act_ru_meter_log USING btree (name_, milliseconds_);



CREATE INDEX act_idx_meter_log_report ON act_ru_meter_log USING btree (name_, reporter_, milliseconds_);



CREATE INDEX act_idx_meter_log_time ON act_ru_meter_log USING btree (timestamp_);



CREATE INDEX act_idx_procdef_deployment_id ON act_re_procdef USING btree (deployment_id_);



CREATE INDEX act_idx_procdef_tenant_id ON act_re_procdef USING btree (tenant_id_);



CREATE INDEX act_idx_procdef_ver_tag ON act_re_procdef USING btree (version_tag_);



CREATE INDEX act_idx_task_assignee ON act_ru_task USING btree (assignee_);



CREATE INDEX act_idx_task_case_def_id ON act_ru_task USING btree (case_def_id_);



CREATE INDEX act_idx_task_case_exec ON act_ru_task USING btree (case_execution_id_);



CREATE INDEX act_idx_task_create ON act_ru_task USING btree (create_time_);



CREATE INDEX act_idx_task_exec ON act_ru_task USING btree (execution_id_);



CREATE INDEX act_idx_task_last_updated ON act_ru_task USING btree (last_updated_);



CREATE INDEX act_idx_task_meter_log_time ON act_ru_task_meter_log USING btree (timestamp_);



CREATE INDEX act_idx_task_owner ON act_ru_task USING btree (owner_);



CREATE INDEX act_idx_task_procdef ON act_ru_task USING btree (proc_def_id_);



CREATE INDEX act_idx_task_procinst ON act_ru_task USING btree (proc_inst_id_);



CREATE INDEX act_idx_task_tenant_id ON act_ru_task USING btree (tenant_id_);



CREATE INDEX act_idx_tenant_memb ON act_id_tenant_member USING btree (tenant_id_);



CREATE INDEX act_idx_tenant_memb_group ON act_id_tenant_member USING btree (group_id_);



CREATE INDEX act_idx_tenant_memb_user ON act_id_tenant_member USING btree (user_id_);



CREATE INDEX act_idx_tskass_task ON act_ru_identitylink USING btree (task_id_);



CREATE INDEX act_idx_var_bytearray ON act_ru_variable USING btree (bytearray_id_);



CREATE INDEX act_idx_var_case_exe ON act_ru_variable USING btree (case_execution_id_);



CREATE INDEX act_idx_var_case_inst_id ON act_ru_variable USING btree (case_inst_id_);



CREATE INDEX act_idx_var_exe ON act_ru_variable USING btree (execution_id_);



CREATE INDEX act_idx_var_procinst ON act_ru_variable USING btree (proc_inst_id_);



CREATE INDEX act_idx_variable_task_id ON act_ru_variable USING btree (task_id_);



CREATE INDEX act_idx_variable_task_name_type ON act_ru_variable USING btree (task_id_, name_, type_);



CREATE INDEX act_idx_variable_tenant_id ON act_ru_variable USING btree (tenant_id_);



ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_athrz_procedef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);



ALTER TABLE ONLY act_ru_batch
    ADD CONSTRAINT act_fk_batch_job_def FOREIGN KEY (batch_job_def_id_) REFERENCES act_ru_jobdef(id_);



ALTER TABLE ONLY act_ru_batch
    ADD CONSTRAINT act_fk_batch_monitor_job_def FOREIGN KEY (monitor_job_def_id_) REFERENCES act_ru_jobdef(id_);



ALTER TABLE ONLY act_ru_batch
    ADD CONSTRAINT act_fk_batch_seed_job_def FOREIGN KEY (seed_job_def_id_) REFERENCES act_ru_jobdef(id_);



ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_fk_bytearr_depl FOREIGN KEY (deployment_id_) REFERENCES act_re_deployment(id_);



ALTER TABLE ONLY act_ru_case_execution
    ADD CONSTRAINT act_fk_case_exe_case_def FOREIGN KEY (case_def_id_) REFERENCES act_re_case_def(id_);



ALTER TABLE ONLY act_ru_case_execution
    ADD CONSTRAINT act_fk_case_exe_case_inst FOREIGN KEY (case_inst_id_) REFERENCES act_ru_case_execution(id_);



ALTER TABLE ONLY act_ru_case_execution
    ADD CONSTRAINT act_fk_case_exe_parent FOREIGN KEY (parent_id_) REFERENCES act_ru_case_execution(id_);



ALTER TABLE ONLY act_ru_case_sentry_part
    ADD CONSTRAINT act_fk_case_sentry_case_exec FOREIGN KEY (case_exec_id_) REFERENCES act_ru_case_execution(id_);



ALTER TABLE ONLY act_ru_case_sentry_part
    ADD CONSTRAINT act_fk_case_sentry_case_inst FOREIGN KEY (case_inst_id_) REFERENCES act_ru_case_execution(id_);



ALTER TABLE ONLY act_re_decision_def
    ADD CONSTRAINT act_fk_dec_req FOREIGN KEY (dec_req_id_) REFERENCES act_re_decision_req_def(id_);



ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_fk_event_exec FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_parent FOREIGN KEY (parent_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);



ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_super FOREIGN KEY (super_exec_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_ru_ext_task
    ADD CONSTRAINT act_fk_ext_task_error_details FOREIGN KEY (error_details_id_) REFERENCES act_ge_bytearray(id_);



ALTER TABLE ONLY act_ru_ext_task
    ADD CONSTRAINT act_fk_ext_task_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_cause FOREIGN KEY (cause_incident_id_) REFERENCES act_ru_incident(id_);



ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_job_def FOREIGN KEY (job_def_id_) REFERENCES act_ru_jobdef(id_);



ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);



ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_rcause FOREIGN KEY (root_cause_incident_id_) REFERENCES act_ru_incident(id_);



ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_fk_job_exception FOREIGN KEY (exception_stack_id_) REFERENCES act_ge_bytearray(id_);



ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_group FOREIGN KEY (group_id_) REFERENCES act_id_group(id_);



ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_user FOREIGN KEY (user_id_) REFERENCES act_id_user(id_);



ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_case_def FOREIGN KEY (case_def_id_) REFERENCES act_re_case_def(id_);



ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_case_exe FOREIGN KEY (case_execution_id_) REFERENCES act_ru_case_execution(id_);



ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);



ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_fk_tenant_memb FOREIGN KEY (tenant_id_) REFERENCES act_id_tenant(id_);



ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_fk_tenant_memb_group FOREIGN KEY (group_id_) REFERENCES act_id_group(id_);



ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_fk_tenant_memb_user FOREIGN KEY (user_id_) REFERENCES act_id_user(id_);



ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_tskass_task FOREIGN KEY (task_id_) REFERENCES act_ru_task(id_);



ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_batch FOREIGN KEY (batch_id_) REFERENCES act_ru_batch(id_);



ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_bytearray FOREIGN KEY (bytearray_id_) REFERENCES act_ge_bytearray(id_);



ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_case_exe FOREIGN KEY (case_execution_id_) REFERENCES act_ru_case_execution(id_);



ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_case_inst FOREIGN KEY (case_inst_id_) REFERENCES act_ru_case_execution(id_);



ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);



ALTER TABLE ONLY user_reporting
    ADD CONSTRAINT fk1gtobhmjc2q5bi5jnfrjpvj7o FOREIGN KEY (reporter_id) REFERENCES crm_user(id);



ALTER TABLE ONLY accounts
    ADD CONSTRAINT fk2rpdabkr8egvfyvla5eonejs2 FOREIGN KEY (assigned_user_id) REFERENCES crm_user(id);



ALTER TABLE ONLY list_view_layout
    ADD CONSTRAINT fk2yulyfsw4jha83oc9iam0s519 FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fk3peugptvdtfywheoqve373shb FOREIGN KEY (profile_id) REFERENCES profile(id);



ALTER TABLE ONLY campaign_tracking_url
    ADD CONSTRAINT fk3q2qh3synjda5n7gdrr0moaaq FOREIGN KEY (campaign) REFERENCES campaign(id);



ALTER TABLE ONLY compact_layout_column
    ADD CONSTRAINT fk49xawdscj39wruf3h2asa0h4x FOREIGN KEY (compact_layout_id) REFERENCES compact_layout(id);



ALTER TABLE ONLY duplicate_matching_rule
    ADD CONSTRAINT fk4af6ntjd6srjyphyxp80bvpno FOREIGN KEY (matching_rule_id) REFERENCES matching_rule(id);



ALTER TABLE ONLY duplicate_rule
    ADD CONSTRAINT fk581a5ncldipbxo1k8nj19dt3c FOREIGN KEY (duplicate_action_id) REFERENCES duplicate_action(id);



ALTER TABLE ONLY mapping_rule
    ADD CONSTRAINT fk5rs2xve9b4pboq1rk3foo7han FOREIGN KEY (table_metadata_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY activity_user
    ADD CONSTRAINT fk612yr3asucd0397oqwe6kyydg FOREIGN KEY (activity_id) REFERENCES activity(id);



ALTER TABLE ONLY action_form
    ADD CONSTRAINT fk6auijqb9k4n0lq1694sjtvu9w FOREIGN KEY (send_email_id) REFERENCES send_email(id);



ALTER TABLE ONLY users_privileges
    ADD CONSTRAINT fk6hsiwi4sieqmw6ix7cudppqvo FOREIGN KEY (privilege_id) REFERENCES privilege(id);



ALTER TABLE ONLY activity
    ADD CONSTRAINT fk6j8n8h4wp8kgod274p7k52brt FOREIGN KEY (email_template_id) REFERENCES email_template(id);



ALTER TABLE ONLY related_layout_column
    ADD CONSTRAINT fk7rnctld6ww7b95ulkp5cwuqnx FOREIGN KEY (column_meta_data_id) REFERENCES column_metadata(id);



ALTER TABLE ONLY lead
    ADD CONSTRAINT fk7u13qetuxigf73gscffk6l43k FOREIGN KEY (campaign_id) REFERENCES campaign(id);



ALTER TABLE ONLY create_record_field_relation
    ADD CONSTRAINT fk7ynrgxb2mp0uqc5mo5i4mphvp FOREIGN KEY (create_record_id) REFERENCES create_record(id);



ALTER TABLE ONLY campaign
    ADD CONSTRAINT fk82gdhc0x9k0nxf36weqwdtbpq FOREIGN KEY (assigned_user) REFERENCES crm_user(id);



ALTER TABLE ONLY create_record_field_relation
    ADD CONSTRAINT fk8i8qyhbpgyqmv39t7ji5w1776 FOREIGN KEY (field_value_id) REFERENCES create_record_field_value(id);



ALTER TABLE ONLY page_layout
    ADD CONSTRAINT fk90j5el5tv1fnc1v3ik8b5aes6 FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY lead
    ADD CONSTRAINT fka4fyfytn2srn2elodgpsi23rb FOREIGN KEY (assigned_user_id) REFERENCES crm_user(id);



ALTER TABLE ONLY related_layout
    ADD CONSTRAINT fka91hit9kh7yth04qpr2y69apg FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY column_metadata
    ADD CONSTRAINT fka9p7bhoro6f848vd9jibjscgu FOREIGN KEY (table_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY contact
    ADD CONSTRAINT fkabnog0r32px3hoqlu640l84sn FOREIGN KEY (campaign_id) REFERENCES campaign(id);



ALTER TABLE ONLY workflow_rule
    ADD CONSTRAINT fkbshbyca9xal1jg555tq1bym9c FOREIGN KEY (action_form_id) REFERENCES action_form(id);



ALTER TABLE ONLY page_layout_column
    ADD CONSTRAINT fkcisf32ms8fjgi0jlbtro7lv27 FOREIGN KEY (page_layout_id) REFERENCES page_layout(id);



ALTER TABLE ONLY role
    ADD CONSTRAINT fkdf1jxt31xl69b4ffd12ytje5l FOREIGN KEY (sub_roles) REFERENCES role(role_id);



ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fkdr4fwadiexpm28o30niq9736w FOREIGN KEY (mailing_address_id) REFERENCES address(address_id);



ALTER TABLE ONLY update_record_field_relation
    ADD CONSTRAINT fkdv8mwbjoa1kv1fm970oa8ab46 FOREIGN KEY (field_value_id) REFERENCES update_record_field_value(id);



ALTER TABLE ONLY campaign_log_record
    ADD CONSTRAINT fkejdwfgcm9rinkov5vs8w5my54 FOREIGN KEY (campaign) REFERENCES campaign(id);



ALTER TABLE ONLY opportunity
    ADD CONSTRAINT fkenjsxu5t8qhwh1ghhf3jxk472 FOREIGN KEY (account_id) REFERENCES accounts(id);



ALTER TABLE ONLY opportunity
    ADD CONSTRAINT fkesy1f1vk9eyr9x24m2wn7yqfo FOREIGN KEY (campaign_id) REFERENCES campaign(id);



ALTER TABLE ONLY matching_rule
    ADD CONSTRAINT fkf2aodevpf82k2nty6qrb4h4ah FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY user_reporting
    ADD CONSTRAINT fkfai9ls6dk00ta2bwwgbsxivrj FOREIGN KEY (reported_to_id) REFERENCES crm_user(id);



ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fkfaslv53tr00uhhdpa6xyb49cn FOREIGN KEY (organisation_id) REFERENCES organisation(id);



ALTER TABLE ONLY pricebook_entries
    ADD CONSTRAINT fkfc7hlv8ixq1iq8vjb1qtqp5ov FOREIGN KEY (product_id) REFERENCES product(id);



ALTER TABLE ONLY opportunity
    ADD CONSTRAINT fkfgi8exbget0xcgh6njh8atf11 FOREIGN KEY (pricebook_id) REFERENCES pricebook(id);



ALTER TABLE ONLY update_record_field_value
    ADD CONSTRAINT fkfjus0i6l70x9l1b9bwvu675x2 FOREIGN KEY (column_id) REFERENCES column_metadata(id);



ALTER TABLE ONLY list_view_layout_column
    ADD CONSTRAINT fkfsv9po0iutu337nnitkrm678r FOREIGN KEY (layout_id) REFERENCES list_view_layout(id);



ALTER TABLE ONLY create_record
    ADD CONSTRAINT fkg1m07eqwbdjj7ua5ufka0en13 FOREIGN KEY (entity_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY contact
    ADD CONSTRAINT fkg9qenj6slk4clat5tahb79b3l FOREIGN KEY (account_id) REFERENCES accounts(id);



ALTER TABLE ONLY pricebook_entries
    ADD CONSTRAINT fkhfyybxubd8lo5q1dw2v2x7tyx FOREIGN KEY (pricebook_id) REFERENCES pricebook(id);



ALTER TABLE ONLY related_table_meta_data
    ADD CONSTRAINT fkhlg9ow3xiewp8529lesqw0c01 FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY users_privileges
    ADD CONSTRAINT fkhmhv0txyp5ds430r383ph3gcb FOREIGN KEY (user_id) REFERENCES crm_user(id);



ALTER TABLE ONLY activity_user
    ADD CONSTRAINT fkik3oxp14j1wb1gbl8o1j3jwm9 FOREIGN KEY (user_id) REFERENCES crm_user(id);



ALTER TABLE ONLY product
    ADD CONSTRAINT fkilipyr1qn7scobb25wdhawqb9 FOREIGN KEY (product_family_id) REFERENCES product_family(id);



ALTER TABLE ONLY action_form
    ADD CONSTRAINT fkimg0glcumecoeookum8kn950q FOREIGN KEY (create_record_id) REFERENCES create_record(id);



ALTER TABLE ONLY profile
    ADD CONSTRAINT fkiyf1ktxwx1m2jhd6mw21npwkv FOREIGN KEY (organisation_id) REFERENCES organisation(id);



ALTER TABLE ONLY field_permission
    ADD CONSTRAINT fkj26yv0l9cpr66tte2qhrmyjdd FOREIGN KEY (field_permission_id) REFERENCES object_permission(id);



ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fkj4pr7o6g2nj4tnq97ufrubqpu FOREIGN KEY (role_id) REFERENCES role(role_id);



ALTER TABLE ONLY column_validation
    ADD CONSTRAINT fkjd4h7mtleyhvv96qy7lbefivp FOREIGN KEY (column_meta_data_id) REFERENCES column_metadata(id);



ALTER TABLE ONLY role
    ADD CONSTRAINT fkjgycv8j6ju6dhx3klo4s5dx29 FOREIGN KEY (organisation_id) REFERENCES organisation(id);



ALTER TABLE ONLY duplicate_rule
    ADD CONSTRAINT fkjiiys800w5o3omhupd3ymd27e FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY column_validation
    ADD CONSTRAINT fkk76uxkri7smb5l441r9wmeq22 FOREIGN KEY (column_validation_id) REFERENCES validation(id);



ALTER TABLE ONLY relationship_metadata
    ADD CONSTRAINT fkl53agfwcxccnk7j2t2jkxv68g FOREIGN KEY (table_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY related_layout_column
    ADD CONSTRAINT fkl6u0s490lr47y8eonvc0fb42y FOREIGN KEY (related_table_meta_data_id) REFERENCES related_table_meta_data(id);



ALTER TABLE ONLY opportunity_product
    ADD CONSTRAINT fkl856sdy29qmmy9cdr7nqx003x FOREIGN KEY (opportunity_id) REFERENCES opportunity(id);



ALTER TABLE ONLY send_email
    ADD CONSTRAINT fklekjvju7omephfxbq5881mhva FOREIGN KEY (email_template_id) REFERENCES email_template(id);



ALTER TABLE ONLY mapping_rule_column_relation
    ADD CONSTRAINT fklgkxu2kscev2aw7um62ogvsh8 FOREIGN KEY (column_id) REFERENCES mapping_rule_column(id);



ALTER TABLE ONLY email_placeholder
    ADD CONSTRAINT fkll475uhcj51nd78g1287iqd5p FOREIGN KEY (template_id) REFERENCES email_template(id);



ALTER TABLE ONLY activity
    ADD CONSTRAINT fklw2f8gk09dvsspifayqkfem2v FOREIGN KEY (contact_id) REFERENCES contact(id);



ALTER TABLE ONLY duplicate_matching_rule_relation
    ADD CONSTRAINT fkm9ys9eshhhswq3wud9elwpcv3 FOREIGN KEY (duplicate_rules_id) REFERENCES duplicate_rule(id);



ALTER TABLE ONLY list_view_layout_column
    ADD CONSTRAINT fkmascmycfht4dd17ph8ee5227d FOREIGN KEY (column_id) REFERENCES column_metadata(id);



ALTER TABLE ONLY update_record_field_relation
    ADD CONSTRAINT fkmbe1ethe9yambf6lfme3c0q64 FOREIGN KEY (update_record_id) REFERENCES update_record(id);



ALTER TABLE ONLY action_form
    ADD CONSTRAINT fkn1dlgvr3j7kdr2g10ejs35lee FOREIGN KEY (update_record_id) REFERENCES update_record(id);



ALTER TABLE ONLY activity
    ADD CONSTRAINT fko6yef9a1r0ana0fi8f27dlu2l FOREIGN KEY (account_id) REFERENCES accounts(id);



ALTER TABLE ONLY e_contact
    ADD CONSTRAINT fkonlm8ltf8enqgn23h6w9dtc30 FOREIGN KEY (account_id) REFERENCES e_account(id);



ALTER TABLE ONLY workflow_condition
    ADD CONSTRAINT fkotw6f8315u4bus9nklop4vtjb FOREIGN KEY (workflow) REFERENCES dml_workflow(id);



ALTER TABLE ONLY duplicate_matching_rule
    ADD CONSTRAINT fkp3twujv92dt3qgcrullbktrwl FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY page_layout_column
    ADD CONSTRAINT fkpadc60fm2qkusckmbbgkdlj2w FOREIGN KEY (column_id) REFERENCES column_metadata(id);



ALTER TABLE ONLY duplicate_matching_rule_relation
    ADD CONSTRAINT fkpts7hq6ex2mw77bohetwpt934 FOREIGN KEY (duplicate_matching_rules_id) REFERENCES duplicate_matching_rule(id);



ALTER TABLE ONLY mapping_rule_column_relation
    ADD CONSTRAINT fkqe3luuli7vjph1dcwfa9rducp FOREIGN KEY (mapping_rule_id) REFERENCES mapping_rule(id);



ALTER TABLE ONLY accounts
    ADD CONSTRAINT fkqf5rsuag975gf0s56qyv2hdjw FOREIGN KEY (campaign_id) REFERENCES campaign(id);



ALTER TABLE ONLY workflow_rule
    ADD CONSTRAINT fkqngv6wvdt7ny8ismcqj934beb FOREIGN KEY (target_entity) REFERENCES table_metadata(id);



ALTER TABLE ONLY object_permission
    ADD CONSTRAINT fkr3ccpnr7xun7xhx1cbahn9emt FOREIGN KEY (object_permission_id) REFERENCES profile(id);



ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fkr4x0hrwhepocadk9wru0v0bso FOREIGN KEY (delegated_approver_id) REFERENCES crm_user(id);



ALTER TABLE ONLY activity
    ADD CONSTRAINT fkrsgbn0kagnibikij53sdyqvg4 FOREIGN KEY (lead_id) REFERENCES lead(id);



ALTER TABLE ONLY compact_layout_column
    ADD CONSTRAINT fkrttmmiwbjem9q1d6dqq9fg24i FOREIGN KEY (column_id) REFERENCES column_metadata(id);



ALTER TABLE ONLY create_record_field_value
    ADD CONSTRAINT fkrxlrduj8rrqhlv0yo7qmnsd61 FOREIGN KEY (column_id) REFERENCES column_metadata(id);



ALTER TABLE ONLY related_table_meta_data
    ADD CONSTRAINT fks7m7u6n6qhwf7eosjqpcocp9a FOREIGN KEY (related_layout_id) REFERENCES related_layout(id);



ALTER TABLE ONLY contact
    ADD CONSTRAINT fks9rxhytsem0ncw3lgo0qcpkp FOREIGN KEY (assigned_user_id) REFERENCES crm_user(id);



ALTER TABLE ONLY compact_layout
    ADD CONSTRAINT fksm0mr6woco19khh2n72uoymef FOREIGN KEY (table_metadata_id) REFERENCES table_metadata(id);



ALTER TABLE ONLY activity
    ADD CONSTRAINT fkss75u5a44x0xqn0pqiue8maej FOREIGN KEY (assigned_user_id) REFERENCES crm_user(id);




