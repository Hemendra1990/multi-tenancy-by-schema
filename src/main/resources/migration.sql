--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11
-- Dumped by pg_dump version 13.4

-- Started on 2023-09-02 12:09:04 IST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 375 (class 1259 OID 79214)
-- Name: college; Type: TABLE; Schema: myschema; Owner: postgres
--



--
-- TOC entry 223 (class 1259 OID 77496)
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 222 (class 1259 OID 77494)
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE accounts_id_seq OWNER TO postgres;

--
-- TOC entry 4592 (class 0 OID 0)
-- Dependencies: 222
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE accounts_id_seq OWNED BY accounts.id;


--
-- TOC entry 319 (class 1259 OID 78316)
-- Name: act_ge_bytearray; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 318 (class 1259 OID 78311)
-- Name: act_ge_property; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE act_ge_property (
    name_ character varying(64) NOT NULL,
    value_ character varying(300),
    rev_ integer
);


ALTER TABLE act_ge_property OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 78324)
-- Name: act_ge_schema_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE act_ge_schema_log (
    id_ character varying(64) NOT NULL,
    timestamp_ timestamp without time zone,
    version_ character varying(255)
);


ALTER TABLE act_ge_schema_log OWNER TO postgres;

--
-- TOC entry 339 (class 1259 OID 78690)
-- Name: act_hi_actinst; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 345 (class 1259 OID 78738)
-- Name: act_hi_attachment; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 349 (class 1259 OID 78771)
-- Name: act_hi_batch; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 361 (class 1259 OID 79053)
-- Name: act_hi_caseactinst; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 360 (class 1259 OID 79043)
-- Name: act_hi_caseinst; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 344 (class 1259 OID 78730)
-- Name: act_hi_comment; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 365 (class 1259 OID 79100)
-- Name: act_hi_dec_in; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 366 (class 1259 OID 79108)
-- Name: act_hi_dec_out; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 364 (class 1259 OID 79092)
-- Name: act_hi_decinst; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 342 (class 1259 OID 78714)
-- Name: act_hi_detail; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 350 (class 1259 OID 78779)
-- Name: act_hi_ext_task_log; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 343 (class 1259 OID 78722)
-- Name: act_hi_identitylink; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 347 (class 1259 OID 78754)
-- Name: act_hi_incident; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 348 (class 1259 OID 78762)
-- Name: act_hi_job_log; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 346 (class 1259 OID 78746)
-- Name: act_hi_op_log; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 338 (class 1259 OID 78680)
-- Name: act_hi_procinst; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 340 (class 1259 OID 78698)
-- Name: act_hi_taskinst; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 341 (class 1259 OID 78706)
-- Name: act_hi_varinst; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 351 (class 1259 OID 78889)
-- Name: act_id_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE act_id_group (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    type_ character varying(255)
);


ALTER TABLE act_id_group OWNER TO postgres;

--
-- TOC entry 354 (class 1259 OID 78910)
-- Name: act_id_info; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 352 (class 1259 OID 78897)
-- Name: act_id_membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE act_id_membership (
    user_id_ character varying(64) NOT NULL,
    group_id_ character varying(64) NOT NULL
);


ALTER TABLE act_id_membership OWNER TO postgres;

--
-- TOC entry 355 (class 1259 OID 78918)
-- Name: act_id_tenant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE act_id_tenant (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255)
);


ALTER TABLE act_id_tenant OWNER TO postgres;

--
-- TOC entry 356 (class 1259 OID 78923)
-- Name: act_id_tenant_member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE act_id_tenant_member (
    id_ character varying(64) NOT NULL,
    tenant_id_ character varying(64) NOT NULL,
    user_id_ character varying(64),
    group_id_ character varying(64)
);


ALTER TABLE act_id_tenant_member OWNER TO postgres;

--
-- TOC entry 353 (class 1259 OID 78902)
-- Name: act_id_user; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 326 (class 1259 OID 78373)
-- Name: act_re_camformdef; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 357 (class 1259 OID 78962)
-- Name: act_re_case_def; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 362 (class 1259 OID 79068)
-- Name: act_re_decision_def; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 363 (class 1259 OID 79076)
-- Name: act_re_decision_req_def; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 321 (class 1259 OID 78329)
-- Name: act_re_deployment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE act_re_deployment (
    id_ character varying(64) NOT NULL,
    name_ character varying(255),
    deploy_time_ timestamp without time zone,
    source_ character varying(255),
    tenant_id_ character varying(64)
);


ALTER TABLE act_re_deployment OWNER TO postgres;

--
-- TOC entry 325 (class 1259 OID 78364)
-- Name: act_re_procdef; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 332 (class 1259 OID 78421)
-- Name: act_ru_authorization; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 337 (class 1259 OID 78457)
-- Name: act_ru_batch; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 358 (class 1259 OID 78970)
-- Name: act_ru_case_execution; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 359 (class 1259 OID 78978)
-- Name: act_ru_case_sentry_part; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 330 (class 1259 OID 78405)
-- Name: act_ru_event_subscr; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 322 (class 1259 OID 78337)
-- Name: act_ru_execution; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 336 (class 1259 OID 78448)
-- Name: act_ru_ext_task; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 333 (class 1259 OID 78429)
-- Name: act_ru_filter; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 328 (class 1259 OID 78389)
-- Name: act_ru_identitylink; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 331 (class 1259 OID 78413)
-- Name: act_ru_incident; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 323 (class 1259 OID 78345)
-- Name: act_ru_job; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 324 (class 1259 OID 78356)
-- Name: act_ru_jobdef; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 334 (class 1259 OID 78437)
-- Name: act_ru_meter_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE act_ru_meter_log (
    id_ character varying(64) NOT NULL,
    name_ character varying(64) NOT NULL,
    reporter_ character varying(255),
    value_ bigint,
    timestamp_ timestamp without time zone,
    milliseconds_ bigint DEFAULT 0
);


ALTER TABLE act_ru_meter_log OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 78381)
-- Name: act_ru_task; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 335 (class 1259 OID 78443)
-- Name: act_ru_task_meter_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE act_ru_task_meter_log (
    id_ character varying(64) NOT NULL,
    assignee_hash_ bigint,
    timestamp_ timestamp without time zone
);


ALTER TABLE act_ru_task_meter_log OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 78397)
-- Name: act_ru_variable; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 225 (class 1259 OID 77507)
-- Name: action_form; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE action_form (
    id bigint NOT NULL,
    create_record_id bigint,
    send_email_id bigint,
    update_record_id bigint
);


ALTER TABLE action_form OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 77505)
-- Name: action_form_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE action_form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE action_form_id_seq OWNER TO postgres;

--
-- TOC entry 4593 (class 0 OID 0)
-- Dependencies: 224
-- Name: action_form_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE action_form_id_seq OWNED BY action_form.id;


--
-- TOC entry 227 (class 1259 OID 77515)
-- Name: activity; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 226 (class 1259 OID 77513)
-- Name: activity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE activity_id_seq OWNER TO postgres;

--
-- TOC entry 4594 (class 0 OID 0)
-- Dependencies: 226
-- Name: activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE activity_id_seq OWNED BY activity.id;


--
-- TOC entry 228 (class 1259 OID 77524)
-- Name: activity_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE activity_user (
    activity_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE activity_user OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 77326)
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 204 (class 1259 OID 77324)
-- Name: address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE address_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE address_address_id_seq OWNER TO postgres;

--
-- TOC entry 4595 (class 0 OID 0)
-- Dependencies: 204
-- Name: address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE address_address_id_seq OWNED BY address.address_id;


--
-- TOC entry 230 (class 1259 OID 77531)
-- Name: campaign; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 229 (class 1259 OID 77529)
-- Name: campaign_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE campaign_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE campaign_id_seq OWNER TO postgres;

--
-- TOC entry 4596 (class 0 OID 0)
-- Dependencies: 229
-- Name: campaign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE campaign_id_seq OWNED BY campaign.id;


--
-- TOC entry 232 (class 1259 OID 77542)
-- Name: campaign_log_record; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 231 (class 1259 OID 77540)
-- Name: campaign_log_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE campaign_log_record_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE campaign_log_record_id_seq OWNER TO postgres;

--
-- TOC entry 4597 (class 0 OID 0)
-- Dependencies: 231
-- Name: campaign_log_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE campaign_log_record_id_seq OWNED BY campaign_log_record.id;


--
-- TOC entry 234 (class 1259 OID 77553)
-- Name: campaign_tracking_url; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 233 (class 1259 OID 77551)
-- Name: campaign_tracking_url_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE campaign_tracking_url_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE campaign_tracking_url_id_seq OWNER TO postgres;

--
-- TOC entry 4598 (class 0 OID 0)
-- Dependencies: 233
-- Name: campaign_tracking_url_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE campaign_tracking_url_id_seq OWNED BY campaign_tracking_url.id;


--
-- TOC entry 367 (class 1259 OID 79140)
-- Name: college_test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE college_test (
    id bigint NOT NULL,
    name character varying(255),
    website character varying(255)
);


ALTER TABLE college_test OWNER TO postgres;

--
-- TOC entry 369 (class 1259 OID 79178)
-- Name: college_test2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE college_test2 (
    id character varying(255) NOT NULL,
    name character varying(255),
    website character varying(255)
);


ALTER TABLE college_test2 OWNER TO postgres;

--
-- TOC entry 368 (class 1259 OID 79148)
-- Name: college_test_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE college_test_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE college_test_seq OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 77564)
-- Name: column_metadata; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 235 (class 1259 OID 77562)
-- Name: column_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE column_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE column_metadata_id_seq OWNER TO postgres;

--
-- TOC entry 4599 (class 0 OID 0)
-- Dependencies: 235
-- Name: column_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE column_metadata_id_seq OWNED BY column_metadata.id;


--
-- TOC entry 237 (class 1259 OID 77573)
-- Name: column_validation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE column_validation (
    column_meta_data_id bigint NOT NULL,
    column_validation_id bigint NOT NULL
);


ALTER TABLE column_validation OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 77578)
-- Name: compact_layout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE compact_layout (
    id bigint NOT NULL,
    active boolean,
    layout_name character varying(255),
    organisation_id bigint,
    table_metadata_id bigint
);


ALTER TABLE compact_layout OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 77586)
-- Name: compact_layout_button; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE compact_layout_button (
    id bigint NOT NULL,
    button_name character varying(255)
);


ALTER TABLE compact_layout_button OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 77584)
-- Name: compact_layout_button_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE compact_layout_button_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE compact_layout_button_id_seq OWNER TO postgres;

--
-- TOC entry 4600 (class 0 OID 0)
-- Dependencies: 240
-- Name: compact_layout_button_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE compact_layout_button_id_seq OWNED BY compact_layout_button.id;


--
-- TOC entry 243 (class 1259 OID 77594)
-- Name: compact_layout_column; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE compact_layout_column (
    id bigint NOT NULL,
    is_link boolean,
    sort_oder integer,
    column_id bigint,
    compact_layout_id bigint
);


ALTER TABLE compact_layout_column OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 77592)
-- Name: compact_layout_column_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE compact_layout_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE compact_layout_column_id_seq OWNER TO postgres;

--
-- TOC entry 4601 (class 0 OID 0)
-- Dependencies: 242
-- Name: compact_layout_column_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE compact_layout_column_id_seq OWNED BY compact_layout_column.id;


--
-- TOC entry 238 (class 1259 OID 77576)
-- Name: compact_layout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE compact_layout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE compact_layout_id_seq OWNER TO postgres;

--
-- TOC entry 4602 (class 0 OID 0)
-- Dependencies: 238
-- Name: compact_layout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE compact_layout_id_seq OWNED BY compact_layout.id;


--
-- TOC entry 245 (class 1259 OID 77602)
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 244 (class 1259 OID 77600)
-- Name: contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contact_id_seq OWNER TO postgres;

--
-- TOC entry 4603 (class 0 OID 0)
-- Dependencies: 244
-- Name: contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contact_id_seq OWNED BY contact.id;


--
-- TOC entry 247 (class 1259 OID 77613)
-- Name: create_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE create_record (
    id bigint NOT NULL,
    entity_id bigint
);


ALTER TABLE create_record OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 77619)
-- Name: create_record_field_relation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE create_record_field_relation (
    create_record_id bigint NOT NULL,
    field_value_id bigint NOT NULL
);


ALTER TABLE create_record_field_relation OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 77624)
-- Name: create_record_field_value; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE create_record_field_value (
    id bigint NOT NULL,
    value character varying(255),
    column_id bigint
);


ALTER TABLE create_record_field_value OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 77622)
-- Name: create_record_field_value_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE create_record_field_value_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE create_record_field_value_id_seq OWNER TO postgres;

--
-- TOC entry 4604 (class 0 OID 0)
-- Dependencies: 249
-- Name: create_record_field_value_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE create_record_field_value_id_seq OWNED BY create_record_field_value.id;


--
-- TOC entry 246 (class 1259 OID 77611)
-- Name: create_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE create_record_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE create_record_id_seq OWNER TO postgres;

--
-- TOC entry 4605 (class 0 OID 0)
-- Dependencies: 246
-- Name: create_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE create_record_id_seq OWNED BY create_record.id;


--
-- TOC entry 207 (class 1259 OID 77337)
-- Name: crm_user; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 206 (class 1259 OID 77335)
-- Name: crm_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE crm_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_user_id_seq OWNER TO postgres;

--
-- TOC entry 4606 (class 0 OID 0)
-- Dependencies: 206
-- Name: crm_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE crm_user_id_seq OWNED BY crm_user.id;


--
-- TOC entry 252 (class 1259 OID 77632)
-- Name: currency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE currency (
    id bigint NOT NULL
);


ALTER TABLE currency OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 77630)
-- Name: currency_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE currency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE currency_id_seq OWNER TO postgres;

--
-- TOC entry 4607 (class 0 OID 0)
-- Dependencies: 251
-- Name: currency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE currency_id_seq OWNED BY currency.id;


--
-- TOC entry 254 (class 1259 OID 77640)
-- Name: dml_workflow; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 253 (class 1259 OID 77638)
-- Name: dml_workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dml_workflow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dml_workflow_id_seq OWNER TO postgres;

--
-- TOC entry 4608 (class 0 OID 0)
-- Dependencies: 253
-- Name: dml_workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dml_workflow_id_seq OWNED BY dml_workflow.id;


--
-- TOC entry 256 (class 1259 OID 77651)
-- Name: duplicate_action; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 255 (class 1259 OID 77649)
-- Name: duplicate_action_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE duplicate_action_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE duplicate_action_id_seq OWNER TO postgres;

--
-- TOC entry 4609 (class 0 OID 0)
-- Dependencies: 255
-- Name: duplicate_action_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE duplicate_action_id_seq OWNED BY duplicate_action.id;


--
-- TOC entry 258 (class 1259 OID 77662)
-- Name: duplicate_matching_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE duplicate_matching_rule (
    id bigint NOT NULL,
    matching_rule_id bigint,
    table_meta_data_id bigint
);


ALTER TABLE duplicate_matching_rule OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 77660)
-- Name: duplicate_matching_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE duplicate_matching_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE duplicate_matching_rule_id_seq OWNER TO postgres;

--
-- TOC entry 4610 (class 0 OID 0)
-- Dependencies: 257
-- Name: duplicate_matching_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE duplicate_matching_rule_id_seq OWNED BY duplicate_matching_rule.id;


--
-- TOC entry 259 (class 1259 OID 77668)
-- Name: duplicate_matching_rule_relation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE duplicate_matching_rule_relation (
    duplicate_rules_id bigint NOT NULL,
    duplicate_matching_rules_id bigint NOT NULL
);


ALTER TABLE duplicate_matching_rule_relation OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 77673)
-- Name: duplicate_rule; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 260 (class 1259 OID 77671)
-- Name: duplicate_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE duplicate_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE duplicate_rule_id_seq OWNER TO postgres;

--
-- TOC entry 4611 (class 0 OID 0)
-- Dependencies: 260
-- Name: duplicate_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE duplicate_rule_id_seq OWNED BY duplicate_rule.id;


--
-- TOC entry 377 (class 1259 OID 79222)
-- Name: e_account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE e_account (
    id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE e_account OWNER TO postgres;

--
-- TOC entry 376 (class 1259 OID 79220)
-- Name: e_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE e_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE e_account_id_seq OWNER TO postgres;

--
-- TOC entry 4612 (class 0 OID 0)
-- Dependencies: 376
-- Name: e_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE e_account_id_seq OWNED BY e_account.id;


--
-- TOC entry 379 (class 1259 OID 79230)
-- Name: e_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE e_contact (
    id bigint NOT NULL,
    name character varying(255),
    account_id bigint
);


ALTER TABLE e_contact OWNER TO postgres;

--
-- TOC entry 378 (class 1259 OID 79228)
-- Name: e_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE e_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE e_contact_id_seq OWNER TO postgres;

--
-- TOC entry 4613 (class 0 OID 0)
-- Dependencies: 378
-- Name: e_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE e_contact_id_seq OWNED BY e_contact.id;


--
-- TOC entry 263 (class 1259 OID 77684)
-- Name: email_placeholder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE email_placeholder (
    id bigint NOT NULL,
    column_name character varying(255),
    placeholder_name character varying(255),
    table_name character varying(255),
    template_id bigint
);


ALTER TABLE email_placeholder OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 77682)
-- Name: email_placeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE email_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE email_placeholder_id_seq OWNER TO postgres;

--
-- TOC entry 4614 (class 0 OID 0)
-- Dependencies: 262
-- Name: email_placeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE email_placeholder_id_seq OWNED BY email_placeholder.id;


--
-- TOC entry 265 (class 1259 OID 77695)
-- Name: email_template; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 264 (class 1259 OID 77693)
-- Name: email_template_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE email_template_id_seq OWNER TO postgres;

--
-- TOC entry 4615 (class 0 OID 0)
-- Dependencies: 264
-- Name: email_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE email_template_id_seq OWNED BY email_template.id;


--
-- TOC entry 209 (class 1259 OID 77348)
-- Name: field_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE field_permission (
    id bigint NOT NULL,
    editable boolean NOT NULL,
    field_name character varying(255),
    object_name character varying(255),
    readable boolean NOT NULL,
    field_permission_id bigint
);


ALTER TABLE field_permission OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 77346)
-- Name: field_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE field_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE field_permission_id_seq OWNER TO postgres;

--
-- TOC entry 4616 (class 0 OID 0)
-- Dependencies: 208
-- Name: field_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE field_permission_id_seq OWNED BY field_permission.id;


--
-- TOC entry 267 (class 1259 OID 77706)
-- Name: lead; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 266 (class 1259 OID 77704)
-- Name: lead_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lead_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lead_id_seq OWNER TO postgres;

--
-- TOC entry 4617 (class 0 OID 0)
-- Dependencies: 266
-- Name: lead_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lead_id_seq OWNED BY lead.id;


--
-- TOC entry 269 (class 1259 OID 77718)
-- Name: list_view_layout; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 271 (class 1259 OID 77729)
-- Name: list_view_layout_column; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE list_view_layout_column (
    id bigint NOT NULL,
    is_link boolean,
    sort_oder integer,
    column_id bigint,
    layout_id bigint
);


ALTER TABLE list_view_layout_column OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 77727)
-- Name: list_view_layout_column_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE list_view_layout_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE list_view_layout_column_id_seq OWNER TO postgres;

--
-- TOC entry 4618 (class 0 OID 0)
-- Dependencies: 270
-- Name: list_view_layout_column_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE list_view_layout_column_id_seq OWNED BY list_view_layout_column.id;


--
-- TOC entry 268 (class 1259 OID 77716)
-- Name: list_view_layout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE list_view_layout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE list_view_layout_id_seq OWNER TO postgres;

--
-- TOC entry 4619 (class 0 OID 0)
-- Dependencies: 268
-- Name: list_view_layout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE list_view_layout_id_seq OWNED BY list_view_layout.id;


--
-- TOC entry 273 (class 1259 OID 77737)
-- Name: mapping_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE mapping_rule (
    id bigint NOT NULL,
    table_metadata_id bigint
);


ALTER TABLE mapping_rule OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 77745)
-- Name: mapping_rule_column; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE mapping_rule_column (
    id bigint NOT NULL,
    account_column character varying(255),
    contact_column character varying(255),
    is_standard boolean,
    lead_column character varying(255),
    opportunity_column character varying(255)
);


ALTER TABLE mapping_rule_column OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 77743)
-- Name: mapping_rule_column_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE mapping_rule_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mapping_rule_column_id_seq OWNER TO postgres;

--
-- TOC entry 4620 (class 0 OID 0)
-- Dependencies: 274
-- Name: mapping_rule_column_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE mapping_rule_column_id_seq OWNED BY mapping_rule_column.id;


--
-- TOC entry 276 (class 1259 OID 77754)
-- Name: mapping_rule_column_relation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE mapping_rule_column_relation (
    mapping_rule_id bigint NOT NULL,
    column_id bigint NOT NULL
);


ALTER TABLE mapping_rule_column_relation OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 77735)
-- Name: mapping_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE mapping_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mapping_rule_id_seq OWNER TO postgres;

--
-- TOC entry 4621 (class 0 OID 0)
-- Dependencies: 272
-- Name: mapping_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE mapping_rule_id_seq OWNED BY mapping_rule.id;


--
-- TOC entry 278 (class 1259 OID 77759)
-- Name: matching_rule; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 277 (class 1259 OID 77757)
-- Name: matching_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE matching_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE matching_rule_id_seq OWNER TO postgres;

--
-- TOC entry 4622 (class 0 OID 0)
-- Dependencies: 277
-- Name: matching_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE matching_rule_id_seq OWNED BY matching_rule.id;


--
-- TOC entry 211 (class 1259 OID 77359)
-- Name: object_permission; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 210 (class 1259 OID 77357)
-- Name: object_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE object_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE object_permission_id_seq OWNER TO postgres;

--
-- TOC entry 4623 (class 0 OID 0)
-- Dependencies: 210
-- Name: object_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE object_permission_id_seq OWNED BY object_permission.id;


--
-- TOC entry 280 (class 1259 OID 77770)
-- Name: opportunity; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 279 (class 1259 OID 77768)
-- Name: opportunity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE opportunity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE opportunity_id_seq OWNER TO postgres;

--
-- TOC entry 4624 (class 0 OID 0)
-- Dependencies: 279
-- Name: opportunity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE opportunity_id_seq OWNED BY opportunity.id;


--
-- TOC entry 282 (class 1259 OID 77781)
-- Name: opportunity_product; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 281 (class 1259 OID 77779)
-- Name: opportunity_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE opportunity_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE opportunity_product_id_seq OWNER TO postgres;

--
-- TOC entry 4625 (class 0 OID 0)
-- Dependencies: 281
-- Name: opportunity_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE opportunity_product_id_seq OWNED BY opportunity_product.id;


--
-- TOC entry 213 (class 1259 OID 77367)
-- Name: organisation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE organisation (
    id bigint NOT NULL,
    logo text,
    name character varying(255) NOT NULL
);


ALTER TABLE organisation OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 77365)
-- Name: organisation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE organisation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE organisation_id_seq OWNER TO postgres;

--
-- TOC entry 4626 (class 0 OID 0)
-- Dependencies: 212
-- Name: organisation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE organisation_id_seq OWNED BY organisation.id;


--
-- TOC entry 284 (class 1259 OID 77792)
-- Name: page_layout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE page_layout (
    id bigint NOT NULL,
    is_default boolean,
    name character varying(255),
    organisation_id bigint,
    table_meta_data_id bigint
);


ALTER TABLE page_layout OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 77800)
-- Name: page_layout_column; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE page_layout_column (
    id bigint NOT NULL,
    is_required boolean,
    sort_oder integer NOT NULL,
    column_id bigint,
    page_layout_id bigint
);


ALTER TABLE page_layout_column OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 77798)
-- Name: page_layout_column_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_layout_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_layout_column_id_seq OWNER TO postgres;

--
-- TOC entry 4627 (class 0 OID 0)
-- Dependencies: 285
-- Name: page_layout_column_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_layout_column_id_seq OWNED BY page_layout_column.id;


--
-- TOC entry 283 (class 1259 OID 77790)
-- Name: page_layout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_layout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE page_layout_id_seq OWNER TO postgres;

--
-- TOC entry 4628 (class 0 OID 0)
-- Dependencies: 283
-- Name: page_layout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE page_layout_id_seq OWNED BY page_layout.id;


--
-- TOC entry 288 (class 1259 OID 77808)
-- Name: pricebook; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 290 (class 1259 OID 77819)
-- Name: pricebook_entries; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 289 (class 1259 OID 77817)
-- Name: pricebook_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pricebook_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pricebook_entries_id_seq OWNER TO postgres;

--
-- TOC entry 4629 (class 0 OID 0)
-- Dependencies: 289
-- Name: pricebook_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pricebook_entries_id_seq OWNED BY pricebook_entries.id;


--
-- TOC entry 287 (class 1259 OID 77806)
-- Name: pricebook_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pricebook_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pricebook_id_seq OWNER TO postgres;

--
-- TOC entry 4630 (class 0 OID 0)
-- Dependencies: 287
-- Name: pricebook_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pricebook_id_seq OWNED BY pricebook.id;


--
-- TOC entry 215 (class 1259 OID 77378)
-- Name: privilege; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE privilege (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE privilege OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 77376)
-- Name: privilege_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE privilege_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE privilege_id_seq OWNER TO postgres;

--
-- TOC entry 4631 (class 0 OID 0)
-- Dependencies: 214
-- Name: privilege_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE privilege_id_seq OWNED BY privilege.id;


--
-- TOC entry 292 (class 1259 OID 77827)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 294 (class 1259 OID 77838)
-- Name: product_family; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 293 (class 1259 OID 77836)
-- Name: product_family_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_family_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_family_id_seq OWNER TO postgres;

--
-- TOC entry 4632 (class 0 OID 0)
-- Dependencies: 293
-- Name: product_family_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_family_id_seq OWNED BY product_family.id;


--
-- TOC entry 291 (class 1259 OID 77825)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_id_seq OWNER TO postgres;

--
-- TOC entry 4633 (class 0 OID 0)
-- Dependencies: 291
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_id_seq OWNED BY product.id;


--
-- TOC entry 217 (class 1259 OID 77386)
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE profile (
    id bigint NOT NULL,
    description character varying(255),
    is_administrator boolean,
    profile_name character varying(255),
    organisation_id bigint
);


ALTER TABLE profile OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 77384)
-- Name: profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profile_id_seq OWNER TO postgres;

--
-- TOC entry 4634 (class 0 OID 0)
-- Dependencies: 216
-- Name: profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE profile_id_seq OWNED BY profile.id;


--
-- TOC entry 296 (class 1259 OID 77849)
-- Name: related_layout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE related_layout (
    id bigint NOT NULL,
    related_layout_name character varying(255),
    table_meta_data_id bigint
);


ALTER TABLE related_layout OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 77857)
-- Name: related_layout_column; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE related_layout_column (
    id bigint NOT NULL,
    sort_order integer,
    column_meta_data_id bigint,
    related_table_meta_data_id bigint
);


ALTER TABLE related_layout_column OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 77855)
-- Name: related_layout_column_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE related_layout_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE related_layout_column_id_seq OWNER TO postgres;

--
-- TOC entry 4635 (class 0 OID 0)
-- Dependencies: 297
-- Name: related_layout_column_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE related_layout_column_id_seq OWNED BY related_layout_column.id;


--
-- TOC entry 295 (class 1259 OID 77847)
-- Name: related_layout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE related_layout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE related_layout_id_seq OWNER TO postgres;

--
-- TOC entry 4636 (class 0 OID 0)
-- Dependencies: 295
-- Name: related_layout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE related_layout_id_seq OWNED BY related_layout.id;


--
-- TOC entry 300 (class 1259 OID 77865)
-- Name: related_table_meta_data; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 299 (class 1259 OID 77863)
-- Name: related_table_meta_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE related_table_meta_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE related_table_meta_data_id_seq OWNER TO postgres;

--
-- TOC entry 4637 (class 0 OID 0)
-- Dependencies: 299
-- Name: related_table_meta_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE related_table_meta_data_id_seq OWNED BY related_table_meta_data.id;


--
-- TOC entry 302 (class 1259 OID 77873)
-- Name: relationship_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE relationship_metadata (
    id bigint NOT NULL,
    reference_column character varying(255),
    reference_table character varying(255),
    source_column character varying(255),
    type character varying(255),
    table_id bigint NOT NULL
);


ALTER TABLE relationship_metadata OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 77871)
-- Name: relationship_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE relationship_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relationship_metadata_id_seq OWNER TO postgres;

--
-- TOC entry 4638 (class 0 OID 0)
-- Dependencies: 301
-- Name: relationship_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE relationship_metadata_id_seq OWNED BY relationship_metadata.id;


--
-- TOC entry 219 (class 1259 OID 77397)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE role (
    role_id bigint NOT NULL,
    label character varying(255),
    parent_role_id bigint,
    role_name character varying(255),
    organisation_id bigint,
    sub_roles bigint
);


ALTER TABLE role OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 77395)
-- Name: role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE role_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE role_role_id_seq OWNER TO postgres;

--
-- TOC entry 4639 (class 0 OID 0)
-- Dependencies: 218
-- Name: role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE role_role_id_seq OWNED BY role.role_id;


--
-- TOC entry 304 (class 1259 OID 77884)
-- Name: send_email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE send_email (
    id bigint NOT NULL,
    is_opt_out_link boolean,
    is_store_sent_email boolean,
    receiver character varying(255),
    sender character varying(255),
    email_template_id bigint
);


ALTER TABLE send_email OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 77882)
-- Name: send_email_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE send_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE send_email_id_seq OWNER TO postgres;

--
-- TOC entry 4640 (class 0 OID 0)
-- Dependencies: 303
-- Name: send_email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE send_email_id_seq OWNED BY send_email.id;


--
-- TOC entry 306 (class 1259 OID 77895)
-- Name: table_metadata; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 305 (class 1259 OID 77893)
-- Name: table_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE table_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE table_metadata_id_seq OWNER TO postgres;

--
-- TOC entry 4641 (class 0 OID 0)
-- Dependencies: 305
-- Name: table_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE table_metadata_id_seq OWNED BY table_metadata.id;


--
-- TOC entry 308 (class 1259 OID 77906)
-- Name: update_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE update_record (
    id bigint NOT NULL
);


ALTER TABLE update_record OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 77912)
-- Name: update_record_field_relation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE update_record_field_relation (
    update_record_id bigint NOT NULL,
    field_value_id bigint NOT NULL
);


ALTER TABLE update_record_field_relation OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 77917)
-- Name: update_record_field_value; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE update_record_field_value (
    id bigint NOT NULL,
    value character varying(255),
    column_id bigint
);


ALTER TABLE update_record_field_value OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 77915)
-- Name: update_record_field_value_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE update_record_field_value_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE update_record_field_value_id_seq OWNER TO postgres;

--
-- TOC entry 4642 (class 0 OID 0)
-- Dependencies: 310
-- Name: update_record_field_value_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE update_record_field_value_id_seq OWNED BY update_record_field_value.id;


--
-- TOC entry 307 (class 1259 OID 77904)
-- Name: update_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE update_record_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE update_record_id_seq OWNER TO postgres;

--
-- TOC entry 4643 (class 0 OID 0)
-- Dependencies: 307
-- Name: update_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE update_record_id_seq OWNED BY update_record.id;


--
-- TOC entry 220 (class 1259 OID 77406)
-- Name: user_reporting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE user_reporting (
    reporter_id bigint NOT NULL,
    reported_to_id bigint NOT NULL
);


ALTER TABLE user_reporting OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 77411)
-- Name: users_privileges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users_privileges (
    user_id bigint NOT NULL,
    privilege_id bigint NOT NULL
);


ALTER TABLE users_privileges OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 77925)
-- Name: validation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE validation (
    id bigint NOT NULL,
    message character varying(255),
    second_value character varying(255),
    type character varying(255),
    value character varying(255)
);


ALTER TABLE validation OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 77923)
-- Name: validation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE validation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE validation_id_seq OWNER TO postgres;

--
-- TOC entry 4644 (class 0 OID 0)
-- Dependencies: 312
-- Name: validation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE validation_id_seq OWNED BY validation.id;


--
-- TOC entry 315 (class 1259 OID 77936)
-- Name: workflow_condition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE workflow_condition (
    id bigint NOT NULL,
    column_name character varying(255),
    operator character varying(255),
    second_value character varying(255),
    value character varying(255),
    workflow bigint NOT NULL
);


ALTER TABLE workflow_condition OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 77934)
-- Name: workflow_condition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE workflow_condition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE workflow_condition_id_seq OWNER TO postgres;

--
-- TOC entry 4645 (class 0 OID 0)
-- Dependencies: 314
-- Name: workflow_condition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE workflow_condition_id_seq OWNED BY workflow_condition.id;


--
-- TOC entry 317 (class 1259 OID 77947)
-- Name: workflow_rule; Type: TABLE; Schema: public; Owner: postgres
--

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

--
-- TOC entry 316 (class 1259 OID 77945)
-- Name: workflow_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE workflow_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE workflow_rule_id_seq OWNER TO postgres;

--
-- TOC entry 4646 (class 0 OID 0)
-- Dependencies: 316
-- Name: workflow_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE workflow_rule_id_seq OWNED BY workflow_rule.id;


--
-- TOC entry 370 (class 1259 OID 79188)
-- Name: address; Type: TABLE; Schema: user1; Owner: postgres
--

CREATE TABLE user1.address (
    name character varying(20),
    website character varying(20)
);


ALTER TABLE user1.address OWNER TO postgres;

--
-- TOC entry 374 (class 1259 OID 79206)
-- Name: college; Type: TABLE; Schema: user1; Owner: postgres
--

CREATE TABLE user1.college (
    name character varying(20),
    mobile character varying(20),
    regdno text,
    state text,
    country character varying(20)
);


ALTER TABLE user1.college OWNER TO postgres;

--
-- TOC entry 373 (class 1259 OID 79200)
-- Name: student1user; Type: TABLE; Schema: user1; Owner: postgres
--

CREATE TABLE user1.student1user (
    name character varying(20),
    mobile character varying(20),
    regdno text
);


ALTER TABLE user1.student1user OWNER TO postgres;

--
-- TOC entry 371 (class 1259 OID 79191)
-- Name: address; Type: TABLE; Schema: user2; Owner: postgres
--

CREATE TABLE user2.address (
    name character varying(20),
    website character varying(20)
);


ALTER TABLE user2.address OWNER TO postgres;

--
-- TOC entry 372 (class 1259 OID 79194)
-- Name: student; Type: TABLE; Schema: user2; Owner: postgres
--

CREATE TABLE user2.student (
    name character varying(20),
    mobile character varying(20),
    regdno text
);


ALTER TABLE user2.student OWNER TO postgres;

--
-- TOC entry 3794 (class 2604 OID 77499)
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY accounts ALTER COLUMN id SET DEFAULT nextval('accounts_id_seq'::regclass);


--
-- TOC entry 3795 (class 2604 OID 77510)
-- Name: action_form id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY action_form ALTER COLUMN id SET DEFAULT nextval('action_form_id_seq'::regclass);


--
-- TOC entry 3796 (class 2604 OID 77518)
-- Name: activity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity ALTER COLUMN id SET DEFAULT nextval('activity_id_seq'::regclass);


--
-- TOC entry 3786 (class 2604 OID 77329)
-- Name: address address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY address ALTER COLUMN address_id SET DEFAULT nextval('address_address_id_seq'::regclass);


--
-- TOC entry 3797 (class 2604 OID 77534)
-- Name: campaign id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campaign ALTER COLUMN id SET DEFAULT nextval('campaign_id_seq'::regclass);


--
-- TOC entry 3798 (class 2604 OID 77545)
-- Name: campaign_log_record id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campaign_log_record ALTER COLUMN id SET DEFAULT nextval('campaign_log_record_id_seq'::regclass);


--
-- TOC entry 3799 (class 2604 OID 77556)
-- Name: campaign_tracking_url id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campaign_tracking_url ALTER COLUMN id SET DEFAULT nextval('campaign_tracking_url_id_seq'::regclass);


--
-- TOC entry 3800 (class 2604 OID 77567)
-- Name: column_metadata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY column_metadata ALTER COLUMN id SET DEFAULT nextval('column_metadata_id_seq'::regclass);


--
-- TOC entry 3801 (class 2604 OID 77581)
-- Name: compact_layout id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compact_layout ALTER COLUMN id SET DEFAULT nextval('compact_layout_id_seq'::regclass);


--
-- TOC entry 3802 (class 2604 OID 77589)
-- Name: compact_layout_button id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compact_layout_button ALTER COLUMN id SET DEFAULT nextval('compact_layout_button_id_seq'::regclass);


--
-- TOC entry 3803 (class 2604 OID 77597)
-- Name: compact_layout_column id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compact_layout_column ALTER COLUMN id SET DEFAULT nextval('compact_layout_column_id_seq'::regclass);


--
-- TOC entry 3804 (class 2604 OID 77605)
-- Name: contact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact ALTER COLUMN id SET DEFAULT nextval('contact_id_seq'::regclass);


--
-- TOC entry 3805 (class 2604 OID 77616)
-- Name: create_record id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY create_record ALTER COLUMN id SET DEFAULT nextval('create_record_id_seq'::regclass);


--
-- TOC entry 3806 (class 2604 OID 77627)
-- Name: create_record_field_value id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY create_record_field_value ALTER COLUMN id SET DEFAULT nextval('create_record_field_value_id_seq'::regclass);


--
-- TOC entry 3787 (class 2604 OID 77340)
-- Name: crm_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY crm_user ALTER COLUMN id SET DEFAULT nextval('crm_user_id_seq'::regclass);


--
-- TOC entry 3807 (class 2604 OID 77635)
-- Name: currency id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY currency ALTER COLUMN id SET DEFAULT nextval('currency_id_seq'::regclass);


--
-- TOC entry 3808 (class 2604 OID 77643)
-- Name: dml_workflow id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dml_workflow ALTER COLUMN id SET DEFAULT nextval('dml_workflow_id_seq'::regclass);


--
-- TOC entry 3809 (class 2604 OID 77654)
-- Name: duplicate_action id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_action ALTER COLUMN id SET DEFAULT nextval('duplicate_action_id_seq'::regclass);


--
-- TOC entry 3810 (class 2604 OID 77665)
-- Name: duplicate_matching_rule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_matching_rule ALTER COLUMN id SET DEFAULT nextval('duplicate_matching_rule_id_seq'::regclass);


--
-- TOC entry 3811 (class 2604 OID 77676)
-- Name: duplicate_rule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_rule ALTER COLUMN id SET DEFAULT nextval('duplicate_rule_id_seq'::regclass);


--
-- TOC entry 3848 (class 2604 OID 79225)
-- Name: e_account id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY e_account ALTER COLUMN id SET DEFAULT nextval('e_account_id_seq'::regclass);


--
-- TOC entry 3849 (class 2604 OID 79233)
-- Name: e_contact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY e_contact ALTER COLUMN id SET DEFAULT nextval('e_contact_id_seq'::regclass);


--
-- TOC entry 3812 (class 2604 OID 77687)
-- Name: email_placeholder id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY email_placeholder ALTER COLUMN id SET DEFAULT nextval('email_placeholder_id_seq'::regclass);


--
-- TOC entry 3813 (class 2604 OID 77698)
-- Name: email_template id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY email_template ALTER COLUMN id SET DEFAULT nextval('email_template_id_seq'::regclass);


--
-- TOC entry 3788 (class 2604 OID 77351)
-- Name: field_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY field_permission ALTER COLUMN id SET DEFAULT nextval('field_permission_id_seq'::regclass);


--
-- TOC entry 3814 (class 2604 OID 77709)
-- Name: lead id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lead ALTER COLUMN id SET DEFAULT nextval('lead_id_seq'::regclass);


--
-- TOC entry 3816 (class 2604 OID 77721)
-- Name: list_view_layout id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY list_view_layout ALTER COLUMN id SET DEFAULT nextval('list_view_layout_id_seq'::regclass);


--
-- TOC entry 3817 (class 2604 OID 77732)
-- Name: list_view_layout_column id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY list_view_layout_column ALTER COLUMN id SET DEFAULT nextval('list_view_layout_column_id_seq'::regclass);


--
-- TOC entry 3818 (class 2604 OID 77740)
-- Name: mapping_rule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule ALTER COLUMN id SET DEFAULT nextval('mapping_rule_id_seq'::regclass);


--
-- TOC entry 3819 (class 2604 OID 77748)
-- Name: mapping_rule_column id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule_column ALTER COLUMN id SET DEFAULT nextval('mapping_rule_column_id_seq'::regclass);


--
-- TOC entry 3820 (class 2604 OID 77762)
-- Name: matching_rule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matching_rule ALTER COLUMN id SET DEFAULT nextval('matching_rule_id_seq'::regclass);


--
-- TOC entry 3789 (class 2604 OID 77362)
-- Name: object_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY object_permission ALTER COLUMN id SET DEFAULT nextval('object_permission_id_seq'::regclass);


--
-- TOC entry 3821 (class 2604 OID 77773)
-- Name: opportunity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opportunity ALTER COLUMN id SET DEFAULT nextval('opportunity_id_seq'::regclass);


--
-- TOC entry 3822 (class 2604 OID 77784)
-- Name: opportunity_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opportunity_product ALTER COLUMN id SET DEFAULT nextval('opportunity_product_id_seq'::regclass);


--
-- TOC entry 3790 (class 2604 OID 77370)
-- Name: organisation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organisation ALTER COLUMN id SET DEFAULT nextval('organisation_id_seq'::regclass);


--
-- TOC entry 3823 (class 2604 OID 77795)
-- Name: page_layout id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_layout ALTER COLUMN id SET DEFAULT nextval('page_layout_id_seq'::regclass);


--
-- TOC entry 3824 (class 2604 OID 77803)
-- Name: page_layout_column id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_layout_column ALTER COLUMN id SET DEFAULT nextval('page_layout_column_id_seq'::regclass);


--
-- TOC entry 3825 (class 2604 OID 77811)
-- Name: pricebook id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pricebook ALTER COLUMN id SET DEFAULT nextval('pricebook_id_seq'::regclass);


--
-- TOC entry 3826 (class 2604 OID 77822)
-- Name: pricebook_entries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pricebook_entries ALTER COLUMN id SET DEFAULT nextval('pricebook_entries_id_seq'::regclass);


--
-- TOC entry 3791 (class 2604 OID 77381)
-- Name: privilege id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY privilege ALTER COLUMN id SET DEFAULT nextval('privilege_id_seq'::regclass);


--
-- TOC entry 3827 (class 2604 OID 77830)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_id_seq'::regclass);


--
-- TOC entry 3828 (class 2604 OID 77841)
-- Name: product_family id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_family ALTER COLUMN id SET DEFAULT nextval('product_family_id_seq'::regclass);


--
-- TOC entry 3792 (class 2604 OID 77389)
-- Name: profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profile ALTER COLUMN id SET DEFAULT nextval('profile_id_seq'::regclass);


--
-- TOC entry 3829 (class 2604 OID 77852)
-- Name: related_layout id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_layout ALTER COLUMN id SET DEFAULT nextval('related_layout_id_seq'::regclass);


--
-- TOC entry 3830 (class 2604 OID 77860)
-- Name: related_layout_column id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_layout_column ALTER COLUMN id SET DEFAULT nextval('related_layout_column_id_seq'::regclass);


--
-- TOC entry 3831 (class 2604 OID 77868)
-- Name: related_table_meta_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_table_meta_data ALTER COLUMN id SET DEFAULT nextval('related_table_meta_data_id_seq'::regclass);


--
-- TOC entry 3832 (class 2604 OID 77876)
-- Name: relationship_metadata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relationship_metadata ALTER COLUMN id SET DEFAULT nextval('relationship_metadata_id_seq'::regclass);


--
-- TOC entry 3793 (class 2604 OID 77400)
-- Name: role role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role ALTER COLUMN role_id SET DEFAULT nextval('role_role_id_seq'::regclass);


--
-- TOC entry 3833 (class 2604 OID 77887)
-- Name: send_email id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY send_email ALTER COLUMN id SET DEFAULT nextval('send_email_id_seq'::regclass);


--
-- TOC entry 3834 (class 2604 OID 77898)
-- Name: table_metadata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY table_metadata ALTER COLUMN id SET DEFAULT nextval('table_metadata_id_seq'::regclass);


--
-- TOC entry 3835 (class 2604 OID 77909)
-- Name: update_record id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY update_record ALTER COLUMN id SET DEFAULT nextval('update_record_id_seq'::regclass);


--
-- TOC entry 3836 (class 2604 OID 77920)
-- Name: update_record_field_value id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY update_record_field_value ALTER COLUMN id SET DEFAULT nextval('update_record_field_value_id_seq'::regclass);


--
-- TOC entry 3837 (class 2604 OID 77928)
-- Name: validation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY validation ALTER COLUMN id SET DEFAULT nextval('validation_id_seq'::regclass);


--
-- TOC entry 3838 (class 2604 OID 77939)
-- Name: workflow_condition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflow_condition ALTER COLUMN id SET DEFAULT nextval('workflow_condition_id_seq'::regclass);


--
-- TOC entry 3839 (class 2604 OID 77950)
-- Name: workflow_rule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflow_rule ALTER COLUMN id SET DEFAULT nextval('workflow_rule_id_seq'::regclass);


--
-- TOC entry 3879 (class 2606 OID 77504)
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- TOC entry 3993 (class 2606 OID 78323)
-- Name: act_ge_bytearray act_ge_bytearray_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_ge_bytearray_pkey PRIMARY KEY (id_);


--
-- TOC entry 3991 (class 2606 OID 78315)
-- Name: act_ge_property act_ge_property_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ge_property
    ADD CONSTRAINT act_ge_property_pkey PRIMARY KEY (name_);


--
-- TOC entry 3999 (class 2606 OID 78328)
-- Name: act_ge_schema_log act_ge_schema_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ge_schema_log
    ADD CONSTRAINT act_ge_schema_log_pkey PRIMARY KEY (id_);


--
-- TOC entry 4127 (class 2606 OID 78697)
-- Name: act_hi_actinst act_hi_actinst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_actinst
    ADD CONSTRAINT act_hi_actinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 4194 (class 2606 OID 78745)
-- Name: act_hi_attachment act_hi_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_attachment
    ADD CONSTRAINT act_hi_attachment_pkey PRIMARY KEY (id_);


--
-- TOC entry 4233 (class 2606 OID 78778)
-- Name: act_hi_batch act_hi_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_batch
    ADD CONSTRAINT act_hi_batch_pkey PRIMARY KEY (id_);


--
-- TOC entry 4286 (class 2606 OID 79060)
-- Name: act_hi_caseactinst act_hi_caseactinst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_caseactinst
    ADD CONSTRAINT act_hi_caseactinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 4279 (class 2606 OID 79052)
-- Name: act_hi_caseinst act_hi_caseinst_case_inst_id__key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_caseinst
    ADD CONSTRAINT act_hi_caseinst_case_inst_id__key UNIQUE (case_inst_id_);


--
-- TOC entry 4281 (class 2606 OID 79050)
-- Name: act_hi_caseinst act_hi_caseinst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_caseinst
    ADD CONSTRAINT act_hi_caseinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 4188 (class 2606 OID 78737)
-- Name: act_hi_comment act_hi_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_comment
    ADD CONSTRAINT act_hi_comment_pkey PRIMARY KEY (id_);


--
-- TOC entry 4314 (class 2606 OID 79107)
-- Name: act_hi_dec_in act_hi_dec_in_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_dec_in
    ADD CONSTRAINT act_hi_dec_in_pkey PRIMARY KEY (id_);


--
-- TOC entry 4320 (class 2606 OID 79115)
-- Name: act_hi_dec_out act_hi_dec_out_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_dec_out
    ADD CONSTRAINT act_hi_dec_out_pkey PRIMARY KEY (id_);


--
-- TOC entry 4299 (class 2606 OID 79099)
-- Name: act_hi_decinst act_hi_decinst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_decinst
    ADD CONSTRAINT act_hi_decinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 4162 (class 2606 OID 78721)
-- Name: act_hi_detail act_hi_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_detail
    ADD CONSTRAINT act_hi_detail_pkey PRIMARY KEY (id_);


--
-- TOC entry 4235 (class 2606 OID 78787)
-- Name: act_hi_ext_task_log act_hi_ext_task_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_ext_task_log
    ADD CONSTRAINT act_hi_ext_task_log_pkey PRIMARY KEY (id_);


--
-- TOC entry 4178 (class 2606 OID 78729)
-- Name: act_hi_identitylink act_hi_identitylink_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_identitylink
    ADD CONSTRAINT act_hi_identitylink_pkey PRIMARY KEY (id_);


--
-- TOC entry 4212 (class 2606 OID 78761)
-- Name: act_hi_incident act_hi_incident_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_incident
    ADD CONSTRAINT act_hi_incident_pkey PRIMARY KEY (id_);


--
-- TOC entry 4221 (class 2606 OID 78770)
-- Name: act_hi_job_log act_hi_job_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_job_log
    ADD CONSTRAINT act_hi_job_log_pkey PRIMARY KEY (id_);


--
-- TOC entry 4201 (class 2606 OID 78753)
-- Name: act_hi_op_log act_hi_op_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_op_log
    ADD CONSTRAINT act_hi_op_log_pkey PRIMARY KEY (id_);


--
-- TOC entry 4115 (class 2606 OID 78687)
-- Name: act_hi_procinst act_hi_procinst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 4117 (class 2606 OID 78689)
-- Name: act_hi_procinst act_hi_procinst_proc_inst_id__key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_proc_inst_id__key UNIQUE (proc_inst_id_);


--
-- TOC entry 4139 (class 2606 OID 78705)
-- Name: act_hi_taskinst act_hi_taskinst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_taskinst
    ADD CONSTRAINT act_hi_taskinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 4149 (class 2606 OID 78713)
-- Name: act_hi_varinst act_hi_varinst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_hi_varinst
    ADD CONSTRAINT act_hi_varinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 4244 (class 2606 OID 78896)
-- Name: act_id_group act_id_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_group
    ADD CONSTRAINT act_id_group_pkey PRIMARY KEY (id_);


--
-- TOC entry 4252 (class 2606 OID 78917)
-- Name: act_id_info act_id_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_info
    ADD CONSTRAINT act_id_info_pkey PRIMARY KEY (id_);


--
-- TOC entry 4246 (class 2606 OID 78901)
-- Name: act_id_membership act_id_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_id_membership_pkey PRIMARY KEY (user_id_, group_id_);


--
-- TOC entry 4256 (class 2606 OID 78927)
-- Name: act_id_tenant_member act_id_tenant_member_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_id_tenant_member_pkey PRIMARY KEY (id_);


--
-- TOC entry 4254 (class 2606 OID 78922)
-- Name: act_id_tenant act_id_tenant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_tenant
    ADD CONSTRAINT act_id_tenant_pkey PRIMARY KEY (id_);


--
-- TOC entry 4250 (class 2606 OID 78909)
-- Name: act_id_user act_id_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_user
    ADD CONSTRAINT act_id_user_pkey PRIMARY KEY (id_);


--
-- TOC entry 4032 (class 2606 OID 78380)
-- Name: act_re_camformdef act_re_camformdef_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_re_camformdef
    ADD CONSTRAINT act_re_camformdef_pkey PRIMARY KEY (id_);


--
-- TOC entry 4266 (class 2606 OID 78969)
-- Name: act_re_case_def act_re_case_def_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_re_case_def
    ADD CONSTRAINT act_re_case_def_pkey PRIMARY KEY (id_);


--
-- TOC entry 4294 (class 2606 OID 79075)
-- Name: act_re_decision_def act_re_decision_def_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_re_decision_def
    ADD CONSTRAINT act_re_decision_def_pkey PRIMARY KEY (id_);


--
-- TOC entry 4297 (class 2606 OID 79083)
-- Name: act_re_decision_req_def act_re_decision_req_def_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_re_decision_req_def
    ADD CONSTRAINT act_re_decision_req_def_pkey PRIMARY KEY (id_);


--
-- TOC entry 4003 (class 2606 OID 78336)
-- Name: act_re_deployment act_re_deployment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_re_deployment
    ADD CONSTRAINT act_re_deployment_pkey PRIMARY KEY (id_);


--
-- TOC entry 4030 (class 2606 OID 78372)
-- Name: act_re_procdef act_re_procdef_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_re_procdef
    ADD CONSTRAINT act_re_procdef_pkey PRIMARY KEY (id_);


--
-- TOC entry 4085 (class 2606 OID 78428)
-- Name: act_ru_authorization act_ru_authorization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_authorization
    ADD CONSTRAINT act_ru_authorization_pkey PRIMARY KEY (id_);


--
-- TOC entry 4113 (class 2606 OID 78464)
-- Name: act_ru_batch act_ru_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_batch
    ADD CONSTRAINT act_ru_batch_pkey PRIMARY KEY (id_);


--
-- TOC entry 4273 (class 2606 OID 78977)
-- Name: act_ru_case_execution act_ru_case_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_case_execution
    ADD CONSTRAINT act_ru_case_execution_pkey PRIMARY KEY (id_);


--
-- TOC entry 4277 (class 2606 OID 78985)
-- Name: act_ru_case_sentry_part act_ru_case_sentry_part_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_case_sentry_part
    ADD CONSTRAINT act_ru_case_sentry_part_pkey PRIMARY KEY (id_);


--
-- TOC entry 4069 (class 2606 OID 78412)
-- Name: act_ru_event_subscr act_ru_event_subscr_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_ru_event_subscr_pkey PRIMARY KEY (id_);


--
-- TOC entry 4012 (class 2606 OID 78344)
-- Name: act_ru_execution act_ru_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_ru_execution_pkey PRIMARY KEY (id_);


--
-- TOC entry 4108 (class 2606 OID 78456)
-- Name: act_ru_ext_task act_ru_ext_task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_ext_task
    ADD CONSTRAINT act_ru_ext_task_pkey PRIMARY KEY (id_);


--
-- TOC entry 4091 (class 2606 OID 78436)
-- Name: act_ru_filter act_ru_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_filter
    ADD CONSTRAINT act_ru_filter_pkey PRIMARY KEY (id_);


--
-- TOC entry 4050 (class 2606 OID 78396)
-- Name: act_ru_identitylink act_ru_identitylink_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_ru_identitylink_pkey PRIMARY KEY (id_);


--
-- TOC entry 4079 (class 2606 OID 78420)
-- Name: act_ru_incident act_ru_incident_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_ru_incident_pkey PRIMARY KEY (id_);


--
-- TOC entry 4021 (class 2606 OID 78355)
-- Name: act_ru_job act_ru_job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_ru_job_pkey PRIMARY KEY (id_);


--
-- TOC entry 4025 (class 2606 OID 78363)
-- Name: act_ru_jobdef act_ru_jobdef_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_jobdef
    ADD CONSTRAINT act_ru_jobdef_pkey PRIMARY KEY (id_);


--
-- TOC entry 4098 (class 2606 OID 78442)
-- Name: act_ru_meter_log act_ru_meter_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_meter_log
    ADD CONSTRAINT act_ru_meter_log_pkey PRIMARY KEY (id_);


--
-- TOC entry 4101 (class 2606 OID 78447)
-- Name: act_ru_task_meter_log act_ru_task_meter_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_task_meter_log
    ADD CONSTRAINT act_ru_task_meter_log_pkey PRIMARY KEY (id_);


--
-- TOC entry 4044 (class 2606 OID 78388)
-- Name: act_ru_task act_ru_task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_ru_task_pkey PRIMARY KEY (id_);


--
-- TOC entry 4061 (class 2606 OID 78404)
-- Name: act_ru_variable act_ru_variable_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_ru_variable_pkey PRIMARY KEY (id_);


--
-- TOC entry 4087 (class 2606 OID 78623)
-- Name: act_ru_authorization act_uniq_auth_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_authorization
    ADD CONSTRAINT act_uniq_auth_group UNIQUE (type_, group_id_, resource_type_, resource_id_);


--
-- TOC entry 4089 (class 2606 OID 78621)
-- Name: act_ru_authorization act_uniq_auth_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_authorization
    ADD CONSTRAINT act_uniq_auth_user UNIQUE (type_, user_id_, resource_type_, resource_id_);


--
-- TOC entry 4261 (class 2606 OID 78943)
-- Name: act_id_tenant_member act_uniq_tenant_memb_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_uniq_tenant_memb_group UNIQUE (tenant_id_, group_id_);


--
-- TOC entry 4263 (class 2606 OID 78941)
-- Name: act_id_tenant_member act_uniq_tenant_memb_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_uniq_tenant_memb_user UNIQUE (tenant_id_, user_id_);


--
-- TOC entry 4063 (class 2606 OID 78625)
-- Name: act_ru_variable act_uniq_variable; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_uniq_variable UNIQUE (var_scope_, name_);


--
-- TOC entry 3881 (class 2606 OID 77512)
-- Name: action_form action_form_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY action_form
    ADD CONSTRAINT action_form_pkey PRIMARY KEY (id);


--
-- TOC entry 3883 (class 2606 OID 77523)
-- Name: activity activity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT activity_pkey PRIMARY KEY (id);


--
-- TOC entry 3885 (class 2606 OID 77528)
-- Name: activity_user activity_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity_user
    ADD CONSTRAINT activity_user_pkey PRIMARY KEY (activity_id, user_id);


--
-- TOC entry 3851 (class 2606 OID 77334)
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);


--
-- TOC entry 3889 (class 2606 OID 77550)
-- Name: campaign_log_record campaign_log_record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campaign_log_record
    ADD CONSTRAINT campaign_log_record_pkey PRIMARY KEY (id);


--
-- TOC entry 3887 (class 2606 OID 77539)
-- Name: campaign campaign_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campaign
    ADD CONSTRAINT campaign_pkey PRIMARY KEY (id);


--
-- TOC entry 3891 (class 2606 OID 77561)
-- Name: campaign_tracking_url campaign_tracking_url_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campaign_tracking_url
    ADD CONSTRAINT campaign_tracking_url_pkey PRIMARY KEY (id);


--
-- TOC entry 4328 (class 2606 OID 79185)
-- Name: college_test2 college_test2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY college_test2
    ADD CONSTRAINT college_test2_pkey PRIMARY KEY (id);


--
-- TOC entry 4326 (class 2606 OID 79147)
-- Name: college_test college_test_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY college_test
    ADD CONSTRAINT college_test_pkey PRIMARY KEY (id);


--
-- TOC entry 3893 (class 2606 OID 77572)
-- Name: column_metadata column_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY column_metadata
    ADD CONSTRAINT column_metadata_pkey PRIMARY KEY (id);


--
-- TOC entry 3899 (class 2606 OID 77591)
-- Name: compact_layout_button compact_layout_button_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compact_layout_button
    ADD CONSTRAINT compact_layout_button_pkey PRIMARY KEY (id);


--
-- TOC entry 3901 (class 2606 OID 77599)
-- Name: compact_layout_column compact_layout_column_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compact_layout_column
    ADD CONSTRAINT compact_layout_column_pkey PRIMARY KEY (id);


--
-- TOC entry 3897 (class 2606 OID 77583)
-- Name: compact_layout compact_layout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compact_layout
    ADD CONSTRAINT compact_layout_pkey PRIMARY KEY (id);


--
-- TOC entry 3903 (class 2606 OID 77610)
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- TOC entry 3909 (class 2606 OID 77629)
-- Name: create_record_field_value create_record_field_value_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY create_record_field_value
    ADD CONSTRAINT create_record_field_value_pkey PRIMARY KEY (id);


--
-- TOC entry 3905 (class 2606 OID 77618)
-- Name: create_record create_record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY create_record
    ADD CONSTRAINT create_record_pkey PRIMARY KEY (id);


--
-- TOC entry 3853 (class 2606 OID 77345)
-- Name: crm_user crm_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY crm_user
    ADD CONSTRAINT crm_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3911 (class 2606 OID 77637)
-- Name: currency currency_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (id);


--
-- TOC entry 3913 (class 2606 OID 77648)
-- Name: dml_workflow dml_workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dml_workflow
    ADD CONSTRAINT dml_workflow_pkey PRIMARY KEY (id);


--
-- TOC entry 3915 (class 2606 OID 77659)
-- Name: duplicate_action duplicate_action_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_action
    ADD CONSTRAINT duplicate_action_pkey PRIMARY KEY (id);


--
-- TOC entry 3917 (class 2606 OID 77667)
-- Name: duplicate_matching_rule duplicate_matching_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_matching_rule
    ADD CONSTRAINT duplicate_matching_rule_pkey PRIMARY KEY (id);


--
-- TOC entry 3919 (class 2606 OID 77681)
-- Name: duplicate_rule duplicate_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_rule
    ADD CONSTRAINT duplicate_rule_pkey PRIMARY KEY (id);


--
-- TOC entry 4330 (class 2606 OID 79227)
-- Name: e_account e_account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY e_account
    ADD CONSTRAINT e_account_pkey PRIMARY KEY (id);


--
-- TOC entry 4332 (class 2606 OID 79235)
-- Name: e_contact e_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY e_contact
    ADD CONSTRAINT e_contact_pkey PRIMARY KEY (id);


--
-- TOC entry 3921 (class 2606 OID 77692)
-- Name: email_placeholder email_placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY email_placeholder
    ADD CONSTRAINT email_placeholder_pkey PRIMARY KEY (id);


--
-- TOC entry 3923 (class 2606 OID 77703)
-- Name: email_template email_template_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);


--
-- TOC entry 3859 (class 2606 OID 77356)
-- Name: field_permission field_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY field_permission
    ADD CONSTRAINT field_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3925 (class 2606 OID 77715)
-- Name: lead lead_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lead
    ADD CONSTRAINT lead_pkey PRIMARY KEY (id);


--
-- TOC entry 3929 (class 2606 OID 77734)
-- Name: list_view_layout_column list_view_layout_column_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY list_view_layout_column
    ADD CONSTRAINT list_view_layout_column_pkey PRIMARY KEY (id);


--
-- TOC entry 3927 (class 2606 OID 77726)
-- Name: list_view_layout list_view_layout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY list_view_layout
    ADD CONSTRAINT list_view_layout_pkey PRIMARY KEY (id);


--
-- TOC entry 3933 (class 2606 OID 77753)
-- Name: mapping_rule_column mapping_rule_column_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT mapping_rule_column_pkey PRIMARY KEY (id);


--
-- TOC entry 3931 (class 2606 OID 77742)
-- Name: mapping_rule mapping_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule
    ADD CONSTRAINT mapping_rule_pkey PRIMARY KEY (id);


--
-- TOC entry 3945 (class 2606 OID 77767)
-- Name: matching_rule matching_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matching_rule
    ADD CONSTRAINT matching_rule_pkey PRIMARY KEY (id);


--
-- TOC entry 3861 (class 2606 OID 77364)
-- Name: object_permission object_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY object_permission
    ADD CONSTRAINT object_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3947 (class 2606 OID 77778)
-- Name: opportunity opportunity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opportunity
    ADD CONSTRAINT opportunity_pkey PRIMARY KEY (id);


--
-- TOC entry 3949 (class 2606 OID 77789)
-- Name: opportunity_product opportunity_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opportunity_product
    ADD CONSTRAINT opportunity_product_pkey PRIMARY KEY (id);


--
-- TOC entry 3863 (class 2606 OID 77375)
-- Name: organisation organisation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organisation
    ADD CONSTRAINT organisation_pkey PRIMARY KEY (id);


--
-- TOC entry 3953 (class 2606 OID 77805)
-- Name: page_layout_column page_layout_column_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_layout_column
    ADD CONSTRAINT page_layout_column_pkey PRIMARY KEY (id);


--
-- TOC entry 3951 (class 2606 OID 77797)
-- Name: page_layout page_layout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_layout
    ADD CONSTRAINT page_layout_pkey PRIMARY KEY (id);


--
-- TOC entry 3957 (class 2606 OID 77824)
-- Name: pricebook_entries pricebook_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pricebook_entries
    ADD CONSTRAINT pricebook_entries_pkey PRIMARY KEY (id);


--
-- TOC entry 3955 (class 2606 OID 77816)
-- Name: pricebook pricebook_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pricebook
    ADD CONSTRAINT pricebook_pkey PRIMARY KEY (id);


--
-- TOC entry 3867 (class 2606 OID 77383)
-- Name: privilege privilege_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY privilege
    ADD CONSTRAINT privilege_pkey PRIMARY KEY (id);


--
-- TOC entry 3963 (class 2606 OID 77846)
-- Name: product_family product_family_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_family
    ADD CONSTRAINT product_family_pkey PRIMARY KEY (id);


--
-- TOC entry 3961 (class 2606 OID 77835)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 3871 (class 2606 OID 77394)
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);


--
-- TOC entry 3967 (class 2606 OID 77862)
-- Name: related_layout_column related_layout_column_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_layout_column
    ADD CONSTRAINT related_layout_column_pkey PRIMARY KEY (id);


--
-- TOC entry 3965 (class 2606 OID 77854)
-- Name: related_layout related_layout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_layout
    ADD CONSTRAINT related_layout_pkey PRIMARY KEY (id);


--
-- TOC entry 3969 (class 2606 OID 77870)
-- Name: related_table_meta_data related_table_meta_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_table_meta_data
    ADD CONSTRAINT related_table_meta_data_pkey PRIMARY KEY (id);


--
-- TOC entry 3971 (class 2606 OID 77881)
-- Name: relationship_metadata relationship_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relationship_metadata
    ADD CONSTRAINT relationship_metadata_pkey PRIMARY KEY (id);


--
-- TOC entry 3873 (class 2606 OID 77405)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- TOC entry 3973 (class 2606 OID 77892)
-- Name: send_email send_email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY send_email
    ADD CONSTRAINT send_email_pkey PRIMARY KEY (id);


--
-- TOC entry 3975 (class 2606 OID 77903)
-- Name: table_metadata table_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY table_metadata
    ADD CONSTRAINT table_metadata_pkey PRIMARY KEY (id);


--
-- TOC entry 3895 (class 2606 OID 77957)
-- Name: column_validation uk_3u2el6ie6x5n8eb87u2g8nltt; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY column_validation
    ADD CONSTRAINT uk_3u2el6ie6x5n8eb87u2g8nltt UNIQUE (column_validation_id);


--
-- TOC entry 3865 (class 2606 OID 77421)
-- Name: organisation uk_4cj3idr72jukvc49m5dgo9jmo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY organisation
    ADD CONSTRAINT uk_4cj3idr72jukvc49m5dgo9jmo UNIQUE (name);


--
-- TOC entry 3855 (class 2606 OID 77419)
-- Name: crm_user uk_4uwsc0mlvswouyrq5k05xan15; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY crm_user
    ADD CONSTRAINT uk_4uwsc0mlvswouyrq5k05xan15 UNIQUE (username);


--
-- TOC entry 3977 (class 2606 OID 77973)
-- Name: table_metadata uk_9d25vd5jfwnaunlgdgw9e0qph; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY table_metadata
    ADD CONSTRAINT uk_9d25vd5jfwnaunlgdgw9e0qph UNIQUE (table_name);


--
-- TOC entry 3857 (class 2606 OID 77417)
-- Name: crm_user uk_fcosfimsg2sguoc8dnhb8r0ca; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY crm_user
    ADD CONSTRAINT uk_fcosfimsg2sguoc8dnhb8r0ca UNIQUE (email);


--
-- TOC entry 3869 (class 2606 OID 77423)
-- Name: privilege uk_h7iwbdg4ev8mgvmij76881tx8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY privilege
    ADD CONSTRAINT uk_h7iwbdg4ev8mgvmij76881tx8 UNIQUE (name);


--
-- TOC entry 3935 (class 2606 OID 77961)
-- Name: mapping_rule_column uk_it4xrlxt1am0p5yqid56k2lqi; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT uk_it4xrlxt1am0p5yqid56k2lqi UNIQUE (account_column);


--
-- TOC entry 3937 (class 2606 OID 77963)
-- Name: mapping_rule_column uk_j7dahyh7gxqyf4c4vl01nj22a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT uk_j7dahyh7gxqyf4c4vl01nj22a UNIQUE (contact_column);


--
-- TOC entry 3943 (class 2606 OID 77969)
-- Name: mapping_rule_column_relation uk_jqpfwk5ygdylvcdf74hk6s58t; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule_column_relation
    ADD CONSTRAINT uk_jqpfwk5ygdylvcdf74hk6s58t UNIQUE (column_id);


--
-- TOC entry 3939 (class 2606 OID 77965)
-- Name: mapping_rule_column uk_ohweqwubythkhcs2k6ktpgg5e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT uk_ohweqwubythkhcs2k6ktpgg5e UNIQUE (lead_column);


--
-- TOC entry 3981 (class 2606 OID 77975)
-- Name: update_record_field_relation uk_plwgmt1ycgkfinl4r5bskkvjn; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY update_record_field_relation
    ADD CONSTRAINT uk_plwgmt1ycgkfinl4r5bskkvjn UNIQUE (field_value_id);


--
-- TOC entry 3941 (class 2606 OID 77967)
-- Name: mapping_rule_column uk_s8pwn8bbxvxjh4s82n12s3moj; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule_column
    ADD CONSTRAINT uk_s8pwn8bbxvxjh4s82n12s3moj UNIQUE (opportunity_column);


--
-- TOC entry 3907 (class 2606 OID 77959)
-- Name: create_record_field_relation uk_tgcugcanerptajfy8xlhlkcv5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY create_record_field_relation
    ADD CONSTRAINT uk_tgcugcanerptajfy8xlhlkcv5 UNIQUE (field_value_id);


--
-- TOC entry 3959 (class 2606 OID 77971)
-- Name: pricebook_entries ukjieu628j122o2pw80xwv3icba; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pricebook_entries
    ADD CONSTRAINT ukjieu628j122o2pw80xwv3icba UNIQUE (product_id, pricebook_id);


--
-- TOC entry 3983 (class 2606 OID 77922)
-- Name: update_record_field_value update_record_field_value_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY update_record_field_value
    ADD CONSTRAINT update_record_field_value_pkey PRIMARY KEY (id);


--
-- TOC entry 3979 (class 2606 OID 77911)
-- Name: update_record update_record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY update_record
    ADD CONSTRAINT update_record_pkey PRIMARY KEY (id);


--
-- TOC entry 3875 (class 2606 OID 77410)
-- Name: user_reporting user_reporting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_reporting
    ADD CONSTRAINT user_reporting_pkey PRIMARY KEY (reporter_id, reported_to_id);


--
-- TOC entry 3877 (class 2606 OID 77415)
-- Name: users_privileges users_privileges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users_privileges
    ADD CONSTRAINT users_privileges_pkey PRIMARY KEY (user_id, privilege_id);


--
-- TOC entry 3985 (class 2606 OID 77933)
-- Name: validation validation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY validation
    ADD CONSTRAINT validation_pkey PRIMARY KEY (id);


--
-- TOC entry 3987 (class 2606 OID 77944)
-- Name: workflow_condition workflow_condition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflow_condition
    ADD CONSTRAINT workflow_condition_pkey PRIMARY KEY (id);


--
-- TOC entry 3989 (class 2606 OID 77955)
-- Name: workflow_rule workflow_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflow_rule
    ADD CONSTRAINT workflow_rule_pkey PRIMARY KEY (id);


--
-- TOC entry 4231 (class 1259 OID 78863)
-- Name: act_hi_bat_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_hi_bat_rm_time ON act_hi_batch USING btree (removal_time_);


--
-- TOC entry 4236 (class 1259 OID 78867)
-- Name: act_hi_ext_task_log_proc_def_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_hi_ext_task_log_proc_def_key ON act_hi_ext_task_log USING btree (proc_def_key_);


--
-- TOC entry 4237 (class 1259 OID 78866)
-- Name: act_hi_ext_task_log_procdef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_hi_ext_task_log_procdef ON act_hi_ext_task_log USING btree (proc_def_id_);


--
-- TOC entry 4238 (class 1259 OID 78865)
-- Name: act_hi_ext_task_log_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_hi_ext_task_log_procinst ON act_hi_ext_task_log USING btree (proc_inst_id_);


--
-- TOC entry 4239 (class 1259 OID 78870)
-- Name: act_hi_ext_task_log_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_hi_ext_task_log_rm_time ON act_hi_ext_task_log USING btree (removal_time_);


--
-- TOC entry 4240 (class 1259 OID 78864)
-- Name: act_hi_ext_task_log_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_hi_ext_task_log_root_pi ON act_hi_ext_task_log USING btree (root_proc_inst_id_);


--
-- TOC entry 4241 (class 1259 OID 78868)
-- Name: act_hi_ext_task_log_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_hi_ext_task_log_tenant_id ON act_hi_ext_task_log USING btree (tenant_id_);


--
-- TOC entry 4045 (class 1259 OID 78535)
-- Name: act_idx_athrz_procedef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_athrz_procedef ON act_ru_identitylink USING btree (proc_def_id_);


--
-- TOC entry 4080 (class 1259 OID 78497)
-- Name: act_idx_auth_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_auth_group_id ON act_ru_authorization USING btree (group_id_);


--
-- TOC entry 4081 (class 1259 OID 78665)
-- Name: act_idx_auth_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_auth_resource_id ON act_ru_authorization USING btree (resource_id_);


--
-- TOC entry 4082 (class 1259 OID 78679)
-- Name: act_idx_auth_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_auth_rm_time ON act_ru_authorization USING btree (removal_time_);


--
-- TOC entry 4083 (class 1259 OID 78678)
-- Name: act_idx_auth_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_auth_root_pi ON act_ru_authorization USING btree (root_proc_inst_id_);


--
-- TOC entry 4051 (class 1259 OID 78654)
-- Name: act_idx_batch_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_batch_id ON act_ru_variable USING btree (batch_id_);


--
-- TOC entry 4109 (class 1259 OID 78643)
-- Name: act_idx_batch_job_def; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_batch_job_def ON act_ru_batch USING btree (batch_job_def_id_);


--
-- TOC entry 4110 (class 1259 OID 78637)
-- Name: act_idx_batch_monitor_job_def; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_batch_monitor_job_def ON act_ru_batch USING btree (monitor_job_def_id_);


--
-- TOC entry 4111 (class 1259 OID 78631)
-- Name: act_idx_batch_seed_job_def; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_batch_seed_job_def ON act_ru_batch USING btree (seed_job_def_id_);


--
-- TOC entry 3994 (class 1259 OID 78499)
-- Name: act_idx_bytear_depl; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_bytear_depl ON act_ge_bytearray USING btree (deployment_id_);


--
-- TOC entry 3995 (class 1259 OID 78669)
-- Name: act_idx_bytearray_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_bytearray_name ON act_ge_bytearray USING btree (name_);


--
-- TOC entry 3996 (class 1259 OID 78668)
-- Name: act_idx_bytearray_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_bytearray_rm_time ON act_ge_bytearray USING btree (removal_time_);


--
-- TOC entry 3997 (class 1259 OID 78667)
-- Name: act_idx_bytearray_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_bytearray_root_pi ON act_ge_bytearray USING btree (root_proc_inst_id_);


--
-- TOC entry 4264 (class 1259 OID 79041)
-- Name: act_idx_case_def_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_case_def_tenant_id ON act_re_case_def USING btree (tenant_id_);


--
-- TOC entry 4267 (class 1259 OID 78999)
-- Name: act_idx_case_exe_case_def; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_case_exe_case_def ON act_ru_case_execution USING btree (case_def_id_);


--
-- TOC entry 4268 (class 1259 OID 78987)
-- Name: act_idx_case_exe_case_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_case_exe_case_inst ON act_ru_case_execution USING btree (case_inst_id_);


--
-- TOC entry 4269 (class 1259 OID 78993)
-- Name: act_idx_case_exe_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_case_exe_parent ON act_ru_case_execution USING btree (parent_id_);


--
-- TOC entry 4270 (class 1259 OID 78986)
-- Name: act_idx_case_exec_buskey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_case_exec_buskey ON act_ru_case_execution USING btree (business_key_);


--
-- TOC entry 4271 (class 1259 OID 79042)
-- Name: act_idx_case_exec_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_case_exec_tenant_id ON act_ru_case_execution USING btree (tenant_id_);


--
-- TOC entry 4274 (class 1259 OID 79035)
-- Name: act_idx_case_sentry_case_exec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_case_sentry_case_exec ON act_ru_case_sentry_part USING btree (case_exec_id_);


--
-- TOC entry 4275 (class 1259 OID 79029)
-- Name: act_idx_case_sentry_case_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_case_sentry_case_inst ON act_ru_case_sentry_part USING btree (case_inst_id_);


--
-- TOC entry 4291 (class 1259 OID 79090)
-- Name: act_idx_dec_def_req_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_dec_def_req_id ON act_re_decision_def USING btree (dec_req_id_);


--
-- TOC entry 4292 (class 1259 OID 79089)
-- Name: act_idx_dec_def_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_dec_def_tenant_id ON act_re_decision_def USING btree (tenant_id_);


--
-- TOC entry 4295 (class 1259 OID 79091)
-- Name: act_idx_dec_req_def_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_dec_req_def_tenant_id ON act_re_decision_req_def USING btree (tenant_id_);


--
-- TOC entry 4000 (class 1259 OID 78670)
-- Name: act_idx_deployment_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_deployment_name ON act_re_deployment USING btree (name_);


--
-- TOC entry 4001 (class 1259 OID 78671)
-- Name: act_idx_deployment_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_deployment_tenant_id ON act_re_deployment USING btree (tenant_id_);


--
-- TOC entry 4064 (class 1259 OID 78583)
-- Name: act_idx_event_subscr; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_event_subscr ON act_ru_event_subscr USING btree (execution_id_);


--
-- TOC entry 4065 (class 1259 OID 78475)
-- Name: act_idx_event_subscr_config_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_event_subscr_config_ ON act_ru_event_subscr USING btree (configuration_);


--
-- TOC entry 4066 (class 1259 OID 78674)
-- Name: act_idx_event_subscr_evt_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_event_subscr_evt_name ON act_ru_event_subscr USING btree (event_name_);


--
-- TOC entry 4067 (class 1259 OID 78476)
-- Name: act_idx_event_subscr_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_event_subscr_tenant_id ON act_ru_event_subscr USING btree (tenant_id_);


--
-- TOC entry 4004 (class 1259 OID 78511)
-- Name: act_idx_exe_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_exe_parent ON act_ru_execution USING btree (parent_id_);


--
-- TOC entry 4005 (class 1259 OID 78523)
-- Name: act_idx_exe_procdef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_exe_procdef ON act_ru_execution USING btree (proc_def_id_);


--
-- TOC entry 4006 (class 1259 OID 78505)
-- Name: act_idx_exe_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_exe_procinst ON act_ru_execution USING btree (proc_inst_id_);


--
-- TOC entry 4007 (class 1259 OID 78465)
-- Name: act_idx_exe_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_exe_root_pi ON act_ru_execution USING btree (root_proc_inst_id_);


--
-- TOC entry 4008 (class 1259 OID 78517)
-- Name: act_idx_exe_super; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_exe_super ON act_ru_execution USING btree (super_exec_);


--
-- TOC entry 4009 (class 1259 OID 78466)
-- Name: act_idx_exec_buskey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_exec_buskey ON act_ru_execution USING btree (business_key_);


--
-- TOC entry 4010 (class 1259 OID 78467)
-- Name: act_idx_exec_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_exec_tenant_id ON act_ru_execution USING btree (tenant_id_);


--
-- TOC entry 4102 (class 1259 OID 78496)
-- Name: act_idx_ext_task_err_details; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_ext_task_err_details ON act_ru_ext_task USING btree (error_details_id_);


--
-- TOC entry 4103 (class 1259 OID 78666)
-- Name: act_idx_ext_task_exec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_ext_task_exec ON act_ru_ext_task USING btree (execution_id_);


--
-- TOC entry 4104 (class 1259 OID 78495)
-- Name: act_idx_ext_task_priority; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_ext_task_priority ON act_ru_ext_task USING btree (priority_);


--
-- TOC entry 4105 (class 1259 OID 78494)
-- Name: act_idx_ext_task_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_ext_task_tenant_id ON act_ru_ext_task USING btree (tenant_id_);


--
-- TOC entry 4106 (class 1259 OID 78493)
-- Name: act_idx_ext_task_topic; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_ext_task_topic ON act_ru_ext_task USING btree (topic_name_);


--
-- TOC entry 4128 (class 1259 OID 78800)
-- Name: act_idx_hi_act_inst_comp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_act_inst_comp ON act_hi_actinst USING btree (execution_id_, act_id_, end_time_, id_);


--
-- TOC entry 4129 (class 1259 OID 78798)
-- Name: act_idx_hi_act_inst_end; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_act_inst_end ON act_hi_actinst USING btree (end_time_);


--
-- TOC entry 4130 (class 1259 OID 78803)
-- Name: act_idx_hi_act_inst_proc_def_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_act_inst_proc_def_key ON act_hi_actinst USING btree (proc_def_key_);


--
-- TOC entry 4131 (class 1259 OID 78799)
-- Name: act_idx_hi_act_inst_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_act_inst_procinst ON act_hi_actinst USING btree (proc_inst_id_, act_id_);


--
-- TOC entry 4132 (class 1259 OID 78805)
-- Name: act_idx_hi_act_inst_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_act_inst_rm_time ON act_hi_actinst USING btree (removal_time_);


--
-- TOC entry 4133 (class 1259 OID 78797)
-- Name: act_idx_hi_act_inst_start_end; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_act_inst_start_end ON act_hi_actinst USING btree (start_time_, end_time_);


--
-- TOC entry 4134 (class 1259 OID 78801)
-- Name: act_idx_hi_act_inst_stats; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_act_inst_stats ON act_hi_actinst USING btree (proc_def_id_, proc_inst_id_, act_id_, end_time_, act_inst_state_);


--
-- TOC entry 4135 (class 1259 OID 78802)
-- Name: act_idx_hi_act_inst_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_act_inst_tenant_id ON act_hi_actinst USING btree (tenant_id_);


--
-- TOC entry 4136 (class 1259 OID 78796)
-- Name: act_idx_hi_actinst_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_actinst_root_pi ON act_hi_actinst USING btree (root_proc_inst_id_);


--
-- TOC entry 4137 (class 1259 OID 78804)
-- Name: act_idx_hi_ai_pdefid_end_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_ai_pdefid_end_time ON act_hi_actinst USING btree (proc_def_id_, end_time_);


--
-- TOC entry 4195 (class 1259 OID 78880)
-- Name: act_idx_hi_attachment_content; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_attachment_content ON act_hi_attachment USING btree (content_id_);


--
-- TOC entry 4196 (class 1259 OID 78882)
-- Name: act_idx_hi_attachment_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_attachment_procinst ON act_hi_attachment USING btree (proc_inst_id_);


--
-- TOC entry 4197 (class 1259 OID 78884)
-- Name: act_idx_hi_attachment_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_attachment_rm_time ON act_hi_attachment USING btree (removal_time_);


--
-- TOC entry 4198 (class 1259 OID 78881)
-- Name: act_idx_hi_attachment_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_attachment_root_pi ON act_hi_attachment USING btree (root_proc_inst_id_);


--
-- TOC entry 4199 (class 1259 OID 78883)
-- Name: act_idx_hi_attachment_task; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_attachment_task ON act_hi_attachment USING btree (task_id_);


--
-- TOC entry 4287 (class 1259 OID 79066)
-- Name: act_idx_hi_cas_a_i_comp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_cas_a_i_comp ON act_hi_caseactinst USING btree (case_act_id_, end_time_, id_);


--
-- TOC entry 4288 (class 1259 OID 79064)
-- Name: act_idx_hi_cas_a_i_create; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_cas_a_i_create ON act_hi_caseactinst USING btree (create_time_);


--
-- TOC entry 4289 (class 1259 OID 79065)
-- Name: act_idx_hi_cas_a_i_end; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_cas_a_i_end ON act_hi_caseactinst USING btree (end_time_);


--
-- TOC entry 4290 (class 1259 OID 79067)
-- Name: act_idx_hi_cas_a_i_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_cas_a_i_tenant_id ON act_hi_caseactinst USING btree (tenant_id_);


--
-- TOC entry 4282 (class 1259 OID 79062)
-- Name: act_idx_hi_cas_i_buskey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_cas_i_buskey ON act_hi_caseinst USING btree (business_key_);


--
-- TOC entry 4283 (class 1259 OID 79061)
-- Name: act_idx_hi_cas_i_close; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_cas_i_close ON act_hi_caseinst USING btree (close_time_);


--
-- TOC entry 4284 (class 1259 OID 79063)
-- Name: act_idx_hi_cas_i_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_cas_i_tenant_id ON act_hi_caseinst USING btree (tenant_id_);


--
-- TOC entry 4150 (class 1259 OID 78839)
-- Name: act_idx_hi_casevar_case_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_casevar_case_inst ON act_hi_varinst USING btree (case_inst_id_);


--
-- TOC entry 4189 (class 1259 OID 78887)
-- Name: act_idx_hi_comment_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_comment_procinst ON act_hi_comment USING btree (proc_inst_id_);


--
-- TOC entry 4190 (class 1259 OID 78888)
-- Name: act_idx_hi_comment_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_comment_rm_time ON act_hi_comment USING btree (removal_time_);


--
-- TOC entry 4191 (class 1259 OID 78886)
-- Name: act_idx_hi_comment_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_comment_root_pi ON act_hi_comment USING btree (root_proc_inst_id_);


--
-- TOC entry 4192 (class 1259 OID 78885)
-- Name: act_idx_hi_comment_task; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_comment_task ON act_hi_comment USING btree (task_id_);


--
-- TOC entry 4315 (class 1259 OID 79130)
-- Name: act_idx_hi_dec_in_clause; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_in_clause ON act_hi_dec_in USING btree (dec_inst_id_, clause_id_);


--
-- TOC entry 4316 (class 1259 OID 79129)
-- Name: act_idx_hi_dec_in_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_in_inst ON act_hi_dec_in USING btree (dec_inst_id_);


--
-- TOC entry 4317 (class 1259 OID 79132)
-- Name: act_idx_hi_dec_in_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_in_rm_time ON act_hi_dec_in USING btree (removal_time_);


--
-- TOC entry 4318 (class 1259 OID 79131)
-- Name: act_idx_hi_dec_in_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_in_root_pi ON act_hi_dec_in USING btree (root_proc_inst_id_);


--
-- TOC entry 4300 (class 1259 OID 79120)
-- Name: act_idx_hi_dec_inst_act; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_act ON act_hi_decinst USING btree (act_id_);


--
-- TOC entry 4301 (class 1259 OID 79121)
-- Name: act_idx_hi_dec_inst_act_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_act_inst ON act_hi_decinst USING btree (act_inst_id_);


--
-- TOC entry 4302 (class 1259 OID 79119)
-- Name: act_idx_hi_dec_inst_ci; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_ci ON act_hi_decinst USING btree (case_inst_id_);


--
-- TOC entry 4303 (class 1259 OID 79116)
-- Name: act_idx_hi_dec_inst_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_id ON act_hi_decinst USING btree (dec_def_id_);


--
-- TOC entry 4304 (class 1259 OID 79117)
-- Name: act_idx_hi_dec_inst_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_key ON act_hi_decinst USING btree (dec_def_key_);


--
-- TOC entry 4305 (class 1259 OID 79118)
-- Name: act_idx_hi_dec_inst_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_pi ON act_hi_decinst USING btree (proc_inst_id_);


--
-- TOC entry 4306 (class 1259 OID 79125)
-- Name: act_idx_hi_dec_inst_req_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_req_id ON act_hi_decinst USING btree (dec_req_id_);


--
-- TOC entry 4307 (class 1259 OID 79126)
-- Name: act_idx_hi_dec_inst_req_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_req_key ON act_hi_decinst USING btree (dec_req_key_);


--
-- TOC entry 4308 (class 1259 OID 79128)
-- Name: act_idx_hi_dec_inst_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_rm_time ON act_hi_decinst USING btree (removal_time_);


--
-- TOC entry 4309 (class 1259 OID 79124)
-- Name: act_idx_hi_dec_inst_root_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_root_id ON act_hi_decinst USING btree (root_dec_inst_id_);


--
-- TOC entry 4310 (class 1259 OID 79127)
-- Name: act_idx_hi_dec_inst_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_root_pi ON act_hi_decinst USING btree (root_proc_inst_id_);


--
-- TOC entry 4311 (class 1259 OID 79123)
-- Name: act_idx_hi_dec_inst_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_tenant_id ON act_hi_decinst USING btree (tenant_id_);


--
-- TOC entry 4312 (class 1259 OID 79122)
-- Name: act_idx_hi_dec_inst_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_inst_time ON act_hi_decinst USING btree (eval_time_);


--
-- TOC entry 4321 (class 1259 OID 79133)
-- Name: act_idx_hi_dec_out_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_out_inst ON act_hi_dec_out USING btree (dec_inst_id_);


--
-- TOC entry 4322 (class 1259 OID 79136)
-- Name: act_idx_hi_dec_out_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_out_rm_time ON act_hi_dec_out USING btree (removal_time_);


--
-- TOC entry 4323 (class 1259 OID 79135)
-- Name: act_idx_hi_dec_out_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_out_root_pi ON act_hi_dec_out USING btree (root_proc_inst_id_);


--
-- TOC entry 4324 (class 1259 OID 79134)
-- Name: act_idx_hi_dec_out_rule; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_dec_out_rule ON act_hi_dec_out USING btree (rule_order_, clause_id_);


--
-- TOC entry 4163 (class 1259 OID 78816)
-- Name: act_idx_hi_detail_act_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_act_inst ON act_hi_detail USING btree (act_inst_id_);


--
-- TOC entry 4164 (class 1259 OID 78824)
-- Name: act_idx_hi_detail_bytear; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_bytear ON act_hi_detail USING btree (bytearray_id_);


--
-- TOC entry 4165 (class 1259 OID 78818)
-- Name: act_idx_hi_detail_case_exec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_case_exec ON act_hi_detail USING btree (case_execution_id_);


--
-- TOC entry 4166 (class 1259 OID 78817)
-- Name: act_idx_hi_detail_case_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_case_inst ON act_hi_detail USING btree (case_inst_id_);


--
-- TOC entry 4167 (class 1259 OID 78820)
-- Name: act_idx_hi_detail_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_name ON act_hi_detail USING btree (name_);


--
-- TOC entry 4168 (class 1259 OID 78823)
-- Name: act_idx_hi_detail_proc_def_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_proc_def_key ON act_hi_detail USING btree (proc_def_key_);


--
-- TOC entry 4169 (class 1259 OID 78815)
-- Name: act_idx_hi_detail_proc_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_proc_inst ON act_hi_detail USING btree (proc_inst_id_);


--
-- TOC entry 4170 (class 1259 OID 78825)
-- Name: act_idx_hi_detail_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_rm_time ON act_hi_detail USING btree (removal_time_);


--
-- TOC entry 4171 (class 1259 OID 78814)
-- Name: act_idx_hi_detail_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_root_pi ON act_hi_detail USING btree (root_proc_inst_id_);


--
-- TOC entry 4172 (class 1259 OID 78826)
-- Name: act_idx_hi_detail_task_bytear; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_task_bytear ON act_hi_detail USING btree (bytearray_id_, task_id_);


--
-- TOC entry 4173 (class 1259 OID 78821)
-- Name: act_idx_hi_detail_task_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_task_id ON act_hi_detail USING btree (task_id_);


--
-- TOC entry 4174 (class 1259 OID 78822)
-- Name: act_idx_hi_detail_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_tenant_id ON act_hi_detail USING btree (tenant_id_);


--
-- TOC entry 4175 (class 1259 OID 78819)
-- Name: act_idx_hi_detail_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_time ON act_hi_detail USING btree (time_);


--
-- TOC entry 4176 (class 1259 OID 78827)
-- Name: act_idx_hi_detail_var_inst_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_detail_var_inst_id ON act_hi_detail USING btree (var_inst_id_);


--
-- TOC entry 4242 (class 1259 OID 78869)
-- Name: act_idx_hi_exttasklog_errordet; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_exttasklog_errordet ON act_hi_ext_task_log USING btree (error_details_id_);


--
-- TOC entry 4179 (class 1259 OID 78834)
-- Name: act_idx_hi_ident_link_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_ident_link_rm_time ON act_hi_identitylink USING btree (removal_time_);


--
-- TOC entry 4180 (class 1259 OID 78833)
-- Name: act_idx_hi_ident_link_task; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_ident_link_task ON act_hi_identitylink USING btree (task_id_);


--
-- TOC entry 4181 (class 1259 OID 78830)
-- Name: act_idx_hi_ident_lnk_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_ident_lnk_group ON act_hi_identitylink USING btree (group_id_);


--
-- TOC entry 4182 (class 1259 OID 78832)
-- Name: act_idx_hi_ident_lnk_proc_def_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_ident_lnk_proc_def_key ON act_hi_identitylink USING btree (proc_def_key_);


--
-- TOC entry 4183 (class 1259 OID 78828)
-- Name: act_idx_hi_ident_lnk_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_ident_lnk_root_pi ON act_hi_identitylink USING btree (root_proc_inst_id_);


--
-- TOC entry 4184 (class 1259 OID 78831)
-- Name: act_idx_hi_ident_lnk_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_ident_lnk_tenant_id ON act_hi_identitylink USING btree (tenant_id_);


--
-- TOC entry 4185 (class 1259 OID 78835)
-- Name: act_idx_hi_ident_lnk_timestamp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_ident_lnk_timestamp ON act_hi_identitylink USING btree (timestamp_);


--
-- TOC entry 4186 (class 1259 OID 78829)
-- Name: act_idx_hi_ident_lnk_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_ident_lnk_user ON act_hi_identitylink USING btree (user_id_);


--
-- TOC entry 4213 (class 1259 OID 78852)
-- Name: act_idx_hi_incident_create_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_incident_create_time ON act_hi_incident USING btree (create_time_);


--
-- TOC entry 4214 (class 1259 OID 78853)
-- Name: act_idx_hi_incident_end_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_incident_end_time ON act_hi_incident USING btree (end_time_);


--
-- TOC entry 4215 (class 1259 OID 78848)
-- Name: act_idx_hi_incident_proc_def_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_incident_proc_def_key ON act_hi_incident USING btree (proc_def_key_);


--
-- TOC entry 4216 (class 1259 OID 78850)
-- Name: act_idx_hi_incident_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_incident_procinst ON act_hi_incident USING btree (proc_inst_id_);


--
-- TOC entry 4217 (class 1259 OID 78851)
-- Name: act_idx_hi_incident_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_incident_rm_time ON act_hi_incident USING btree (removal_time_);


--
-- TOC entry 4218 (class 1259 OID 78849)
-- Name: act_idx_hi_incident_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_incident_root_pi ON act_hi_incident USING btree (root_proc_inst_id_);


--
-- TOC entry 4219 (class 1259 OID 78847)
-- Name: act_idx_hi_incident_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_incident_tenant_id ON act_hi_incident USING btree (tenant_id_);


--
-- TOC entry 4222 (class 1259 OID 78860)
-- Name: act_idx_hi_job_log_ex_stack; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_job_log_ex_stack ON act_hi_job_log USING btree (job_exception_stack_id_);


--
-- TOC entry 4223 (class 1259 OID 78862)
-- Name: act_idx_hi_job_log_job_conf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_job_log_job_conf ON act_hi_job_log USING btree (job_def_configuration_);


--
-- TOC entry 4224 (class 1259 OID 78858)
-- Name: act_idx_hi_job_log_job_def_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_job_log_job_def_id ON act_hi_job_log USING btree (job_def_id_);


--
-- TOC entry 4225 (class 1259 OID 78859)
-- Name: act_idx_hi_job_log_proc_def_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_job_log_proc_def_key ON act_hi_job_log USING btree (process_def_key_);


--
-- TOC entry 4226 (class 1259 OID 78856)
-- Name: act_idx_hi_job_log_procdef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_job_log_procdef ON act_hi_job_log USING btree (process_def_id_);


--
-- TOC entry 4227 (class 1259 OID 78855)
-- Name: act_idx_hi_job_log_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_job_log_procinst ON act_hi_job_log USING btree (process_instance_id_);


--
-- TOC entry 4228 (class 1259 OID 78861)
-- Name: act_idx_hi_job_log_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_job_log_rm_time ON act_hi_job_log USING btree (removal_time_);


--
-- TOC entry 4229 (class 1259 OID 78854)
-- Name: act_idx_hi_job_log_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_job_log_root_pi ON act_hi_job_log USING btree (root_proc_inst_id_);


--
-- TOC entry 4230 (class 1259 OID 78857)
-- Name: act_idx_hi_job_log_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_job_log_tenant_id ON act_hi_job_log USING btree (tenant_id_);


--
-- TOC entry 4202 (class 1259 OID 78879)
-- Name: act_idx_hi_op_log_entity_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_op_log_entity_type ON act_hi_op_log USING btree (entity_type_);


--
-- TOC entry 4203 (class 1259 OID 78878)
-- Name: act_idx_hi_op_log_op_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_op_log_op_type ON act_hi_op_log USING btree (operation_type_);


--
-- TOC entry 4204 (class 1259 OID 78873)
-- Name: act_idx_hi_op_log_procdef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_op_log_procdef ON act_hi_op_log USING btree (proc_def_id_);


--
-- TOC entry 4205 (class 1259 OID 78872)
-- Name: act_idx_hi_op_log_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_op_log_procinst ON act_hi_op_log USING btree (proc_inst_id_);


--
-- TOC entry 4206 (class 1259 OID 78875)
-- Name: act_idx_hi_op_log_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_op_log_rm_time ON act_hi_op_log USING btree (removal_time_);


--
-- TOC entry 4207 (class 1259 OID 78871)
-- Name: act_idx_hi_op_log_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_op_log_root_pi ON act_hi_op_log USING btree (root_proc_inst_id_);


--
-- TOC entry 4208 (class 1259 OID 78874)
-- Name: act_idx_hi_op_log_task; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_op_log_task ON act_hi_op_log USING btree (task_id_);


--
-- TOC entry 4209 (class 1259 OID 78876)
-- Name: act_idx_hi_op_log_timestamp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_op_log_timestamp ON act_hi_op_log USING btree (timestamp_);


--
-- TOC entry 4210 (class 1259 OID 78877)
-- Name: act_idx_hi_op_log_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_op_log_user_id ON act_hi_op_log USING btree (user_id_);


--
-- TOC entry 4118 (class 1259 OID 78793)
-- Name: act_idx_hi_pi_pdefid_end_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_pi_pdefid_end_time ON act_hi_procinst USING btree (proc_def_id_, end_time_);


--
-- TOC entry 4119 (class 1259 OID 78789)
-- Name: act_idx_hi_pro_i_buskey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_pro_i_buskey ON act_hi_procinst USING btree (business_key_);


--
-- TOC entry 4120 (class 1259 OID 78788)
-- Name: act_idx_hi_pro_inst_end; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_pro_inst_end ON act_hi_procinst USING btree (end_time_);


--
-- TOC entry 4121 (class 1259 OID 78791)
-- Name: act_idx_hi_pro_inst_proc_def_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_pro_inst_proc_def_key ON act_hi_procinst USING btree (proc_def_key_);


--
-- TOC entry 4122 (class 1259 OID 78792)
-- Name: act_idx_hi_pro_inst_proc_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_pro_inst_proc_time ON act_hi_procinst USING btree (start_time_, end_time_);


--
-- TOC entry 4123 (class 1259 OID 78795)
-- Name: act_idx_hi_pro_inst_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_pro_inst_rm_time ON act_hi_procinst USING btree (removal_time_);


--
-- TOC entry 4124 (class 1259 OID 78794)
-- Name: act_idx_hi_pro_inst_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_pro_inst_root_pi ON act_hi_procinst USING btree (root_proc_inst_id_);


--
-- TOC entry 4125 (class 1259 OID 78790)
-- Name: act_idx_hi_pro_inst_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_pro_inst_tenant_id ON act_hi_procinst USING btree (tenant_id_);


--
-- TOC entry 4151 (class 1259 OID 78838)
-- Name: act_idx_hi_procvar_name_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_procvar_name_type ON act_hi_varinst USING btree (name_, var_type_);


--
-- TOC entry 4152 (class 1259 OID 78837)
-- Name: act_idx_hi_procvar_proc_inst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_procvar_proc_inst ON act_hi_varinst USING btree (proc_inst_id_);


--
-- TOC entry 4140 (class 1259 OID 78813)
-- Name: act_idx_hi_task_inst_end; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_task_inst_end ON act_hi_taskinst USING btree (end_time_);


--
-- TOC entry 4141 (class 1259 OID 78808)
-- Name: act_idx_hi_task_inst_proc_def_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_task_inst_proc_def_key ON act_hi_taskinst USING btree (proc_def_key_);


--
-- TOC entry 4142 (class 1259 OID 78811)
-- Name: act_idx_hi_task_inst_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_task_inst_rm_time ON act_hi_taskinst USING btree (removal_time_);


--
-- TOC entry 4143 (class 1259 OID 78812)
-- Name: act_idx_hi_task_inst_start; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_task_inst_start ON act_hi_taskinst USING btree (start_time_);


--
-- TOC entry 4144 (class 1259 OID 78807)
-- Name: act_idx_hi_task_inst_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_task_inst_tenant_id ON act_hi_taskinst USING btree (tenant_id_);


--
-- TOC entry 4145 (class 1259 OID 78809)
-- Name: act_idx_hi_taskinst_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_taskinst_procinst ON act_hi_taskinst USING btree (proc_inst_id_);


--
-- TOC entry 4146 (class 1259 OID 78806)
-- Name: act_idx_hi_taskinst_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_taskinst_root_pi ON act_hi_taskinst USING btree (root_proc_inst_id_);


--
-- TOC entry 4147 (class 1259 OID 78810)
-- Name: act_idx_hi_taskinstid_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_taskinstid_procinst ON act_hi_taskinst USING btree (id_, proc_inst_id_);


--
-- TOC entry 4153 (class 1259 OID 78841)
-- Name: act_idx_hi_var_inst_proc_def_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_var_inst_proc_def_key ON act_hi_varinst USING btree (proc_def_key_);


--
-- TOC entry 4154 (class 1259 OID 78840)
-- Name: act_idx_hi_var_inst_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_var_inst_tenant_id ON act_hi_varinst USING btree (tenant_id_);


--
-- TOC entry 4155 (class 1259 OID 78844)
-- Name: act_idx_hi_var_pi_name_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_var_pi_name_type ON act_hi_varinst USING btree (proc_inst_id_, name_, var_type_);


--
-- TOC entry 4156 (class 1259 OID 78846)
-- Name: act_idx_hi_varinst_act_inst_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_varinst_act_inst_id ON act_hi_varinst USING btree (act_inst_id_);


--
-- TOC entry 4157 (class 1259 OID 78842)
-- Name: act_idx_hi_varinst_bytear; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_varinst_bytear ON act_hi_varinst USING btree (bytearray_id_);


--
-- TOC entry 4158 (class 1259 OID 78845)
-- Name: act_idx_hi_varinst_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_varinst_name ON act_hi_varinst USING btree (name_);


--
-- TOC entry 4159 (class 1259 OID 78843)
-- Name: act_idx_hi_varinst_rm_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_varinst_rm_time ON act_hi_varinst USING btree (removal_time_);


--
-- TOC entry 4160 (class 1259 OID 78836)
-- Name: act_idx_hi_varinst_root_pi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_hi_varinst_root_pi ON act_hi_varinst USING btree (root_proc_inst_id_);


--
-- TOC entry 4046 (class 1259 OID 78474)
-- Name: act_idx_ident_lnk_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_ident_lnk_group ON act_ru_identitylink USING btree (group_id_);


--
-- TOC entry 4047 (class 1259 OID 78473)
-- Name: act_idx_ident_lnk_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_ident_lnk_user ON act_ru_identitylink USING btree (user_id_);


--
-- TOC entry 4070 (class 1259 OID 78660)
-- Name: act_idx_inc_causeincid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_inc_causeincid ON act_ru_incident USING btree (cause_incident_id_);


--
-- TOC entry 4071 (class 1259 OID 78480)
-- Name: act_idx_inc_configuration; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_inc_configuration ON act_ru_incident USING btree (configuration_);


--
-- TOC entry 4072 (class 1259 OID 78661)
-- Name: act_idx_inc_exid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_inc_exid ON act_ru_incident USING btree (execution_id_);


--
-- TOC entry 4073 (class 1259 OID 78614)
-- Name: act_idx_inc_job_def; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_inc_job_def ON act_ru_incident USING btree (job_def_id_);


--
-- TOC entry 4074 (class 1259 OID 78662)
-- Name: act_idx_inc_procdefid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_inc_procdefid ON act_ru_incident USING btree (proc_def_id_);


--
-- TOC entry 4075 (class 1259 OID 78663)
-- Name: act_idx_inc_procinstid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_inc_procinstid ON act_ru_incident USING btree (proc_inst_id_);


--
-- TOC entry 4076 (class 1259 OID 78664)
-- Name: act_idx_inc_rootcauseincid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_inc_rootcauseincid ON act_ru_incident USING btree (root_cause_incident_id_);


--
-- TOC entry 4077 (class 1259 OID 78481)
-- Name: act_idx_inc_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_inc_tenant_id ON act_ru_incident USING btree (tenant_id_);


--
-- TOC entry 4013 (class 1259 OID 78577)
-- Name: act_idx_job_exception; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_job_exception ON act_ru_job USING btree (exception_stack_id_);


--
-- TOC entry 4014 (class 1259 OID 78482)
-- Name: act_idx_job_execution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_job_execution_id ON act_ru_job USING btree (execution_id_);


--
-- TOC entry 4015 (class 1259 OID 78483)
-- Name: act_idx_job_handler; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_job_handler ON act_ru_job USING btree (handler_type_, handler_cfg_);


--
-- TOC entry 4016 (class 1259 OID 78673)
-- Name: act_idx_job_handler_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_job_handler_type ON act_ru_job USING btree (handler_type_);


--
-- TOC entry 4017 (class 1259 OID 78498)
-- Name: act_idx_job_job_def_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_job_job_def_id ON act_ru_job USING btree (job_def_id_);


--
-- TOC entry 4018 (class 1259 OID 78484)
-- Name: act_idx_job_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_job_procinst ON act_ru_job USING btree (process_instance_id_);


--
-- TOC entry 4019 (class 1259 OID 78485)
-- Name: act_idx_job_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_job_tenant_id ON act_ru_job USING btree (tenant_id_);


--
-- TOC entry 4022 (class 1259 OID 78672)
-- Name: act_idx_jobdef_proc_def_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_jobdef_proc_def_id ON act_ru_jobdef USING btree (proc_def_id_);


--
-- TOC entry 4023 (class 1259 OID 78486)
-- Name: act_idx_jobdef_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_jobdef_tenant_id ON act_ru_jobdef USING btree (tenant_id_);


--
-- TOC entry 4247 (class 1259 OID 78928)
-- Name: act_idx_memb_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_memb_group ON act_id_membership USING btree (group_id_);


--
-- TOC entry 4248 (class 1259 OID 78934)
-- Name: act_idx_memb_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_memb_user ON act_id_membership USING btree (user_id_);


--
-- TOC entry 4092 (class 1259 OID 78491)
-- Name: act_idx_meter_log; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_meter_log ON act_ru_meter_log USING btree (name_, timestamp_);


--
-- TOC entry 4093 (class 1259 OID 78487)
-- Name: act_idx_meter_log_ms; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_meter_log_ms ON act_ru_meter_log USING btree (milliseconds_);


--
-- TOC entry 4094 (class 1259 OID 78488)
-- Name: act_idx_meter_log_name_ms; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_meter_log_name_ms ON act_ru_meter_log USING btree (name_, milliseconds_);


--
-- TOC entry 4095 (class 1259 OID 78489)
-- Name: act_idx_meter_log_report; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_meter_log_report ON act_ru_meter_log USING btree (name_, reporter_, milliseconds_);


--
-- TOC entry 4096 (class 1259 OID 78490)
-- Name: act_idx_meter_log_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_meter_log_time ON act_ru_meter_log USING btree (timestamp_);


--
-- TOC entry 4026 (class 1259 OID 78675)
-- Name: act_idx_procdef_deployment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_procdef_deployment_id ON act_re_procdef USING btree (deployment_id_);


--
-- TOC entry 4027 (class 1259 OID 78676)
-- Name: act_idx_procdef_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_procdef_tenant_id ON act_re_procdef USING btree (tenant_id_);


--
-- TOC entry 4028 (class 1259 OID 78677)
-- Name: act_idx_procdef_ver_tag; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_procdef_ver_tag ON act_re_procdef USING btree (version_tag_);


--
-- TOC entry 4033 (class 1259 OID 78470)
-- Name: act_idx_task_assignee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_assignee ON act_ru_task USING btree (assignee_);


--
-- TOC entry 4034 (class 1259 OID 79023)
-- Name: act_idx_task_case_def_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_case_def_id ON act_ru_task USING btree (case_def_id_);


--
-- TOC entry 4035 (class 1259 OID 79017)
-- Name: act_idx_task_case_exec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_case_exec ON act_ru_task USING btree (case_execution_id_);


--
-- TOC entry 4036 (class 1259 OID 78468)
-- Name: act_idx_task_create; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_create ON act_ru_task USING btree (create_time_);


--
-- TOC entry 4037 (class 1259 OID 78541)
-- Name: act_idx_task_exec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_exec ON act_ru_task USING btree (execution_id_);


--
-- TOC entry 4038 (class 1259 OID 78469)
-- Name: act_idx_task_last_updated; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_last_updated ON act_ru_task USING btree (last_updated_);


--
-- TOC entry 4099 (class 1259 OID 78492)
-- Name: act_idx_task_meter_log_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_meter_log_time ON act_ru_task_meter_log USING btree (timestamp_);


--
-- TOC entry 4039 (class 1259 OID 78471)
-- Name: act_idx_task_owner; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_owner ON act_ru_task USING btree (owner_);


--
-- TOC entry 4040 (class 1259 OID 78553)
-- Name: act_idx_task_procdef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_procdef ON act_ru_task USING btree (proc_def_id_);


--
-- TOC entry 4041 (class 1259 OID 78547)
-- Name: act_idx_task_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_procinst ON act_ru_task USING btree (proc_inst_id_);


--
-- TOC entry 4042 (class 1259 OID 78472)
-- Name: act_idx_task_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_task_tenant_id ON act_ru_task USING btree (tenant_id_);


--
-- TOC entry 4257 (class 1259 OID 78944)
-- Name: act_idx_tenant_memb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_tenant_memb ON act_id_tenant_member USING btree (tenant_id_);


--
-- TOC entry 4258 (class 1259 OID 78956)
-- Name: act_idx_tenant_memb_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_tenant_memb_group ON act_id_tenant_member USING btree (group_id_);


--
-- TOC entry 4259 (class 1259 OID 78950)
-- Name: act_idx_tenant_memb_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_tenant_memb_user ON act_id_tenant_member USING btree (user_id_);


--
-- TOC entry 4048 (class 1259 OID 78529)
-- Name: act_idx_tskass_task; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_tskass_task ON act_ru_identitylink USING btree (task_id_);


--
-- TOC entry 4052 (class 1259 OID 78571)
-- Name: act_idx_var_bytearray; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_var_bytearray ON act_ru_variable USING btree (bytearray_id_);


--
-- TOC entry 4053 (class 1259 OID 79005)
-- Name: act_idx_var_case_exe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_var_case_exe ON act_ru_variable USING btree (case_execution_id_);


--
-- TOC entry 4054 (class 1259 OID 79011)
-- Name: act_idx_var_case_inst_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_var_case_inst_id ON act_ru_variable USING btree (case_inst_id_);


--
-- TOC entry 4055 (class 1259 OID 78559)
-- Name: act_idx_var_exe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_var_exe ON act_ru_variable USING btree (execution_id_);


--
-- TOC entry 4056 (class 1259 OID 78565)
-- Name: act_idx_var_procinst; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_var_procinst ON act_ru_variable USING btree (proc_inst_id_);


--
-- TOC entry 4057 (class 1259 OID 78477)
-- Name: act_idx_variable_task_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_variable_task_id ON act_ru_variable USING btree (task_id_);


--
-- TOC entry 4058 (class 1259 OID 78479)
-- Name: act_idx_variable_task_name_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_variable_task_name_type ON act_ru_variable USING btree (task_id_, name_, type_);


--
-- TOC entry 4059 (class 1259 OID 78478)
-- Name: act_idx_variable_tenant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX act_idx_variable_tenant_id ON act_ru_variable USING btree (tenant_id_);


--
-- TOC entry 4426 (class 2606 OID 78536)
-- Name: act_ru_identitylink act_fk_athrz_procedef; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_athrz_procedef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 4444 (class 2606 OID 78644)
-- Name: act_ru_batch act_fk_batch_job_def; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_batch
    ADD CONSTRAINT act_fk_batch_job_def FOREIGN KEY (batch_job_def_id_) REFERENCES act_ru_jobdef(id_);


--
-- TOC entry 4443 (class 2606 OID 78638)
-- Name: act_ru_batch act_fk_batch_monitor_job_def; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_batch
    ADD CONSTRAINT act_fk_batch_monitor_job_def FOREIGN KEY (monitor_job_def_id_) REFERENCES act_ru_jobdef(id_);


--
-- TOC entry 4442 (class 2606 OID 78632)
-- Name: act_ru_batch act_fk_batch_seed_job_def; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_batch
    ADD CONSTRAINT act_fk_batch_seed_job_def FOREIGN KEY (seed_job_def_id_) REFERENCES act_ru_jobdef(id_);


--
-- TOC entry 4414 (class 2606 OID 78500)
-- Name: act_ge_bytearray act_fk_bytearr_depl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_fk_bytearr_depl FOREIGN KEY (deployment_id_) REFERENCES act_re_deployment(id_);


--
-- TOC entry 4452 (class 2606 OID 79000)
-- Name: act_ru_case_execution act_fk_case_exe_case_def; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_case_execution
    ADD CONSTRAINT act_fk_case_exe_case_def FOREIGN KEY (case_def_id_) REFERENCES act_re_case_def(id_);


--
-- TOC entry 4450 (class 2606 OID 78988)
-- Name: act_ru_case_execution act_fk_case_exe_case_inst; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_case_execution
    ADD CONSTRAINT act_fk_case_exe_case_inst FOREIGN KEY (case_inst_id_) REFERENCES act_ru_case_execution(id_);


--
-- TOC entry 4451 (class 2606 OID 78994)
-- Name: act_ru_case_execution act_fk_case_exe_parent; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_case_execution
    ADD CONSTRAINT act_fk_case_exe_parent FOREIGN KEY (parent_id_) REFERENCES act_ru_case_execution(id_);


--
-- TOC entry 4454 (class 2606 OID 79036)
-- Name: act_ru_case_sentry_part act_fk_case_sentry_case_exec; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_case_sentry_part
    ADD CONSTRAINT act_fk_case_sentry_case_exec FOREIGN KEY (case_exec_id_) REFERENCES act_ru_case_execution(id_);


--
-- TOC entry 4453 (class 2606 OID 79030)
-- Name: act_ru_case_sentry_part act_fk_case_sentry_case_inst; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_case_sentry_part
    ADD CONSTRAINT act_fk_case_sentry_case_inst FOREIGN KEY (case_inst_id_) REFERENCES act_ru_case_execution(id_);


--
-- TOC entry 4455 (class 2606 OID 79084)
-- Name: act_re_decision_def act_fk_dec_req; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_re_decision_def
    ADD CONSTRAINT act_fk_dec_req FOREIGN KEY (dec_req_id_) REFERENCES act_re_decision_req_def(id_);


--
-- TOC entry 4433 (class 2606 OID 78584)
-- Name: act_ru_event_subscr act_fk_event_exec; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_fk_event_exec FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4416 (class 2606 OID 78512)
-- Name: act_ru_execution act_fk_exe_parent; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_parent FOREIGN KEY (parent_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4418 (class 2606 OID 78524)
-- Name: act_ru_execution act_fk_exe_procdef; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 4415 (class 2606 OID 78506)
-- Name: act_ru_execution act_fk_exe_procinst; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4417 (class 2606 OID 78518)
-- Name: act_ru_execution act_fk_exe_super; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_super FOREIGN KEY (super_exec_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4441 (class 2606 OID 78649)
-- Name: act_ru_ext_task act_fk_ext_task_error_details; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_ext_task
    ADD CONSTRAINT act_fk_ext_task_error_details FOREIGN KEY (error_details_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 4440 (class 2606 OID 78626)
-- Name: act_ru_ext_task act_fk_ext_task_exe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_ext_task
    ADD CONSTRAINT act_fk_ext_task_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4437 (class 2606 OID 78604)
-- Name: act_ru_incident act_fk_inc_cause; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_cause FOREIGN KEY (cause_incident_id_) REFERENCES act_ru_incident(id_);


--
-- TOC entry 4434 (class 2606 OID 78589)
-- Name: act_ru_incident act_fk_inc_exe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4439 (class 2606 OID 78615)
-- Name: act_ru_incident act_fk_inc_job_def; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_job_def FOREIGN KEY (job_def_id_) REFERENCES act_ru_jobdef(id_);


--
-- TOC entry 4436 (class 2606 OID 78599)
-- Name: act_ru_incident act_fk_inc_procdef; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 4435 (class 2606 OID 78594)
-- Name: act_ru_incident act_fk_inc_procinst; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4438 (class 2606 OID 78609)
-- Name: act_ru_incident act_fk_inc_rcause; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_incident
    ADD CONSTRAINT act_fk_inc_rcause FOREIGN KEY (root_cause_incident_id_) REFERENCES act_ru_incident(id_);


--
-- TOC entry 4419 (class 2606 OID 78578)
-- Name: act_ru_job act_fk_job_exception; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_fk_job_exception FOREIGN KEY (exception_stack_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 4445 (class 2606 OID 78929)
-- Name: act_id_membership act_fk_memb_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_group FOREIGN KEY (group_id_) REFERENCES act_id_group(id_);


--
-- TOC entry 4446 (class 2606 OID 78935)
-- Name: act_id_membership act_fk_memb_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_user FOREIGN KEY (user_id_) REFERENCES act_id_user(id_);


--
-- TOC entry 4424 (class 2606 OID 79024)
-- Name: act_ru_task act_fk_task_case_def; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_case_def FOREIGN KEY (case_def_id_) REFERENCES act_re_case_def(id_);


--
-- TOC entry 4423 (class 2606 OID 79018)
-- Name: act_ru_task act_fk_task_case_exe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_case_exe FOREIGN KEY (case_execution_id_) REFERENCES act_ru_case_execution(id_);


--
-- TOC entry 4420 (class 2606 OID 78542)
-- Name: act_ru_task act_fk_task_exe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4422 (class 2606 OID 78554)
-- Name: act_ru_task act_fk_task_procdef; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 4421 (class 2606 OID 78548)
-- Name: act_ru_task act_fk_task_procinst; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4447 (class 2606 OID 78945)
-- Name: act_id_tenant_member act_fk_tenant_memb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_fk_tenant_memb FOREIGN KEY (tenant_id_) REFERENCES act_id_tenant(id_);


--
-- TOC entry 4449 (class 2606 OID 78957)
-- Name: act_id_tenant_member act_fk_tenant_memb_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_fk_tenant_memb_group FOREIGN KEY (group_id_) REFERENCES act_id_group(id_);


--
-- TOC entry 4448 (class 2606 OID 78951)
-- Name: act_id_tenant_member act_fk_tenant_memb_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_id_tenant_member
    ADD CONSTRAINT act_fk_tenant_memb_user FOREIGN KEY (user_id_) REFERENCES act_id_user(id_);


--
-- TOC entry 4425 (class 2606 OID 78530)
-- Name: act_ru_identitylink act_fk_tskass_task; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_tskass_task FOREIGN KEY (task_id_) REFERENCES act_ru_task(id_);


--
-- TOC entry 4430 (class 2606 OID 78655)
-- Name: act_ru_variable act_fk_var_batch; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_batch FOREIGN KEY (batch_id_) REFERENCES act_ru_batch(id_);


--
-- TOC entry 4429 (class 2606 OID 78572)
-- Name: act_ru_variable act_fk_var_bytearray; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_bytearray FOREIGN KEY (bytearray_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 4431 (class 2606 OID 79006)
-- Name: act_ru_variable act_fk_var_case_exe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_case_exe FOREIGN KEY (case_execution_id_) REFERENCES act_ru_case_execution(id_);


--
-- TOC entry 4432 (class 2606 OID 79012)
-- Name: act_ru_variable act_fk_var_case_inst; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_case_inst FOREIGN KEY (case_inst_id_) REFERENCES act_ru_case_execution(id_);


--
-- TOC entry 4427 (class 2606 OID 78560)
-- Name: act_ru_variable act_fk_var_exe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4428 (class 2606 OID 78566)
-- Name: act_ru_variable act_fk_var_procinst; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 4344 (class 2606 OID 77479)
-- Name: user_reporting fk1gtobhmjc2q5bi5jnfrjpvj7o; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_reporting
    ADD CONSTRAINT fk1gtobhmjc2q5bi5jnfrjpvj7o FOREIGN KEY (reporter_id) REFERENCES crm_user(id);


--
-- TOC entry 4347 (class 2606 OID 77976)
-- Name: accounts fk2rpdabkr8egvfyvla5eonejs2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT fk2rpdabkr8egvfyvla5eonejs2 FOREIGN KEY (assigned_user_id) REFERENCES crm_user(id);


--
-- TOC entry 4384 (class 2606 OID 78161)
-- Name: list_view_layout fk2yulyfsw4jha83oc9iam0s519; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY list_view_layout
    ADD CONSTRAINT fk2yulyfsw4jha83oc9iam0s519 FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);


--
-- TOC entry 4336 (class 2606 OID 77439)
-- Name: crm_user fk3peugptvdtfywheoqve373shb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fk3peugptvdtfywheoqve373shb FOREIGN KEY (profile_id) REFERENCES profile(id);


--
-- TOC entry 4361 (class 2606 OID 78046)
-- Name: campaign_tracking_url fk3q2qh3synjda5n7gdrr0moaaq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campaign_tracking_url
    ADD CONSTRAINT fk3q2qh3synjda5n7gdrr0moaaq FOREIGN KEY (campaign) REFERENCES campaign(id);


--
-- TOC entry 4367 (class 2606 OID 78076)
-- Name: compact_layout_column fk49xawdscj39wruf3h2asa0h4x; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compact_layout_column
    ADD CONSTRAINT fk49xawdscj39wruf3h2asa0h4x FOREIGN KEY (compact_layout_id) REFERENCES compact_layout(id);


--
-- TOC entry 4375 (class 2606 OID 78116)
-- Name: duplicate_matching_rule fk4af6ntjd6srjyphyxp80bvpno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_matching_rule
    ADD CONSTRAINT fk4af6ntjd6srjyphyxp80bvpno FOREIGN KEY (matching_rule_id) REFERENCES matching_rule(id);


--
-- TOC entry 4379 (class 2606 OID 78136)
-- Name: duplicate_rule fk581a5ncldipbxo1k8nj19dt3c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_rule
    ADD CONSTRAINT fk581a5ncldipbxo1k8nj19dt3c FOREIGN KEY (duplicate_action_id) REFERENCES duplicate_action(id);


--
-- TOC entry 4387 (class 2606 OID 78176)
-- Name: mapping_rule fk5rs2xve9b4pboq1rk3foo7han; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule
    ADD CONSTRAINT fk5rs2xve9b4pboq1rk3foo7han FOREIGN KEY (table_metadata_id) REFERENCES table_metadata(id);


--
-- TOC entry 4358 (class 2606 OID 78031)
-- Name: activity_user fk612yr3asucd0397oqwe6kyydg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity_user
    ADD CONSTRAINT fk612yr3asucd0397oqwe6kyydg FOREIGN KEY (activity_id) REFERENCES activity(id);


--
-- TOC entry 4350 (class 2606 OID 77991)
-- Name: action_form fk6auijqb9k4n0lq1694sjtvu9w; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY action_form
    ADD CONSTRAINT fk6auijqb9k4n0lq1694sjtvu9w FOREIGN KEY (send_email_id) REFERENCES send_email(id);


--
-- TOC entry 4345 (class 2606 OID 77484)
-- Name: users_privileges fk6hsiwi4sieqmw6ix7cudppqvo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users_privileges
    ADD CONSTRAINT fk6hsiwi4sieqmw6ix7cudppqvo FOREIGN KEY (privilege_id) REFERENCES privilege(id);


--
-- TOC entry 4355 (class 2606 OID 78016)
-- Name: activity fk6j8n8h4wp8kgod274p7k52brt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fk6j8n8h4wp8kgod274p7k52brt FOREIGN KEY (email_template_id) REFERENCES email_template(id);


--
-- TOC entry 4402 (class 2606 OID 78251)
-- Name: related_layout_column fk7rnctld6ww7b95ulkp5cwuqnx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_layout_column
    ADD CONSTRAINT fk7rnctld6ww7b95ulkp5cwuqnx FOREIGN KEY (column_meta_data_id) REFERENCES column_metadata(id);


--
-- TOC entry 4383 (class 2606 OID 78156)
-- Name: lead fk7u13qetuxigf73gscffk6l43k; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lead
    ADD CONSTRAINT fk7u13qetuxigf73gscffk6l43k FOREIGN KEY (campaign_id) REFERENCES campaign(id);


--
-- TOC entry 4373 (class 2606 OID 78106)
-- Name: create_record_field_relation fk7ynrgxb2mp0uqc5mo5i4mphvp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY create_record_field_relation
    ADD CONSTRAINT fk7ynrgxb2mp0uqc5mo5i4mphvp FOREIGN KEY (create_record_id) REFERENCES create_record(id);


--
-- TOC entry 4359 (class 2606 OID 78036)
-- Name: campaign fk82gdhc0x9k0nxf36weqwdtbpq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campaign
    ADD CONSTRAINT fk82gdhc0x9k0nxf36weqwdtbpq FOREIGN KEY (assigned_user) REFERENCES crm_user(id);


--
-- TOC entry 4372 (class 2606 OID 78101)
-- Name: create_record_field_relation fk8i8qyhbpgyqmv39t7ji5w1776; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY create_record_field_relation
    ADD CONSTRAINT fk8i8qyhbpgyqmv39t7ji5w1776 FOREIGN KEY (field_value_id) REFERENCES create_record_field_value(id);


--
-- TOC entry 4395 (class 2606 OID 78216)
-- Name: page_layout fk90j5el5tv1fnc1v3ik8b5aes6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_layout
    ADD CONSTRAINT fk90j5el5tv1fnc1v3ik8b5aes6 FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);


--
-- TOC entry 4382 (class 2606 OID 78151)
-- Name: lead fka4fyfytn2srn2elodgpsi23rb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lead
    ADD CONSTRAINT fka4fyfytn2srn2elodgpsi23rb FOREIGN KEY (assigned_user_id) REFERENCES crm_user(id);


--
-- TOC entry 4401 (class 2606 OID 78246)
-- Name: related_layout fka91hit9kh7yth04qpr2y69apg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_layout
    ADD CONSTRAINT fka91hit9kh7yth04qpr2y69apg FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);


--
-- TOC entry 4362 (class 2606 OID 78051)
-- Name: column_metadata fka9p7bhoro6f848vd9jibjscgu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY column_metadata
    ADD CONSTRAINT fka9p7bhoro6f848vd9jibjscgu FOREIGN KEY (table_id) REFERENCES table_metadata(id);


--
-- TOC entry 4370 (class 2606 OID 78091)
-- Name: contact fkabnog0r32px3hoqlu640l84sn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT fkabnog0r32px3hoqlu640l84sn FOREIGN KEY (campaign_id) REFERENCES campaign(id);


--
-- TOC entry 4412 (class 2606 OID 78301)
-- Name: workflow_rule fkbshbyca9xal1jg555tq1bym9c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflow_rule
    ADD CONSTRAINT fkbshbyca9xal1jg555tq1bym9c FOREIGN KEY (action_form_id) REFERENCES action_form(id);


--
-- TOC entry 4397 (class 2606 OID 78226)
-- Name: page_layout_column fkcisf32ms8fjgi0jlbtro7lv27; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_layout_column
    ADD CONSTRAINT fkcisf32ms8fjgi0jlbtro7lv27 FOREIGN KEY (page_layout_id) REFERENCES page_layout(id);


--
-- TOC entry 4342 (class 2606 OID 77469)
-- Name: role fkdf1jxt31xl69b4ffd12ytje5l; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role
    ADD CONSTRAINT fkdf1jxt31xl69b4ffd12ytje5l FOREIGN KEY (sub_roles) REFERENCES role(role_id);


--
-- TOC entry 4334 (class 2606 OID 77429)
-- Name: crm_user fkdr4fwadiexpm28o30niq9736w; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fkdr4fwadiexpm28o30niq9736w FOREIGN KEY (mailing_address_id) REFERENCES address(address_id);


--
-- TOC entry 4408 (class 2606 OID 78281)
-- Name: update_record_field_relation fkdv8mwbjoa1kv1fm970oa8ab46; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY update_record_field_relation
    ADD CONSTRAINT fkdv8mwbjoa1kv1fm970oa8ab46 FOREIGN KEY (field_value_id) REFERENCES update_record_field_value(id);


--
-- TOC entry 4360 (class 2606 OID 78041)
-- Name: campaign_log_record fkejdwfgcm9rinkov5vs8w5my54; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campaign_log_record
    ADD CONSTRAINT fkejdwfgcm9rinkov5vs8w5my54 FOREIGN KEY (campaign) REFERENCES campaign(id);


--
-- TOC entry 4391 (class 2606 OID 78196)
-- Name: opportunity fkenjsxu5t8qhwh1ghhf3jxk472; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opportunity
    ADD CONSTRAINT fkenjsxu5t8qhwh1ghhf3jxk472 FOREIGN KEY (account_id) REFERENCES accounts(id);


--
-- TOC entry 4392 (class 2606 OID 78201)
-- Name: opportunity fkesy1f1vk9eyr9x24m2wn7yqfo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opportunity
    ADD CONSTRAINT fkesy1f1vk9eyr9x24m2wn7yqfo FOREIGN KEY (campaign_id) REFERENCES campaign(id);


--
-- TOC entry 4390 (class 2606 OID 78191)
-- Name: matching_rule fkf2aodevpf82k2nty6qrb4h4ah; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matching_rule
    ADD CONSTRAINT fkf2aodevpf82k2nty6qrb4h4ah FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);


--
-- TOC entry 4343 (class 2606 OID 77474)
-- Name: user_reporting fkfai9ls6dk00ta2bwwgbsxivrj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_reporting
    ADD CONSTRAINT fkfai9ls6dk00ta2bwwgbsxivrj FOREIGN KEY (reported_to_id) REFERENCES crm_user(id);


--
-- TOC entry 4335 (class 2606 OID 77434)
-- Name: crm_user fkfaslv53tr00uhhdpa6xyb49cn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fkfaslv53tr00uhhdpa6xyb49cn FOREIGN KEY (organisation_id) REFERENCES organisation(id);


--
-- TOC entry 4399 (class 2606 OID 78236)
-- Name: pricebook_entries fkfc7hlv8ixq1iq8vjb1qtqp5ov; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pricebook_entries
    ADD CONSTRAINT fkfc7hlv8ixq1iq8vjb1qtqp5ov FOREIGN KEY (product_id) REFERENCES product(id);


--
-- TOC entry 4393 (class 2606 OID 78206)
-- Name: opportunity fkfgi8exbget0xcgh6njh8atf11; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opportunity
    ADD CONSTRAINT fkfgi8exbget0xcgh6njh8atf11 FOREIGN KEY (pricebook_id) REFERENCES pricebook(id);


--
-- TOC entry 4410 (class 2606 OID 78291)
-- Name: update_record_field_value fkfjus0i6l70x9l1b9bwvu675x2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY update_record_field_value
    ADD CONSTRAINT fkfjus0i6l70x9l1b9bwvu675x2 FOREIGN KEY (column_id) REFERENCES column_metadata(id);


--
-- TOC entry 4386 (class 2606 OID 78171)
-- Name: list_view_layout_column fkfsv9po0iutu337nnitkrm678r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY list_view_layout_column
    ADD CONSTRAINT fkfsv9po0iutu337nnitkrm678r FOREIGN KEY (layout_id) REFERENCES list_view_layout(id);


--
-- TOC entry 4371 (class 2606 OID 78096)
-- Name: create_record fkg1m07eqwbdjj7ua5ufka0en13; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY create_record
    ADD CONSTRAINT fkg1m07eqwbdjj7ua5ufka0en13 FOREIGN KEY (entity_id) REFERENCES table_metadata(id);


--
-- TOC entry 4368 (class 2606 OID 78081)
-- Name: contact fkg9qenj6slk4clat5tahb79b3l; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT fkg9qenj6slk4clat5tahb79b3l FOREIGN KEY (account_id) REFERENCES accounts(id);


--
-- TOC entry 4398 (class 2606 OID 78231)
-- Name: pricebook_entries fkhfyybxubd8lo5q1dw2v2x7tyx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pricebook_entries
    ADD CONSTRAINT fkhfyybxubd8lo5q1dw2v2x7tyx FOREIGN KEY (pricebook_id) REFERENCES pricebook(id);


--
-- TOC entry 4405 (class 2606 OID 78266)
-- Name: related_table_meta_data fkhlg9ow3xiewp8529lesqw0c01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_table_meta_data
    ADD CONSTRAINT fkhlg9ow3xiewp8529lesqw0c01 FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);


--
-- TOC entry 4346 (class 2606 OID 77489)
-- Name: users_privileges fkhmhv0txyp5ds430r383ph3gcb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users_privileges
    ADD CONSTRAINT fkhmhv0txyp5ds430r383ph3gcb FOREIGN KEY (user_id) REFERENCES crm_user(id);


--
-- TOC entry 4357 (class 2606 OID 78026)
-- Name: activity_user fkik3oxp14j1wb1gbl8o1j3jwm9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity_user
    ADD CONSTRAINT fkik3oxp14j1wb1gbl8o1j3jwm9 FOREIGN KEY (user_id) REFERENCES crm_user(id);


--
-- TOC entry 4400 (class 2606 OID 78241)
-- Name: product fkilipyr1qn7scobb25wdhawqb9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT fkilipyr1qn7scobb25wdhawqb9 FOREIGN KEY (product_family_id) REFERENCES product_family(id);


--
-- TOC entry 4349 (class 2606 OID 77986)
-- Name: action_form fkimg0glcumecoeookum8kn950q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY action_form
    ADD CONSTRAINT fkimg0glcumecoeookum8kn950q FOREIGN KEY (create_record_id) REFERENCES create_record(id);


--
-- TOC entry 4340 (class 2606 OID 77459)
-- Name: profile fkiyf1ktxwx1m2jhd6mw21npwkv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profile
    ADD CONSTRAINT fkiyf1ktxwx1m2jhd6mw21npwkv FOREIGN KEY (organisation_id) REFERENCES organisation(id);


--
-- TOC entry 4338 (class 2606 OID 77449)
-- Name: field_permission fkj26yv0l9cpr66tte2qhrmyjdd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY field_permission
    ADD CONSTRAINT fkj26yv0l9cpr66tte2qhrmyjdd FOREIGN KEY (field_permission_id) REFERENCES object_permission(id);


--
-- TOC entry 4337 (class 2606 OID 77444)
-- Name: crm_user fkj4pr7o6g2nj4tnq97ufrubqpu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fkj4pr7o6g2nj4tnq97ufrubqpu FOREIGN KEY (role_id) REFERENCES role(role_id);


--
-- TOC entry 4364 (class 2606 OID 78061)
-- Name: column_validation fkjd4h7mtleyhvv96qy7lbefivp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY column_validation
    ADD CONSTRAINT fkjd4h7mtleyhvv96qy7lbefivp FOREIGN KEY (column_meta_data_id) REFERENCES column_metadata(id);


--
-- TOC entry 4341 (class 2606 OID 77464)
-- Name: role fkjgycv8j6ju6dhx3klo4s5dx29; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role
    ADD CONSTRAINT fkjgycv8j6ju6dhx3klo4s5dx29 FOREIGN KEY (organisation_id) REFERENCES organisation(id);


--
-- TOC entry 4380 (class 2606 OID 78141)
-- Name: duplicate_rule fkjiiys800w5o3omhupd3ymd27e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_rule
    ADD CONSTRAINT fkjiiys800w5o3omhupd3ymd27e FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);


--
-- TOC entry 4363 (class 2606 OID 78056)
-- Name: column_validation fkk76uxkri7smb5l441r9wmeq22; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY column_validation
    ADD CONSTRAINT fkk76uxkri7smb5l441r9wmeq22 FOREIGN KEY (column_validation_id) REFERENCES validation(id);


--
-- TOC entry 4406 (class 2606 OID 78271)
-- Name: relationship_metadata fkl53agfwcxccnk7j2t2jkxv68g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relationship_metadata
    ADD CONSTRAINT fkl53agfwcxccnk7j2t2jkxv68g FOREIGN KEY (table_id) REFERENCES table_metadata(id);


--
-- TOC entry 4403 (class 2606 OID 78256)
-- Name: related_layout_column fkl6u0s490lr47y8eonvc0fb42y; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_layout_column
    ADD CONSTRAINT fkl6u0s490lr47y8eonvc0fb42y FOREIGN KEY (related_table_meta_data_id) REFERENCES related_table_meta_data(id);


--
-- TOC entry 4394 (class 2606 OID 78211)
-- Name: opportunity_product fkl856sdy29qmmy9cdr7nqx003x; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY opportunity_product
    ADD CONSTRAINT fkl856sdy29qmmy9cdr7nqx003x FOREIGN KEY (opportunity_id) REFERENCES opportunity(id);


--
-- TOC entry 4407 (class 2606 OID 78276)
-- Name: send_email fklekjvju7omephfxbq5881mhva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY send_email
    ADD CONSTRAINT fklekjvju7omephfxbq5881mhva FOREIGN KEY (email_template_id) REFERENCES email_template(id);


--
-- TOC entry 4388 (class 2606 OID 78181)
-- Name: mapping_rule_column_relation fklgkxu2kscev2aw7um62ogvsh8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule_column_relation
    ADD CONSTRAINT fklgkxu2kscev2aw7um62ogvsh8 FOREIGN KEY (column_id) REFERENCES mapping_rule_column(id);


--
-- TOC entry 4381 (class 2606 OID 78146)
-- Name: email_placeholder fkll475uhcj51nd78g1287iqd5p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY email_placeholder
    ADD CONSTRAINT fkll475uhcj51nd78g1287iqd5p FOREIGN KEY (template_id) REFERENCES email_template(id);


--
-- TOC entry 4354 (class 2606 OID 78011)
-- Name: activity fklw2f8gk09dvsspifayqkfem2v; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fklw2f8gk09dvsspifayqkfem2v FOREIGN KEY (contact_id) REFERENCES contact(id);


--
-- TOC entry 4378 (class 2606 OID 78131)
-- Name: duplicate_matching_rule_relation fkm9ys9eshhhswq3wud9elwpcv3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_matching_rule_relation
    ADD CONSTRAINT fkm9ys9eshhhswq3wud9elwpcv3 FOREIGN KEY (duplicate_rules_id) REFERENCES duplicate_rule(id);


--
-- TOC entry 4385 (class 2606 OID 78166)
-- Name: list_view_layout_column fkmascmycfht4dd17ph8ee5227d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY list_view_layout_column
    ADD CONSTRAINT fkmascmycfht4dd17ph8ee5227d FOREIGN KEY (column_id) REFERENCES column_metadata(id);


--
-- TOC entry 4409 (class 2606 OID 78286)
-- Name: update_record_field_relation fkmbe1ethe9yambf6lfme3c0q64; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY update_record_field_relation
    ADD CONSTRAINT fkmbe1ethe9yambf6lfme3c0q64 FOREIGN KEY (update_record_id) REFERENCES update_record(id);


--
-- TOC entry 4351 (class 2606 OID 77996)
-- Name: action_form fkn1dlgvr3j7kdr2g10ejs35lee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY action_form
    ADD CONSTRAINT fkn1dlgvr3j7kdr2g10ejs35lee FOREIGN KEY (update_record_id) REFERENCES update_record(id);


--
-- TOC entry 4352 (class 2606 OID 78001)
-- Name: activity fko6yef9a1r0ana0fi8f27dlu2l; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fko6yef9a1r0ana0fi8f27dlu2l FOREIGN KEY (account_id) REFERENCES accounts(id);


--
-- TOC entry 4456 (class 2606 OID 79236)
-- Name: e_contact fkonlm8ltf8enqgn23h6w9dtc30; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY e_contact
    ADD CONSTRAINT fkonlm8ltf8enqgn23h6w9dtc30 FOREIGN KEY (account_id) REFERENCES e_account(id);


--
-- TOC entry 4411 (class 2606 OID 78296)
-- Name: workflow_condition fkotw6f8315u4bus9nklop4vtjb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflow_condition
    ADD CONSTRAINT fkotw6f8315u4bus9nklop4vtjb FOREIGN KEY (workflow) REFERENCES dml_workflow(id);


--
-- TOC entry 4376 (class 2606 OID 78121)
-- Name: duplicate_matching_rule fkp3twujv92dt3qgcrullbktrwl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_matching_rule
    ADD CONSTRAINT fkp3twujv92dt3qgcrullbktrwl FOREIGN KEY (table_meta_data_id) REFERENCES table_metadata(id);


--
-- TOC entry 4396 (class 2606 OID 78221)
-- Name: page_layout_column fkpadc60fm2qkusckmbbgkdlj2w; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY page_layout_column
    ADD CONSTRAINT fkpadc60fm2qkusckmbbgkdlj2w FOREIGN KEY (column_id) REFERENCES column_metadata(id);


--
-- TOC entry 4377 (class 2606 OID 78126)
-- Name: duplicate_matching_rule_relation fkpts7hq6ex2mw77bohetwpt934; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY duplicate_matching_rule_relation
    ADD CONSTRAINT fkpts7hq6ex2mw77bohetwpt934 FOREIGN KEY (duplicate_matching_rules_id) REFERENCES duplicate_matching_rule(id);


--
-- TOC entry 4389 (class 2606 OID 78186)
-- Name: mapping_rule_column_relation fkqe3luuli7vjph1dcwfa9rducp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mapping_rule_column_relation
    ADD CONSTRAINT fkqe3luuli7vjph1dcwfa9rducp FOREIGN KEY (mapping_rule_id) REFERENCES mapping_rule(id);


--
-- TOC entry 4348 (class 2606 OID 77981)
-- Name: accounts fkqf5rsuag975gf0s56qyv2hdjw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT fkqf5rsuag975gf0s56qyv2hdjw FOREIGN KEY (campaign_id) REFERENCES campaign(id);


--
-- TOC entry 4413 (class 2606 OID 78306)
-- Name: workflow_rule fkqngv6wvdt7ny8ismcqj934beb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflow_rule
    ADD CONSTRAINT fkqngv6wvdt7ny8ismcqj934beb FOREIGN KEY (target_entity) REFERENCES table_metadata(id);


--
-- TOC entry 4339 (class 2606 OID 77454)
-- Name: object_permission fkr3ccpnr7xun7xhx1cbahn9emt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY object_permission
    ADD CONSTRAINT fkr3ccpnr7xun7xhx1cbahn9emt FOREIGN KEY (object_permission_id) REFERENCES profile(id);


--
-- TOC entry 4333 (class 2606 OID 77424)
-- Name: crm_user fkr4x0hrwhepocadk9wru0v0bso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY crm_user
    ADD CONSTRAINT fkr4x0hrwhepocadk9wru0v0bso FOREIGN KEY (delegated_approver_id) REFERENCES crm_user(id);


--
-- TOC entry 4356 (class 2606 OID 78021)
-- Name: activity fkrsgbn0kagnibikij53sdyqvg4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fkrsgbn0kagnibikij53sdyqvg4 FOREIGN KEY (lead_id) REFERENCES lead(id);


--
-- TOC entry 4366 (class 2606 OID 78071)
-- Name: compact_layout_column fkrttmmiwbjem9q1d6dqq9fg24i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compact_layout_column
    ADD CONSTRAINT fkrttmmiwbjem9q1d6dqq9fg24i FOREIGN KEY (column_id) REFERENCES column_metadata(id);


--
-- TOC entry 4374 (class 2606 OID 78111)
-- Name: create_record_field_value fkrxlrduj8rrqhlv0yo7qmnsd61; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY create_record_field_value
    ADD CONSTRAINT fkrxlrduj8rrqhlv0yo7qmnsd61 FOREIGN KEY (column_id) REFERENCES column_metadata(id);


--
-- TOC entry 4404 (class 2606 OID 78261)
-- Name: related_table_meta_data fks7m7u6n6qhwf7eosjqpcocp9a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY related_table_meta_data
    ADD CONSTRAINT fks7m7u6n6qhwf7eosjqpcocp9a FOREIGN KEY (related_layout_id) REFERENCES related_layout(id);


--
-- TOC entry 4369 (class 2606 OID 78086)
-- Name: contact fks9rxhytsem0ncw3lgo0qcpkp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT fks9rxhytsem0ncw3lgo0qcpkp FOREIGN KEY (assigned_user_id) REFERENCES crm_user(id);


--
-- TOC entry 4365 (class 2606 OID 78066)
-- Name: compact_layout fksm0mr6woco19khh2n72uoymef; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compact_layout
    ADD CONSTRAINT fksm0mr6woco19khh2n72uoymef FOREIGN KEY (table_metadata_id) REFERENCES table_metadata(id);


--
-- TOC entry 4353 (class 2606 OID 78006)
-- Name: activity fkss75u5a44x0xqn0pqiue8maej; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fkss75u5a44x0xqn0pqiue8maej FOREIGN KEY (assigned_user_id) REFERENCES crm_user(id);


-- Completed on 2023-09-02 12:09:05 IST

--
-- PostgreSQL database dump complete
--

