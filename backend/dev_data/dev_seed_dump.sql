--
-- PostgreSQL database dump
--

\restrict 6w8E3CgHbwVMVDLyTHU4sV0l7dJ9dZAphmbklyDTMCwY89dLNG0cuFFCLXVA84r

-- Dumped from database version 16.14 (Debian 16.14-1.pgdg13+1)
-- Dumped by pg_dump version 16.14 (Debian 16.14-1.pgdg13+1)

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

ALTER TABLE IF EXISTS ONLY public.user_blocks DROP CONSTRAINT IF EXISTS user_blocks_blocker_id_fkey;
ALTER TABLE IF EXISTS ONLY public.user_blocks DROP CONSTRAINT IF EXISTS user_blocks_blocked_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.search_histories DROP CONSTRAINT IF EXISTS search_histories_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.reports DROP CONSTRAINT IF EXISTS reports_reporter_id_fkey;
ALTER TABLE IF EXISTS ONLY public.refresh_tokens DROP CONSTRAINT IF EXISTS refresh_tokens_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.push_tokens DROP CONSTRAINT IF EXISTS push_tokens_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.push_deliveries DROP CONSTRAINT IF EXISTS push_deliveries_push_token_id_fkey;
ALTER TABLE IF EXISTS ONLY public.push_deliveries DROP CONSTRAINT IF EXISTS push_deliveries_notification_id_fkey;
ALTER TABLE IF EXISTS ONLY public.privacy_policy_versions DROP CONSTRAINT IF EXISTS privacy_policy_versions_created_by_fkey;
ALTER TABLE IF EXISTS ONLY public.posts DROP CONSTRAINT IF EXISTS posts_board_id_fkey;
ALTER TABLE IF EXISTS ONLY public.posts DROP CONSTRAINT IF EXISTS posts_author_id_fkey;
ALTER TABLE IF EXISTS ONLY public.post_suggestions DROP CONSTRAINT IF EXISTS post_suggestions_replied_by_fkey;
ALTER TABLE IF EXISTS ONLY public.post_suggestions DROP CONSTRAINT IF EXISTS post_suggestions_post_id_fkey;
ALTER TABLE IF EXISTS ONLY public.post_mutual_aid DROP CONSTRAINT IF EXISTS post_mutual_aid_reviewed_by_fkey;
ALTER TABLE IF EXISTS ONLY public.post_mutual_aid DROP CONSTRAINT IF EXISTS post_mutual_aid_post_id_fkey;
ALTER TABLE IF EXISTS ONLY public.post_lecture_reviews DROP CONSTRAINT IF EXISTS post_lecture_reviews_post_id_fkey;
ALTER TABLE IF EXISTS ONLY public.post_attachments DROP CONSTRAINT IF EXISTS post_attachments_post_id_fkey;
ALTER TABLE IF EXISTS ONLY public.post_attachments DROP CONSTRAINT IF EXISTS post_attachments_media_id_fkey;
ALTER TABLE IF EXISTS ONLY public.password_reset_tokens DROP CONSTRAINT IF EXISTS password_reset_tokens_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.operational_audit_logs DROP CONSTRAINT IF EXISTS operational_audit_logs_actor_id_fkey;
ALTER TABLE IF EXISTS ONLY public.notifications DROP CONSTRAINT IF EXISTS notifications_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.notifications DROP CONSTRAINT IF EXISTS notifications_post_id_fkey;
ALTER TABLE IF EXISTS ONLY public.notifications DROP CONSTRAINT IF EXISTS notifications_event_id_fkey;
ALTER TABLE IF EXISTS ONLY public.notification_settings DROP CONSTRAINT IF EXISTS notification_settings_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.media_assets DROP CONSTRAINT IF EXISTS media_assets_owner_id_fkey;
ALTER TABLE IF EXISTS ONLY public.likes DROP CONSTRAINT IF EXISTS likes_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.likes DROP CONSTRAINT IF EXISTS likes_post_id_fkey;
ALTER TABLE IF EXISTS ONLY public.faq_attachments DROP CONSTRAINT IF EXISTS faq_attachments_media_id_fkey;
ALTER TABLE IF EXISTS ONLY public.faq_attachments DROP CONSTRAINT IF EXISTS faq_attachments_faq_id_fkey;
ALTER TABLE IF EXISTS ONLY public.events DROP CONSTRAINT IF EXISTS events_created_by_fkey;
ALTER TABLE IF EXISTS ONLY public.comments DROP CONSTRAINT IF EXISTS comments_post_id_fkey;
ALTER TABLE IF EXISTS ONLY public.comments DROP CONSTRAINT IF EXISTS comments_parent_id_fkey;
ALTER TABLE IF EXISTS ONLY public.comments DROP CONSTRAINT IF EXISTS comments_author_id_fkey;
ALTER TABLE IF EXISTS ONLY public.bookmarks DROP CONSTRAINT IF EXISTS bookmarks_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.bookmarks DROP CONSTRAINT IF EXISTS bookmarks_post_id_fkey;
ALTER TABLE IF EXISTS ONLY public.banners DROP CONSTRAINT IF EXISTS banners_created_by_fkey;
DROP INDEX IF EXISTS public.uq_privacy_policy_versions_active;
DROP INDEX IF EXISTS public.ix_users_role;
DROP INDEX IF EXISTS public.ix_users_is_active;
DROP INDEX IF EXISTS public.ix_user_blocks_blocker_created;
DROP INDEX IF EXISTS public.ix_user_blocks_blocked_user_id;
DROP INDEX IF EXISTS public.ix_search_histories_user_created;
DROP INDEX IF EXISTS public.ix_reports_target;
DROP INDEX IF EXISTS public.ix_reports_status_created;
DROP INDEX IF EXISTS public.ix_refresh_tokens_user_id;
DROP INDEX IF EXISTS public.ix_refresh_tokens_expires_at;
DROP INDEX IF EXISTS public.ix_rate_limit_buckets_updated_at;
DROP INDEX IF EXISTS public.ix_push_tokens_user_active;
DROP INDEX IF EXISTS public.ix_push_deliveries_ticket_id;
DROP INDEX IF EXISTS public.ix_push_deliveries_status_created;
DROP INDEX IF EXISTS public.ix_posts_notice_deadline;
DROP INDEX IF EXISTS public.ix_posts_board_pinned_created;
DROP INDEX IF EXISTS public.ix_posts_board_category;
DROP INDEX IF EXISTS public.ix_posts_author_created;
DROP INDEX IF EXISTS public.ix_password_reset_tokens_user_id;
DROP INDEX IF EXISTS public.ix_operational_audit_logs_target;
DROP INDEX IF EXISTS public.ix_operational_audit_logs_actor_created;
DROP INDEX IF EXISTS public.ix_notifications_dedupe_key;
DROP INDEX IF EXISTS public.ix_major_options_active_order;
DROP INDEX IF EXISTS public.ix_legacy_import_records_target;
DROP INDEX IF EXISTS public.ix_legacy_import_records_status_entity;
DROP INDEX IF EXISTS public.ix_faq_attachments_faq_sort;
DROP INDEX IF EXISTS public.ix_email_verification_tokens_email;
DROP INDEX IF EXISTS public.ix_dues_payers_name;
DROP INDEX IF EXISTS public.ix_banners_placement_active_order;
DROP INDEX IF EXISTS public.ix_account_deletion_receipts_completed_at;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_username_key;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_email_key;
ALTER TABLE IF EXISTS ONLY public.user_blocks DROP CONSTRAINT IF EXISTS user_blocks_pkey;
ALTER TABLE IF EXISTS ONLY public.user_blocks DROP CONSTRAINT IF EXISTS uq_user_blocks_pair;
ALTER TABLE IF EXISTS ONLY public.reports DROP CONSTRAINT IF EXISTS uq_reports_reporter_target;
ALTER TABLE IF EXISTS ONLY public.rate_limit_buckets DROP CONSTRAINT IF EXISTS uq_rate_limit_action_subject;
ALTER TABLE IF EXISTS ONLY public.push_tokens DROP CONSTRAINT IF EXISTS uq_push_tokens_token;
ALTER TABLE IF EXISTS ONLY public.privacy_policy_versions DROP CONSTRAINT IF EXISTS uq_privacy_policy_versions_version;
ALTER TABLE IF EXISTS ONLY public.post_attachments DROP CONSTRAINT IF EXISTS uq_post_attachments_post_media;
ALTER TABLE IF EXISTS ONLY public.major_options DROP CONSTRAINT IF EXISTS uq_major_options_name;
ALTER TABLE IF EXISTS ONLY public.likes DROP CONSTRAINT IF EXISTS uq_likes_user_post;
ALTER TABLE IF EXISTS ONLY public.legacy_import_records DROP CONSTRAINT IF EXISTS uq_legacy_import_records_source_entity;
ALTER TABLE IF EXISTS ONLY public.faq_attachments DROP CONSTRAINT IF EXISTS uq_faq_attachments_faq_media;
ALTER TABLE IF EXISTS ONLY public.dues_payers DROP CONSTRAINT IF EXISTS uq_dues_payers_student_number;
ALTER TABLE IF EXISTS ONLY public.bookmarks DROP CONSTRAINT IF EXISTS uq_bookmarks_user_post;
ALTER TABLE IF EXISTS ONLY public.search_histories DROP CONSTRAINT IF EXISTS search_histories_pkey;
ALTER TABLE IF EXISTS ONLY public.reports DROP CONSTRAINT IF EXISTS reports_pkey;
ALTER TABLE IF EXISTS ONLY public.refresh_tokens DROP CONSTRAINT IF EXISTS refresh_tokens_token_hash_key;
ALTER TABLE IF EXISTS ONLY public.refresh_tokens DROP CONSTRAINT IF EXISTS refresh_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.rate_limit_buckets DROP CONSTRAINT IF EXISTS rate_limit_buckets_pkey;
ALTER TABLE IF EXISTS ONLY public.push_tokens DROP CONSTRAINT IF EXISTS push_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.push_deliveries DROP CONSTRAINT IF EXISTS push_deliveries_pkey;
ALTER TABLE IF EXISTS ONLY public.privacy_policy_versions DROP CONSTRAINT IF EXISTS privacy_policy_versions_pkey;
ALTER TABLE IF EXISTS ONLY public.posts DROP CONSTRAINT IF EXISTS posts_pkey;
ALTER TABLE IF EXISTS ONLY public.post_suggestions DROP CONSTRAINT IF EXISTS post_suggestions_post_id_key;
ALTER TABLE IF EXISTS ONLY public.post_suggestions DROP CONSTRAINT IF EXISTS post_suggestions_pkey;
ALTER TABLE IF EXISTS ONLY public.post_mutual_aid DROP CONSTRAINT IF EXISTS post_mutual_aid_post_id_key;
ALTER TABLE IF EXISTS ONLY public.post_mutual_aid DROP CONSTRAINT IF EXISTS post_mutual_aid_pkey;
ALTER TABLE IF EXISTS ONLY public.post_lecture_reviews DROP CONSTRAINT IF EXISTS post_lecture_reviews_post_id_key;
ALTER TABLE IF EXISTS ONLY public.post_lecture_reviews DROP CONSTRAINT IF EXISTS post_lecture_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.post_attachments DROP CONSTRAINT IF EXISTS post_attachments_pkey;
ALTER TABLE IF EXISTS ONLY public.password_reset_tokens DROP CONSTRAINT IF EXISTS password_reset_tokens_token_hash_key;
ALTER TABLE IF EXISTS ONLY public.password_reset_tokens DROP CONSTRAINT IF EXISTS password_reset_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.operational_audit_logs DROP CONSTRAINT IF EXISTS operational_audit_logs_pkey;
ALTER TABLE IF EXISTS ONLY public.notifications DROP CONSTRAINT IF EXISTS notifications_pkey;
ALTER TABLE IF EXISTS ONLY public.notification_settings DROP CONSTRAINT IF EXISTS notification_settings_user_id_key;
ALTER TABLE IF EXISTS ONLY public.notification_settings DROP CONSTRAINT IF EXISTS notification_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.media_assets DROP CONSTRAINT IF EXISTS media_assets_pkey;
ALTER TABLE IF EXISTS ONLY public.major_options DROP CONSTRAINT IF EXISTS major_options_pkey;
ALTER TABLE IF EXISTS ONLY public.likes DROP CONSTRAINT IF EXISTS likes_pkey;
ALTER TABLE IF EXISTS ONLY public.legacy_import_records DROP CONSTRAINT IF EXISTS legacy_import_records_pkey;
ALTER TABLE IF EXISTS ONLY public.faqs DROP CONSTRAINT IF EXISTS faqs_pkey;
ALTER TABLE IF EXISTS ONLY public.faq_attachments DROP CONSTRAINT IF EXISTS faq_attachments_pkey;
ALTER TABLE IF EXISTS ONLY public.events DROP CONSTRAINT IF EXISTS events_pkey;
ALTER TABLE IF EXISTS ONLY public.email_verification_tokens DROP CONSTRAINT IF EXISTS email_verification_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.dues_payers DROP CONSTRAINT IF EXISTS dues_payers_pkey;
ALTER TABLE IF EXISTS ONLY public.comments DROP CONSTRAINT IF EXISTS comments_pkey;
ALTER TABLE IF EXISTS ONLY public.bookmarks DROP CONSTRAINT IF EXISTS bookmarks_pkey;
ALTER TABLE IF EXISTS ONLY public.boards DROP CONSTRAINT IF EXISTS boards_slug_key;
ALTER TABLE IF EXISTS ONLY public.boards DROP CONSTRAINT IF EXISTS boards_pkey;
ALTER TABLE IF EXISTS ONLY public.banners DROP CONSTRAINT IF EXISTS banners_pkey;
ALTER TABLE IF EXISTS ONLY public.alembic_version DROP CONSTRAINT IF EXISTS alembic_version_pkc;
ALTER TABLE IF EXISTS ONLY public.account_deletion_receipts DROP CONSTRAINT IF EXISTS account_deletion_receipts_pkey;
ALTER TABLE IF EXISTS public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.user_blocks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.search_histories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.reports ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.refresh_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.rate_limit_buckets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.push_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.push_deliveries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.privacy_policy_versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.posts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.post_suggestions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.post_mutual_aid ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.post_lecture_reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.post_attachments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.password_reset_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.operational_audit_logs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.notification_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.media_assets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.major_options ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.likes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.legacy_import_records ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.faqs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.faq_attachments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.email_verification_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.dues_payers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.bookmarks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.boards ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.banners ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.users_id_seq;
DROP TABLE IF EXISTS public.users;
DROP SEQUENCE IF EXISTS public.user_blocks_id_seq;
DROP TABLE IF EXISTS public.user_blocks;
DROP SEQUENCE IF EXISTS public.search_histories_id_seq;
DROP TABLE IF EXISTS public.search_histories;
DROP SEQUENCE IF EXISTS public.reports_id_seq;
DROP TABLE IF EXISTS public.reports;
DROP SEQUENCE IF EXISTS public.refresh_tokens_id_seq;
DROP TABLE IF EXISTS public.refresh_tokens;
DROP SEQUENCE IF EXISTS public.rate_limit_buckets_id_seq;
DROP TABLE IF EXISTS public.rate_limit_buckets;
DROP SEQUENCE IF EXISTS public.push_tokens_id_seq;
DROP TABLE IF EXISTS public.push_tokens;
DROP SEQUENCE IF EXISTS public.push_deliveries_id_seq;
DROP TABLE IF EXISTS public.push_deliveries;
DROP SEQUENCE IF EXISTS public.privacy_policy_versions_id_seq;
DROP TABLE IF EXISTS public.privacy_policy_versions;
DROP SEQUENCE IF EXISTS public.posts_id_seq;
DROP TABLE IF EXISTS public.posts;
DROP SEQUENCE IF EXISTS public.post_suggestions_id_seq;
DROP TABLE IF EXISTS public.post_suggestions;
DROP SEQUENCE IF EXISTS public.post_mutual_aid_id_seq;
DROP TABLE IF EXISTS public.post_mutual_aid;
DROP SEQUENCE IF EXISTS public.post_lecture_reviews_id_seq;
DROP TABLE IF EXISTS public.post_lecture_reviews;
DROP SEQUENCE IF EXISTS public.post_attachments_id_seq;
DROP TABLE IF EXISTS public.post_attachments;
DROP SEQUENCE IF EXISTS public.password_reset_tokens_id_seq;
DROP TABLE IF EXISTS public.password_reset_tokens;
DROP SEQUENCE IF EXISTS public.operational_audit_logs_id_seq;
DROP TABLE IF EXISTS public.operational_audit_logs;
DROP SEQUENCE IF EXISTS public.notifications_id_seq;
DROP TABLE IF EXISTS public.notifications;
DROP SEQUENCE IF EXISTS public.notification_settings_id_seq;
DROP TABLE IF EXISTS public.notification_settings;
DROP SEQUENCE IF EXISTS public.media_assets_id_seq;
DROP TABLE IF EXISTS public.media_assets;
DROP SEQUENCE IF EXISTS public.major_options_id_seq;
DROP TABLE IF EXISTS public.major_options;
DROP SEQUENCE IF EXISTS public.likes_id_seq;
DROP TABLE IF EXISTS public.likes;
DROP SEQUENCE IF EXISTS public.legacy_import_records_id_seq;
DROP TABLE IF EXISTS public.legacy_import_records;
DROP SEQUENCE IF EXISTS public.faqs_id_seq;
DROP TABLE IF EXISTS public.faqs;
DROP SEQUENCE IF EXISTS public.faq_attachments_id_seq;
DROP TABLE IF EXISTS public.faq_attachments;
DROP SEQUENCE IF EXISTS public.events_id_seq;
DROP TABLE IF EXISTS public.events;
DROP SEQUENCE IF EXISTS public.email_verification_tokens_id_seq;
DROP TABLE IF EXISTS public.email_verification_tokens;
DROP SEQUENCE IF EXISTS public.dues_payers_id_seq;
DROP TABLE IF EXISTS public.dues_payers;
DROP SEQUENCE IF EXISTS public.comments_id_seq;
DROP TABLE IF EXISTS public.comments;
DROP SEQUENCE IF EXISTS public.bookmarks_id_seq;
DROP TABLE IF EXISTS public.bookmarks;
DROP SEQUENCE IF EXISTS public.boards_id_seq;
DROP TABLE IF EXISTS public.boards;
DROP SEQUENCE IF EXISTS public.banners_id_seq;
DROP TABLE IF EXISTS public.banners;
DROP TABLE IF EXISTS public.alembic_version;
DROP TABLE IF EXISTS public.account_deletion_receipts;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_deletion_receipts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_deletion_receipts (
    receipt_id character varying(36) NOT NULL,
    channel character varying(20) NOT NULL,
    result character varying(20) NOT NULL,
    completed_at timestamp without time zone NOT NULL,
    CONSTRAINT ck_account_deletion_receipts_channel CHECK (((channel)::text = ANY ((ARRAY['authenticated'::character varying, 'public_email'::character varying])::text[]))),
    CONSTRAINT ck_account_deletion_receipts_result CHECK (((result)::text = 'completed'::text))
);


ALTER TABLE public.account_deletion_receipts OWNER TO postgres;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: banners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banners (
    id integer NOT NULL,
    placement character varying(30) DEFAULT 'home'::character varying NOT NULL,
    title character varying(120),
    subtitle text,
    badge_text character varying(80),
    cta_label character varying(50),
    cta_href character varying(255),
    image_url character varying(500),
    theme character varying(20) DEFAULT 'blue'::character varying NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    starts_at timestamp without time zone,
    ends_at timestamp without time zone,
    created_by integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    image_urls jsonb,
    deadline_at timestamp without time zone,
    CONSTRAINT ck_banners_placement CHECK (((placement)::text = 'home'::text)),
    CONSTRAINT ck_banners_theme CHECK (((theme)::text = ANY ((ARRAY['none'::character varying, 'blue'::character varying, 'navy'::character varying, 'cyan'::character varying, 'purple'::character varying])::text[])))
);


ALTER TABLE public.banners OWNER TO postgres;

--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banners_id_seq OWNER TO postgres;

--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;


--
-- Name: boards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    category character varying(50) NOT NULL,
    description text,
    sort_order integer DEFAULT 0 NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    board_type character varying(50) DEFAULT 'post'::character varying NOT NULL,
    allow_anonymous boolean DEFAULT false NOT NULL,
    read_permission character varying(20) DEFAULT 'guest'::character varying NOT NULL,
    write_permission character varying(20) DEFAULT 'user'::character varying NOT NULL,
    metadata jsonb,
    CONSTRAINT ck_boards_board_type CHECK (((board_type)::text = ANY ((ARRAY['post'::character varying, 'notice'::character varying, 'calendar'::character varying, 'album'::character varying, 'resource'::character varying, 'activity_certification'::character varying, 'guide'::character varying, 'faq'::character varying, 'organization_intro'::character varying, 'activity_history'::character varying, 'external_link'::character varying, 'suggestion'::character varying, 'mutual_aid'::character varying])::text[]))),
    CONSTRAINT ck_boards_read_permission CHECK (((read_permission)::text = ANY ((ARRAY['guest'::character varying, 'user'::character varying, 'admin'::character varying])::text[]))),
    CONSTRAINT ck_boards_write_permission CHECK (((write_permission)::text = ANY ((ARRAY['guest'::character varying, 'user'::character varying, 'admin'::character varying])::text[])))
);


ALTER TABLE public.boards OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.boards_id_seq OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_id_seq OWNED BY public.boards.id;


--
-- Name: bookmarks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bookmarks (
    id integer NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.bookmarks OWNER TO postgres;

--
-- Name: bookmarks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bookmarks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bookmarks_id_seq OWNER TO postgres;

--
-- Name: bookmarks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bookmarks_id_seq OWNED BY public.bookmarks.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    post_id integer NOT NULL,
    author_id integer,
    parent_id integer,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    author_nickname_snapshot character varying(50),
    author_cohort_snapshot character varying(20)
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: dues_payers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dues_payers (
    id integer NOT NULL,
    student_number character varying(20) NOT NULL,
    name character varying(50) NOT NULL,
    major character varying(100) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.dues_payers OWNER TO postgres;

--
-- Name: dues_payers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dues_payers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dues_payers_id_seq OWNER TO postgres;

--
-- Name: dues_payers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dues_payers_id_seq OWNED BY public.dues_payers.id;


--
-- Name: email_verification_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.email_verification_tokens (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    code_hash character varying(255) NOT NULL,
    purpose character varying(30) NOT NULL,
    expires_at timestamp without time zone NOT NULL,
    consumed_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    attempt_count integer NOT NULL,
    CONSTRAINT ck_email_verification_tokens_purpose CHECK (((purpose)::text = ANY ((ARRAY['register'::character varying, 'change_email'::character varying, 'account_delete'::character varying])::text[])))
);


ALTER TABLE public.email_verification_tokens OWNER TO postgres;

--
-- Name: email_verification_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.email_verification_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.email_verification_tokens_id_seq OWNER TO postgres;

--
-- Name: email_verification_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.email_verification_tokens_id_seq OWNED BY public.email_verification_tokens.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    description text,
    location character varying(200),
    category character varying(30) NOT NULL,
    color character varying(20),
    start_at timestamp without time zone NOT NULL,
    end_at timestamp without time zone,
    created_by integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT ck_events_category CHECK (((category)::text = ANY ((ARRAY['academic'::character varying, 'event'::character varying, 'exam'::character varying, 'council'::character varying, 'external'::character varying, 'other'::character varying])::text[])))
);


ALTER TABLE public.events OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.events_id_seq OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: faq_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faq_attachments (
    id integer NOT NULL,
    faq_id integer NOT NULL,
    media_id integer NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.faq_attachments OWNER TO postgres;

--
-- Name: faq_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.faq_attachments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.faq_attachments_id_seq OWNER TO postgres;

--
-- Name: faq_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.faq_attachments_id_seq OWNED BY public.faq_attachments.id;


--
-- Name: faqs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faqs (
    id integer NOT NULL,
    question character varying(500) NOT NULL,
    answer text NOT NULL,
    category character varying(50),
    sort_order integer DEFAULT 0 NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.faqs OWNER TO postgres;

--
-- Name: faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.faqs_id_seq OWNER TO postgres;

--
-- Name: faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;


--
-- Name: legacy_import_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.legacy_import_records (
    id integer NOT NULL,
    source_file character varying(255) NOT NULL,
    source_sheet character varying(100) NOT NULL,
    source_row integer,
    entity_type character varying(50) NOT NULL,
    source_id character varying(100) NOT NULL,
    source_parent_id character varying(100),
    source_hash character varying(64) NOT NULL,
    action character varying(50) NOT NULL,
    status character varying(30) NOT NULL,
    target_table character varying(100),
    target_id integer,
    reason character varying(500),
    redacted_details jsonb,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.legacy_import_records OWNER TO postgres;

--
-- Name: legacy_import_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.legacy_import_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.legacy_import_records_id_seq OWNER TO postgres;

--
-- Name: legacy_import_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.legacy_import_records_id_seq OWNED BY public.legacy_import_records.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes (
    id integer NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.likes OWNER TO postgres;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.likes_id_seq OWNER TO postgres;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: major_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.major_options (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.major_options OWNER TO postgres;

--
-- Name: major_options_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.major_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.major_options_id_seq OWNER TO postgres;

--
-- Name: major_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.major_options_id_seq OWNED BY public.major_options.id;


--
-- Name: media_assets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.media_assets (
    id integer NOT NULL,
    owner_id integer,
    original_filename character varying(255) NOT NULL,
    stored_filename character varying(255) NOT NULL,
    content_type character varying(100) NOT NULL,
    file_size bigint NOT NULL,
    url character varying(500),
    status character varying(20) DEFAULT 'pending'::character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    is_private boolean DEFAULT false NOT NULL,
    CONSTRAINT ck_media_assets_status CHECK (((status)::text = ANY ((ARRAY['pending'::character varying, 'ready'::character varying, 'failed'::character varying])::text[])))
);


ALTER TABLE public.media_assets OWNER TO postgres;

--
-- Name: media_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.media_assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.media_assets_id_seq OWNER TO postgres;

--
-- Name: media_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.media_assets_id_seq OWNED BY public.media_assets.id;


--
-- Name: notification_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification_settings (
    id integer NOT NULL,
    user_id integer NOT NULL,
    notify_comment boolean DEFAULT true NOT NULL,
    notify_like boolean DEFAULT true NOT NULL,
    notify_notice boolean DEFAULT true NOT NULL,
    notify_event boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    notify_council boolean NOT NULL
);


ALTER TABLE public.notification_settings OWNER TO postgres;

--
-- Name: notification_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notification_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notification_settings_id_seq OWNER TO postgres;

--
-- Name: notification_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notification_settings_id_seq OWNED BY public.notification_settings.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    id integer NOT NULL,
    user_id integer NOT NULL,
    notification_type character varying(30) NOT NULL,
    message character varying(500) NOT NULL,
    post_id integer,
    event_id integer,
    is_read boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    dedupe_key character varying(255),
    CONSTRAINT ck_notifications_notification_type CHECK (((notification_type)::text = ANY ((ARRAY['comment'::character varying, 'like'::character varying, 'notice'::character varying, 'event'::character varying, 'admin_reply'::character varying, 'report'::character varying, 'council'::character varying])::text[])))
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notifications_id_seq OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: operational_audit_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.operational_audit_logs (
    id integer NOT NULL,
    actor_id integer,
    action character varying(100) NOT NULL,
    target_type character varying(50) NOT NULL,
    target_id integer,
    details jsonb,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.operational_audit_logs OWNER TO postgres;

--
-- Name: operational_audit_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operational_audit_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operational_audit_logs_id_seq OWNER TO postgres;

--
-- Name: operational_audit_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operational_audit_logs_id_seq OWNED BY public.operational_audit_logs.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    id integer NOT NULL,
    user_id integer NOT NULL,
    token_hash character varying(255) NOT NULL,
    expires_at timestamp without time zone NOT NULL,
    consumed_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    verified_at timestamp without time zone,
    attempt_count integer NOT NULL
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- Name: password_reset_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.password_reset_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.password_reset_tokens_id_seq OWNER TO postgres;

--
-- Name: password_reset_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.password_reset_tokens_id_seq OWNED BY public.password_reset_tokens.id;


--
-- Name: post_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_attachments (
    id integer NOT NULL,
    post_id integer NOT NULL,
    media_id integer NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.post_attachments OWNER TO postgres;

--
-- Name: post_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_attachments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_attachments_id_seq OWNER TO postgres;

--
-- Name: post_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_attachments_id_seq OWNED BY public.post_attachments.id;


--
-- Name: post_lecture_reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_lecture_reviews (
    id integer NOT NULL,
    post_id integer NOT NULL,
    subject_name character varying(100) NOT NULL,
    professor character varying(50),
    semester character varying(20),
    difficulty smallint,
    satisfaction smallint
);


ALTER TABLE public.post_lecture_reviews OWNER TO postgres;

--
-- Name: post_lecture_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_lecture_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_lecture_reviews_id_seq OWNER TO postgres;

--
-- Name: post_lecture_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_lecture_reviews_id_seq OWNED BY public.post_lecture_reviews.id;


--
-- Name: post_mutual_aid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_mutual_aid (
    id integer NOT NULL,
    post_id integer NOT NULL,
    event_type character varying(30) NOT NULL,
    event_date date NOT NULL,
    relation character varying(50) NOT NULL,
    status character varying(20) DEFAULT 'processing'::character varying NOT NULL,
    rejection_reason text,
    reviewed_by integer,
    reviewed_at timestamp without time zone,
    CONSTRAINT ck_post_mutual_aid_status CHECK (((status)::text = ANY ((ARRAY['processing'::character varying, 'completed'::character varying, 'rejected'::character varying])::text[])))
);


ALTER TABLE public.post_mutual_aid OWNER TO postgres;

--
-- Name: post_mutual_aid_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_mutual_aid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_mutual_aid_id_seq OWNER TO postgres;

--
-- Name: post_mutual_aid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_mutual_aid_id_seq OWNED BY public.post_mutual_aid.id;


--
-- Name: post_suggestions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_suggestions (
    id integer NOT NULL,
    post_id integer NOT NULL,
    suggestion_category character varying(50),
    status character varying(20) DEFAULT 'received'::character varying NOT NULL,
    admin_reply text,
    replied_by integer,
    replied_at timestamp without time zone,
    CONSTRAINT ck_post_suggestions_status CHECK (((status)::text = ANY ((ARRAY['received'::character varying, 'answered'::character varying])::text[])))
);


ALTER TABLE public.post_suggestions OWNER TO postgres;

--
-- Name: post_suggestions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_suggestions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_suggestions_id_seq OWNER TO postgres;

--
-- Name: post_suggestions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_suggestions_id_seq OWNED BY public.post_suggestions.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    board_id integer NOT NULL,
    author_id integer,
    title character varying(200) NOT NULL,
    content text NOT NULL,
    is_pinned boolean DEFAULT false NOT NULL,
    is_notice boolean DEFAULT false NOT NULL,
    view_count integer DEFAULT 0 NOT NULL,
    like_count integer DEFAULT 0 NOT NULL,
    comment_count integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    is_anonymous boolean DEFAULT false NOT NULL,
    status character varying(20) DEFAULT 'published'::character varying NOT NULL,
    category character varying(50),
    metadata jsonb,
    deleted_at timestamp without time zone,
    deadline_at timestamp without time zone,
    author_nickname_snapshot character varying(50),
    author_cohort_snapshot character varying(20),
    CONSTRAINT ck_posts_status CHECK (((status)::text = ANY ((ARRAY['draft'::character varying, 'published'::character varying, 'hidden'::character varying, 'deleted'::character varying])::text[])))
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: privacy_policy_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.privacy_policy_versions (
    id integer NOT NULL,
    version character varying(50) NOT NULL,
    effective_at timestamp without time zone NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_by integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.privacy_policy_versions OWNER TO postgres;

--
-- Name: privacy_policy_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.privacy_policy_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.privacy_policy_versions_id_seq OWNER TO postgres;

--
-- Name: privacy_policy_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.privacy_policy_versions_id_seq OWNED BY public.privacy_policy_versions.id;


--
-- Name: push_deliveries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.push_deliveries (
    id integer NOT NULL,
    notification_id integer,
    push_token_id integer,
    token_snapshot character varying(255) NOT NULL,
    status character varying(20) DEFAULT 'pending'::character varying NOT NULL,
    attempt_count integer DEFAULT 0 NOT NULL,
    ticket_id character varying(255),
    error_message text,
    receipt_checked_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT ck_push_deliveries_status CHECK (((status)::text = ANY ((ARRAY['pending'::character varying, 'sent'::character varying, 'delivered'::character varying, 'failed'::character varying])::text[])))
);


ALTER TABLE public.push_deliveries OWNER TO postgres;

--
-- Name: push_deliveries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.push_deliveries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.push_deliveries_id_seq OWNER TO postgres;

--
-- Name: push_deliveries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.push_deliveries_id_seq OWNED BY public.push_deliveries.id;


--
-- Name: push_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.push_tokens (
    id integer NOT NULL,
    user_id integer NOT NULL,
    token character varying(255) NOT NULL,
    platform character varying(30) NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.push_tokens OWNER TO postgres;

--
-- Name: push_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.push_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.push_tokens_id_seq OWNER TO postgres;

--
-- Name: push_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.push_tokens_id_seq OWNED BY public.push_tokens.id;


--
-- Name: rate_limit_buckets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rate_limit_buckets (
    id integer NOT NULL,
    action character varying(80) NOT NULL,
    subject_hash character varying(64) NOT NULL,
    window_started_at timestamp without time zone NOT NULL,
    count integer DEFAULT 0 NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.rate_limit_buckets OWNER TO postgres;

--
-- Name: rate_limit_buckets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rate_limit_buckets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rate_limit_buckets_id_seq OWNER TO postgres;

--
-- Name: rate_limit_buckets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rate_limit_buckets_id_seq OWNED BY public.rate_limit_buckets.id;


--
-- Name: refresh_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.refresh_tokens (
    id integer NOT NULL,
    user_id integer NOT NULL,
    token_hash character varying(255) NOT NULL,
    expires_at timestamp without time zone NOT NULL,
    revoked_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.refresh_tokens OWNER TO postgres;

--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.refresh_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.refresh_tokens_id_seq OWNER TO postgres;

--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.refresh_tokens_id_seq OWNED BY public.refresh_tokens.id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reports (
    id integer NOT NULL,
    reporter_id integer NOT NULL,
    target_type character varying(20) NOT NULL,
    target_id integer NOT NULL,
    reason character varying(50) NOT NULL,
    detail text,
    status character varying(20) DEFAULT 'open'::character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.reports OWNER TO postgres;

--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reports_id_seq OWNER TO postgres;

--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;


--
-- Name: search_histories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.search_histories (
    id integer NOT NULL,
    user_id integer NOT NULL,
    keyword character varying(100) NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.search_histories OWNER TO postgres;

--
-- Name: search_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.search_histories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.search_histories_id_seq OWNER TO postgres;

--
-- Name: search_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.search_histories_id_seq OWNED BY public.search_histories.id;


--
-- Name: user_blocks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_blocks (
    id integer NOT NULL,
    blocker_id integer NOT NULL,
    blocked_user_id integer NOT NULL,
    reason text,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.user_blocks OWNER TO postgres;

--
-- Name: user_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_blocks_id_seq OWNER TO postgres;

--
-- Name: user_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_blocks_id_seq OWNED BY public.user_blocks.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password_hash character varying(255) NOT NULL,
    nickname character varying(50) NOT NULL,
    major character varying(100),
    phone character varying(20),
    company character varying(100),
    job_title character varying(100),
    "position" character varying(100),
    email character varying(100) NOT NULL,
    profile_image_url character varying(500),
    role character varying(20) DEFAULT 'user'::character varying NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    cohort character varying(20),
    last_login_at timestamp without time zone,
    enrollment_status character varying(20) DEFAULT 'active'::character varying NOT NULL,
    dues_status character varying(20) DEFAULT 'paid'::character varying NOT NULL,
    privacy_policy_version character varying(50),
    privacy_consented_at timestamp without time zone,
    CONSTRAINT ck_users_dues_status CHECK (((dues_status)::text = ANY ((ARRAY['paid'::character varying, 'unpaid'::character varying, 'exempt'::character varying])::text[]))),
    CONSTRAINT ck_users_enrollment_status CHECK (((enrollment_status)::text = ANY ((ARRAY['active'::character varying, 'leave'::character varying, 'graduated'::character varying])::text[])))
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: boards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards ALTER COLUMN id SET DEFAULT nextval('public.boards_id_seq'::regclass);


--
-- Name: bookmarks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmarks ALTER COLUMN id SET DEFAULT nextval('public.bookmarks_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: dues_payers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dues_payers ALTER COLUMN id SET DEFAULT nextval('public.dues_payers_id_seq'::regclass);


--
-- Name: email_verification_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_verification_tokens ALTER COLUMN id SET DEFAULT nextval('public.email_verification_tokens_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: faq_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq_attachments ALTER COLUMN id SET DEFAULT nextval('public.faq_attachments_id_seq'::regclass);


--
-- Name: faqs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);


--
-- Name: legacy_import_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legacy_import_records ALTER COLUMN id SET DEFAULT nextval('public.legacy_import_records_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: major_options id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.major_options ALTER COLUMN id SET DEFAULT nextval('public.major_options_id_seq'::regclass);


--
-- Name: media_assets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media_assets ALTER COLUMN id SET DEFAULT nextval('public.media_assets_id_seq'::regclass);


--
-- Name: notification_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_settings ALTER COLUMN id SET DEFAULT nextval('public.notification_settings_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: operational_audit_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operational_audit_logs ALTER COLUMN id SET DEFAULT nextval('public.operational_audit_logs_id_seq'::regclass);


--
-- Name: password_reset_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens ALTER COLUMN id SET DEFAULT nextval('public.password_reset_tokens_id_seq'::regclass);


--
-- Name: post_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_attachments ALTER COLUMN id SET DEFAULT nextval('public.post_attachments_id_seq'::regclass);


--
-- Name: post_lecture_reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_lecture_reviews ALTER COLUMN id SET DEFAULT nextval('public.post_lecture_reviews_id_seq'::regclass);


--
-- Name: post_mutual_aid id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_mutual_aid ALTER COLUMN id SET DEFAULT nextval('public.post_mutual_aid_id_seq'::regclass);


--
-- Name: post_suggestions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_suggestions ALTER COLUMN id SET DEFAULT nextval('public.post_suggestions_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: privacy_policy_versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.privacy_policy_versions ALTER COLUMN id SET DEFAULT nextval('public.privacy_policy_versions_id_seq'::regclass);


--
-- Name: push_deliveries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.push_deliveries ALTER COLUMN id SET DEFAULT nextval('public.push_deliveries_id_seq'::regclass);


--
-- Name: push_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.push_tokens ALTER COLUMN id SET DEFAULT nextval('public.push_tokens_id_seq'::regclass);


--
-- Name: rate_limit_buckets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rate_limit_buckets ALTER COLUMN id SET DEFAULT nextval('public.rate_limit_buckets_id_seq'::regclass);


--
-- Name: refresh_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('public.refresh_tokens_id_seq'::regclass);


--
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: search_histories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_histories ALTER COLUMN id SET DEFAULT nextval('public.search_histories_id_seq'::regclass);


--
-- Name: user_blocks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_blocks ALTER COLUMN id SET DEFAULT nextval('public.user_blocks_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: account_deletion_receipts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_deletion_receipts (receipt_id, channel, result, completed_at) FROM stdin;
\.


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
0027_event_category_cleanup
\.


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banners (id, placement, title, subtitle, badge_text, cta_label, cta_href, image_url, theme, sort_order, is_active, starts_at, ends_at, created_by, created_at, updated_at, image_urls, deadline_at) FROM stdin;
1	home	AI-SW 커뮤니티	공지, 일정, 커뮤니티와 원우회 소식을 한곳에서 확인하세요.	SOGANG AI-SW	공지 보기	/(tabs)/boards	\N	navy	0	t	\N	\N	1	2026-07-21 05:48:30.696345	2026-07-21 05:48:30.696347	\N	\N
\.


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards (id, name, slug, category, description, sort_order, is_active, created_at, board_type, allow_anonymous, read_permission, write_permission, metadata) FROM stdin;
2	전체 공지	all-notices	notices	원우회와 학교의 주요 공지를 한곳에서 확인합니다.	0	t	2026-07-21 05:48:30.697498	notice	f	user	admin	null
3	학사 공지	academic-notices	notices	학사 안내와 학교 공지를 확인합니다.	1	t	2026-07-21 05:48:30.697499	notice	f	user	admin	null
4	행사 공지	event-notices	notices	원우회와 학교 행사 소식을 확인합니다.	2	t	2026-07-21 05:48:30.697499	notice	f	user	admin	null
5	학사 일정	academic-calendar	notices	학사 일정과 일정 관련 안내를 확인합니다.	3	t	2026-07-21 05:48:30.6975	calendar	f	user	admin	null
6	웨비나/특강 공지	webinar-notices	notices	웨비나, 특강, 외부 세션 정보를 확인합니다.	4	t	2026-07-21 05:48:30.6975	notice	f	user	admin	null
7	사진첩	event-album	community	원우 모임과 행사 사진 기록을 둘러봅니다.	10	t	2026-07-21 05:48:30.697501	album	f	user	user	null
10	종합시험	comprehensive-exam	resources	종합시험 정보와 준비 자료를 확인합니다.	22	t	2026-07-21 05:48:30.697502	resource	t	user	user	null
11	동아리 활동 인증	club-activity	participation	동아리 활동 인증 게시글을 작성하고 확인합니다.	30	t	2026-07-21 05:48:30.697503	activity_certification	f	user	user	null
12	스터디 활동 인증	study-activity	participation	스터디 활동 인증 게시글을 작성하고 확인합니다.	31	t	2026-07-21 05:48:30.697503	activity_certification	f	user	user	null
13	네트워킹 활동 인증	networking-activity	participation	멘토링과 네트워킹 활동 기록을 확인합니다.	32	t	2026-07-21 05:48:30.697503	activity_certification	f	user	user	null
14	원우회 활동내역	council-activity	council	원우회 활동과 결과를 확인합니다.	40	t	2026-07-21 05:48:30.697504	activity_history	f	user	admin	null
15	회계 장부	accounting	council	원우회 회계와 예산 집행 자료를 확인합니다.	41	t	2026-07-21 05:48:30.697504	external_link	f	user	admin	{"external_url": "https://docs.google.com/spreadsheets/d/1EZYg9k0dxLNHPqn9wUpPzfp_jYP3lMi4DrqEyfULgt4/edit?gid=885326518#gid=885326518"}
16	건의사항	suggestions	council	건의사항을 남기고 공식 답변을 확인합니다.	42	t	2026-07-21 05:48:30.697505	suggestion	t	user	user	null
17	상조회	mutual-aid	council	경조사 신청을 접수하고 처리 상태를 확인합니다.	43	t	2026-07-21 05:48:30.697505	mutual_aid	f	user	user	null
18	전공 커뮤니티	community-major	community	전공 질문과 커뮤니티 이야기를 나눕니다.	11	t	2026-07-21 05:48:30.697506	post	t	user	user	null
19	논문 자료 공유	community-paper	community	논문, 연구 자료, 참고 자료를 공유합니다.	12	t	2026-07-21 05:48:30.697506	post	t	user	user	null
20	세미나 공유	community-seminar	community	세미나 정보와 참여 후기를 공유합니다.	13	t	2026-07-21 05:48:30.697506	post	t	user	user	null
21	채용 정보 공유	community-job	community	취업, 인턴, 커리어 정보를 나눕니다.	14	t	2026-07-21 05:48:30.697507	post	t	user	user	null
22	동아리 지원 신청	club-apply	club	동아리 참여 신청과 모집 글을 확인합니다.	50	t	2026-07-21 05:48:30.697507	post	f	user	user	null
23	동아리 홍보	club-promo	club	동아리 소개와 홍보 글을 둘러봅니다.	51	t	2026-07-21 05:48:30.697508	post	f	user	admin	null
24	스터디 모집	study-recruit	study	스터디 그룹 모집 글을 확인합니다.	60	t	2026-07-21 05:48:30.697508	post	f	user	user	null
25	스터디 지원 신청	study-apply	study	스터디 참여 신청과 관련 글을 확인합니다.	61	t	2026-07-21 05:48:30.697508	post	f	user	user	null
26	동문 주소록	alumni-directory	alumni	리멤버 명함 기반 동문 주소록 안내를 확인합니다.	71	t	2026-07-21 05:48:30.697509	external_link	f	user	admin	null
27	네트워킹 안내	networking-programs	alumni	선후배 네트워킹과 멘토링 프로그램 안내를 확인합니다.	72	t	2026-07-21 05:48:30.697509	post	f	user	admin	null
30	건의사항 피드백	gsa-feedback	gsa	건의사항 처리 결과와 원우회 피드백을 확인합니다.	81	t	2026-07-21 05:48:30.697511	post	t	user	admin	null
31	자주 묻는 질문	gsa-faq	gsa	원우회 관련 자주 묻는 질문을 확인합니다.	84	t	2026-07-21 05:48:30.697511	faq	f	user	admin	null
32	로드맵 & 원우회비 혜택	gsa-roadmap-benefits	gsa	원우회 로드맵과 원우회비 혜택 안내를 확인합니다.	85	t	2026-07-21 05:48:30.697511	guide	f	user	admin	null
8	강의후기	lecture-reviews	resources	강의후기와 수강 경험을 공유합니다.	20	t	2026-07-21 05:48:30.697501	resource	t	user	user	null
9	시험족보	exam-archive	resources	시험 자료와 학습 자료를 공유합니다.	21	t	2026-07-21 05:48:30.697502	resource	t	user	user	null
28	임원진 소개	gsa-executives	gsa	원우회 임원진 소개와 명단을 확인합니다.	78	t	2026-07-21 05:48:30.69751	organization_intro	f	user	admin	{"executives": [{"name": "김진산", "role": "회장", "intro": "원우들의 목소리를 빠르게 연결하겠습니다.", "cohort": "72기", "image_url": ""}, {"name": "김유림", "role": "부회장", "intro": "즐겁게 참여할 수 있는 원우회를 만들겠습니다.", "cohort": "72기", "image_url": ""}, {"name": "민지선", "role": "기획국 국장", "intro": "다양한 교류 프로그램을 준비하겠습니다.", "cohort": "72기", "image_url": ""}], "council_introductions": [{"intro": "원우들의 학교생활과 교류가 더 즐거워질 수 있도록 가까이에서 듣고 함께 움직이겠습니다.", "title": "제30대 원우회", "members": [{"name": "김진산", "role": "회장", "intro": "원우들의 목소리를 빠르게 연결하겠습니다.", "cohort": "72기", "image_url": ""}, {"name": "김유림", "role": "부회장", "intro": "즐겁게 참여할 수 있는 원우회를 만들겠습니다.", "cohort": "72기", "image_url": ""}, {"name": "민지선", "role": "기획국 국장", "intro": "다양한 교류 프로그램을 준비하겠습니다.", "cohort": "72기", "image_url": ""}], "greeting": "안녕하세요, 제30대 AI·SW대학원 원우회입니다.", "banner_image_url": ""}]}
33	졸업논문	graduation-thesis	resources	졸업논문 정보와 준비 자료를 공유합니다.	23	t	2026-08-04 08:47:10.92446	resource	t	user	user	null
29	기장단 소개	gsa-cohort-leaders	gsa	기수별 기장단 소개와 인사말을 확인합니다.	79	t	2026-07-21 05:48:30.69751	organization_intro	f	user	admin	{"cohort_leaders": [{"intro": "75기 동기들이 즐겁게 학교 생활을 할 수 있도록 다양한 모임과 행사를 기획하고 있어요.", "cohort": "75", "members": [{"name": "정도현", "role": "기장", "intro": "", "cohort": "75기", "image_url": ""}, {"name": "김서연", "role": "부기장", "intro": "", "cohort": "75기", "image_url": ""}, {"name": "윤하늘", "role": "총무", "intro": "", "cohort": "75기", "image_url": ""}], "greeting": "안녕하세요, 75기 기장 정도현입니다!", "photo_urls": ["/uploads/IYc7ESIvZpgnwbYZXX38gmJki9enN40dJ-bOvvVsLIo.png", "/uploads/test-photo-1-wide-red.png", "/uploads/test-photo-2-tall-blue.png", "/uploads/test-photo-3-square-green.png"], "captain_name": "정도현", "vice_captain_name": "김서연"}, {"intro": "74기 원우들의 소통과 교류를 위해 힘쓰고 있습니다.", "cohort": "74", "members": [{"name": "이지훈", "role": "기장", "intro": "", "cohort": "74기", "image_url": ""}, {"name": "박민지", "role": "부기장", "intro": "", "cohort": "74기", "image_url": ""}], "greeting": "안녕하세요, 74기 기장 이지훈입니다!", "photo_urls": ["/uploads/IYc7ESIvZpgnwbYZXX38gmJki9enN40dJ-bOvvVsLIo.png", "/uploads/test-photo-1-wide-red.png"], "captain_name": "이지훈", "vice_captain_name": "박민지"}, {"intro": "73기 동기 여러분의 학업과 네트워킹을 지원합니다.", "cohort": "73", "members": [{"name": "최유나", "role": "기장", "intro": "", "cohort": "73기", "image_url": ""}, {"name": "정우성", "role": "부기장", "intro": "", "cohort": "73기", "image_url": ""}], "greeting": "안녕하세요, 73기 기장 최유나입니다!", "photo_urls": ["/uploads/IYc7ESIvZpgnwbYZXX38gmJki9enN40dJ-bOvvVsLIo.png"], "captain_name": "최유나", "vice_captain_name": "정우성"}, {"intro": "72기 원우회 활동에 많은 관심 부탁드립니다.", "cohort": "72", "members": [{"name": "박준영", "role": "기장", "intro": "", "cohort": "72기", "image_url": ""}, {"name": "김하늘", "role": "부기장", "intro": "", "cohort": "72기", "image_url": ""}], "greeting": "안녕하세요, 72기 기장 박준영입니다!", "photo_urls": [], "captain_name": "박준영", "vice_captain_name": "김하늘"}]}
1	역대 원우회	gsa-past-councils	gsa	역대 원우회 임원진과 활동내역을 확인합니다.	80	t	2026-07-21 05:48:29.591123	organization_intro	f	user	admin	{"past_councils": [{"intro": "29대 원우회는 원우 복지와 학술 교류 강화에 힘썼습니다.", "cohort": "29", "members": [{"name": "박승권", "role": "회장", "intro": "", "cohort": "70기", "image_url": ""}, {"name": "이수민", "role": "부회장", "intro": "", "cohort": "70기", "image_url": ""}, {"name": "최은서", "role": "기획국장", "intro": "", "cohort": "69기", "image_url": ""}], "greeting": "안녕하세요, 제29대 원우회입니다.", "activities": [{"date": "25.05.05(금)", "title": "74기 원우회 이임식"}, {"date": "24.10.18(금)", "title": "가을 체육대회 개최"}, {"date": "24.03.04(월)", "title": "2024학년도 신입생 환영회"}], "photo_urls": ["/uploads/IYc7ESIvZpgnwbYZXX38gmJki9enN40dJ-bOvvVsLIo.png", "/uploads/test-photo-1-wide-red.png", "/uploads/test-photo-2-tall-blue.png", "/uploads/test-photo-3-square-green.png", "/uploads/test-photo-4-wide-orange.png", "/uploads/test-photo-5-tall-purple.png", "/uploads/test-photo-6-square-navy.png", "/uploads/7D_JoEb7oYtxR2_MfUApqR-ph_CIdy__67hpgeBFtSQ.png"], "president_name": "박승권", "president_cohort": "70기", "vice_president_name": "이수민", "vice_president_cohort": "70기"}, {"intro": "28대 원우회 활동 소개입니다.", "cohort": "28", "members": [{"name": "김도윤", "role": "회장", "intro": "", "cohort": "69기", "image_url": ""}, {"name": "한지우", "role": "부회장", "intro": "", "cohort": "69기", "image_url": ""}], "greeting": "안녕하세요, 제28대 원우회입니다.", "activities": [{"date": "24.02.16(금)", "title": "취업 멘토링 프로그램 운영"}, {"date": "23.09.22(금)", "title": "가을 체육대회 개최"}], "photo_urls": ["/uploads/IYc7ESIvZpgnwbYZXX38gmJki9enN40dJ-bOvvVsLIo.png", "/uploads/test-photo-1-wide-red.png"], "president_name": "김도윤", "president_cohort": "69기", "vice_president_name": "한지우", "vice_president_cohort": "69기"}, {"intro": "27대 원우회 활동 소개입니다.", "cohort": "27", "members": [{"name": "이하은", "role": "회장", "intro": "", "cohort": "68기", "image_url": ""}], "greeting": "안녕하세요, 제27대 원우회입니다.", "activities": [{"date": "23.03.10(금)", "title": "동아리 지원금 확대 시행"}], "photo_urls": ["/uploads/IYc7ESIvZpgnwbYZXX38gmJki9enN40dJ-bOvvVsLIo.png"], "president_name": "이하은", "president_cohort": "68기"}, {"intro": "26대 원우회 활동 소개입니다.", "cohort": "26", "members": [{"name": "정민재", "role": "회장", "intro": "", "cohort": "67기", "image_url": ""}], "greeting": "안녕하세요, 제26대 원우회입니다.", "activities": [], "photo_urls": [], "president_name": "정민재", "president_cohort": "67기"}]}
\.


--
-- Data for Name: bookmarks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bookmarks (id, user_id, post_id, created_at) FROM stdin;
3	2	18	2026-06-23 10:00:00
4	2	19	2026-06-20 14:30:00
5	2	20	2026-06-15 09:10:00
6	1	77	2026-08-21 15:56:51.380231
7	3	77	2026-08-21 15:57:37.953675
8	1	78	2026-08-21 16:03:55.295899
9	1	79	2026-08-21 16:03:55.310015
10	1	80	2026-08-21 16:03:55.325489
11	1	81	2026-08-21 16:03:55.34056
12	3	81	2026-08-21 16:07:12.207617
13	3	78	2026-08-21 16:07:25.397669
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, post_id, author_id, parent_id, content, created_at, updated_at, author_nickname_snapshot, author_cohort_snapshot) FROM stdin;
1	30	1	\N	저도 참여하고 싶어요!!	2026-07-22 13:09:44.925383	2026-07-22 13:09:44.925386	72gi_KimJinsan	72
2	30	2	\N	저도 참여하고 싶어요! 화요일 시간 괜찮습니다.	2026-07-22 12:52:57.123194	2026-07-22 12:52:57.123194	김동료	71
3	30	2	\N	온라인으로 진행되나요? 줌 링크는 어떻게 받나요?	2026-07-22 13:07:57.123194	2026-07-22 13:07:57.123194	김동료	71
6	17	1	\N	ㅓ이ㅏ어랑	2026-08-05 04:12:05.83169	2026-08-05 04:12:05.831692	72gi_KimJinsan	72
7	17	1	\N	ㄹㄴㅇㄹㅇㄹ	2026-08-05 04:13:32.687211	2026-08-05 04:13:32.687212	72gi_KimJinsan	72
8	17	1	\N	ㄴㅇㄹㄴㅇㄹ	2026-08-05 04:13:34.635158	2026-08-05 04:13:34.63516	72gi_KimJinsan	72
9	17	1	\N	djfkdjkjkjkjfkdjf	2026-08-05 10:53:15.476691	2026-08-05 10:53:15.476693	72gi_KimJinsan	72
10	21	1	\N	저도 참여하고 싶어요!	2026-08-05 11:33:49.550397	2026-08-05 11:33:49.550398	72gi_KimJinsan	72
11	46	1	\N	저도 참여하고 싶어요!	2026-08-05 11:33:49.551272	2026-08-05 11:33:49.551273	72gi_KimJinsan	72
12	17	1	\N	감사합니다!!!	2026-08-05 11:50:33.980584	2026-08-05 11:50:33.980586	72gi_KimJinsan	72
13	17	3	\N	족보 공유 감사합니다! 혹시 작년 자료도 있나요?	2026-08-05 12:00:10.762477	2026-08-05 12:00:10.762479	손예진	73
14	17	3	\N	덕분에 시험 준비 잘했습니다. 다음 학기에도 부탁드려요!	2026-08-05 13:13:03.888398	2026-08-05 13:13:03.8884	손예진	73
16	17	3	7	화이팅입니다	2026-08-15 14:31:16.853424	2026-08-15 14:31:16.853426	손예진	73
17	17	2	12	저도 감사드려요! 시험 잘 봅시다	2026-08-15 14:34:32.446513	2026-08-15 14:34:32.446515	김동료	71
18	17	4	13	작년 자료는 게시판에 따로 올라와 있어요!	2026-08-15 14:34:32.446516	2026-08-15 14:34:32.446516	예진	73
19	18	2	15	확인했습니다! 다들 화이팅입니다 :)	2026-08-15 14:34:32.446517	2026-08-15 14:34:32.446517	김동료	71
21	70	3	\N	참여하고 싶어요!	2026-08-15 17:28:22.740852	2026-08-15 17:28:22.740854	손예진	73
22	62	3	\N	관심 있습니다!	2026-08-15 17:30:07.791419	2026-08-15 17:30:07.791422	손예진	73
23	18	3	\N	안녕하세요	2026-08-16 14:20:09.383209	2026-08-16 14:20:09.38321	손예진	73
26	18	3	23	hello	2026-08-16 14:21:14.045399	2026-08-16 14:21:14.045401	손예진	73
15	18	3	\N	helloㅇㅇ	2026-08-15 14:17:04.847351	2026-08-16 14:27:02.827869	손예진	73
28	17	3	13	hello	2026-08-16 14:35:19.62443	2026-08-16 14:35:19.624431	손예진	73
\.


--
-- Data for Name: dues_payers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dues_payers (id, student_number, name, major, created_at, updated_at) FROM stdin;
1	A72001	72gi_KimJinsan	AI·SW	2026-08-15 16:39:15.476582	2026-08-15 16:50:01.033322
2	A71001	김동료	AI·SW	2026-08-15 16:39:15.476585	2026-08-15 16:50:01.033325
3	A73001	손예진	AI·SW	2026-08-15 16:39:15.476586	2026-08-15 16:50:01.033326
4	A73002	예진	AI·SW	2026-08-15 16:39:15.476587	2026-08-15 16:50:01.033327
5	A72002	김민석	AI·SW	2026-08-15 16:39:15.476587	2026-08-15 16:50:01.033327
6	A73003	서인국	AI·SW	2026-08-15 16:39:15.476588	2026-08-15 16:50:01.033328
\.


--
-- Data for Name: email_verification_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email_verification_tokens (id, email, code_hash, purpose, expires_at, consumed_at, created_at, attempt_count) FROM stdin;
46	mail-check@sogang.ac.kr	hmac-sha256:v1:c874315c5a30dedd06aabc2096ccbae2450bc26926d4dab8edb85cd3a9b066ae	register	2026-08-21 15:01:20.820916	\N	2026-08-21 14:56:20.821118	0
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (id, title, description, location, category, color, start_at, end_at, created_by, created_at, updated_at) FROM stdin;
1	2학기 수강신청 마감	2026학년도 2학기 수강신청이 마감됩니다. 시간 내 반드시 신청을 완료해 주세요.	학교 포털	academic	\N	2026-07-22 18:00:00	\N	1	2026-07-22 01:22:27.648738	2026-07-22 01:22:27.648738
2	신입생 환영회	AISW 대학원 신입생 환영회가 열립니다.	다산관 101호	event	\N	2026-07-24 19:00:00	2026-07-24 21:00:00	1	2026-07-22 01:22:27.648738	2026-07-22 01:22:27.648738
5	등록금 납부 마감	2026-2학기 등록금 납부 마감일입니다.	\N	academic	\N	2026-07-31 17:00:00	\N	1	2026-07-22 01:22:27.648738	2026-07-22 01:22:27.648738
6	신입생 환영회	2학기 신입생 환영 행사	본관 대강당	event	#2761FF	2026-08-05 12:09:45.593452	2026-08-05 14:09:45.593452	1	2026-08-04 09:09:45.593452	2026-08-04 09:09:45.593452
9	2학기 등록금 납부 마감	등록금 납부 마감일	\N	academic	#854F0B	2026-08-14 18:09:45.593452	\N	1	2026-08-04 09:09:45.593452	2026-08-04 09:09:45.593452
11	학술제 (3일간)	대학원 학술제 3일 진행	컨벤션홀	event	#2761FF	2026-08-06 18:17:43.890974	2026-08-09 03:17:43.890974	1	2026-08-04 09:17:43.890974	2026-08-04 09:17:43.890974
12	졸업논문 사전 심사	\N	\N	academic	\N	2026-08-11 05:00:00	\N	1	2026-08-11 14:34:22.430605	2026-08-11 14:34:22.43061
13	2학기 수강신청 마감	\N	\N	academic	\N	2026-08-11 09:00:00	\N	1	2026-08-11 14:34:22.465137	2026-08-11 14:34:22.465138
14	신입생 환영회	\N	김대건관 세미나실	event	\N	2026-08-11 10:00:00	2026-08-11 12:00:00	1	2026-08-11 14:34:22.496531	2026-08-11 14:34:22.496532
15	기타 일정 태그 테스트	카테고리 other가 태그 [일정] 하나로만 떠야 합니다.	본관 101호	other	\N	2026-08-22 05:49:24.197497	2026-08-22 07:49:24.197497	1	2026-08-21 05:49:24.197497	2026-08-21 05:49:24.197497
16	2026-2학기 수강 정정 기간	수강 정정은 포털에서 진행합니다.	온라인 포털	academic	\N	2026-08-23 06:05:20.993367	2026-08-24 06:05:20.993367	1	2026-08-21 06:05:20.993367	2026-08-21 06:05:20.993367
17	대학원 라운지 정기 소독	라운지 이용이 일시 제한됩니다.	대학원 라운지	other	\N	2026-08-25 06:05:20.993367	2026-08-25 06:05:20.993367	1	2026-08-21 06:05:20.993367	2026-08-21 06:05:20.993367
3	중간고사 시작	2학기 중간고사 기간이 시작됩니다.	\N	other	\N	2026-07-28 09:00:00	\N	1	2026-07-22 01:22:27.648738	2026-07-22 01:22:27.648738
4	원우회 정기총회	2026학년도 원우회 정기총회.	학생회관 대회의실	other	\N	2026-07-25 18:30:00	2026-07-25 20:00:00	1	2026-07-22 01:22:27.648738	2026-07-22 01:22:27.648738
7	원우회 정기총회	하반기 정기총회	학생회관 세미나실	other	#3B6D11	2026-08-07 18:09:45.593452	2026-08-07 20:09:45.593452	1	2026-08-04 09:09:45.593452	2026-08-04 09:09:45.593452
8	중간고사 시작	2학기 중간고사 기간 시작	\N	other	#993556	2026-08-10 09:09:45.593452	\N	1	2026-08-04 09:09:45.593452	2026-08-04 09:09:45.593452
10	AI 특강: 최신 LLM 동향	외부 연사 초청 특강	공학관 401호	other	#0C447C	2026-08-04 11:09:45.593452	2026-08-04 13:09:45.593452	1	2026-08-04 09:09:45.593452	2026-08-04 09:09:45.593452
\.


--
-- Data for Name: faq_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faq_attachments (id, faq_id, media_id, sort_order, created_at) FROM stdin;
\.


--
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faqs (id, question, answer, category, sort_order, is_active, created_at, updated_at) FROM stdin;
4	원우회 가입은 어떻게 하나요?	회원가입 시 자동으로 원우회 회원이 됩니다. 별도 가입 절차는 없어요.	원우회	0	t	2026-08-15 16:27:01.066113	2026-08-15 16:27:01.06613
5	원우회비는 언제 납부하나요?	매 학기 초 등록금 납부 기간에 함께 안내드려요.	원우회	1	t	2026-08-15 16:27:01.066131	2026-08-15 16:27:01.066132
6	건의사항은 익명으로 작성되나요?	네, 모든 건의사항은 익명으로 작성되고 처리됩니다.	원우회	2	t	2026-08-15 16:27:01.066132	2026-08-15 16:27:01.066133
\.


--
-- Data for Name: legacy_import_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.legacy_import_records (id, source_file, source_sheet, source_row, entity_type, source_id, source_parent_id, source_hash, action, status, target_table, target_id, reason, redacted_details, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes (id, user_id, post_id, created_at) FROM stdin;
2	1	16	2026-07-22 06:34:26.970627
5	3	46	2026-08-05 11:39:11.989306
6	1	22	2026-08-05 11:50:11.689111
7	3	17	2026-08-05 13:13:03.848153
8	1	17	2026-08-05 13:13:27.257127
\.


--
-- Data for Name: major_options; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.major_options (id, name, sort_order, is_active, created_at, updated_at) FROM stdin;
2	소프트웨어	20	f	2026-07-21 05:48:29.997166	2026-08-11 13:24:38.398137
4	데이터사이언스·인공지능	40	f	2026-07-21 05:48:29.997166	2026-08-11 13:24:38.398137
5	데이터사이언스ㆍ인공지능	10	t	2026-08-11 13:24:38.398137	2026-08-11 13:24:38.398137
6	데이터사이언스	20	t	2026-08-11 13:24:38.398137	2026-08-11 13:24:38.398137
1	인공지능	30	t	2026-07-21 05:48:29.997166	2026-08-11 13:24:38.398137
7	소프트웨어공학	40	t	2026-08-11 13:24:38.398137	2026-08-11 13:24:38.398137
8	소프트웨어공학 및 컴퓨터시스템	50	t	2026-08-11 13:24:38.398137	2026-08-11 13:24:38.398137
9	정보보호	60	t	2026-08-11 13:24:38.398137	2026-08-11 13:24:38.398137
3	블록체인	70	t	2026-07-21 05:48:29.997166	2026-08-11 13:24:38.398137
10	보안 및 블록체인	80	t	2026-08-11 13:24:38.398137	2026-08-11 13:24:38.398137
\.


--
-- Data for Name: media_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.media_assets (id, owner_id, original_filename, stored_filename, content_type, file_size, url, status, created_at, is_private) FROM stdin;
1	1	01_parser_list.png	7D_JoEb7oYtxR2_MfUApqR-ph_CIdy__67hpgeBFtSQ.png	image/png	366662	/uploads/7D_JoEb7oYtxR2_MfUApqR-ph_CIdy__67hpgeBFtSQ.png	ready	2026-07-21 08:03:30.341725	f
2	1	album_mt.png	-aBFgCTcU6_fQ4SVwdxSd1Xscu5DvNQnq-KQcVFkyPs.png	image/png	2339	/uploads/-aBFgCTcU6_fQ4SVwdxSd1Xscu5DvNQnq-KQcVFkyPs.png	ready	2026-07-22 03:52:13.872611	f
3	1	album_study.png	C0i2l4ayVQ7Qv_BeUGUETkiZQMXGi-addzY9h5YIJyk.png	image/png	2339	/uploads/C0i2l4ayVQ7Qv_BeUGUETkiZQMXGi-addzY9h5YIJyk.png	ready	2026-07-22 03:52:13.899443	f
4	1	album_network.png	L9Qa0Jn0o9T9X0C3vqOlLdsRUW_OD4wpyl9NLAOU2tw.png	image/png	2711	/uploads/L9Qa0Jn0o9T9X0C3vqOlLdsRUW_OD4wpyl9NLAOU2tw.png	ready	2026-07-22 03:52:13.938367	f
5	1	album_council.png	vfKqmIcXBgHGM9QP2SSjMEc2BXIsjVNjpG0185ut_5g.png	image/png	2339	/uploads/vfKqmIcXBgHGM9QP2SSjMEc2BXIsjVNjpG0185ut_5g.png	ready	2026-07-22 03:52:13.977441	f
6	1	album_11_1.png	eAeyH_hPMRHfsJW1ri13-ODFg3xRxXCQV53EgrIe9hM.png	image/png	2338	/uploads/eAeyH_hPMRHfsJW1ri13-ODFg3xRxXCQV53EgrIe9hM.png	ready	2026-07-22 03:53:47.098236	f
7	1	album_11_2.png	PR_rPCOziA8VARHkpCmKVyDQFEdpsjQryyNTOBdkEMU.png	image/png	2339	/uploads/PR_rPCOziA8VARHkpCmKVyDQFEdpsjQryyNTOBdkEMU.png	ready	2026-07-22 03:53:47.132071	f
8	1	album_11_3.png	IrCx2vghtubTVli9hN1QwTXVP19BCWVlBejFO5M4x2A.png	image/png	2338	/uploads/IrCx2vghtubTVli9hN1QwTXVP19BCWVlBejFO5M4x2A.png	ready	2026-07-22 03:53:47.162033	f
9	1	album_12_1.png	DFAcm2dlYqhhelPpkQmz6XxZHnVNAOhzNZqxzF_OEjA.png	image/png	2339	/uploads/DFAcm2dlYqhhelPpkQmz6XxZHnVNAOhzNZqxzF_OEjA.png	ready	2026-07-22 03:53:47.195388	f
10	1	album_12_2.png	TJilkHAIBKYv3dbyHHw_OsW5mtkEWBzmeBCwAcVXF9c.png	image/png	2338	/uploads/TJilkHAIBKYv3dbyHHw_OsW5mtkEWBzmeBCwAcVXF9c.png	ready	2026-07-22 03:53:47.229429	f
11	1	album_12_3.png	ihQm-AyHCIJYH_4K0ly6XuaieQEwQHvXlsvthGlH_HY.png	image/png	2339	/uploads/ihQm-AyHCIJYH_4K0ly6XuaieQEwQHvXlsvthGlH_HY.png	ready	2026-07-22 03:53:47.262599	f
12	1	album_13_1.png	ixPr-xK2rRLdbdqEEru3mmOzAzqXz4LZ6tEYFUb-v0I.png	image/png	2339	/uploads/ixPr-xK2rRLdbdqEEru3mmOzAzqXz4LZ6tEYFUb-v0I.png	ready	2026-07-22 03:53:47.296563	f
13	1	album_13_2.png	V4aHhZdEWlPOQbbKvK1ElONqJ2rbVkm4Ku18XqhSCtM.png	image/png	2338	/uploads/V4aHhZdEWlPOQbbKvK1ElONqJ2rbVkm4Ku18XqhSCtM.png	ready	2026-07-22 03:53:47.328166	f
14	1	album_13_3.png	tfhqE4LSCufz8pGuQ-7eCrZY6Xxoe2T4tDYFfvpasDI.png	image/png	2339	/uploads/tfhqE4LSCufz8pGuQ-7eCrZY6Xxoe2T4tDYFfvpasDI.png	ready	2026-07-22 03:53:47.358846	f
15	1	album_14_1.png	6LdiCkPvzcV3SDGJX6ZyHPoeCEqUnfC7S6OXraxVDhE.png	image/png	2339	/uploads/6LdiCkPvzcV3SDGJX6ZyHPoeCEqUnfC7S6OXraxVDhE.png	ready	2026-07-22 03:53:47.387072	f
16	1	album_14_2.png	VIPkF2W1q-1UHnPExsLfIltvESdzZudAie7_XfSawz0.png	image/png	2338	/uploads/VIPkF2W1q-1UHnPExsLfIltvESdzZudAie7_XfSawz0.png	ready	2026-07-22 03:53:47.417411	f
17	1	album_14_3.png	ou5r1qXxxS7Fk8EVIUi0B1Sz8ThsMhNiSNbwaOIk6Wg.png	image/png	2339	/uploads/ou5r1qXxxS7Fk8EVIUi0B1Sz8ThsMhNiSNbwaOIk6Wg.png	ready	2026-07-22 03:53:47.447138	f
18	1	IMG_3108.png	jQId1wAvoLrkEzBKPfxFGS8jIe49qNTgTl7x7yedgak.png	image/png	1135226	/uploads/jQId1wAvoLrkEzBKPfxFGS8jIe49qNTgTl7x7yedgak.png	ready	2026-07-22 04:23:31.264607	f
19	1	IMG_3104.png	17HO8BqJxVLnJP0jLUWvvXeX6wuemQlEsdaigmkuE4Q.png	image/png	92248	/uploads/17HO8BqJxVLnJP0jLUWvvXeX6wuemQlEsdaigmkuE4Q.png	ready	2026-07-22 11:09:32.564368	f
20	1	IMG_3108.png	kBr8rQ4WvKYmwLJH2Ackf-O82zeg0lklnMf-kxPXHHs.png	image/png	1135226	/uploads/kBr8rQ4WvKYmwLJH2Ackf-O82zeg0lklnMf-kxPXHHs.png	ready	2026-07-22 11:09:38.682496	f
21	1	IMG_3104.png	OyatxYyiaSsDBPyKOlW5QH5sEpMxhcSVap-4VXWmvaU.png	image/png	92248	/uploads/OyatxYyiaSsDBPyKOlW5QH5sEpMxhcSVap-4VXWmvaU.png	ready	2026-07-22 11:15:52.192427	f
22	1	IMG_3108.png	dZSNb3La-LGzch-QkdAeVt1ewirJPegXApc09CHupB4.png	image/png	1135226	/uploads/dZSNb3La-LGzch-QkdAeVt1ewirJPegXApc09CHupB4.png	ready	2026-07-22 11:15:56.565907	f
23	1	IMG_3104.png	wzA1uu4SZWnmE24qjOWG15sS9RqiOdlgWfEbn3p99Do.png	image/png	92248	/uploads/wzA1uu4SZWnmE24qjOWG15sS9RqiOdlgWfEbn3p99Do.png	ready	2026-07-22 13:23:32.614863	f
24	1	IMG_3108 (1).png	IYc7ESIvZpgnwbYZXX38gmJki9enN40dJ-bOvvVsLIo.png	image/png	1135226	/uploads/IYc7ESIvZpgnwbYZXX38gmJki9enN40dJ-bOvvVsLIo.png	ready	2026-07-22 13:36:59.430972	f
25	3	album-test.png	p5HSQye2Ql_Td4Wf_OnoO8A6hjK7XvIeqcG3SGq6FZs.png	image/png	60428	/api/media/25/access-url	ready	2026-08-05 13:20:40.067652	f
26	1	IMG_3104.png	OYJhP_M4_goTKctVDk77jSZZ1SSElud69QWcbHgr4YI.png	image/png	92248	/api/media/26/access-url	ready	2026-08-07 03:21:19.345442	t
27	3	wide-arch.png	QFRhfAjeoEAiVKsfbrn1IfRHQhRE9v_VmyPNNHIJZnA.png	image/png	39518	/api/media/27/access-url	ready	2026-08-07 03:35:08.988011	f
28	3	ultra-table.png	CvHhALwD6EfX58fMdPuwYSgtGsAchiy2W9Cmg6Psg-A.png	image/png	14513	/api/media/28/access-url	ready	2026-08-07 03:35:09.243892	f
29	3	text-strip.png	Kfyzre8DLAhFW6_dvB1GRhIrdeD8cmVsbd1tYqkLUjY.png	image/png	2948	/api/media/29/access-url	ready	2026-08-07 03:35:09.352151	f
30	3	phone-portrait-4x3.png	eqm8mT69IuDVJspDcAKqBJs0SqCWn5Kb6bKSmy8tg4U.png	image/png	16096	/api/media/30/access-url	ready	2026-08-07 03:39:40.788259	f
31	3	phone-landscape-4x3.png	nF_WTO-EZ2x2KeZVMS9ywhHSwFMpoKF3lvkTKatMK1c.png	image/png	14686	/api/media/31/access-url	ready	2026-08-07 03:39:40.95189	f
32	3	phone-portrait-16x9.png	Bjn26Uu80Ziaoo6ki79TTSKy9acabUj4GYM9QFSPVlw.png	image/png	12317	/api/media/32/access-url	ready	2026-08-07 03:39:41.035034	f
33	3	aisw-logo.png	SkW7WLrEVVSoxr2yN-r0V1VdDwW7E7uXOLwtn2j1Sls.png	image/png	73770	/api/media/33/access-url	ready	2026-08-07 04:42:02.450924	f
34	1	02_parser_add.png	TSZDx7BW1ntvks3K2TSbNWU9-WQp23RCswL2oh_DCm0.png	image/png	268898	/api/media/34/access-url	ready	2026-08-11 15:32:06.635194	f
35	1	01_parser_list.png	3lKJWuqH8BKohWnAt6FRtBLDM6CEcrh5I8ZNF2uEUz4.png	image/png	366662	/api/media/35/access-url	ready	2026-08-11 15:32:06.691889	f
36	1	cohort-banner-test.png	cohort-banner-test.png	image/png	77998	/api/media/36/access-url	ready	2026-08-12 14:49:55.819952	f
37	3	IMG_3104.png	GEUWMTwmJ8gQVS8x7kGQQuXVIGZdpSy4nD2motoji_M.png	image/png	92248	/api/media/37/access-url	ready	2026-08-15 16:38:19.1188	f
38	3	6d70bdaa-cc04-4f4c-8f43-cfe4aca49ed9.jpg	FAIsGy8oqk5UV7am9PaPTLJ-pOi6L3rM_a9FXkzBYiU.jpg	image/jpeg	176655	/api/media/38/access-url	ready	2026-08-15 16:53:11.614553	f
39	3	IMG_3108 (1).png	q-GmXgTN1wdyL8IwVBcZCXyqO7zSw_B99iNzkbDm3V4.png	image/png	1135226	/api/media/39/access-url	ready	2026-08-15 17:02:04.564861	f
40	1	test-photo-1-wide-red.png	test-photo-1-wide-red.png	image/png	19065	/uploads/test-photo-1-wide-red.png	ready	2026-08-15 17:12:20.010761	f
41	1	test-photo-2-tall-blue.png	test-photo-2-tall-blue.png	image/png	15788	/uploads/test-photo-2-tall-blue.png	ready	2026-08-15 17:12:20.010764	f
42	1	test-photo-3-square-green.png	test-photo-3-square-green.png	image/png	17604	/uploads/test-photo-3-square-green.png	ready	2026-08-15 17:12:20.010765	f
43	1	test-photo-4-wide-orange.png	test-photo-4-wide-orange.png	image/png	13567	/uploads/test-photo-4-wide-orange.png	ready	2026-08-15 17:12:20.010766	f
44	1	test-photo-5-tall-purple.png	test-photo-5-tall-purple.png	image/png	15413	/uploads/test-photo-5-tall-purple.png	ready	2026-08-15 17:12:20.010766	f
45	1	test-photo-6-square-navy.png	test-photo-6-square-navy.png	image/png	13989	/uploads/test-photo-6-square-navy.png	ready	2026-08-15 17:12:20.010767	f
46	1	2026-2학기 학사일정 안내.pdf	test-notice-guide.pdf	application/pdf	403	/uploads/test-notice-guide.pdf	ready	2026-08-15 17:42:56.286184	f
47	3	스크린샷 2026-08-21 오후 2.41.56.png	uAZgY3cNszNyPhFUfDvelx2DC0u-xrid_TNUsogXV3o.png	image/png	93229	/api/media/47/access-url	ready	2026-08-21 11:38:01.984384	f
48	3	스크린샷 2026-08-16 오전 1.53.49.png	FOu4LhnEC3rjDPnXDwKHOODDCZm3z4Ri9OKQJiJp7tM.png	image/png	18459	/api/media/48/access-url	ready	2026-08-21 11:57:50.469838	t
49	3	스크린샷 2026-08-21 오후 7.54.06.png	yOu0qgbeQVCPy5o5oYYLJGOewyGy7xI4XNzs-jOVPos.png	image/png	61265	/api/media/49/access-url	ready	2026-08-21 12:30:05.807589	f
50	3	스크린샷 2026-08-21 오후 9.12.58.png	cwsQn4Cm382d1L97SS8E1sO61jPJdzFC9_Wtpl-Q-68.png	image/png	139826	/api/media/50/access-url	ready	2026-08-21 13:09:42.303053	f
51	3	스크린샷 2026-08-21 오후 8.01.31.png	qG-HWzVZOtRRNCKrd4O7UdNcvgjBjXd8izYrMecSP1I.png	image/png	20779	/api/media/51/access-url	ready	2026-08-21 13:41:57.148724	f
52	3	스크린샷 2026-08-21 오후 9.35.42.png	VJAC4jH14nfgcfi6KaaOAdFTMfWX5tCmx4DHlcAAo5M.png	image/png	57438	/api/media/52/access-url	ready	2026-08-21 13:48:40.531015	f
53	3	스크린샷 2026-08-22 오전 12.52.38.png	a7T-PNIJAi75sKgCSPdN4bvcXVWwfaEWWMHnMhgClgg.png	image/png	27688	/api/media/53/access-url	ready	2026-08-21 16:08:21.677578	f
54	3	스크린샷 2026-08-21 오후 7.52.04.png	OWOt5AdS97ySHhhJWRJ74cn8xxx28oyYVAEMzdp8PWs.png	image/png	17251	/api/media/54/access-url	ready	2026-08-21 16:08:25.693168	f
55	1	landscape.png	y6w0rAR7E19fXyrKnidwwjlcc0u_FEVI2uIaUsKG5NA.png	image/png	215044	/api/media/55/access-url	ready	2026-08-28 11:58:17.541363	f
56	1	portrait.png	YxqQ18MyMiFIZQFw3IpbkIfuVo8LKKhRDtMX23irVs8.png	image/png	243555	/api/media/56/access-url	ready	2026-08-28 11:58:17.567562	f
57	1	sample.pdf	RFe_RS5sHqkxX7JOEzBMTwjad_RZ6VLei93wUzHXrbI.pdf	application/pdf	209	/api/media/57/access-url	ready	2026-08-28 11:58:17.591072	f
58	1	landscape.png	4J4RwyH-857Yz-WjE72uen-ZlQZBEjWyUOMJJzO2qks.png	image/png	215044	/api/media/58/access-url	ready	2026-08-28 12:18:45.761701	f
59	1	landscape.png	FjG1aFV0szF26rm7ayHqawO-hGyRPK4JBQhYPL66r_8.png	image/png	215044	/api/media/59/access-url	ready	2026-08-28 12:33:10.084021	f
\.


--
-- Data for Name: notification_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification_settings (id, user_id, notify_comment, notify_like, notify_notice, notify_event, created_at, updated_at, notify_council) FROM stdin;
2	1	t	t	t	t	2026-07-23 00:00:30.683453	2026-07-23 00:00:30.683458	t
1	2	t	t	t	t	2026-07-23 00:00:30.660781	2026-07-23 04:32:24.437137	f
3	3	t	t	t	t	2026-07-23 10:15:13.795993	2026-07-23 10:15:13.795994	t
4	4	t	t	t	t	2026-08-06 09:35:26.890642	2026-08-06 09:35:26.890643	t
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications (id, user_id, notification_type, message, post_id, event_id, is_read, created_at, dedupe_key) FROM stdin;
195	3	like	"이번 학기 스터디 같이 하실 분"에 추천이 달렸어요	17	\N	f	2026-08-21 12:07:48.305352	\N
198	3	notice	모달 확인용 테스트 공지 공지가 등록되었어요	76	\N	f	2026-08-21 12:27:09.698892	\N
201	2	event	기타 일정 태그 테스트 일정이 오늘이에요	\N	15	f	2026-08-22 00:10:16.73368	event-reminder:15:D-day:2
202	3	event	기타 일정 태그 테스트 일정이 오늘이에요	\N	15	f	2026-08-22 00:10:16.764951	event-reminder:15:D-day:3
203	1	event	기타 일정 태그 테스트 일정이 오늘이에요	\N	15	f	2026-08-22 00:10:16.774624	event-reminder:15:D-day:1
204	4	event	기타 일정 태그 테스트 일정이 오늘이에요	\N	15	f	2026-08-22 00:10:16.78001	event-reminder:15:D-day:4
219	1	notice	알림 토스트 확인용 공지 공지가 등록되었어요	85	\N	f	2026-08-28 12:39:29.580718	notice:85:1
220	2	notice	알림 토스트 확인용 공지 공지가 등록되었어요	85	\N	f	2026-08-28 12:39:29.582215	notice:85:2
221	4	notice	알림 토스트 확인용 공지 공지가 등록되었어요	85	\N	f	2026-08-28 12:39:29.583089	notice:85:4
222	3	notice	알림 토스트 확인용 공지 공지가 등록되었어요	85	\N	f	2026-08-28 12:39:29.58392	notice:85:3
196	3	notice	모달 확인용 테스트 공지 공지가 등록되었어요	76	\N	f	2026-08-21 12:24:05.808201	notice:76:3
199	3	notice	토스트 확인용 공지 2 공지가 등록되었어요	76	\N	t	2026-08-21 12:27:18.410854	\N
205	2	event	2026-2학기 수강 정정 기간 일정이 오늘이에요	\N	16	f	2026-08-23 02:25:05.597167	event-reminder:16:D-day:2
206	1	event	2026-2학기 수강 정정 기간 일정이 오늘이에요	\N	16	f	2026-08-23 02:25:05.602044	event-reminder:16:D-day:1
207	4	event	2026-2학기 수강 정정 기간 일정이 오늘이에요	\N	16	f	2026-08-23 02:25:05.602768	event-reminder:16:D-day:4
208	3	event	2026-2학기 수강 정정 기간 일정이 오늘이에요	\N	16	f	2026-08-23 02:25:05.603356	event-reminder:16:D-day:3
209	2	event	대학원 라운지 정기 소독 일정이 오늘이에요	\N	17	f	2026-08-25 00:29:20.772718	event-reminder:17:D-day:2
210	1	event	대학원 라운지 정기 소독 일정이 오늘이에요	\N	17	f	2026-08-25 00:29:20.780901	event-reminder:17:D-day:1
211	4	event	대학원 라운지 정기 소독 일정이 오늘이에요	\N	17	f	2026-08-25 00:29:20.781799	event-reminder:17:D-day:4
212	3	event	대학원 라운지 정기 소독 일정이 오늘이에요	\N	17	f	2026-08-25 00:29:20.782524	event-reminder:17:D-day:3
213	2	notice	첨부 표시 테스트 공지 공지가 등록되었어요	82	\N	f	2026-08-28 11:59:01.551014	notice:82:2
214	4	notice	첨부 표시 테스트 공지 공지가 등록되었어요	82	\N	f	2026-08-28 11:59:01.554361	notice:82:4
215	3	notice	첨부 표시 테스트 공지 공지가 등록되었어요	82	\N	f	2026-08-28 11:59:01.555142	notice:82:3
223	1	notice	토스트 라이브 테스트 공지 공지가 등록되었어요	86	\N	f	2026-08-28 12:40:14.670126	notice:86:1
224	2	notice	토스트 라이브 테스트 공지 공지가 등록되었어요	86	\N	f	2026-08-28 12:40:14.671291	notice:86:2
225	4	notice	토스트 라이브 테스트 공지 공지가 등록되었어요	86	\N	f	2026-08-28 12:40:14.672089	notice:86:4
226	3	notice	토스트 라이브 테스트 공지 공지가 등록되었어요	86	\N	t	2026-08-28 12:40:14.672847	notice:86:3
197	3	notice	토스트 재검증 공지 공지가 등록되었어요	76	\N	f	2026-08-21 12:26:20.437042	\N
200	3	notice	글씨체 확인용 공지 공지가 등록되었어요	76	\N	f	2026-08-21 12:28:56.575608	\N
216	2	notice	가로 이미지 테스트 공지 공지가 등록되었어요	84	\N	f	2026-08-28 12:33:10.148823	notice:84:2
217	4	notice	가로 이미지 테스트 공지 공지가 등록되었어요	84	\N	f	2026-08-28 12:33:10.150423	notice:84:4
218	3	notice	가로 이미지 테스트 공지 공지가 등록되었어요	84	\N	f	2026-08-28 12:33:10.151249	notice:84:3
190	3	notice	2026학년도 2학기 등록 안내 공지가 등록되었어요	74	\N	f	2026-08-21 12:06:21.472442	\N
191	3	event	2학기 수강신청 마감이 1일 남았어요	\N	13	f	2026-08-21 12:06:21.474537	\N
193	3	comment	내 게시글에 새 댓글이 달렸어요: "족보 공유 감사합니다!"	17	\N	f	2026-08-21 12:06:21.475748	\N
194	3	council	상조회 신청이 승인되었어요	\N	\N	f	2026-08-21 12:06:21.47629	\N
\.


--
-- Data for Name: operational_audit_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.operational_audit_logs (id, actor_id, action, target_type, target_id, details, created_at) FROM stdin;
1	1	post.delete	post	15	null	2026-07-22 06:33:57.653097
2	1	post.delete	post	23	null	2026-07-22 09:28:36.316434
3	1	post.delete	post	39	null	2026-08-05 04:18:59.900341
4	1	post.delete	post	38	null	2026-08-05 04:19:03.593347
5	1	event.create	event	12	null	2026-08-11 14:34:22.436028
6	1	event.create	event	13	null	2026-08-11 14:34:22.466952
7	1	event.create	event	14	null	2026-08-11 14:34:22.498178
8	1	notice.create	post	82	null	2026-08-28 11:59:01.55607
9	1	notice.create	post	84	null	2026-08-28 12:33:10.151937
10	1	notice.create	post	85	null	2026-08-28 12:39:29.584581
11	1	notice.create	post	86	null	2026-08-28 12:40:14.673339
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (id, user_id, token_hash, expires_at, consumed_at, created_at, verified_at, attempt_count) FROM stdin;
23	1	dc5a6036325724ef9268b77a3145cce7e46dec33cfa6327b08c5360246c356e0	2026-08-21 16:15:03.443059	\N	2026-08-21 16:10:03.443738	\N	0
\.


--
-- Data for Name: post_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_attachments (id, post_id, media_id, sort_order, created_at) FROM stdin;
1	11	2	0	2026-07-22 03:52:14.036861
2	12	3	0	2026-07-22 03:52:14.036861
3	13	4	0	2026-07-22 03:52:14.036861
4	14	5	0	2026-07-22 03:52:14.036861
5	11	6	1	2026-07-22 03:53:47.535603
6	11	7	2	2026-07-22 03:53:47.535603
7	11	8	3	2026-07-22 03:53:47.535603
8	12	9	1	2026-07-22 03:53:47.535603
9	12	10	2	2026-07-22 03:53:47.535603
10	12	11	3	2026-07-22 03:53:47.535603
11	13	12	1	2026-07-22 03:53:47.535603
12	13	13	2	2026-07-22 03:53:47.535603
13	13	14	3	2026-07-22 03:53:47.535603
14	14	15	1	2026-07-22 03:53:47.535603
15	14	16	2	2026-07-22 03:53:47.535603
16	14	17	3	2026-07-22 03:53:47.535603
17	15	18	0	2026-07-22 04:23:32.059159
18	28	19	0	2026-07-22 11:10:59.623955
19	28	20	1	2026-07-22 11:10:59.623959
20	29	21	0	2026-07-22 11:16:15.453291
21	29	22	1	2026-07-22 11:16:15.453294
22	31	23	0	2026-07-22 13:23:48.15163
23	34	24	0	2026-07-22 13:37:24.966188
24	47	25	0	2026-08-05 13:20:57.198972
25	52	26	0	2026-08-07 03:21:36.569158
26	54	27	0	2026-08-07 03:35:09.060056
27	55	28	0	2026-08-07 03:35:09.304811
28	56	29	0	2026-08-07 03:35:09.411974
29	57	30	0	2026-08-07 03:39:40.84096
30	58	31	0	2026-08-07 03:39:40.991228
31	59	32	0	2026-08-07 03:39:41.077114
32	60	33	0	2026-08-07 04:42:02.508821
33	71	37	0	2026-08-15 16:40:44.660413
34	72	38	0	2026-08-15 16:54:55.016106
35	73	24	0	2026-08-15 17:15:17.437958
36	74	24	0	2026-08-15 17:42:56.291268
37	74	46	1	2026-08-15 17:42:56.291269
38	75	44	0	2026-08-15 17:52:20.134415
39	75	41	1	2026-08-15 17:52:20.134417
40	27	44	0	2026-08-21 08:31:07.788789
41	26	41	0	2026-08-21 10:41:05.523627
42	25	44	0	2026-08-21 10:41:05.52363
45	83	55	0	2026-08-28 11:59:14.703056
46	82	56	0	2026-08-28 12:19:14.476378
47	82	58	1	2026-08-28 12:19:14.47638
48	82	57	2	2026-08-28 12:19:14.476381
49	84	59	0	2026-08-28 12:33:10.148082
\.


--
-- Data for Name: post_lecture_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_lecture_reviews (id, post_id, subject_name, professor, semester, difficulty, satisfaction) FROM stdin;
\.


--
-- Data for Name: post_mutual_aid; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_mutual_aid (id, post_id, event_type, event_date, relation, status, rejection_reason, reviewed_by, reviewed_at) FROM stdin;
1	42	funeral	2026-08-03	조모	completed	\N	1	2026-08-05 11:33:13.116211
2	44	funeral	2026-08-03	조모	completed	\N	1	2026-08-05 11:33:13.116211
3	48	etc	2026-08-10	부	rejected	회갑은 상조회 지원 대상 경조사가 아닙니다. 지원 항목은 결혼·출산·조사에 한정됩니다.	1	2026-08-06 08:52:07.084266
4	49	결혼	2026-08-20	본인	processing	\N	\N	\N
5	52	결혼	2026-08-12	본인	processing	\N	\N	\N
6	53	상(喪)	2026-08-19	배우자	processing	\N	\N	\N
\.


--
-- Data for Name: post_suggestions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_suggestions (id, post_id, suggestion_category, status, admin_reply, replied_by, replied_at) FROM stdin;
1	43	facility	answered	검토 결과 9월부터 최대 4시간까지 예약 가능하도록 변경 예정입니다.	1	2026-08-05 11:33:13.116211
2	45	facility	answered	검토 결과 9월부터 최대 4시간까지 예약 가능하도록 변경 예정입니다.	1	2026-08-05 11:33:13.116211
3	63	\N	received	\N	\N	\N
4	64	\N	received	\N	\N	\N
5	65	\N	received	\N	\N	\N
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, board_id, author_id, title, content, is_pinned, is_notice, view_count, like_count, comment_count, created_at, updated_at, is_anonymous, status, category, metadata, deleted_at, deadline_at, author_nickname_snapshot, author_cohort_snapshot) FROM stdin;
63	16	1	test	123123	f	f	1	0	0	2026-08-12 05:35:56.359388	2026-08-12 05:35:56.359391	t	published	\N	null	\N	\N	72gi_KimJinsan	72
25	23	1	AI 개발 동아리 DevAI	머신러닝/딥러닝 프로젝트를 함께하는 개발 동아리입니다.\n주 1회 정기 모임, 학기말 프로젝트 발표.	f	f	184	8	0	2026-07-22 08:32:52.003239	2026-07-22 13:28:01.09938	f	published	모집중	{"application_url": "https://forms.gle/devai"}	\N	\N	72gi_KimJinsan	72
13	7	1	선후배 네트워킹 데이	선후배 네트워킹 데이 단체 사진.	f	f	63	8	0	2026-05-28 18:00:00	2026-07-22 03:52:35.898853	f	published	\N	\N	\N	\N	72gi_KimJinsan	72
64	16	1	test1₩	123123	f	f	0	0	0	2026-08-12 05:37:35.427731	2026-08-12 05:37:35.427735	t	published	\N	null	\N	\N	72gi_KimJinsan	72
67	2	1	2026학년도 2학기 수강신청 안내	2026학년도 2학기 수강신청 일정을 안내드립니다. 기한 내 신청 바랍니다.	f	t	10	0	0	2026-08-15 13:25:57.021388	2026-08-15 15:25:57.022723	f	published	academic	\N	2026-08-21 12:29:16.698139	2026-08-18 15:25:57.021388	72gi_KimJinsan	72
1	3	1	2026학년도 2학기 등록 안내	안녕하세요, AISW 대학원 행정실입니다.\n\n2026학년도 2학기 등록 기간 및 절차를 아래와 같이 안내드립니다.\n\n등록 기간: 2026.07.20 ~ 07.25\n등록 방법: 학교 포털 사이트 내 등록 메뉴\n문의: 행정실 (02-705-0000)	t	t	130	0	0	2026-07-20 10:00:00	2026-07-20 10:00:00	f	published	academic	\N	2026-08-21 12:29:16.698139	2026-07-25 18:00:00	72gi_KimJinsan	72
18	9	1	딥러닝 기초 기말고사 족보 공유	작년 기출 정리해서 올려요. 도움 되셨으면 좋겠습니다.\n\nT/F 문제 50개로 제출되었습니다.	f	f	189	24	4	2026-07-20 13:00:00	2026-08-16 14:29:12.403268	f	published	시험족보	\N	\N	\N	72gi_KimJinsan	72
74	2	1	2026-2학기 학사 안내 (첨부/링크 테스트)	2026학년도 2학기 학사 안내입니다.\n자세한 일정은 첨부된 PDF를 확인해주세요.\n문의는 아래 링크로 접수 바랍니다.\nhttps://forms.gle/aisw-test-form	f	t	26	0	0	2026-08-15 17:42:56.289618	2026-08-15 17:42:56.289619	f	published	academic	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
71	11	3	AI 개발 동아리 DevAI	test	f	f	27	0	0	2026-08-15 16:40:44.653227	2026-08-15 16:40:44.653229	f	published	AI 개발 동아리 DevAI	{"bank_account": "1111", "participants": "73기 손예진", "activity_date": "2026.08.16", "activity_source_post_id": "25", "participant_dues_payer_ids": [3]}	\N	\N	손예진	73
65	16	1	test	1223123	f	f	0	0	0	2026-08-12 05:38:21.876445	2026-08-12 05:38:21.87645	t	published	\N	null	\N	\N	72gi_KimJinsan	72
17	9	1	셤 족보	1111	f	f	208	2	11	2026-07-22 06:42:34.530609	2026-08-16 14:35:19.62381	f	published	시험족보	null	\N	\N	72gi_KimJinsan	72
85	2	1	알림 토스트 확인용 공지	공지 등록 알림 토스트 디자인 확인을 위한 공지입니다.	f	t	2	0	0	2026-08-28 12:39:29.576732	2026-08-28 12:39:29.576734	f	published	other	null	2026-08-28 12:51:50.814003	\N	72gi_KimJinsan	72
70	24	3	인증	인증인증	f	f	40	0	1	2026-08-15 15:42:26.707184	2026-08-15 17:29:48.185702	f	published	마감	{"contact": "123123", "recruitment_status": "closed"}	2026-08-15 17:29:48.184086	\N	손예진	73
2	3	1	AISW 졸업논문 사전 심사 일정	2026학년도 2학기 졸업논문 사전 심사 일정을 안내드립니다. 대상자는 기한 내 제출 바랍니다.	f	t	97	0	0	2026-07-21 09:30:00	2026-07-22 03:46:07.508159	f	published	academic	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
5	3	1	2026-2학기 등록금 납부 안내	등록금 납부 관련 안내입니다. 납부 기한을 확인해 주세요.	f	t	67	0	0	2026-07-17 16:00:00	2026-07-17 16:00:00	f	published	academic	\N	2026-08-21 12:29:16.698139	2026-07-31 17:00:00	72gi_KimJinsan	72
4	4	1	대학원 학술제 참가 신청	2026 대학원 학술제 참가 신청을 받습니다. 신청 링크는 본문을 참고하세요.	f	t	40	0	0	2026-07-18 11:00:00	2026-07-18 11:00:00	f	published	event	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
75	2	1	세로 포스터 공지 (큰 이미지 테스트)	세로로 긴 행사 포스터가 첨부된 공지입니다. 이미지가 접혀서 [사진 전체보기] 버튼이 떠야 합니다.	f	t	34	0	0	2026-08-15 17:52:20.128978	2026-08-15 17:52:20.128981	f	published	event	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
77	2	2	기타공지 태그 색 확인용	태그 색 확인	f	f	15	0	0	2026-08-21 15:56:40.267732	2026-08-21 15:56:40.267732	f	published	other	\N	2026-08-28 12:51:50.814003	\N	\N	\N
12	7	1	딥러닝 스터디 발표회	딥러닝 스터디 발표회 현장 사진.	f	f	39	3	0	2026-06-09 15:00:00	2026-07-22 03:52:33.841139	f	published	\N	\N	\N	\N	72gi_KimJinsan	72
72	11	3	AI 개발 동아리 DevAI	ㄷㄱㄷㄱ	f	f	17	0	0	2026-08-15 16:54:54.970306	2026-08-15 16:54:54.970313	f	published	AI 개발 동아리 DevAI	{"bank_account": "1111ㅂ", "participants": "73기 손예진", "activity_date": "2026.08.16", "activity_source_post_id": "25", "participant_dues_payer_ids": [3]}	\N	\N	손예진	73
83	23	1	가로 사진 테스트 동아리	가로형 대표 이미지 확인용 동아리입니다.	f	f	5	0	0	2026-08-28 11:59:14.697215	2026-08-28 11:59:14.697221	f	published	\N	{"application_url": "https://forms.gle/test"}	\N	\N	72gi_KimJinsan	72
69	2	1	대학원 라운지 이용 안내	라운지 이용 수칙이 변경되어 안내드립니다.	f	t	0	0	0	2026-08-14 19:25:57.021388	2026-08-15 15:25:57.022726	f	published	other	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
14	7	1	1학기 정기 총회	2026학년도 1학기 원우회 정기 총회.	f	f	35	2	0	2026-04-10 17:00:00	2026-07-22 09:46:27.832936	f	published	\N	\N	\N	\N	72gi_KimJinsan	72
68	2	1	AISW 가을 학술제 참가 신청	가을 학술제 참가자를 모집합니다. 많은 참여 바랍니다.	f	t	13	0	0	2026-08-15 10:25:57.021388	2026-08-15 15:25:57.022725	f	published	event	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
23	9	2	[김동료] 알고리즘 기말 족보	다른 사람이 올린 시험족보 글입니다. 신고 메뉴 확인용.\n수정 테스트	f	f	52	9	0	2026-07-22 07:16:47.51935	2026-07-22 09:28:36.322837	f	published	시험족보	\N	2026-07-22 09:28:36.313822	\N	김동료	71
15	8	1	제목 test	1111	f	f	16	0	0	2026-07-22 04:23:32.045186	2026-07-22 06:33:57.662122	f	published	\N	null	2026-07-22 06:33:57.645716	\N	72gi_KimJinsan	72
55	7	3	크롤링서비스_표_6.7대1		f	f	1	0	0	2026-08-07 03:35:09.297313	2026-08-07 03:39:40.724404	f	published	\N	null	2026-08-07 03:39:40.724234	\N	손예진	73
20	10	1	종합시험 준비 어떻게 하셨나요?	선배님들 종합시험 준비 팁이나 자료 있으면 공유해주세요.	f	f	72	12	0	2026-07-18 15:00:00	2026-07-22 09:35:10.9031	f	published	종합시험	\N	\N	\N	72gi_KimJinsan	72
39	33	1	ㄴㅇㄹㅇㄹ	ㅁㄴㅇㄹㅇㄹ	f	f	5	0	0	2026-08-05 04:14:32.744423	2026-08-05 04:18:59.905031	f	published	강의후기	null	2026-08-05 04:18:59.894548	\N	72gi_KimJinsan	72
38	33	1	ㄷㄱㅈㄷㄱ	ㅈㄷㄱㄷㄱ	f	f	2	0	0	2026-08-05 04:14:23.786344	2026-08-05 04:19:03.595278	f	published	강의후기	null	2026-08-05 04:19:03.593146	\N	72gi_KimJinsan	72
52	17	1	결혼 상조회 신청	test	f	f	2	0	0	2026-08-07 03:21:36.488599	2026-08-07 03:21:36.488605	f	published	결혼	{"relation": "본인", "event_date": "2026.08.12"}	\N	\N	72gi_KimJinsan	72
46	18	3	[손예진] 이번 학기 스터디 같이 하실 분	화요일 저녁에 논문 리딩 스터디 하려고 합니다. 관심 있으면 댓글 주세요!	f	f	4	1	1	2026-08-05 11:33:49.54934	2026-08-05 11:39:11.992333	f	published	\N	\N	\N	\N	손예진	73
56	7	3	텍스트_스크린샷_7.6대1		f	f	2	0	0	2026-08-07 03:35:09.404278	2026-08-07 03:39:40.748737	f	published	\N	null	2026-08-07 03:39:40.748557	\N	손예진	73
44	17	3	[손예진] 조모상 상조회 신청	조모상으로 상조회 지원을 신청합니다. 장례식장: 서울성모병원.	f	f	8	0	0	2026-08-05 11:33:13.195043	2026-08-05 11:33:13.195045	f	published	funeral	\N	\N	\N	손예진	73
33	27	1	기수별 멘토링 매칭	선배 멘토와 후배 멘티를 매칭해주는 프로그램입니다.\n학업·취업·생활 고민을 함께 나눠요.	f	f	36	4	0	2026-07-21 13:34:37.261538	2026-07-22 13:34:37.261538	f	published	모집중	{"application_url": "https://forms.gle/mentoring"}	\N	\N	72gi_KimJinsan	72
31	12	1	딥러닝 스터디원 모집	행복	f	f	84	0	0	2026-07-22 13:23:48.14459	2026-07-22 13:31:06.539255	f	published	딥러닝 스터디원 모집	{"bank_account": "1111", "participants": "72기 72gi_KimJinsan", "activity_date": "2026.07.22", "participant_user_ids": "1", "activity_source_post_id": "30"}	\N	\N	72gi_KimJinsan	72
21	18	2	다른 사람이 쓴 테스트 글	신고/차단 메뉴 확인용으로 다른 작성자가 올린 글입니다.	f	f	20	1	1	2026-07-22 08:38:45.911438	2026-08-05 11:33:49.548558	f	published	\N	\N	\N	\N	김동료	71
32	27	1	선후배 네트워킹 데이	선배와 후배가 자유롭게 어울리며 진로 고민도 나누고 친목도 다지는 자리입니다.\n다과와 함께 편안한 분위기에서 진행돼요.	f	f	51	6	0	2026-07-22 11:34:37.261538	2026-07-22 13:37:45.591279	f	published	모집중	{"application_url": "https://forms.gle/networkday"}	\N	\N	72gi_KimJinsan	72
16	8	1	test	11111	f	f	52	1	0	2026-07-22 06:34:08.154311	2026-07-22 09:35:53.235746	f	published	강의후기	null	\N	\N	72gi_KimJinsan	72
10	2	1	동문회 리멤버 주소록 안내	동문회 리멤버 주소록 서비스 이용 안내입니다.	f	t	27	0	0	2026-07-16 13:00:00	2026-07-16 13:00:00	f	published	other	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
40	33	1	test	test	f	f	7	0	0	2026-08-05 04:18:46.996918	2026-08-05 04:18:46.996921	f	published	졸업논문	null	\N	\N	72gi_KimJinsan	72
11	7	1	신입생 환영 MT	2026학년도 신입생 환영 MT 사진첩입니다.	f	f	91	5	0	2026-06-14 10:00:00	2026-07-22 03:56:02.581778	f	published	\N	\N	\N	\N	72gi_KimJinsan	72
19	8	1	머신러닝 특강 후기 남겨요	실습 비중이 높아서 좋았어요. 과제는 좀 빡빡한 편입니다.\n\n다음 학기에도 열린다면 추천해요!	f	f	93	24	0	2026-07-19 11:00:00	2026-07-22 09:26:20.178544	f	published	강의후기	\N	\N	\N	72gi_KimJinsan	72
29	11	1	데이터 분석 스터디 동아리	ㅇㄹㅎㄹㅎㄹ	f	f	75	0	0	2026-07-22 11:16:15.441345	2026-07-22 13:27:26.500003	f	published	데이터 분석 스터디 동아리	{"bank_account": "1232312", "participants": "72기 72gi_KimJinsan", "activity_date": "2026.07.22", "participant_user_ids": "1", "activity_source_post_id": "26"}	\N	\N	72gi_KimJinsan	72
27	23	1	알고리즘 문제풀이 동아리	매주 코딩테스트 대비 문제풀이 세션을 운영합니다.	f	f	34	3	0	2026-07-19 10:32:52.003239	2026-07-22 10:41:20.615529	f	published	마감	{"application_url": "https://forms.gle/algo"}	\N	\N	72gi_KimJinsan	72
41	8	1	ㅎㅇㅎㅇ	testtest	f	f	72	0	0	2026-08-05 04:19:11.64604	2026-08-12 14:12:19.194357	f	published	졸업논문	null	\N	\N	72gi_KimJinsan	72
28	11	1	AI 개발 동아리 DevAI	즐거웠씁니다	f	f	9	0	0	2026-07-22 11:10:59.605963	2026-07-22 12:28:52.388206	f	published	AI 개발 동아리 DevAI	{"bank_account": "1212321323232", "participants": "72기 72gi_KimJinsan", "activity_date": "2026.07.22", "participant_user_ids": "1", "activity_source_post_id": "25"}	\N	\N	72gi_KimJinsan	72
34	13	1	기수별 멘토링 매칭	오늘 좋은 선배님들 많이 만났어요!	f	f	16	0	0	2026-07-22 13:37:24.963589	2026-07-22 13:37:26.896993	f	published	기수별 멘토링 매칭	{"bank_account": "121212", "participants": "72기 72gi_KimJinsan", "activity_date": "2026.07.22", "participant_user_ids": "1", "activity_source_post_id": "33"}	\N	\N	72gi_KimJinsan	72
22	8	2	[김동료] 딥러닝 특강 후기	다른 사람이 올린 강의후기 글입니다. 신고 메뉴 확인용.	f	f	84	6	0	2026-07-22 08:16:47.51935	2026-08-05 11:50:11.695262	f	published	강의후기	\N	\N	\N	김동료	71
30	24	1	딥러닝 스터디원 모집	아아아아아 \n관심 있는 분은 댓글로 남겨주시면 따로 연락 드리겠습니다	f	f	29	0	3	2026-07-22 13:09:20.685371	2026-07-22 13:29:42.662276	f	published	마감	{"contact": "010-1234-", "recruitment_status": "closed"}	\N	\N	72gi_KimJinsan	72
24	10	2	[김동료] 종합시험 후기 공유	다른 사람이 올린 종합시험 글입니다. 신고 메뉴 확인용.	f	f	37	3	0	2026-07-22 06:16:47.51935	2026-07-22 09:38:53.238427	f	published	종합시험	\N	\N	\N	김동료	71
26	23	1	데이터 분석 스터디 동아리	캐글 대회와 데이터 분석 실습을 진행합니다.\n초보자 환영, 멘토링 제공.	f	f	86	5	0	2026-07-21 10:32:52.003239	2026-07-22 10:32:52.003239	f	published	상시	{"application_url": "https://forms.gle/dataclub"}	\N	\N	72gi_KimJinsan	72
3	4	1	AISW 신입생 환영회 안내	신입생 환영회를 개최합니다. 많은 참여 바랍니다.	f	t	55	0	0	2026-07-19 14:00:00	2026-07-19 14:00:00	f	published	event	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
8	2	1	AISW 신입생 환영회 안내	신입생 환영회를 개최합니다. 많은 참여 바랍니다.	f	t	59	0	0	2026-07-19 14:00:00	2026-07-22 09:58:23.152349	f	published	event	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
42	17	2	[김동료] 조모상 상조회 신청	조모상으로 상조회 지원을 신청합니다. 장례식장: 서울성모병원.	f	f	2	0	0	2026-08-05 11:33:13.180224	2026-08-05 11:33:13.180227	f	published	funeral	\N	\N	\N	김동료	71
49	17	3	[손예진] 결혼 상조회 신청		f	f	2	0	0	2026-08-06 09:59:34.095958	2026-08-06 09:59:34.095959	f	published	결혼	{"relation": "본인", "proof_url": "https://example.com/invitation/123", "event_date": "2026-08-20"}	\N	\N	손예진	73
53	17	1	상(喪) 상조회 신청	test	f	f	6	0	0	2026-08-07 03:23:21.886477	2026-08-07 03:23:21.886481	f	published	상(喪)	{"relation": "배우자", "proof_url": "https://docs.google.com/spreadsheets/d/1-Bki7CImSwKVfoVdRlOQwNLqyTcrhids8qTYG2VlS8M/edit?gid=0#gid=0", "event_date": "2026.08.19"}	\N	\N	72gi_KimJinsan	72
54	7	3	아키텍처_다이어그램_2.47대1		f	f	3	0	0	2026-08-07 03:35:09.048871	2026-08-07 03:39:40.692315	f	published	\N	null	2026-08-07 03:39:40.690459	\N	손예진	73
47	7	3	업로드 테스트 사진		f	f	3	0	0	2026-08-05 13:20:57.194975	2026-08-05 13:20:57.194977	f	published	\N	null	\N	\N	손예진	73
61	24	3	진행중 스터디	내용	f	f	23	0	0	2026-08-07 05:04:05.244625	2026-08-07 05:04:05.373309	f	published	마감	{"contact": "010", "recruitment_status": "closed"}	\N	\N	손예진	73
62	24	3	스터디 test	test	f	f	122	0	1	2026-08-07 05:04:49.170551	2026-08-15 17:35:12.398191	f	published	진행중	{"contact": "01011111111", "recruitment_status": "open"}	\N	\N	손예진	73
66	19	2	딥러닝 논문 정리 자료 공유합니다	최근 읽은 딥러닝 관련 논문들을 정리한 자료입니다. 필요하신 분들 참고하세요.	f	f	3	0	0	2026-08-12 14:23:02.791343	2026-08-12 14:23:02.791343	f	published	\N	\N	\N	\N	\N	\N
48	17	3	[손예진] 부친 회갑 상조회 신청	부친 회갑연 관련 상조회 지원을 신청합니다.	f	f	17	0	0	2026-08-06 08:52:07.077452	2026-08-06 08:52:07.077457	f	published	etc	\N	\N	\N	손예진	73
59	7	3	세로사진_16대9		f	f	16	0	0	2026-08-07 03:39:41.074818	2026-08-07 03:39:41.07482	f	published	\N	null	\N	\N	손예진	73
57	7	3	세로사진_4대3		f	f	2	0	0	2026-08-07 03:39:40.834159	2026-08-07 03:39:40.834163	f	published	\N	null	\N	\N	손예진	73
79	4	2	가을 원우회 네트워킹 데이	많은 참여 바랍니다.	f	f	12	0	0	2026-08-21 16:03:42.455705	2026-08-21 16:03:42.455705	f	published	event	\N	2026-08-28 12:51:50.814003	\N	\N	\N
43	16	2	[김동료] 스터디룸 예약 시간 연장 건의	스터디룸 예약이 2시간으로 제한되어 있어 연장을 건의합니다.	f	f	31	0	0	2026-08-05 11:33:13.188579	2026-08-05 11:33:13.188581	f	published	facility	\N	\N	\N	김동료	71
78	3	2	2학기 수강신청 안내	수강신청 기간을 확인해주세요.	f	f	10	0	0	2026-08-21 16:03:42.455705	2026-08-21 16:03:42.455705	f	published	academic	\N	2026-08-28 12:51:50.814003	\N	\N	\N
60	7	3	서강대학교 AI·SW 대학원 로고		f	f	34	0	0	2026-08-07 04:42:02.499746	2026-08-07 04:42:02.499748	f	published	\N	null	\N	\N	손예진	73
9	2	1	대학원 학술제 참가 신청	2026 대학원 학술제 참가 신청을 받습니다. 신청 링크는 본문을 참고하세요.	f	t	42	0	0	2026-07-18 11:00:00	2026-07-22 09:58:19.871819	f	published	event	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
58	7	3	가로사진_4대3		f	f	6	0	0	2026-08-07 03:39:40.986648	2026-08-07 03:39:40.986652	f	published	\N	null	\N	\N	손예진	73
73	7	1	2026 AI·SW 학술 세미나	세미나 안내 카드입니다.	f	f	14	0	0	2026-08-15 17:15:17.436189	2026-08-15 17:15:17.436192	f	published	\N	\N	\N	\N	72gi_KimJinsan	72
45	16	3	[손예진] 스터디룸 예약 시간 연장 건의	스터디룸 예약이 2시간으로 제한되어 있어 연장을 건의합니다.	f	f	76	0	0	2026-08-05 11:33:13.197759	2026-08-05 11:33:13.197761	f	published	facility	\N	\N	\N	손예진	73
6	2	1	2026학년도 2학기 등록 안내	안녕하세요, AISW 대학원 행정실입니다.\n\n2026학년도 2학기 등록 기간 및 절차를 안내드립니다.\n\n등록 기간: 2026.07.20 ~ 07.25\n등록 방법: 학교 포털 사이트 내 등록 메뉴\n문의: 행정실 (02-705-0000)	t	t	134	0	0	2026-07-20 10:00:00	2026-07-23 06:33:43.329426	f	published	academic	\N	2026-08-21 12:29:16.698139	2026-07-25 18:00:00	72gi_KimJinsan	72
7	2	1	AISW 졸업논문 사전 심사 일정	2026학년도 2학기 졸업논문 사전 심사 일정을 안내드립니다. 대상자는 기한 내 제출 바랍니다.	f	t	115	0	0	2026-07-21 09:30:00	2026-07-23 07:08:48.144132	f	published	academic	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
76	2	1	모달 확인용 테스트 공지	공지 토스트 디자인 확인용 공지입니다.	f	t	0	0	0	2026-08-21 12:24:05.802858	2026-08-21 12:24:05.802861	f	published	other	\N	2026-08-21 12:29:16.698139	\N	72gi_KimJinsan	72
81	2	2	도서관 이용 시간 변경	이용 시간이 변경됩니다.	f	f	4	0	0	2026-08-21 16:03:42.455705	2026-08-21 16:03:42.455705	f	published	other	\N	2026-08-28 12:51:50.814003	\N	\N	\N
80	6	2	AI 트렌드 특강 안내	AI 특강이 열립니다.	f	f	6	0	0	2026-08-21 16:03:42.455705	2026-08-21 16:03:42.455705	f	published	webinar	\N	2026-08-28 12:51:50.814003	\N	\N	\N
82	2	1	첨부 표시 테스트 공지	사진과 첨부파일, 링크가 함께 있는 공지입니다.\nhttps://docs.google.com/spreadsheets/d/testsheet/edit	f	t	11	0	0	2026-08-28 11:59:01.537438	2026-08-28 11:59:01.53744	f	published	other	null	2026-08-28 12:51:50.814003	\N	72gi_KimJinsan	72
86	2	1	토스트 라이브 테스트 공지	토스트 확인	f	t	2	0	0	2026-08-28 12:40:14.667791	2026-08-28 12:40:14.667792	f	published	other	null	2026-08-28 12:51:50.814003	\N	72gi_KimJinsan	72
84	2	1	가로 이미지 테스트 공지	가로형 이미지 한 장만 있는 공지입니다.	f	t	1	0	0	2026-08-28 12:33:10.139458	2026-08-28 12:33:10.139461	f	published	other	null	2026-08-28 12:51:50.814003	\N	72gi_KimJinsan	72
\.


--
-- Data for Name: privacy_policy_versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.privacy_policy_versions (id, version, effective_at, is_active, created_by, created_at, updated_at) FROM stdin;
1	2026-07-12	2026-07-12 00:00:00	t	\N	2026-07-21 05:48:29.997166	2026-07-21 05:48:29.997166
\.


--
-- Data for Name: push_deliveries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.push_deliveries (id, notification_id, push_token_id, token_snapshot, status, attempt_count, ticket_id, error_message, receipt_checked_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: push_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.push_tokens (id, user_id, token, platform, is_active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: rate_limit_buckets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rate_limit_buckets (id, action, subject_hash, window_started_at, count, updated_at) FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.refresh_tokens (id, user_id, token_hash, expires_at, revoked_at, created_at) FROM stdin;
1	1	5e254474b16951e986aa360428634bd53aba6c7e61279dccf235d871f8758f7b	2026-08-20 05:54:38.290259	2026-07-21 06:10:21.807162	2026-07-21 05:54:38.291855
2	1	3d84ad38640777a4997cc129ef9103a37deb0ed56a89f3d6e31b2201318400c4	2026-08-20 06:10:21.80728	2026-07-21 06:26:21.72904	2026-07-21 06:10:21.808747
3	1	966db3628236207c25bf9e90c25f32dba4a89b2e3e555862e0e604ddc973139e	2026-08-20 06:26:21.72915	2026-07-21 06:42:19.724215	2026-07-21 06:26:21.730689
4	1	1e64568d0aea9ebb9fc90c4069ab2b69e5cc75ac93f2bf2799f2acf86d10f0c9	2026-08-20 06:42:19.725479	2026-07-21 06:58:48.960006	2026-07-21 06:42:19.736902
5	1	53d2fb546cb9972d5156b3b4e611b769b7440f3a6558213bec3fb70db1dac2e1	2026-08-20 06:58:48.960391	2026-07-21 07:14:48.914705	2026-07-21 06:58:48.963793
6	1	9d7b38f3a5ff162ab371b92725e94ad30a470badb8ba8cd00eca6cb92333503b	2026-08-20 07:05:22.398085	2026-07-21 07:20:29.727439	2026-07-21 07:05:22.399066
7	1	17e733b03c3fd3795b972f8f1e4b38e815a3b890a7bcc2b70904cdee758aee0a	2026-08-20 07:14:48.917163	2026-07-21 07:30:48.861678	2026-07-21 07:14:48.922074
8	1	fb1572718574c9ff81a5c066ae39f9a3e4dcc749ca4e24152b21333d7f1589ec	2026-08-20 07:20:29.72757	2026-07-21 07:35:39.444336	2026-07-21 07:20:29.728831
9	1	4d7948b2e49e7d7298e3aa95395f828ec650c0f3c314ec2276998e8c344695c1	2026-08-20 07:30:48.861822	2026-07-21 07:46:48.937076	2026-07-21 07:30:48.863538
10	1	80941db1687ae08cd33476dd7cac39c2d1e2b081178081cebaa41c0811e0db2f	2026-08-20 07:35:39.444444	2026-07-21 07:51:39.92304	2026-07-21 07:35:39.446348
11	1	329ee40db9075eb5a8ef0c9a971c1afaf81c7da1d0a6a915ff51b117450d4fb9	2026-08-20 07:46:48.937204	2026-07-21 08:01:52.570667	2026-07-21 07:46:48.94139
12	1	249a2b4942e99f868238a3d6d5c65f964da8466f7e0642fcbf139bcf5736d478	2026-08-20 07:51:39.923473	2026-07-21 08:06:45.014605	2026-07-21 07:51:39.925946
13	1	7b5e1f1e219694caa5d7af0a878de800328df4098de7a03872378a033ea95534	2026-08-20 08:01:52.571173	2026-07-21 08:17:49.067301	2026-07-21 08:01:52.575878
14	1	44543accfc06a520b4f99aae908bfa9f870af3f19720a548d074cf36a312e2ab	2026-08-20 08:06:45.014774	2026-07-21 08:31:16.594057	2026-07-21 08:06:45.01779
15	1	8f949144705a03491dbfea3698c5f66a5267bc70b6750a8ad5844e96cabcb7d4	2026-08-20 08:17:49.067627	2026-07-21 08:34:26.625808	2026-07-21 08:17:49.071309
16	1	b051c8d39720b3fde03def51bb83e5c3663dccfe7a20869f17a35fdc6d10912a	2026-08-20 08:31:16.594825	2026-07-21 08:46:23.699742	2026-07-21 08:31:16.601374
17	1	9704146afb34fa2d7aa7eb9c0a6fe34411e9ca23ab8e9d8e8717b4c2e52ca1c3	2026-08-20 08:34:26.625918	2026-07-21 08:50:23.69383	2026-07-21 08:34:26.627277
18	1	4fb2f722858aa70500a825fa24442e6ab537de2ef936f5594ea115e9fc7035a8	2026-08-20 08:46:23.699864	2026-07-21 09:01:25.715671	2026-07-21 08:46:23.70128
19	1	ecfccbe68e4356a0b79e76763c48e853cc220c33d1949a53d67f718051ff743b	2026-08-20 08:50:23.693925	2026-07-21 09:05:25.694138	2026-07-21 08:50:23.695005
20	1	edb6f072cfd3eb4a916a32989df0bee3f322241289f1af8c3bc6db01dfd55be6	2026-08-20 09:01:25.715783	2026-07-21 09:26:23.912858	2026-07-21 09:01:25.716989
21	1	e53779621daf05c26e4d2451df664a7d0fb41e0308e5318cfe072549592fbd06	2026-08-20 09:05:25.694302	2026-07-21 09:26:23.919193	2026-07-21 09:05:25.698332
22	1	3d377b19c3f9d33cacf65f838f114bb14979ab7107e6faab15501c30c3c9d53e	2026-08-20 09:26:23.913062	2026-07-21 10:03:34.192396	2026-07-21 09:26:23.918425
23	1	79b996e13774c41421dc5a2b850289d67efdaa2ecba3627faf8f10cd55383b05	2026-08-20 09:26:23.91933	2026-07-21 10:03:34.216832	2026-07-21 09:26:23.924451
25	1	7ca78a2c2157c51106c3a609242a6e1ed00b91557888496bae00e25ab6dce480	2026-08-20 10:03:34.219278	2026-07-21 10:19:03.050477	2026-07-21 10:03:34.230484
26	1	a47a9be1abd7f320ab061a31d7c1640f2b21d0052193316e1dcea046f1f643e6	2026-08-20 10:19:03.050657	2026-07-21 10:34:29.687221	2026-07-21 10:19:03.05313
27	1	e244d3035e51a9f2284a5e165f59ee8a49d5c70bc3bfb4f3ebe2d3f23d041e9f	2026-08-20 10:34:29.687375	2026-07-21 10:50:27.694341	2026-07-21 10:34:29.688958
28	1	62372717d81c0c075bd81f114fcb1af73ccfc416a6e1d054fe79dd8ea7eaa508	2026-08-20 10:50:27.694458	2026-07-21 11:06:27.681759	2026-07-21 10:50:27.695972
29	1	cd4bb44d0cc72eef33cda5d93b3cdb997736926444eb05bde54aa5c3d2f150e1	2026-08-20 11:06:27.681871	2026-07-21 11:22:49.17007	2026-07-21 11:06:27.687824
30	1	5df6bf6fc258bd57f1f0e6b0e52d0ad23081605961929957a3bed0ac74872286	2026-08-20 11:22:49.170217	2026-07-21 11:38:29.908992	2026-07-21 11:22:49.172637
31	1	e69affe5b7c0050313f27bdd5bb6ecdd758a905d4a30053eb1bafd9c7c081d78	2026-08-20 11:38:29.909221	2026-07-21 11:54:29.911899	2026-07-21 11:38:29.912014
32	1	ad5d124242ff26399692fe479a08076a065c477893b27b2983fcaf4ab9a6c573	2026-08-20 11:54:29.912055	2026-07-21 12:54:11.800225	2026-07-21 11:54:29.914053
33	1	34e94a56d7e33623f6cd993287a4892e202d3b8012378f5532c3e1b31299d923	2026-08-20 12:54:11.800473	2026-07-21 14:02:09.387862	2026-07-21 12:54:11.805328
34	1	7048e8cc39beaed67cf0d4a04e230f5ff2bc3d2972f95fec7da7d8565c2ed49e	2026-08-20 14:02:09.388335	2026-07-21 14:30:04.994709	2026-07-21 14:02:09.392361
43	1	5717525a55ab0458c0eb29e0154ee289c5d4930e81a28dbe17f7276f1d9c9f9c	2026-08-20 18:49:24.359643	2026-07-21 19:58:24.319971	2026-07-21 18:49:24.361499
36	1	20336f781334e2d552afc74f371ccf2aac2063dea004c58c4316643e84fd2f25	2026-08-20 15:41:59.581934	\N	2026-07-21 15:41:59.596301
37	1	f0c64b1fc6cbc3f5840b13efcd82b479e60d3e41c487b7516ecaf321818febd1	2026-08-20 15:41:59.577501	\N	2026-07-21 15:41:59.6135
44	1	e822dd0e7a323bc7a98ed487a3ae17e87a29615045fbdf19ac90c4b27f4ef982	2026-08-20 19:58:24.320229	2026-07-21 21:36:28.812532	2026-07-21 19:58:24.325719
38	1	0bfcfeae8ac472979e871c25494ec7aa9f9fb29651c4a869409da8ef1d78cad5	2026-08-20 15:41:59.604688	\N	2026-07-21 15:41:59.62259
39	1	b096081fa908692d857fc2ebc773bb5195f686bc0a0a517efa33105e4883a859	2026-08-20 15:41:59.592942	\N	2026-07-21 15:41:59.637724
35	1	1db158b71141f069516ed23d46c5272f756e1c50c790f8d700c4f91a1f1ef395	2026-08-20 14:30:04.994795	2026-07-21 15:41:59.607122	2026-07-21 14:30:04.99796
40	1	7d57ad0fae4fc96a958031b9a6057d1c74fe21d7d2595ac186511cef47dc2093	2026-08-20 15:41:59.607175	2026-07-21 16:00:00.894984	2026-07-21 15:41:59.652497
41	1	89706e213786de750f874ed44e8e35396e445a21317c1986c55ee46aa533293a	2026-08-20 16:00:00.929484	2026-07-21 17:25:16.801586	2026-07-21 16:00:00.950687
42	1	261c873a860ca5aaa12b76330e469d441c392d4b35de4b9d81e001077b2becbd	2026-08-20 17:25:16.801897	2026-07-21 18:49:24.359465	2026-07-21 17:25:16.807571
45	1	c971894580dd861ae9da810796fc3ed3fe332491fee5ed856eb60aa98a9525a8	2026-08-20 21:36:28.812988	2026-07-21 22:34:25.209979	2026-07-21 21:36:28.814408
46	1	37869231453f5b150e7a7ecfbd6286f759fb099a279f36266f53338887e4cbf4	2026-08-20 22:34:25.210426	2026-07-21 23:44:03.345508	2026-07-21 22:34:25.216779
47	1	038718b5195f853d364d20dd9d183cb8d0898150140e5e51968f2ceb28d7442f	2026-08-20 23:44:03.345609	2026-07-21 23:59:17.516383	2026-07-21 23:44:03.349162
48	1	a0bc7594e961c7fffa8d9f4b2ea7d101a89951d6cb2ed7bca5f8e185f30f04b7	2026-08-20 23:59:17.516766	2026-07-22 00:14:40.968216	2026-07-21 23:59:17.52138
49	1	0483f5ab60a4a64a45c5647d67d39ee69ced133bad6939081b485a5516f99dea	2026-08-21 00:14:40.968358	2026-07-22 00:30:40.933606	2026-07-22 00:14:40.970491
50	1	17d3e7354e46620d703d3ce80d8e32321d864629fb7105d98830a1cce0d1bf05	2026-08-21 00:30:40.933997	2026-07-22 00:45:42.974561	2026-07-22 00:30:40.943434
51	1	9ac4a5f214ae71c223471d274665c05863af931749f5af9cae135a7d141de437	2026-08-21 00:45:42.974993	2026-07-22 01:01:21.944435	2026-07-22 00:45:42.978629
52	1	3a82ba5dff43b5906fe9b1c504187e2deb6a3d1ea351515f905b69b1a55c42a6	2026-08-21 01:01:21.944527	2026-07-22 01:16:36.956072	2026-07-22 01:01:21.94565
53	1	0e679cee06b797bcd018db7cb35b4a4b628b1ba0479b5530d6e4f1c0b63b7346	2026-08-21 01:16:36.956562	\N	2026-07-22 01:16:36.971848
55	1	b424a1b3336d559defbdbbe49c3e981e9ec2af1547ef8f8448ec9fecfff1afe9	2026-08-21 01:22:58.55616	\N	2026-07-22 01:22:58.557208
54	1	5dc0010684093cd8f0a78308f5646ac2cd0847fd6244ea5133424398d47cd480	2026-08-21 01:19:33.784676	2026-07-22 01:34:36.971834	2026-07-22 01:19:33.785653
56	1	209d3d6dd7332258b75962c63d6ebd280f8783105010ba114cce18f6ad170972	2026-08-21 01:34:36.974585	2026-07-22 01:49:38.769432	2026-07-22 01:34:36.993877
58	1	93a86a9e10b1f1c2f24b345c6a1857d6b24193cb500a778f416b448e78cecdff	2026-08-21 02:20:28.681649	\N	2026-07-22 02:20:28.68909
24	1	0c8df35cc3e0d064310616d852c581710171d365e77a0cac0d6342e07142d41a	2026-08-20 10:03:34.19468	2026-07-23 01:43:14.074533	2026-07-21 10:03:34.208446
59	1	664f026ea2f70e7a02494bf118c28e60785078fd7924c8dfefcde0a719de05b3	2026-08-21 02:20:28.688389	\N	2026-07-22 02:20:28.696392
60	1	931a267b52aa566866cc0232287c08c03ebe7f371df78cdac998b96208c710e7	2026-08-21 02:20:28.692967	\N	2026-07-22 02:20:28.704157
57	1	fb41a774dd8133f699e37bae1a8fa16598e5d1268ff9819ed378442e92c5ddc2	2026-08-21 01:49:38.769691	2026-07-22 02:20:28.695238	2026-07-22 01:49:38.776671
61	1	b6b7b9523188f5a9484c594a10a000a55a7af28a2d98c7c9a232a74f17988b23	2026-08-21 02:20:28.695259	\N	2026-07-22 02:20:28.717552
91	1	cb55a38f12ce551f46ddc9d5b71189817d589f89c0eb140d8f752615f55b4727	2026-08-21 02:27:11.869056	\N	2026-07-22 02:27:11.871949
62	1	b6e6c4780d0a0c31c825e0042a89e2313d15cee4c6eee5975c35bbec6f14a2be	2026-08-21 02:20:32.28763	2026-07-22 02:46:54.495723	2026-07-22 02:20:32.28796
92	1	e12b15f07c4b080b9a8b497dc9ac3c56d444fae84d4e5a2cc08b772a1a5c6ee2	2026-08-21 02:46:54.495892	2026-07-22 03:02:54.506975	2026-07-22 02:46:54.497926
93	1	eaad74235a6f6d83b3eeff98d2f916dd49718c566c1b49ec87dbccd350505928	2026-08-21 03:02:54.507062	2026-07-22 03:18:54.518004	2026-07-22 03:02:54.508295
94	1	9c3943f2017d390478711120d97c1355df6228867f9e4d35a20d2420c023d0a6	2026-08-21 03:18:54.518128	2026-07-22 03:34:57.210691	2026-07-22 03:18:54.519849
96	1	143eae86ff4010645739469c683d7bd0762cf39f7f4978e9ee4630380eb6f028	2026-08-21 03:49:36.552174	\N	2026-07-22 03:49:36.553205
119	1	2f7b8aaf1a2c440cb76f00135a93642315ca9337568d10f9b8cd753feecb651d	2026-08-21 08:28:54.011663	2026-07-22 08:59:33.541565	2026-07-22 08:28:54.013019
97	1	17a2c2d9ccdb2b4d8eb6ba067a93ca6b8eb15a6d5f42d0df9b65a8197b682652	2026-08-21 03:50:05.010359	\N	2026-07-22 03:50:05.011252
95	1	2a1af308a7710c005baac529f2fc4b556ffa0a7d76fd7e688608c6d81aa1800d	2026-08-21 03:34:57.214261	2026-07-22 03:50:05.013089	2026-07-22 03:34:57.243527
99	1	e7240dd21b8b91558d4d352c484e8cf96f41e766c0deaf78745fdd04a036b239	2026-08-21 03:52:13.804695	\N	2026-07-22 03:52:13.8059
100	1	3117f6d9eceda4136d01f9fdb20527d42d26fe21fdc55b8e85a0797234da7389	2026-08-21 03:52:27.967369	\N	2026-07-22 03:52:27.968451
101	1	d6df19ca3706953b82fd86cf5fc4f02eba9febbb14a7b3d93b3149cf1cec254b	2026-08-21 03:53:47.066752	\N	2026-07-22 03:53:47.067779
102	1	7436f7cd403e1c7335627fd920d1773bf0197c08238fa00033a092b1e3a1ac9f	2026-08-21 03:54:00.569071	\N	2026-07-22 03:54:00.569854
98	1	bc9a993eaa7d89abf80abdff92ff8f7b059557d513ecf95fbadefb9bdb1381a0	2026-08-21 03:50:05.013105	2026-07-22 04:05:13.351438	2026-07-22 03:50:05.015143
103	1	92067d36badf3ab7cdff25ca86c40d3761fcc49230ee0b05a013ad05889aeb47	2026-08-21 04:05:13.351566	2026-07-22 04:20:54.496201	2026-07-22 04:05:13.35307
104	1	1ab0ed89d12e37a765db614b2c0c3bab3d6f0e27cbe8e144e1b1b4b6c5d521e6	2026-08-21 04:20:54.496434	2026-07-22 04:36:33.430486	2026-07-22 04:20:54.50411
105	1	0bcec718d51ad3def0058e321f12653e61e5604797dbf4858cf6d538e9d302bf	2026-08-21 04:36:33.430619	2026-07-22 04:51:48.428908	2026-07-22 04:36:33.43265
106	1	71c0711e6acdff933f02f25c18df1f48375f19d31cb6f2dfccf988857ff279cd	2026-08-21 04:51:48.429017	2026-07-22 05:06:54.428979	2026-07-22 04:51:48.43157
107	1	b7657c45f693482bb7d68c0899ecde313edb40e6e7984ba1360d459815c095ea	2026-08-21 05:06:54.429117	2026-07-22 05:22:24.801982	2026-07-22 05:06:54.431226
108	1	c800eb1e8b31a97994a3c4ab4c9545449e93203048440d742afb7627cf193e2b	2026-08-21 05:22:24.802728	2026-07-22 05:37:36.824645	2026-07-22 05:22:24.806494
109	1	7a51bd1e3dd3148fe06ba1f39153165444514cf99775e3e751d08caa84a3c7bc	2026-08-21 05:37:36.825091	2026-07-22 05:53:36.832542	2026-07-22 05:37:36.829535
110	1	3eb59b67bad8fe45136a5f93596384c4122e1add9b21e9767c1ddefe8c2e11c5	2026-08-21 05:53:36.833323	2026-07-22 06:22:00.508011	2026-07-22 05:53:36.83787
111	1	d21d1a6cef47e8560b73480e505d3140612700e8b4292ceb7ccc62b22efa9965	2026-08-21 06:22:00.508129	2026-07-22 06:37:17.443562	2026-07-22 06:22:00.511073
112	1	2a56a7ccdf1edd508e48f1534d85d8e051ebb61515a2c80fcdc2f923c397b6ef	2026-08-21 06:37:17.443914	2026-07-22 06:52:55.443776	2026-07-22 06:37:17.45098
113	1	7f3133093b195343344bde5ff2cf35f4990a2edefcb2788e0be7f0429e28bc84	2026-08-21 06:52:55.44391	2026-07-22 07:08:00.5587	2026-07-22 06:52:55.448536
114	1	8c4a2ff85df916d2fc9ec55700f627cfe434b66d1a30db442ea824fccc8762ed	2026-08-21 07:08:00.558835	2026-07-22 07:23:08.949473	2026-07-22 07:08:00.56245
115	1	b4bd3a468d175ed66c363a4df760b197b0b786986c08ffe97c57c45d9e2a1e64	2026-08-21 07:23:08.949646	2026-07-22 07:38:10.507336	2026-07-22 07:23:08.951697
116	1	0c061a564158fc8e56ee25f7dd60f40d63e2c017b36833e62d69127678a61581	2026-08-21 07:38:10.507694	2026-07-22 07:54:00.532787	2026-07-22 07:38:10.509779
117	1	15b98d6d90cca5c400bd970f308b848caaa4bf9d238eb72523b4434e75568fc2	2026-08-21 07:54:00.532893	2026-07-22 08:10:40.407672	2026-07-22 07:54:00.535107
118	1	07683b4ee917e8f414af8486033ff743177b1fb309ee638d1c5b55d815c63762	2026-08-21 08:10:40.408061	2026-07-22 08:28:54.011557	2026-07-22 08:10:40.410852
120	1	f5ac3dfb389b82dc676402d028e1d1a777d20dd4c92496b2565d984d59e22cea	2026-08-21 08:36:45.864994	\N	2026-07-22 08:36:45.866165
139	1	774452a77cf3991c131278b744857de1abf497072a935374a9186469724cf557	2026-08-21 10:46:11.996946	2026-07-22 11:01:25.351184	2026-07-22 10:46:11.999064
122	1	7362c388d7a139793ba089275f1763db4c80324d656a865e0fba77fa92d2a0e2	2026-08-21 09:14:51.926153	\N	2026-07-22 09:14:51.927109
133	1	1d02badb74af30d381ee19553b3015fbd62ce93c62c8910baeaefa2d66f0c6f2	2026-08-21 10:30:52.351307	\N	2026-07-22 10:30:52.356983
123	1	959812cfb96e1f44727f909ccbf1f19203b5997ca3958cb71115c3b28b62199b	2026-08-21 09:14:51.924969	\N	2026-07-22 09:14:51.929828
121	1	fc275f05756495067b331d03a2e489b079cc0ae0ee51db22f1aba61ee05ebc9a	2026-08-21 08:59:33.541678	2026-07-22 09:14:51.928926	2026-07-22 08:59:33.543338
125	1	3cd118387d99f77b4ff559cc854094559f03f21177ee6e7be79f4c7bdc79ab3c	2026-08-21 09:17:07.027888	\N	2026-07-22 09:17:07.029076
126	1	768b1bbb60bdc4fa207d02d0fd20cd0de18a1262da87f747c2f1aaf6e8057ce5	2026-08-21 09:29:53.423233	\N	2026-07-22 09:29:53.425956
134	1	72b3512d5d26760069c52c3c292e8ee64245376713797bf125c31368e7cf533b	2026-08-21 10:30:52.358602	\N	2026-07-22 10:30:52.364709
127	1	6abe265b8f2c4a430c06be780ecc86c62c5c95defa8a2d6a83f917b0a784eaed	2026-08-21 09:29:53.426418	\N	2026-07-22 09:29:53.428457
124	1	fca01b3fc2eabe65adf8898b05afeebf22d982a72c3ec39c42706eab85bb1d16	2026-08-21 09:14:51.928938	2026-07-22 09:29:53.425026	2026-07-22 09:14:51.932076
140	1	ad980218490e25fa8f100babb08a8995745cca3b90266fa170fc75ac913623c7	2026-08-21 11:01:25.351316	2026-07-22 11:16:44.243571	2026-07-22 11:01:25.353554
129	1	62d242a73ed6b5b45bce59d39745deeca0e18d728e7dc9ee31ac5cbc67afa9c7	2026-08-21 09:44:55.842227	\N	2026-07-22 09:44:55.852976
128	1	36cbc2382992b7843280ff0ea72742556134d5754061a54a89eadcd981a92cf7	2026-08-21 09:29:53.425048	2026-07-22 09:44:55.858691	2026-07-22 09:29:53.430257
130	1	ad12b8713e0ab1a88173e0720505a850e7ac003b723e0e6f619785c4b4a83ebf	2026-08-21 09:44:55.858838	2026-07-22 10:00:24.472179	2026-07-22 09:44:55.869871
131	1	656f925bdd1f0f2b37e9effd66074329f1e4fe2aac6cde76dfb0d247aa322a6c	2026-08-21 10:00:24.472314	2026-07-22 10:15:39.639131	2026-07-22 10:00:24.474062
135	1	97aee859e04cede75f4dde3c33dbcd62c18fe54fd14e865435fb37887646ad05	2026-08-21 10:30:52.354896	\N	2026-07-22 10:30:52.369718
132	1	6182ddc7d847a4206a402ad2b81fd5917e5354fd997647c3bcf99527e7cf51e8	2026-08-21 10:15:39.639497	2026-07-22 10:30:52.36597	2026-07-22 10:15:39.649219
136	1	da747af8ea75b40762b49977342c4650b755c20e64a49bff68ac82e124c8e139	2026-08-21 10:30:52.366007	\N	2026-07-22 10:30:52.375927
138	1	947e4ffc41dabad18c372a3c893f0911feda19e65c0b8f8e6e5ec2db474b952e	2026-08-21 10:33:10.838026	\N	2026-07-22 10:33:10.839015
137	1	077c3595ab0ff3f7399768b649fd2b8cbab7d35b72213b69bb65da04880ed64f	2026-08-21 10:30:54.938889	2026-07-22 10:46:11.99683	2026-07-22 10:30:54.939199
141	1	fa5f1e0fbe8930a2564396af631855ee359037024f97c61f57dc79598fc452d4	2026-08-21 11:16:44.243718	2026-07-22 11:40:28.097129	2026-07-22 11:16:44.245488
142	1	94f50f0e127762f9893c8552d0fca43a988d885b53804b8f0ad91af41341a401	2026-08-21 11:40:28.097372	2026-07-22 11:55:56.449947	2026-07-22 11:40:28.100433
145	1	044f7ae141cc44393a872183600128c8ee382aed06c56b6b70b93d2fbb543caa	2026-08-21 12:11:12.104195	2026-07-22 12:26:14.531668	2026-07-22 12:11:12.121855
144	1	4179fbe8363d21303faf133d1bc8716c8545ed958bfa16afd166f85db6009fc4	2026-08-21 12:11:12.108897	\N	2026-07-22 12:11:12.112318
143	1	75773e52c11ba3a865e8afa5a70964615ac715ada8ea1a13a298872f87a2cfed	2026-08-21 11:55:56.450074	2026-07-22 12:11:12.109708	2026-07-22 11:55:56.455341
147	1	162054dc25fc4892329d59bfd62e75021d1341bdf3fec0dca09106d1827782c0	2026-08-21 12:26:14.531745	2026-07-22 12:41:41.060871	2026-07-22 12:26:14.532784
148	1	08284ba997caec63cc28e2e6a5edace481ee03e4613e06958997d8f4931d38ff	2026-08-21 12:41:41.060984	2026-07-22 12:56:53.094155	2026-07-22 12:41:41.062508
146	1	71468692b63871146a6448f3be00ebf4d5a3ac4ee574ae4ac5ef2017f59b1438	2026-08-21 12:11:12.10972	\N	2026-07-22 12:11:12.123958
155	1	51a136ebe93d460b5b4352f4f9422c7a90ecfc11fecdc4c031aaf415411923e5	2026-08-21 13:27:09.001218	\N	2026-07-22 13:27:09.010898
158	1	fd211c6a320cbdbb3c5717991078e082e56dd20837477781359b5676683d2ea3	2026-08-21 13:42:12.649522	2026-07-22 13:57:35.454041	2026-07-22 13:42:12.651923
149	1	c39c0bcb0a0efce39001dc9ae4c7c84745a7e9c37badeca9735074785621a4c0	2026-08-21 12:56:53.094314	2026-07-22 13:12:02.586991	2026-07-22 12:56:53.101659
152	1	6fee501066334c308b035077c7deaedc1ada91de188ff765e98f0359a064ad97	2026-08-21 13:27:08.994537	\N	2026-07-22 13:27:08.999135
150	1	a483815706e2ef8dee982098da1d034b7a768e4fba0f068c4960226a293f07c2	2026-08-21 13:12:02.587135	2026-07-22 13:27:09.001198	2026-07-22 13:12:02.5885
157	1	c8385e03a48d52b6d5cdb3e105a024b1addd167ea39fdd1ba6f9161d927f86b4	2026-08-21 13:42:12.645778	\N	2026-07-22 13:42:12.648237
156	1	e272ee3068f62b429a92b8b60892d6e207b9eaecdd726060f10607428ce16c8c	2026-08-21 13:27:11.895805	2026-07-22 13:42:12.649479	2026-07-22 13:27:11.896378
151	1	e1c1f7872da5fe553337b36712713b50c9ae763fa86405d49e3db03150c804a9	2026-08-21 13:20:15.279603	\N	2026-07-22 13:20:15.281279
153	1	33ec62162f24c18a906eafcc463f31d30aef8a90ce8aed740dec32eb3b402d54	2026-08-21 13:27:08.998016	\N	2026-07-22 13:27:09.0025
154	1	a08a745b585a7113a48d922031d59d47aef79a271fb2236e350fc2e2f899a972	2026-08-21 13:27:09.000773	\N	2026-07-22 13:27:09.00734
159	1	4337f5cabb2d97901cadcf3d3147247a79fbfe38444c46f3b21a5cd229c93f9c	2026-08-21 13:57:35.454173	2026-07-22 14:13:37.477974	2026-07-22 13:57:35.456341
160	1	4d21714b0be6dbc65408213f6f3c73d2563c2d55aace5eff97792e611bf6e0e9	2026-08-21 14:13:37.478083	2026-07-22 14:29:22.167527	2026-07-22 14:13:37.479798
161	1	5544f12a845140d5ac660a092427c69f77c99b3160dc5a97b95ed97cf7d27e2f	2026-08-21 14:29:22.167646	2026-07-22 14:45:49.129059	2026-07-22 14:29:22.169351
162	1	ba8697cbd5537d0918d19c1afdec5735435107e8e31f52ba362a50081e47609c	2026-08-21 14:45:49.129164	2026-07-22 15:01:48.860482	2026-07-22 14:45:49.130593
163	1	5b34a74e04959c171d9212e8dca314941512bb9db00bb197785560f79049216a	2026-08-21 15:01:48.860919	2026-07-22 15:17:46.739948	2026-07-22 15:01:48.866608
164	1	1d41f910ac90d6ecb2328403d40914c0960512a3cd160d2485d1da64bfe7284f	2026-08-21 15:17:46.740066	2026-07-22 15:32:48.915752	2026-07-22 15:17:46.741946
165	1	3f736b488e0b4b9793c62717207dba6c39be747d8f87f9c5a3497c66e1fba972	2026-08-21 15:32:48.916087	2026-07-22 15:58:57.909631	2026-07-22 15:32:48.921565
166	1	f6d265db7c73c107a0d55d1436cc39e9f8dce09bd84da43635e81af5f28c67ea	2026-08-21 15:58:57.909747	2026-07-22 16:15:11.136589	2026-07-22 15:58:57.914201
167	1	0fa3b487ef395eaaca949e49e4837f54591e32f4000172d409c0e68022e56c93	2026-08-21 16:15:11.136694	2026-07-22 16:31:36.053585	2026-07-22 16:15:11.138355
168	1	f587f69d2a39232bf2fc7f18e07c4163bd26b934d9abe321bc4b3611a5681e9b	2026-08-21 16:31:36.053725	2026-07-22 16:50:02.731495	2026-07-22 16:31:36.059087
169	1	6c61cc6cc3746828f793745d56bf3577da61c5611e65647898dcc8c1877999a4	2026-08-21 16:50:02.731605	2026-07-22 17:06:56.348187	2026-07-22 16:50:02.733908
170	1	07a5dd305348234c77409995a64fd436e07336be888a466a28ccb0ab57a8a1cd	2026-08-21 17:06:56.348284	2026-07-22 17:22:56.349541	2026-07-22 17:06:56.349741
171	1	8d4f81cc701fea57c6ced5d855b878b6a8da4e46a460984ce4a5083dfaf0fa18	2026-08-21 17:22:56.349696	2026-07-22 17:38:56.301075	2026-07-22 17:22:56.351228
172	1	25f0b0c96c511b1b3d2ae71f8db639f4919b8c7ae994f38a794ae325a014dec1	2026-08-21 17:38:56.301203	2026-07-22 17:54:56.314748	2026-07-22 17:38:56.302974
173	1	ec8d45481ea3b2afd0bb2ebcaa4e64abe0a7f1a3a03ba9a599c5babe776d5c34	2026-08-21 17:54:56.314959	2026-07-22 18:24:21.106191	2026-07-22 17:54:56.317697
174	1	14ecc1584cd027d565fd05692bc9a024d82fce1d526dc9911c108fe036a09688	2026-08-21 18:24:21.106336	2026-07-22 18:40:28.584529	2026-07-22 18:24:21.111388
175	1	d59c78fcad9f2d0dd58c150782553ccce5ab67d77480d8205d5a4fd02df8d1c6	2026-08-21 18:40:28.584659	2026-07-22 18:56:56.227482	2026-07-22 18:40:28.586483
176	1	47bc9c7c9dd4c33784aafd2c00dc1a785515ac8487a82a183e1b7f03de9e5a32	2026-08-21 18:56:56.227578	2026-07-22 19:14:10.308956	2026-07-22 18:56:56.229352
177	1	0b33314e2e010db6ee1424a2a3077a3b715cb61175528290c7f31a6d6196de76	2026-08-21 19:14:10.309065	2026-07-22 19:30:10.365385	2026-07-22 19:14:10.310805
178	1	b04ed62621a24e03f0cf3c757bff553eb40e28a6c3cc879a6e24825d4a24a773	2026-08-21 19:30:10.365545	2026-07-22 19:46:08.258924	2026-07-22 19:30:10.371464
179	1	de7308a0d96408c22b9f59694fd79d0059167b532483fe149d44d8657b2b6913	2026-08-21 19:46:08.259058	2026-07-22 20:02:10.385359	2026-07-22 19:46:08.261014
180	1	6ef9f984600c45bb74fb824fd44c309a11e797e2bc4948e3878a1a1d84efd255	2026-08-21 20:02:10.385474	2026-07-22 20:31:43.611941	2026-07-22 20:02:10.387128
181	1	537304cb5e99e1a652e4a52e5e744063ada078bbe0fa5a7b58da85b0093ec617	2026-08-21 20:31:43.612061	2026-07-22 20:50:21.649892	2026-07-22 20:31:43.613757
182	1	b96f4ff0a76da9f9adc06af239d3d2ef6863350262e545f1c8c8e720776505ac	2026-08-21 20:50:21.650007	2026-07-22 21:06:19.565879	2026-07-22 20:50:21.651392
183	1	f9d916fffa3a1136a4d53b252005683937f8ea09b5a8e724ea24b5bd2ddbed67	2026-08-21 21:06:19.56607	2026-07-22 21:21:21.803768	2026-07-22 21:06:19.568666
184	1	da609693f66ce03d24c9035e6c358e385062b1edde6a6000e9e7d1c7fb5368ab	2026-08-21 21:21:21.803889	2026-07-22 21:37:21.752781	2026-07-22 21:21:21.805487
185	1	c9ad105dc0c319b6996ccd76a566b23e196ad4df0e2932c7083b3ec1f267c2c0	2026-08-21 21:37:21.752881	2026-07-22 21:54:08.769567	2026-07-22 21:37:21.754446
186	1	e4c80eb22c82f799145bdcd32e41799686b3879ebcd05d8676c20e4a4415fba4	2026-08-21 21:54:08.76967	2026-07-22 22:12:45.081627	2026-07-22 21:54:08.774949
187	1	ecc984c052538d503d2272feb2fc9b767695f8b7c724485f41c1823b97227b86	2026-08-21 22:12:45.081753	2026-07-22 22:31:29.735808	2026-07-22 22:12:45.08314
188	1	244def13a76a79ab88b47326c84d64e6d546591e16527c7254f7e9825eccf9ec	2026-08-21 22:31:29.736017	2026-07-22 22:54:47.695499	2026-07-22 22:31:29.74655
189	1	f20bcb661b3ce1e81078dcb8dc6569c693d27275ae2347b9adec7a042c1e1939	2026-08-21 22:54:47.695645	2026-07-22 23:10:45.272665	2026-07-22 22:54:47.70137
190	1	c79ab0d42d23c4e4541089e7ea5758b6f242b4201aa0b1911e38e0322ed3c7f8	2026-08-21 23:10:45.27307	2026-07-22 23:26:45.272029	2026-07-22 23:10:45.276347
191	1	4f5454cd965cdfeeaa3064ae8c81ae7172ba33bd9b0d099bbcf2be7eb9e8f74f	2026-08-21 23:26:45.272304	2026-07-22 23:42:45.262674	2026-07-22 23:26:45.275172
202	1	cfa36d9c2bb445312f19ff0153fdcfa92f0e6d64a3a533e43ac005114d9f7b83	2026-08-22 02:14:12.280072	2026-07-23 02:29:22.304932	2026-07-23 02:14:12.281323
193	1	32658fe036de16c4808266e06f38ae08dbff2d3f7112ac5d9e2fc92ed3073525	2026-08-22 00:00:24.864294	\N	2026-07-23 00:00:24.901746
194	1	dbb2947fbd590f6d77c441f90cd9f07e8cf3349c7e997824c8035ccc3bc6a904	2026-08-22 00:00:24.896926	\N	2026-07-23 00:00:24.995007
203	1	1a4579d9f28ef6c50844437fdabf6e624538a457df0c8d6434967c37408039a2	2026-08-22 02:29:22.305052	2026-07-23 02:45:24.311265	2026-07-23 02:29:22.307526
195	1	cc82dac56bc8317069dd9845ae9f5a4b015705b385daeadfdea87136cf3cc1ca	2026-08-22 00:00:24.996039	\N	2026-07-23 00:00:25.305512
192	1	08b27c3efdb6b3e6b65ebd7f9dd1a3d46333179e1d509586280f5a8d69592387	2026-08-21 23:42:45.262778	2026-07-23 00:00:24.967953	2026-07-22 23:42:45.264806
196	1	e683eb2941538aa4d345938f8ed428ddfc6120dcafffd700dc7e9afd59c8a80d	2026-08-22 00:00:24.968154	\N	2026-07-23 00:00:25.42154
197	1	a381ef50d3340703c6b9fcfa7364e6f8c694a8b2c6c44c54eec9083ce2633482	2026-08-22 01:43:14.068522	\N	2026-07-23 01:43:14.069645
198	1	4b7e48f71e3c00fd16d03fc7f50fe015b4d91654a58f192916b7a2c86ee9305d	2026-08-22 01:43:14.074562	\N	2026-07-23 01:43:14.075714
200	2	ff7c1b8a7a607f155ee7887c607732638265a0fba71a730e73cd4e4f2ed93c9a	2026-08-22 01:57:25.998969	\N	2026-07-23 01:57:26.000273
199	1	95e7e7cadd9b28f643fb6851552c95452973f8f01ad5bbd830a9ab2dc44f4832	2026-08-22 01:43:34.976593	2026-07-23 01:58:57.279049	2026-07-23 01:43:34.977773
201	1	957f1ca56b3e98328a7b2277827fd7098ef64e214b80c1f63ef16bd52dd877bb	2026-08-22 01:58:57.27923	2026-07-23 02:14:12.279791	2026-07-23 01:58:57.280936
204	1	8e95dadd3e5dee019bc81fb30753f24088975b976f3d6e4c7a74fd868e3c06fa	2026-08-22 02:45:24.311359	2026-07-23 03:02:10.10592	2026-07-23 02:45:24.312335
205	1	ca0c0424fd43c80a2a94454f364a056e62556445beec4e9c42f013f5f1855674	2026-08-22 03:02:10.10655	2026-07-23 03:21:17.81568	2026-07-23 03:02:10.109785
206	1	3ff0e6f10d8a3c1c7d23921022c86e5f4fcf118a4ecbf376ac124a0783fc7ecf	2026-08-22 03:21:17.81591	2026-07-23 03:37:17.796005	2026-07-23 03:21:17.817559
207	1	f41f02e785bdda84aeb130caaf8db093770a07c849977c07b1faaa279f2ad273	2026-08-22 03:37:17.796148	2026-07-23 03:44:57.372136	2026-07-23 03:37:17.797159
208	2	55b2d0887dac9ba022892fb77e3c3f52f6d4d6f4c466836d3dfd60ee5dfd0ebe	2026-08-22 03:45:17.614444	2026-07-23 04:00:38.445061	2026-07-23 03:45:17.615014
210	2	5c6e2bc1b357a0736d21ac6b778585d51fd26544d3658c9bb934fc44840fed70	2026-08-22 04:03:44.636671	\N	2026-07-23 04:03:44.637408
211	2	0738586c84e3947f4795d7b8c9fc4221d37a6b7df5cf341fd1071ab3fef59073	2026-08-22 04:03:53.913819	\N	2026-07-23 04:03:53.9148
212	2	dacd88bd1de13aa811e862ed58510c871434d768bfd9c4ee7faae2b20711f787	2026-08-22 04:04:21.590553	\N	2026-07-23 04:04:21.59159
209	2	5bad00675e1a78dd7070c1660378405dc4f5ed9342547b3bd6c493673864fc09	2026-08-22 04:00:38.445536	2026-07-23 04:15:45.74095	2026-07-23 04:00:38.447884
213	2	021c0b38cc563fbb30bd286cf93a6e52f8682ad9d873d172bae94edddd7435ff	2026-08-22 04:15:45.741097	2026-07-23 04:31:17.734691	2026-07-23 04:15:45.742947
215	2	0cfcd600bf051e4d0cd904731b43aaf40c7b32211b4d30fd91e99b852119f3bd	2026-08-22 04:37:30.947257	\N	2026-07-23 04:37:30.948035
214	2	b97998bbdf71461488e06f1dcae2635955da2fa64ea2c1b1ee52d2d55b551724	2026-08-22 04:31:17.735031	2026-07-23 04:55:11.232201	2026-07-23 04:31:17.737212
216	2	7bd651b1f55f05c890275751e20e45d3739ed6d35ff7b35158903dc058ffbfae	2026-08-22 04:55:11.232295	2026-07-23 05:10:34.619954	2026-07-23 04:55:11.234023
217	2	315ae4609efc18f419aad344d76a29ac672745ce61a3d2142bc5f4a58c4e8d13	2026-08-22 05:10:34.620489	2026-07-23 05:25:48.035979	2026-07-23 05:10:34.628852
218	2	d6163b82e869e27a06402bc1eb4cd1a66e43171ff28b6d8a413ae21eab03be35	2026-08-22 05:25:48.036126	2026-07-23 05:41:01.107484	2026-07-23 05:25:48.037531
219	2	0e378d79189d874ff2e74c38e8af9dc2321cacc2efebf6017daa27d7a22887a1	2026-08-22 05:28:45.22951	\N	2026-07-23 05:28:45.230394
220	2	69ce98c6696e380e35d1a5aaf641317f83c22597df41f7aa424174d36ce41987	2026-08-22 05:29:06.340807	\N	2026-07-23 05:29:06.341208
221	2	4fc830312c71f738b1543dd6e17973262ae6fa011d0753f81d0dcc8707aac259	2026-08-22 05:30:50.204603	\N	2026-07-23 05:30:50.20567
251	1	46016bfc90b9e59dc8fef3c2ae42ecfefd6ed86db4df072ac30d84196202d3d6	2026-09-03 13:57:54.983105	2026-08-04 14:13:04.310819	2026-08-04 13:57:54.995926
223	2	9dbb5464e58aab22e2f2940857a1647c8c8862c8a64b3247f3c01c153fc64fb9	2026-08-22 05:56:02.667149	\N	2026-07-23 05:56:02.667852
222	2	a2800106e905ce4c30608b4bd7c25c01f359e0e1f9dcfbf430d2de56f140b2a0	2026-08-22 05:41:01.108977	2026-07-23 05:56:02.665741	2026-07-23 05:41:01.114562
224	2	f7cda9d22913fceb222354da988d85e2cf131bddf036533b83d068dfd32ae9d4	2026-08-22 05:56:02.665926	2026-07-23 06:11:14.287219	2026-07-23 05:56:02.671756
226	2	c8cfae7356a70d5f78105fc37ee1a3e5253d4583b5d5dfed8e672faf9e583272	2026-08-22 06:23:51.834541	\N	2026-07-23 06:23:51.835609
225	2	9cfcd3562b1853d495c7b23375dc4be5cba1e0e52250bc2b5a1adec84dbf0a5f	2026-08-22 06:11:14.289445	2026-07-23 06:26:20.255132	2026-07-23 06:11:14.294299
227	2	b2868a65659df611ad82d8963d48ba3d378854327e9e15685bf6c21dbb3414cc	2026-08-22 06:26:20.255322	\N	2026-07-23 06:26:20.257198
229	2	34a10b4b9f78be8e0d7a177342d6a015ed7cde20b3486feaecac10dbd1ab8254	2026-08-22 06:51:35.895365	\N	2026-07-23 06:51:35.903774
253	1	1484ada75d13f44560bd601e4469caed3edf8c27b11e1f2570e4b60a299bd479	2026-09-03 14:13:04.309162	2026-08-04 14:35:53.883791	2026-08-04 14:13:04.310666
230	2	8435f2a06b77fafabe1b6854f5328130d3d2d44f3dc1db52211070c7b04f6024	2026-08-22 06:51:35.899173	\N	2026-07-23 06:51:35.911948
228	2	abd230b9d0d2188f8ae2ba35a3ba59fc01c048ed7724bbb442463735500bb121	2026-08-22 06:28:53.635041	2026-07-23 06:51:35.907325	2026-07-23 06:28:53.636738
231	2	aacb41ed156085d9e887aa673d8569bcb191defbb2f5a0fc8c94f6476b73b13f	2026-08-22 06:51:35.907712	\N	2026-07-23 06:51:35.920796
232	2	d74a39d80be3f5cdb4ae21413ab6329994a4f01ae31be7506b1d479b19547012	2026-08-22 07:06:27.439787	2026-07-23 07:09:14.422321	2026-07-23 07:06:27.441685
233	3	25c159c77f1b37fb8f1955dd42c031c769b8ef6753a3980da9b7f657b5149523	2026-08-22 10:15:13.801817	2026-07-23 10:16:01.644297	2026-07-23 10:15:13.802701
234	3	6a2f075f88889829235330dd994b66c99420c767b03203bfcc48300faf3aded4	2026-08-22 10:27:31.520931	2026-07-23 10:27:35.750709	2026-07-23 10:27:31.522372
235	1	dc3fa9d6ee417fae119fdc5e5f7634515cb47a471605c22d47f6982768473105	2026-09-03 08:58:19.491949	\N	2026-08-04 08:58:19.493775
238	1	3d13eb89618ec76bbdd3f6371885cd01bf4ddf5468cfc13e80ad7cc0208d8727	2026-09-03 09:18:54.353699	\N	2026-08-04 09:18:54.354935
236	1	8df56d6309e8ceb5efcafa07254b1b7633b615299a77c923eb2dac40fca7dce9	2026-09-03 09:04:19.714075	2026-08-04 09:19:40.855316	2026-08-04 09:04:19.715428
240	1	171caa0d8606c3bf64feab4750387f0ef5d3bf2c54c7a7633a68da106acd4a6c	2026-09-03 09:19:50.29192	\N	2026-08-04 09:19:50.293009
237	1	21ae1c80b5192d076d0af41e6a5e1ef40f381b0d19462ed2464fadf12f8f57ef	2026-09-03 09:12:02.268152	2026-08-04 09:27:25.677637	2026-08-04 09:12:02.269857
239	1	2f47cdab7795ffc6fb33d3e578e0ec4d0f20922a4c7cb58db90f7f9f2f6e7e9b	2026-09-03 09:19:40.855464	2026-08-04 09:35:09.14971	2026-08-04 09:19:40.857262
241	1	fe061c8f55055e29b7e4a16b1ed3530a371a4dc5878be39035941329487a2083	2026-09-03 09:27:25.678909	2026-08-04 09:57:49.041665	2026-08-04 09:27:25.690244
242	1	8c188401542277d0d8d1cae9041fded68baae73293bcd092ed4fa57465503969	2026-09-03 09:35:09.149866	2026-08-04 09:57:49.055466	2026-08-04 09:35:09.151612
244	1	5b3a895af2d65d8240e01bf5a0a3eda8f852fb2d93e65fbf6aeb3276daade5ef	2026-09-03 09:57:49.055507	2026-08-04 11:33:51.723471	2026-08-04 09:57:49.057538
243	1	bcc2e3ad7d5dd2c560dbc226eedc7ff2eaaccb3911450dc38927cae55bacc21b	2026-09-03 09:57:49.042096	2026-08-04 11:33:51.732503	2026-08-04 09:57:49.047191
246	1	cf0cbb5ae440f12bc6f463d7a362132469d7db2563c97a6e45c3a886afd178b6	2026-09-03 11:33:51.732568	2026-08-04 12:21:45.697351	2026-08-04 11:33:51.750776
245	1	b2f350a7d741da4696529a7989a93236b79296b71840f8d856045e8c56c6ab9d	2026-09-03 11:33:51.724012	2026-08-04 12:21:45.693673	2026-08-04 11:33:51.748839
247	1	9a1153d6254928c3f174c7d69c8bfc52d5b4368c28a1658d3dea182bf9f61068	2026-09-03 12:21:45.697383	2026-08-04 13:29:30.134282	2026-08-04 12:21:45.698763
248	1	21721d14189b64c42b63b0388a70d666c6ab2127870ffaa5a2b33e5ffa333644	2026-09-03 12:21:45.69451	2026-08-04 13:29:30.149312	2026-08-04 12:21:45.704641
249	1	417b819b1ad02a8e2e6e8b302344313aa863f0925440d01ec1b7d38aa17013d7	2026-09-03 13:29:30.136858	2026-08-04 13:57:54.973256	2026-08-04 13:29:30.151349
250	1	26202f6c2d49d69d35a7fe6fd4bd5c3cc8ce1959db986b6a88150925d0918967	2026-09-03 13:29:30.149447	2026-08-04 13:57:54.975752	2026-08-04 13:29:30.168808
252	1	eedc43cc4be3c506eacee5677dfcff8ad216b93d8bbe63efd07e8c48ade04889	2026-09-03 13:57:54.976113	2026-08-04 14:13:04.308835	2026-08-04 13:57:55.000848
255	1	323957f70b658f72fb9fd42b847f4ea0755c8ccfc2a7b1b4bb2767dea564f9cc	2026-09-03 14:35:53.884487	2026-08-04 15:10:03.92428	2026-08-04 14:35:54.011392
254	1	344077dd3bc66b5559aaf1cc30de6f8414736b7d1e207e96bee6e2899b2d78ca	2026-09-03 14:13:04.310835	2026-08-04 15:10:08.930813	2026-08-04 14:13:04.311701
256	1	aea5ca61a7365179dc5e5d003f0c9dd23e9bb85ed38b340b57a91a63e51cc578	2026-09-03 15:10:03.924445	2026-08-04 15:27:22.733996	2026-08-04 15:10:03.9271
257	1	fb19b9ba7ebb214af1aabe1c7fc1d57ae5853e80b9adbb900ecd3953ed8c58e2	2026-09-03 15:10:08.930845	2026-08-04 15:27:29.265351	2026-08-04 15:10:08.931335
258	1	b05086bbf1bfe5cbe9cd1d0ae24eb68298212ede38c94c4221ff13d953014d69	2026-09-03 15:27:22.734109	2026-08-04 15:45:18.853681	2026-08-04 15:27:22.73526
259	1	bbf94c82f082c35b26f0c04c33dee0be991e0c3f79567e9c90cdaf23678e4951	2026-09-03 15:27:29.265371	2026-08-04 15:45:56.303845	2026-08-04 15:27:29.266023
261	1	b0772db2ad3ae6b1dbb46a56f87c1c14cb42e24479c8440b9c76ef5569ebe880	2026-09-03 15:45:56.303928	2026-08-04 16:19:26.962072	2026-08-04 15:45:56.304735
260	1	1f2df33eaffc0a1e0c496ac083b582b80c97f18b0fde53b97f983e1d56014855	2026-09-03 15:45:18.853812	2026-08-04 16:19:26.964122	2026-08-04 15:45:18.855987
263	1	32eaffaf7c7c6873477f4f9e337558a06966e128fa49713b291bd81ceb15de76	2026-09-03 16:19:26.964146	2026-08-04 17:03:35.801141	2026-08-04 16:19:26.965087
262	1	4e42dbe9a3dcb19c85ad9a64f806202fe8aab3deef8c2c5d1bb7f678aabc4170	2026-09-03 16:19:26.962193	2026-08-04 17:03:35.803993	2026-08-04 16:19:26.964739
265	1	6854fe10afd8666385711e463f741c75c4be38b92f5fee83d36758e522278db2	2026-09-03 17:03:35.804014	2026-08-04 17:27:23.626375	2026-08-04 17:03:35.804491
264	1	8cd489332af3dd5d61fdaf807d62fbb3ca293005783121e02cab8557f141f2de	2026-09-03 17:03:35.801239	2026-08-04 17:27:23.628193	2026-08-04 17:03:35.802602
267	1	814b33cdd9e0136e78f554e960698bd4925f61b93883234648f552fa7a583e2f	2026-09-03 17:27:23.626505	2026-08-04 17:54:25.708717	2026-08-04 17:27:23.629325
266	1	caed46e09253cf9e3496af81e38964e301820a383b0b19c0de3f42d4633e40c0	2026-09-03 17:27:23.628207	2026-08-04 17:54:25.715621	2026-08-04 17:27:23.6286
269	1	9656c9b2f14afc436c1e7b47fa1f87202e6ed44b0af381389b248337c90781db	2026-09-03 17:54:25.710149	2026-08-04 18:28:54.327028	2026-08-04 17:54:25.717641
268	1	b4ab9e618b3e4f1caaf0b75bf1d1e799d57f7be5cf43f3ef706fe028dea6a0a9	2026-09-03 17:54:25.715642	2026-08-04 18:28:54.345148	2026-08-04 17:54:25.717518
271	1	324282b69ce1fda079bb5061f332fc3e4d85ac9fa9f991d1b5795e3fbd28e710	2026-09-03 18:28:54.345175	2026-08-04 18:57:28.318848	2026-08-04 18:28:54.346964
270	1	8d07a207ec51bed7c5a06818c71be1370d38f6111df509576902b6e66290bed0	2026-09-03 18:28:54.327179	2026-08-04 18:57:28.320704	2026-08-04 18:28:54.336593
272	1	642998f3dbeac70fe8ee2e25b2bb9bb47192786cba348789bc2431da5026ad54	2026-09-03 18:57:28.318977	2026-08-04 19:42:02.251155	2026-08-04 18:57:28.320395
273	1	1e622020e9fbfcb8c2fc3ae65904a6709019d969a8414e552845f8b39af5e63b	2026-09-03 18:57:28.320722	2026-08-04 19:42:02.254291	2026-08-04 18:57:28.321248
275	1	197e3f6d7045962482c354e7c76447c613632362183f97b219164dbeacaba8a8	2026-09-03 19:42:02.254314	2026-08-04 20:11:31.258831	2026-08-04 19:42:02.255222
274	1	4d8a7be801af97b995fd96876465dbe081180712ed87fbf72b227b4b39af9808	2026-09-03 19:42:02.251318	2026-08-04 20:11:31.261435	2026-08-04 19:42:02.255128
277	1	7c8dc24b7d8baaa7a93859711e5122d1ba88b3c1aa6c4ab03f552bd9555a6480	2026-09-03 20:11:31.259853	2026-08-04 20:54:17.153368	2026-08-04 20:11:31.262593
276	1	1088df46ff10ee29a142a5e071c9d22c3c99e5f023074f27e3b44d386e158417	2026-09-03 20:11:31.261451	2026-08-04 20:54:17.300277	2026-08-04 20:11:31.261844
278	1	bee1687eb55658c8e0917fdee0ae13fe316a95d24bb8441434198b2aaa3a4bcf	2026-09-03 20:54:17.153597	2026-08-04 21:21:29.423879	2026-08-04 20:54:17.155904
279	1	14a4d6d6524fe6ae42e71559691c920f32e4fa76dde04fa941ba882a1a461994	2026-09-03 20:54:17.300357	2026-08-04 21:21:29.426176	2026-08-04 20:54:17.302036
281	1	3d4aa36af71193186017763a8e206d421a43a69107b0ac3e8194736c90fd56cf	2026-09-03 21:21:29.426196	2026-08-04 21:37:47.211194	2026-08-04 21:21:29.426692
286	1	f4f32d0f4537b3834948e87571b7a6e7be9db6d160dde66ab681470fe81d2aab	2026-09-03 22:44:43.066065	2026-08-04 23:12:23.872107	2026-08-04 22:44:43.07006
293	1	29737778a732c2957b17a373d054a32c25839fdc171c0914c838532161bde6ba	2026-09-03 23:52:26.755824	2026-08-05 00:15:40.829368	2026-08-04 23:52:26.757951
280	1	e2855d980d3666a49f6212c719c146aceb62a8e1c110411d66ab953ebdca0c76	2026-09-03 21:21:29.424476	2026-08-04 21:37:47.211417	2026-08-04 21:21:29.425965
283	1	aebf707610eae609878e96ba68a998cefc8b770267c53845ed848a9495de8f89	2026-09-03 21:37:47.211467	2026-08-04 21:59:31.336735	2026-08-04 21:37:47.220673
288	1	337946c16b0686d1643280409fe118633befc39f80b8fca04fb59e241e9c7a54	2026-09-03 23:12:23.87226	2026-08-04 23:29:59.577921	2026-08-04 23:12:23.874356
290	1	a52f3d8622c98afb42b4008bc6f6f25fff90248f3d51f9d7cc88dc37946b5e58	2026-09-03 23:29:59.536576	2026-08-04 23:52:26.743179	2026-08-04 23:29:59.53827
292	1	a34a16076709fa939805e382180df654f9a60e276fc2cb7aebde7435b6e5a45e	2026-09-03 23:52:26.74427	2026-08-05 00:15:40.832341	2026-08-04 23:52:26.751697
282	1	f67665e35e861bd2e28054e277edf630050dcec8a177a353cd23f5ab081361eb	2026-09-03 21:37:47.216854	2026-08-04 21:59:31.335393	2026-08-04 21:37:47.220156
285	1	0a24cc8737c2c55aabb2819cf4472470911909dbd0fc4a5d05d328a356c1afdc	2026-09-03 21:59:31.335544	2026-08-04 22:44:43.065712	2026-08-04 21:59:31.337381
287	1	4a875508617c7cee87389702ec6448ed9e214464592ef095bc0cd9cdeff5996a	2026-09-03 22:44:43.071301	2026-08-04 23:12:23.898795	2026-08-04 22:44:43.071862
289	1	4e8beea2bea6904111cd9c9cef4e7e5560651795221929726d350fac7c9b92ae	2026-09-03 23:12:23.898817	2026-08-04 23:29:59.536301	2026-08-04 23:12:23.899308
295	1	fbf6f7c1b57b757da0593826e2db69e82e95dd09c52d2be8ac1d38d2fc2541b9	2026-09-04 00:15:40.829711	2026-08-05 00:31:02.754602	2026-08-05 00:15:40.83603
284	1	94d0c932008f906bb9b44e923c2667f940da7ac33f01995096741d6bf33f1f6f	2026-09-03 21:59:31.336749	2026-08-04 22:44:43.071279	2026-08-04 21:59:31.337462
291	1	ed619e82e24d75038ce0c33de092a26801fcffa433645773165633c86ef8a483	2026-09-03 23:29:59.577945	2026-08-04 23:52:26.755769	2026-08-04 23:29:59.578551
294	1	e6539aa009fd73d5abce7960da901f9a6a2f88b2e011f70ac69f465f8624736d	2026-09-04 00:15:40.832367	2026-08-05 00:30:55.81874	2026-08-05 00:15:40.833963
296	1	cb753532cdfccb80a546c06063b0316edb2b041cf2a0a26dd3447404babc47a8	2026-09-04 00:30:55.819031	2026-08-05 00:46:02.850044	2026-08-05 00:30:55.823549
297	1	3f81c1735cf3a18900f3fd19aa20b790927fffce46a7873a327f3c14c982599b	2026-09-04 00:31:02.754637	2026-08-05 00:47:02.785521	2026-08-05 00:31:02.755595
298	1	a309e28062d64995e3a533d8f8b94720bd158faadee078589872d20231d34a38	2026-09-04 00:46:02.850172	2026-08-05 01:02:02.791657	2026-08-05 00:46:02.851874
299	1	ee5e7da95e50a3360fb5ff4d43c983836b76874acdf1488cf84a5f4a721c6633	2026-09-04 00:47:02.785861	2026-08-05 01:03:02.823995	2026-08-05 00:47:02.789539
300	1	182cbde820486c7f79ea2f0f8afbc61d500d593f2bf89a9c2057d37d5cca917c	2026-09-04 01:02:02.791753	2026-08-05 01:18:02.837367	2026-08-05 01:02:02.793166
301	1	1246150dbefc058d87dd168a8d599262004c6e76224f42ef3767bdba7ef9cc5f	2026-09-04 01:03:02.824209	2026-08-05 01:19:02.837215	2026-08-05 01:03:02.827008
302	1	fb31c694226add42d019df132446c2d70fbcbf2d8a46a2002b7ca17ecce8c9e4	2026-09-04 01:18:02.83748	2026-08-05 01:34:02.822562	2026-08-05 01:18:02.838797
303	1	4f9ab88204a28c4576a4696468293e789011b640fc896525baabe7c4da77f6b3	2026-09-04 01:19:02.837313	2026-08-05 01:35:02.852961	2026-08-05 01:19:02.838638
304	1	3024ea559cedef66dc8b859de0eb63108543e2babbf05a88b5982da356b37c52	2026-09-04 01:34:02.822906	2026-08-05 01:50:02.798908	2026-08-05 01:34:02.824827
305	1	2e5ee3cb5c209c1b260527b283dca4e25a5506bee517ccc2938f930989c71d14	2026-09-04 01:35:02.853086	2026-08-05 01:51:02.76936	2026-08-05 01:35:02.855997
306	1	64e5e47749fda89cca0f180d03e5a776a9a922cbe67c07598350b99538460967	2026-09-04 01:50:02.799095	2026-08-05 02:06:02.74285	2026-08-05 01:50:02.802079
307	1	1dfa309e3d8d47dcbd518d02184f4b3f9e8f88bd98951926a8a2cc3a9ace30bf	2026-09-04 01:51:02.769475	2026-08-05 02:06:20.429149	2026-08-05 01:51:02.770809
309	1	d42bca77d047c155926b34c56872fffeb92a196da38485e1e37f90795a129cf1	2026-09-04 02:06:20.429307	2026-08-05 02:21:52.769545	2026-08-05 02:06:20.431098
308	1	08087a5a7553a7516a0da4f7fbe3b37fb6a95795688a574760e180dfa58c6aa5	2026-09-04 02:06:02.742973	2026-08-05 02:22:02.803023	2026-08-05 02:06:02.745649
311	1	4d6fc966ea804a7735523b99a274c9276ba35bad2e81247d4aa73e32c92377cc	2026-09-04 02:22:02.803148	2026-08-05 02:47:01.301181	2026-08-05 02:22:02.804593
310	1	0c19a8a8bedb2db2bf9cee71440acffcfc5c3e6d599d149735c154dbac7664a6	2026-09-04 02:21:52.769795	2026-08-05 02:47:01.294624	2026-08-05 02:21:52.772916
313	1	b0fa8ec29031aca4ce5fefcd81832a5371d4627d13c5b70d691865346a232fdd	2026-09-04 02:47:01.295792	2026-08-05 03:02:59.546996	2026-08-05 02:47:01.304685
312	1	3fb978c86485966e2faafd3745451518618c3d3bced4426d28464a379da16251	2026-09-04 02:47:01.301209	2026-08-05 03:02:59.566615	2026-08-05 02:47:01.303325
315	1	8bd8ebeb924e6854917340ae591e7b9ca4a71192ee5f58a5ae096107fbf077f8	2026-09-04 03:02:59.567227	2026-08-05 03:18:58.338815	2026-08-05 03:02:59.56805
314	1	108c99c91e7bd01c53af50df287cb165ba63f355f5eb47f22b9304f34bb92298	2026-09-04 03:02:59.5481	2026-08-05 03:18:58.348808	2026-08-05 03:02:59.553738
316	1	381ba497271f271864fb3d7313c3a6ba598ff7e054462ecdd351429322bfa7df	2026-09-04 03:18:58.338976	2026-08-05 03:34:15.29666	2026-08-05 03:18:58.341129
317	1	086f1033ebddd431bbe77e398af08a866a1ac5a7a53f045e55270cd0539e678c	2026-09-04 03:18:58.348825	2026-08-05 03:34:54.574526	2026-08-05 03:18:58.349168
319	1	6efd8fc2e2866d8d4a35bc216f5bb320ac1fd9a47ea961290411f174f8bd8f4b	2026-09-04 03:34:54.574637	\N	2026-08-05 03:34:54.576584
318	1	32b6bd16fc53f1093d94d3130670feea70e59f4d510cf06f2fa4b9a87c3bbe8c	2026-09-04 03:34:15.297	2026-08-05 03:49:29.586631	2026-08-05 03:34:15.302077
320	1	7a64ec26bcec94d53f9fa9358b38ff61dc4cbf562fd7b36d6bfbf90e02dac912	2026-09-04 03:46:20.118803	2026-08-05 04:01:30.458624	2026-08-05 03:46:20.119977
321	1	b2687b41346f0deadba68cf1ac72267dcd8f9760871e944eb115c97ca3d1725b	2026-09-04 03:49:29.587324	2026-08-05 04:05:29.520169	2026-08-05 03:49:29.593205
322	1	56c6631a39030a50c1876d114a0f3dce4e5ad81399901bfdd1e81cc9bc7bef7b	2026-09-04 04:01:30.459156	2026-08-05 04:16:50.708971	2026-08-05 04:01:30.462611
324	1	4fe81a070d15a4f11b41eed4b16feb842e2856a2a61d19cbf0cfb272330ec2e9	2026-09-04 04:16:50.709159	\N	2026-08-05 04:16:50.719056
323	1	deb679eeeccd4a6602f3e6ab1285a1f95f80aa57605a864ccd89ecc47f56127c	2026-09-04 04:05:29.524311	2026-08-05 04:21:29.678762	2026-08-05 04:05:29.5336
325	1	332177b4b88f5c0476c3f562df28ca1888b6948a49553de76164c6a8666dc4e2	2026-09-04 04:18:00.356984	2026-08-05 04:33:29.551193	2026-08-05 04:18:00.358332
326	1	af2dffdc5e6506910d8cb08af72f519c8a111525d3dce6c06eed75461455a223	2026-09-04 04:21:29.678924	2026-08-05 04:36:45.497433	2026-08-05 04:21:29.68261
327	1	fe4c647728b80bfa919c2e9eac8d3729f410816830dfb08f88d3b9c429e3e361	2026-09-04 04:33:29.551613	2026-08-05 04:49:29.488204	2026-08-05 04:33:29.553745
328	1	33a8d1438e146578d848c9065713b7daaa7ddc68cfc7420586120c810d069b5c	2026-09-04 04:36:45.497612	2026-08-05 04:52:23.489275	2026-08-05 04:36:45.499238
329	1	ee71f37ce3841192c71b9b269abebb37f4f108a026d5e804f4484af467d433b3	2026-09-04 04:49:29.488339	2026-08-05 05:05:29.502535	2026-08-05 04:49:29.491041
332	1	a1de19ad83d4163bda3cd1c5e4a4ecb7b986c3465e4f429d24628873e30fec4a	2026-09-04 05:05:29.502734	\N	2026-08-05 05:05:29.50529
330	1	f3785f310efc3888e05d72beec401fbb039f3edc21b2ce81ec5fcfa84b45fe85	2026-09-04 04:52:23.489392	2026-08-05 05:07:29.546529	2026-08-05 04:52:23.490896
333	1	8306d018822f457ffa0543381c4c721b5e13c5d73795e6d0135fd0e0cbcb3813	2026-09-04 05:07:29.546669	\N	2026-08-05 05:07:29.548359
331	1	c2dc028af42ceb3ad9bc8add535d79f6b9842fec60420c9807260c28c40b1f4b	2026-09-04 04:59:21.685163	2026-08-05 05:14:23.466066	2026-08-05 04:59:21.692586
334	1	26aafa38b6f6db704695f665ed700cb606f97acce0c598420e9c7ed5ddb808c3	2026-09-04 05:14:23.466265	2026-08-05 06:02:17.138501	2026-08-05 05:14:23.469668
335	1	cd32013542e648ee2df14daf7c1e8c807ad0aee9b00229ad8fb6c711435d2ee7	2026-09-04 06:02:17.138621	2026-08-05 06:17:43.606726	2026-08-05 06:02:17.140629
341	1	b65d92acc67e4a57db8d2f111bdd11f46bffd67250cadb26d366a612dffb0a8c	2026-09-04 07:03:23.483822	2026-08-05 08:31:18.045333	2026-08-05 07:03:23.486234
336	1	cdbec51df76ebb1b0d029e71f78cd83aa5f81c0a109f4f20a34dc7ab04a07ec3	2026-09-04 06:17:43.606996	2026-08-05 06:32:47.713019	2026-08-05 06:17:43.608977
338	1	d9ea72efc5e43f60dd2bf01def6fa88081c8b4296ca9e2a671bcce49e1605d89	2026-09-04 06:32:47.713047	2026-08-05 06:48:12.518167	2026-08-05 06:32:47.714028
337	1	8683b5e5f5d439497bacaa1ceb7a3d0ad77b265bcb829d69fbabc3113e898337	2026-09-04 06:32:47.7038	2026-08-05 06:48:12.551833	2026-08-05 06:32:47.709233
339	1	5f09f16dd937e74f362b577ad4a0a36cf80aabcba23202bd7b7486bbc18b6b44	2026-09-04 06:48:12.518292	2026-08-05 07:03:23.483703	2026-08-05 06:48:12.522691
340	1	b961e042c275c832482c0cb577ff2af9322561a20479acaaaeefd8f3bb599b31	2026-09-04 06:48:12.551856	2026-08-05 07:04:12.512236	2026-08-05 06:48:12.552635
342	1	3b6b6668d65a2f9e6f0e378847754d0d0b6ccbbf917a8adbf8c6417a0aa17aea	2026-09-04 07:04:12.512371	2026-08-05 08:31:19.618701	2026-08-05 07:04:12.51493
343	1	43fe58a3be1e9eaf84c4c372291230d821d046d66fca6ac8c8ad3a4298e52dd0	2026-09-04 08:31:18.051769	2026-08-05 08:59:54.811344	2026-08-05 08:31:18.061694
344	1	4810073d206c6fe43f48b92cd7d1a35dc9b4193607555a2a31dd39e31ba7b14b	2026-09-04 08:31:19.618791	2026-08-05 08:59:59.821579	2026-08-05 08:31:19.628024
346	1	dafbed9c5e87184a9c69d0dc94c2482f5e9b2dba51108d89ad9bbbf9e1f0c8c2	2026-09-04 08:59:59.821729	2026-08-05 09:55:34.955848	2026-08-05 08:59:59.82495
345	1	989fa13e62a2200eef3c0ec30d3c21612dad2a322b0b18058c3989351c96e623	2026-09-04 08:59:54.811688	2026-08-05 09:55:35.103459	2026-08-05 08:59:54.813644
348	1	7965a257ac3e5eb162901f1c7e6094fdabaf9185d992aa8c4a57c9825d94ff98	2026-09-04 09:55:35.103632	2026-08-05 10:43:39.387698	2026-08-05 09:55:35.167112
347	1	b0d942e5d8f215cfa98fcf85d4385b94cca6f9560d0511b890b390608ae8e49d	2026-09-04 09:55:34.958152	2026-08-05 10:43:44.378421	2026-08-05 09:55:34.973836
351	1	feba5daf0b4dc830adc8c33b1799bb49cb823bec499e2d16eca981dd9948c7e9	2026-09-04 10:58:53.296505	2026-08-05 11:13:59.210005	2026-08-05 10:58:53.297791
349	1	9d744b1f50f5768a6c3fa178211959b4d510e2cc09dd3f726eb241f4acf6a8d5	2026-09-04 10:43:39.387783	2026-08-05 10:58:53.298449	2026-08-05 10:43:39.388873
350	1	40799dfc49428e82b6e1b666c4c0d8f897ce6d2225573feb2b6ce7e91dd1f27c	2026-09-04 10:43:44.378443	2026-08-05 10:58:53.297327	2026-08-05 10:43:44.379039
352	1	7ff579223b4836db652f3dd95fb35602d1b4ec4e090162456258c36ae593f3ce	2026-09-04 10:58:53.297345	2026-08-05 11:14:02.16186	2026-08-05 10:58:53.29998
353	1	24c6b904b213ec74dd6b0ffe60feeebc5bd8740ef6ff25a2415b299125603a39	2026-09-04 10:58:53.29846	2026-08-05 11:14:36.204853	2026-08-05 10:58:53.300171
354	1	a9e0037eceda1dabd70f6cdfe2be46bdeba4193f076a287def2abdc8a495d90c	2026-09-04 11:13:59.210118	2026-08-05 11:29:53.311905	2026-08-05 11:13:59.21124
355	1	aeaeb6c1b001768800e80fce497f0031a2146e4e0c1691e356902c6f0d830749	2026-09-04 11:14:02.161881	2026-08-05 11:29:55.536828	2026-08-05 11:14:02.162369
358	1	aa07d6d7bae48c1393c2b56bfcae8d7bd53904967a6ab2bf93ff8bc51464b365	2026-09-04 11:29:55.536997	\N	2026-08-05 11:29:55.543377
356	1	c94d91fd3d65e3d66e8165c2d7035341b489b6123d90b250c1b52904387cfd77	2026-09-04 11:14:36.205128	2026-08-05 11:29:55.545661	2026-08-05 11:14:36.20877
359	1	8e9e5f53d4a3a97ed419249bce026809142f6a3254196cfef6668d0151febfb5	2026-09-04 11:29:55.546035	2026-08-05 11:38:06.508848	2026-08-05 11:29:55.547574
357	1	e3b651cc77b9d7d9ba522f4d3ce20ba9b8986bf5ada566e070ab48855cee0860	2026-09-04 11:29:53.31213	2026-08-05 11:45:18.283455	2026-08-05 11:29:53.315222
361	1	26363e66dccadb45cd0ad40cecef8d5825da08f2e7f4c452306cd49b6b1897d9	2026-09-04 11:45:18.283545	2026-08-05 11:50:46.552327	2026-08-05 11:45:18.284634
362	1	e80723a1deabf18db25073d72ca8a412455bfd472ec86a6d210a3355f1c6344c	2026-09-04 11:50:48.531483	\N	2026-08-05 11:50:48.53194
360	3	e39c03ba5031b36b425996f8c58c6471e27c502fd76faf62cbb3bd12ed526b61	2026-09-04 11:38:13.740289	2026-08-05 11:54:07.668753	2026-08-05 11:38:13.741588
364	3	65a5441d8f57408fb9eb87111120b8f0e50adcdf621b5dc8b4e5154575357796	2026-09-04 12:00:10.729314	\N	2026-08-05 12:00:10.730438
363	3	08b38ff78b062b0578aff571fba133e093d8b7889ac54a7a1ddbe6a8207ed829	2026-09-04 11:54:07.668861	2026-08-05 13:07:43.783393	2026-08-05 11:54:07.670716
365	3	3b6bb3aaadc3762e76e4942f956e9e125f32ae86aec6d4bc931eb549f9ac133f	2026-09-04 13:07:43.784004	\N	2026-08-05 13:07:43.785927
367	3	3860e4c1dc16ecd52c2ec05fba67d01a0de121defa4d6b72ad06422f5276c28f	2026-09-04 13:13:03.814738	\N	2026-08-05 13:13:03.816778
366	1	57da2519f62794729e11468dcc416d56323766baa6d531f9454645bc15dac794	2026-09-04 13:12:30.84911	2026-08-05 13:14:09.120903	2026-08-05 13:12:30.849869
369	3	ae3e0308bbb53e7a85dc0365cd96f225f38e3f920ae5c3b289bb95da797a970d	2026-09-04 13:20:40.023046	\N	2026-08-05 13:20:40.024002
370	3	c053514f8741313d09edd627661682cad4dd045ee4ed6e8de0990f449906c5ef	2026-09-04 13:20:57.154163	\N	2026-08-05 13:20:57.155215
371	3	bfed76a98ff16b704baf21b8a9b4ef87e47045a092f1c949278bcc21073b123d	2026-09-04 13:21:08.481385	\N	2026-08-05 13:21:08.482068
368	1	79f6fa80adb7308af65f7e18f19d0e1a90071b8aa785c7a4fe5a48f565f223de	2026-09-04 13:14:11.97761	2026-08-05 13:29:29.154987	2026-08-05 13:14:11.978224
373	1	ddf579f1c471942c3a2934659b1481e1d46b48f45cda84186bb678146676fc32	2026-09-04 13:29:29.155132	2026-08-05 14:23:08.628312	2026-08-05 13:29:29.156813
372	1	d77b8eca8bf92b38a8882bdc9657e6cf981123d85fc538a3a5cb13009cdba71c	2026-09-04 13:26:01.380654	2026-08-05 14:23:08.641727	2026-08-05 13:26:01.381424
374	1	db8fbef3af4ddc7d6e0ec7c2391741b3eea677c445bb353824a1e28bac5017ed	2026-09-04 14:23:08.629743	2026-08-05 15:36:26.690017	2026-08-05 14:23:08.636321
375	1	5dd8201d81ec28962a397b434787dabc52d69ff192e400bb44628a1785403183	2026-09-04 14:23:08.642794	2026-08-05 15:36:31.204159	2026-08-05 14:23:08.646626
377	1	97bee8b5c6e29b3c23dc465d8b26d18101428c731478f492625b411b9c2274fc	2026-09-04 15:36:31.227677	2026-08-05 15:56:05.605749	2026-08-05 15:36:31.238337
376	1	450094397d6e41c70228fdcbf41eed46c49499ef029c38a47278101a3592db4d	2026-09-04 15:36:26.694713	2026-08-05 15:56:05.610376	2026-08-05 15:36:26.83824
378	1	3fda95cdf4dcc0ed7c97889952aea7fa8a653ecca2b4d21be0ee548072f7a7e1	2026-09-04 15:56:05.605843	2026-08-05 16:12:03.310626	2026-08-05 15:56:05.608144
379	1	e961f36ec0dcfb675c8391cb624795e99568454e4a383c0867bd6e0731ab0db2	2026-09-04 15:56:05.610398	2026-08-05 16:12:05.092147	2026-08-05 15:56:05.610819
380	1	0554731a86b614df26701275167166c1329eec14ee9a8edac43b6c9c21ed8452	2026-09-04 16:12:03.311824	2026-08-05 16:30:07.96629	2026-08-05 16:12:03.315893
381	1	e4d61ff71f9d0263c2451bfed4fa917aa375beb109fa75d2bef12f78af2a1e9e	2026-09-04 16:12:05.092298	2026-08-05 16:30:19.312126	2026-08-05 16:12:05.093774
382	1	707d36b78d6b6b29ae7078405967d0abea49df5ce2431c382fdd79f82b05792a	2026-09-04 16:30:07.966429	2026-08-05 16:49:04.056243	2026-08-05 16:30:07.96781
383	1	4eb77357b351b75d3cd79d5e4c5d5fca3f341997e9ec7bebece32ddd39b93cf7	2026-09-04 16:30:19.312212	2026-08-05 16:49:13.999204	2026-08-05 16:30:19.322315
384	1	10577e1cf08c49db1118c8c4dd81c81115f75353a976c097e299bf59b63e6b76	2026-09-04 16:49:04.056356	2026-08-05 17:07:06.041453	2026-08-05 16:49:04.059191
385	1	9bd790500ea0d8764529ea4af6edb9aaf7a4ced94c5914be0a8aa893f3af0318	2026-09-04 16:49:13.999249	2026-08-05 17:07:14.046238	2026-08-05 16:49:13.999837
387	1	a66275c3ed4bc419a0eff76ce28ffe2ff4a782216561b33dd050fdbc54889fc5	2026-09-04 17:07:14.046279	2026-08-05 17:25:03.351442	2026-08-05 17:07:14.046904
386	1	54ebc2362f5b8126fde0cfc44b6b81dd713fc1cae94f206965a5cf05de19e73f	2026-09-04 17:07:06.041782	2026-08-05 17:26:00.099602	2026-08-05 17:07:06.04419
389	1	14e084c4b72eea4b2ab7b7216c8961e0a954138af2b0ec15c77b296f19715dd3	2026-09-04 17:26:00.100013	2026-08-05 17:44:08.619595	2026-08-05 17:26:00.10326
388	1	60b5f6af73133f5a075538107700554d5ccb1db8b1bf7308daa8f3a8310a4b1d	2026-09-04 17:25:03.360011	2026-08-05 17:44:08.620914	2026-08-05 17:25:03.381243
391	1	6e521d4cab9ebab8dffbfb7b5c57671de1ae1aa10726502877066c97071e272b	2026-09-04 17:44:08.620938	2026-08-05 18:03:07.205177	2026-08-05 17:44:08.621897
390	1	10da767ef9e2d6a44298297305fc853c067484d601efa331a9c5f325a9d0f593	2026-09-04 17:44:08.619786	2026-08-05 18:03:07.219455	2026-08-05 17:44:08.621497
393	1	bd95bb165dae778a680998c283e04451546c3c90783be12a5c61de2e92d591ee	2026-09-04 18:03:07.219477	2026-08-05 18:31:01.056339	2026-08-05 18:03:07.219838
392	1	8b7dd1729042e134d83532e3e6c3e242666837904da0344d272d06b672870cd5	2026-09-04 18:03:07.2053	2026-08-05 18:31:01.058555	2026-08-05 18:03:07.206933
395	1	4ef8862828ea28d7fee0a2acc0cbd61758348e5a7734eadbab3beded2f3395e7	2026-09-04 18:31:01.058581	2026-08-05 18:50:57.698418	2026-08-05 18:31:01.059296
394	1	9917fe5379f9c4046b7c256db6ea58e0dbecc57e67eb190c7f0986828e34f9d6	2026-09-04 18:31:01.056446	2026-08-05 18:50:57.698608	2026-08-05 18:31:01.058214
397	1	7313ffe1bfee47e654f13a1d26660407252d04e65677349ce17786ea43c85af4	2026-09-04 18:50:57.698652	2026-08-05 19:14:56.731138	2026-08-05 18:50:57.703335
396	1	ac4305108c8baf860bf8167cc5d93fdd504e1500c5487f51680698ee0d4301ca	2026-09-04 18:50:57.69951	2026-08-05 19:14:56.757195	2026-08-05 18:50:57.69999
398	1	83c109dd34665e05696d407d75caab6b59e368c8f072425651c70a33122c523c	2026-09-04 19:14:56.731289	2026-08-05 19:33:49.16752	2026-08-05 19:14:56.732982
399	1	b2d8fdabe12e39814a17cd24ecfe51d7eb0ec7ada6d030c4aac8abe0a030a102	2026-09-04 19:14:56.757238	2026-08-05 19:33:49.178226	2026-08-05 19:14:56.757733
401	1	2ba142a3a5377166a91c68bb08606bc332991bdf2376c73a5765d81a9571d5ed	2026-09-04 19:33:49.178314	2026-08-05 20:06:11.261802	2026-08-05 19:33:49.178807
400	1	8a633e576dd7d1b26c479703f5b608de9497102501dbb3357dd44e30526d7eb6	2026-09-04 19:33:49.16764	2026-08-05 20:06:11.293376	2026-08-05 19:33:49.170144
402	1	75822509dc758841fdeb8074fe34fa7fa679bb588be0f5005824f8f436b3d5c2	2026-09-04 20:06:11.261901	2026-08-05 20:25:35.197287	2026-08-05 20:06:11.263979
403	1	4c0277474e323f50663656c6de68cd010cd61bfc90e7ca55312865bd78352d0a	2026-09-04 20:06:11.29339	2026-08-05 20:25:35.223157	2026-08-05 20:06:11.293759
404	1	8226027d24cfc8c913d1f60e468806d5e5a514fd6cb25256110e30a8de88684d	2026-09-04 20:25:35.197671	2026-08-05 20:44:49.549899	2026-08-05 20:25:35.200345
405	1	33eaf47525164e873b80283d248d9cc2707d2890c940ac4356ff2ccbed49e5b5	2026-09-04 20:25:35.223197	2026-08-05 20:44:49.552703	2026-08-05 20:25:35.224532
407	1	2faa207f392ded0d5d819173c40c7ff42877a119d2e0d64ad67d046a56a7f7f1	2026-09-04 20:44:49.552739	2026-08-05 21:06:31.463743	2026-08-05 20:44:49.553348
406	1	610ed6191dc3ae3f8e993a2ef11229e14a097daa030fd80c1b11907aaed07c72	2026-09-04 20:44:49.55003	2026-08-05 21:06:31.481235	2026-08-05 20:44:49.551141
408	1	46c3780e594bd7886a6139007698cc4af0a46bbc851544a524084e22dbaad928	2026-09-04 21:06:31.463927	2026-08-05 21:42:50.942632	2026-08-05 21:06:31.465728
410	1	f21cc873b3a6d63793ac010826309636d87d890502131f6e7aee952d638b832a	2026-09-04 21:42:50.943221	2026-08-05 22:01:00.799568	2026-08-05 21:42:50.947379
414	1	50c97620def275bb7b1e505baee12f94e83d0b442ff126d89eec518d6329a275	2026-09-04 22:24:54.583363	2026-08-05 22:43:16.793522	2026-08-05 22:24:54.594506
409	1	5ea4b4952ff5ccee1ccbcc54c95186df3b3ac7e22baa3c782b86ae9da08fd522	2026-09-04 21:06:31.481274	2026-08-05 21:42:50.947735	2026-08-05 21:06:31.481827
411	1	1940cb7ca1f53e92ece394bd1ed970c45ab047575adc76194dba55b2f8cf3126	2026-09-04 21:42:50.947774	2026-08-05 22:01:00.799252	2026-08-05 21:42:50.948765
415	1	666cae6d1cf804d250fcebfdc07cc19308981edb591fcb62fccedffbf6fa44f9	2026-09-04 22:24:54.598529	2026-08-05 22:43:16.809304	2026-08-05 22:24:54.60061
418	1	bb704de3b94e2b894220de9b764079dbfe85c21526ff4bfb25cbf6f9efb51b96	2026-09-04 23:01:55.198694	2026-08-05 23:21:50.259604	2026-08-05 23:01:55.232655
412	1	5430622859d085f6439548a8f5de033d5d3a8077429da2284889c9c93f7b5688	2026-09-04 22:01:00.800963	2026-08-05 22:24:54.598396	2026-08-05 22:01:00.801517
419	1	fd49990f27e8afd069c28b6d6bebf794f069bb3c6ae201923b78f815add13122	2026-09-04 23:01:55.269517	2026-08-05 23:21:50.26613	2026-08-05 23:01:55.309644
420	1	273817668f0f753eaba40e0f4bf76fbbdeb0d31dc2c455d1de2c1a2dee450e19	2026-09-04 23:21:50.259713	2026-08-05 23:44:25.281803	2026-08-05 23:21:50.261094
422	1	835247387a2c562359e2dc6293f9d1c3aeed217bdc76c1e75c458e1080de1d8a	2026-09-04 23:44:25.282377	2026-08-06 00:04:08.48217	2026-08-05 23:44:25.283438
424	1	857fb0f900978e2019379154b8bac8a1b12987b59bb82678fc13e9225b505902	2026-09-05 00:04:08.482274	2026-08-06 00:51:32.567462	2026-08-06 00:04:08.483276
426	1	2f0c1aca78cfe9cb1fffe3c7134733b201c409cc775b8286d737c32d5871b1e8	2026-09-05 00:51:32.567722	2026-08-06 01:06:47.536571	2026-08-06 00:51:32.569412
413	1	88e0710981694f40e0497e4ce5ad8d548f7be9fad8387f87c10058713d7f3cfe	2026-09-04 22:01:00.799614	2026-08-05 22:24:54.579977	2026-08-05 22:01:00.801417
416	1	5a1d6d6427040b65f6ade4054ae30d39c7fdc05616ea8521fcf781623f470fab	2026-09-04 22:43:16.793874	2026-08-05 23:01:55.197164	2026-08-05 22:43:16.810462
425	1	485ba7508e1fc47f4c429df2b643bf83aa0d506cbecdc5530111064d6be915fa	2026-09-05 00:04:08.484497	2026-08-06 00:51:32.561897	2026-08-06 00:04:08.485283
417	1	ec53f11efdde32fa47939bfb69f5e46a1401d3d6f90d6fb76ee0478c5083ab2f	2026-09-04 22:43:16.809351	2026-08-05 23:01:55.26308	2026-08-05 22:43:16.812929
421	1	fc08b7a891872d58d1e4d0e0c146d2e16df5eec9b52d30dccc859901e2dd6f24	2026-09-04 23:21:50.266161	2026-08-05 23:44:25.285895	2026-08-05 23:21:50.267775
423	1	6749a0f5d5752b414eb9e81826d418520c08ea979793140e35b7bb8251a58f88	2026-09-04 23:44:25.285907	2026-08-06 00:04:08.484483	2026-08-05 23:44:25.287188
427	1	749998b248a58a6b8b567d5b405bb0fd1050d9ea37c88c18e75fbdf78e2aacdb	2026-09-05 00:51:32.565306	2026-08-06 01:06:39.555886	2026-08-06 00:51:32.571372
429	1	b5fd2722d9b0385bd9bd0e76ff7ab1ed4ba651bbff2eede244870223d0c93903	2026-09-05 01:06:47.536655	2026-08-06 01:21:56.659071	2026-08-06 01:06:47.538269
428	1	37e2a3bad51057d01337bddd957ede58ae5167bb276aeefab93fbf1ff7d3d24a	2026-09-05 01:06:39.555989	2026-08-06 01:22:39.503049	2026-08-06 01:06:39.559523
430	1	2238afd8cf1b640a596042a5188910bff30cb5e60432653d8baca578cf05ad2d	2026-09-05 01:21:56.659191	2026-08-06 01:37:23.127544	2026-08-06 01:21:56.660415
432	1	e93c592af0f730f0f86134e6796a36d95b39d8c48e05821d89381b26ca34585e	2026-09-05 01:37:23.127628	\N	2026-08-06 01:37:23.128861
431	1	c1219153d21d0561f69ab8dd34e63393cdff49134c83470bd821a2377cf45ba0	2026-09-05 01:22:39.503316	2026-08-06 01:38:39.542662	2026-08-06 01:22:39.504586
433	1	bf30162a18ef015396d0e9020bebec98d958b33ef48e4951d5f2a8bf379d8835	2026-09-05 01:38:39.54283	2026-08-06 01:54:39.582261	2026-08-06 01:38:39.544302
434	1	e30acf4c919f5b3491e1eb63d126f1605b2f3d36f7a19367e2c8fdeb51bbc47b	2026-09-05 01:54:39.582647	2026-08-06 02:10:39.618894	2026-08-06 01:54:39.58498
435	1	2e3c6dafef5063d2509ce063c9d6316fc1fd8ad2bcfe45ac74b48b23a016b9d9	2026-09-05 02:10:39.619027	2026-08-06 02:26:39.551308	2026-08-06 02:10:39.62186
436	1	6c7275bb549d220127bca2e858de97e6430f2bd2bd688e29ffd0cfa3c495bf6f	2026-09-05 02:26:39.551483	2026-08-06 02:48:58.684519	2026-08-06 02:26:39.557125
437	1	1d8e24e09619dceed935d7a330ed37d04cc86ed75bdeae4b8b2af1b3bb964aa0	2026-09-05 02:48:58.684657	2026-08-06 03:07:18.480643	2026-08-06 02:48:58.685897
438	1	a1fbcfe70075a86bce8c32db2cb5298f9cd03e2c728f2895372de25a9b25c1ad	2026-09-05 03:07:18.480761	2026-08-06 03:27:26.194517	2026-08-06 03:07:18.481918
439	1	8c95ace3b6e805a72d946bf138dbf76a9de6ea12e3546dcc1f16a1bcab3d42b0	2026-09-05 03:27:26.194615	2026-08-06 03:43:26.21783	2026-08-06 03:27:26.195576
440	1	a7e31670d95e2e4a4d108104744e22e134b3e1cf686dc932eec9c9cbcb0d3c0f	2026-09-05 03:43:26.217958	2026-08-06 03:59:26.356308	2026-08-06 03:43:26.222302
441	1	4c7ef49a697e3cbefbbd055099c21cc8c46c40476a571dc743c3b94eebccc396	2026-09-05 03:59:26.356556	2026-08-06 04:15:26.253166	2026-08-06 03:59:26.359377
442	1	7990036aa196b4a75fe48c8ec41877281bd63fe7e87dc7cc8365ff5ba24979dd	2026-09-05 04:15:26.253729	2026-08-06 04:33:28.08286	2026-08-06 04:15:26.256742
443	1	a90b3df92f9a0705a0ddf0db4aa43b001995cbec7d1274586f4c2c8a33a6f435	2026-09-05 04:33:28.083104	2026-08-06 04:48:43.993459	2026-08-06 04:33:28.088831
444	1	d69e8fcc032f79926337f62ec5ca27aa1be8c76466d590aa90830e2f61ea9144	2026-09-05 04:48:43.993816	2026-08-06 05:03:52.572721	2026-08-06 04:48:44.000409
445	1	36086b259dbbe11a5b06c1fd6960488b819c7f338f5d12a53d883bc36a456cdf	2026-09-05 05:03:52.573904	2026-08-06 05:19:52.60394	2026-08-06 05:03:52.579622
446	1	ce21acd8a05affcdc0a044c97ca62153932152f8413d8104a79f1b2b6b039860	2026-09-05 05:19:52.604093	2026-08-06 05:34:53.349601	2026-08-06 05:19:52.60547
447	1	4539a597c44526cea5dc3416e770df01aa28658415f3afc95258b06203ab3d22	2026-09-05 05:34:53.350344	2026-08-06 05:50:52.59833	2026-08-06 05:34:53.357013
448	1	fbf5744d3360e2649f4339878d6fa166c42a78a2f37e3cca84e5480454f026a9	2026-09-05 05:50:52.598477	2026-08-06 06:18:02.640339	2026-08-06 05:50:52.600135
449	1	2fce42cdb5dfa62229c25ce921c1506d25c65ea27005798e950dddb50ce35138	2026-09-05 06:18:02.640507	2026-08-06 06:33:26.609805	2026-08-06 06:18:02.642126
450	1	56e87403505f3e0191cb9b981bed09249eaf822d3a1972bcd80d6d90a2f1b3bd	2026-09-05 06:33:26.60993	2026-08-06 06:49:26.589561	2026-08-06 06:33:26.611581
451	1	f5485671fbf4c4df32586cf4d4396774a68109b94970f20f0873db16d4c54686	2026-09-05 06:49:26.589702	2026-08-06 07:05:26.579044	2026-08-06 06:49:26.59135
452	1	771776c7288a27909463af252801550da00b62985f472342357bd67fa933a908	2026-09-05 07:05:26.579228	2026-08-06 07:25:10.923014	2026-08-06 07:05:26.580764
453	1	14be9b273bde7a29f92b2f895ef35a4fec8e827f0905951f706ed1ba63b3e368	2026-09-05 07:25:10.923139	2026-08-06 07:40:11.177189	2026-08-06 07:25:10.924697
454	1	5368086300c0a6c314057c8c248446b8cebf7bc810f2a53e198b90827fa96bf2	2026-09-05 07:40:11.177501	2026-08-06 07:56:10.856957	2026-08-06 07:40:11.184746
455	1	b80171eab6c73cfb1b351fb6d8274d69ebd947603cdcb0d0c9b0cc335a4df89c	2026-09-05 07:41:55.598596	2026-08-06 07:57:25.842225	2026-08-06 07:41:55.602598
457	1	0d86023cc380fd1ffd039ef00a3c30c1334f5f05b28fca1b066bc60e637aac9a	2026-09-05 07:57:25.842602	2026-08-06 08:08:10.091947	2026-08-06 07:57:25.846003
458	1	cb5630bf0c1b723aab3ab25c43960acee852aa74dcbd7662ff4a11ac5f5f4e37	2026-09-05 08:08:45.693262	2026-08-06 08:09:46.986196	2026-08-06 08:08:45.699088
456	1	4282aeaff1131a49e20b0d3caaebb5f162380e3f22f09f808d8f1d29d68430ae	2026-09-05 07:56:10.857115	2026-08-06 08:12:10.920939	2026-08-06 07:56:10.859779
461	3	340d76fd1479cfee1bada6a2cf60dcc4ff12db8abb77aa8c7dbe94fe3ddbfaeb	2026-09-05 08:13:00.37824	\N	2026-08-06 08:13:00.389402
459	3	e09b9bdfc9e5a72bef8d07b60802df75b965e3fa5f3dd05e531d08f75ad4ebe8	2026-09-05 08:09:58.986952	2026-08-06 08:15:41.146834	2026-08-06 08:09:58.988031
463	3	a0072219d845142cecd65f98e8f1b4400a34a4ed20f26d1974ab8956fbf18860	2026-09-05 08:23:18.44865	\N	2026-08-06 08:23:18.45052
460	1	98c111813db2303d38766a4e1f78661f4628c14c4bba30dd62f70026b86d6241	2026-09-05 08:12:10.921222	2026-08-06 08:27:36.691266	2026-08-06 08:12:10.925144
462	3	58610be287165df9449c34a3e2392f18b5d7f34bca40fb0bc5b0d8f115f41c6d	2026-09-05 08:16:01.675943	2026-08-06 08:31:36.505757	2026-08-06 08:16:01.680495
465	3	453ae39745603df02e2336b7e04b8ca20fcff32871072fe575609c31535926a9	2026-09-05 08:31:36.506362	2026-08-06 08:40:30.283639	2026-08-06 08:31:36.519735
466	3	07b6de9e8ec70b48023977e75573c259537d94ffee8001be02767a0acf63b6d1	2026-09-05 08:40:37.83829	\N	2026-08-06 08:40:37.840199
467	3	3670b51a7653cd1bc977a43faa290078970b2bc983adff1e37454e00a269a581	2026-09-05 08:40:53.544354	\N	2026-08-06 08:40:53.547133
468	2	c480185f32c93411dbbb0d4aa327c0c4ac3209f8b0dd0df02d9321676dafc4aa	2026-09-05 08:40:53.910802	\N	2026-08-06 08:40:53.911251
464	1	c4a1b8570caa793c823089084610cda13c9fc969007de5cb1e20384160478c98	2026-09-05 08:27:36.69192	2026-08-06 08:43:36.50024	2026-08-06 08:27:36.701151
470	3	5fffdbcf45f040a3d9654b351c9f955d62fa2f770bd54d89c90d8805ed54f33c	2026-09-05 08:47:31.412564	\N	2026-08-06 08:47:31.414794
471	2	b8450098e2530e305f16b8ee9115dc7b4c3f5d6165f48c03af0d764414c6b755	2026-09-05 08:47:31.729748	\N	2026-08-06 08:47:31.730213
473	3	b9a602bb8cd4a3cd06a029548a1e8162cdbb1fc2051483d18fbe59fee1376d52	2026-09-05 08:52:22.376122	\N	2026-08-06 08:52:22.378338
469	1	5eb5362e2eb538e984a06121b50ed1776aab7b248febdc0d0b5798b4167aed53	2026-09-05 08:43:36.501519	2026-08-06 08:59:36.45352	2026-08-06 08:43:36.507609
472	3	5afca1a2031572d29814d082fa4ecde4dea04712ab6e30cfd74fd7bbabfa0e53	2026-09-05 08:50:45.255005	2026-08-06 09:05:46.346297	2026-08-06 08:50:45.261854
475	3	7be79d4924c84bc6e26cef78bd4eaf7dca7d118a96b4b200479bd5a57afa5121	2026-09-05 09:05:46.346387	2026-08-06 09:13:36.241077	2026-08-06 09:05:46.349137
474	1	bd24b8db74e370bc95080b4047cb2d881487e2d3dcfdb63cca2cd92f9854fb39	2026-09-05 08:59:36.453704	2026-08-06 09:15:36.386471	2026-08-06 08:59:36.459186
476	1	86cc0ef54b347b557b7e29770de4b6f67c3605b764a44af90cd2401ae65bc858	2026-09-05 09:15:36.387558	2026-08-06 09:31:36.985778	2026-08-06 09:15:36.391235
478	4	2243fc5b0dde5020721f48489b5b28126fe44cf25d2e1423c8ca40317e964b9c	2026-09-05 09:35:26.886583	2026-08-06 09:58:17.475362	2026-08-06 09:35:26.887808
477	1	21437e56a77c3fe3c2682dd636a056c80de549e28816a388e46ea168c4c7fae2	2026-09-05 09:31:36.986214	2026-08-06 09:58:47.296284	2026-08-06 09:31:37.053591
481	3	184913bf3634d7e0227d67b20fd49622c1e6559d690732aa0661b88f8c438b38	2026-09-05 09:59:34.05688	\N	2026-08-06 09:59:34.058494
479	4	693ac2732b1173bdb1b7f6d8a403f6664c116557286309b67caec6b0a704ff96	2026-09-05 09:58:17.47787	2026-08-06 10:19:51.191573	2026-08-06 09:58:17.490673
482	4	6bb8600e0ecadeb7422d086824173a95342aea88b3cfc598fac861520516dab2	2026-09-05 10:19:51.19187	2026-08-06 11:13:49.046971	2026-08-06 10:19:51.199607
480	1	c1d3a60948f2a9d3a19a8a65abd6bd3ecd9c8efc83bdcbfde4dbf2bdfd183a7e	2026-09-05 09:58:47.296882	2026-08-06 11:13:49.043235	2026-08-06 09:58:47.305075
483	4	71a6f822c4528baac174bbe900c1b8a6198b1399e742ce77deb9769e3eee5dd9	2026-09-05 11:13:49.052727	2026-08-06 12:01:25.517427	2026-08-06 11:13:49.058208
484	1	1bfc5bba79d5a20261f61fa42886904aa397e530e752c9874ec0778274a95de9	2026-09-05 11:13:49.047661	2026-08-06 12:01:25.504295	2026-08-06 11:13:49.059779
485	4	d15cccbb35bff0cd4af4de582c3fb34a83b0a32e8d5a3a3699c64d4aeba66b15	2026-09-05 12:01:25.519789	2026-08-06 13:02:37.062589	2026-08-06 12:01:25.524421
486	1	b6f94ccabf943bcd81f4e3cbb5a6e44f8c533154c19bb077681623ee8b6ed352	2026-09-05 12:01:25.505846	2026-08-06 13:02:37.142595	2026-08-06 12:01:25.527019
488	1	08ee2380944011318d561ffdd66f52ffc89d60235efb0c9d547b4083ef3acbe4	2026-09-05 13:02:37.143006	2026-08-06 14:03:35.058087	2026-08-06 13:02:37.171296
487	4	60ee518a94b4d80d9e630263f7e74bc1bb103e29955109ca3556433be9400eaa	2026-09-05 13:02:37.072675	2026-08-06 14:03:35.071221	2026-08-06 13:02:37.124661
490	4	b0254d04cdea41732d7f48142ec54ac5111ca61204cd46ebb6b87cd1ea8c949c	2026-09-05 14:03:35.073681	2026-08-06 14:21:53.168102	2026-08-06 14:03:35.079634
489	1	b9ea364250d0a86e6444147a244dc59db226dc6204d4ee981d0089921c3f0d73	2026-09-05 14:03:35.058519	2026-08-06 14:21:53.209804	2026-08-06 14:03:35.078448
491	4	e3770d1dbdc53417a9d0b3b2aee83c79ea16a2efffe37978efd77cb4ab036451	2026-09-05 14:21:53.17643	2026-08-06 14:53:11.378934	2026-08-06 14:21:53.192107
492	1	2d94452ec706874bec4529a1f79ee3d90e9fa57cfaf58cd245dbf73c7ec1413a	2026-09-05 14:21:53.210589	2026-08-06 14:53:17.290586	2026-08-06 14:21:53.212866
493	4	9e186fdc5e4cab8d6c0161126127ec120cce847e0e26974efc4f6f305ed0beaf	2026-09-05 14:53:11.379147	2026-08-06 15:09:18.689017	2026-08-06 14:53:11.383542
494	1	ad79190ab0306f0dd3db06bfe989c9e5bf64038d522ef7079b078924e113fa5e	2026-09-05 14:53:17.290786	2026-08-06 15:09:18.692768	2026-08-06 14:53:17.298571
495	4	f1270ca9075c157a9c17aea17d5ee1fa77ad5a4c9616336870fee939ac7e7dcd	2026-09-05 15:09:18.689279	2026-08-06 15:35:50.77427	2026-08-06 15:09:18.691384
496	1	cdc28c0f50f2259263ec423d0a2f0fe1b48282c25444a6eb0fd5dc33c68f031d	2026-09-05 15:09:18.692789	2026-08-06 15:35:50.770905	2026-08-06 15:09:18.694235
497	4	8fce3cfe455998255e4d871c81374abe82d368425d11df93375ce34b4e07775d	2026-09-05 15:35:50.774293	2026-08-06 15:56:13.90268	2026-08-06 15:35:50.778657
498	1	bf7f823a9a30c8aa2420fd232391a81a11fe156ba4fb563db6d79cb46041cad1	2026-09-05 15:35:50.771156	2026-08-06 15:56:13.904133	2026-08-06 15:35:50.779756
499	4	20b6a4338528553cef05eb31a63c386b7cc279d214f00095b9d9eccba456bf19	2026-09-05 15:56:13.904427	2026-08-06 16:16:00.879791	2026-08-06 15:56:13.992891
500	1	d5e5006c2aa3ab41242322f3199f0f12f95f487f82a241ccf50ed933f9be65e7	2026-09-05 15:56:13.981159	2026-08-06 16:16:00.901131	2026-08-06 15:56:14.046486
502	1	a4f8b8b012eb50c8be6b7e64e3175e903ec875dd570201adb03ac8b5df3d2fa6	2026-09-05 16:16:00.901159	2026-08-06 16:31:15.31637	2026-08-06 16:16:00.902712
501	4	9b2783fafddf45db6b74df929e13b2c66945385a9b39d2e3b066da58f7ecc957	2026-09-05 16:16:00.880203	2026-08-06 16:31:15.320896	2026-08-06 16:16:00.884093
503	1	8835cebe65a31e462a26eebd214d679684bdeadc7959a9709312d30d08d4194a	2026-09-05 16:31:15.31654	2026-08-06 17:02:23.496924	2026-08-06 16:31:15.31878
504	4	5f41f6a708e0af02888e3ce403a1168cada2b02f823ad38fcb701d6ce2bd30b4	2026-09-05 16:31:15.320917	2026-08-06 17:02:23.505573	2026-08-06 16:31:15.32303
506	1	c35673dac43f992e74515c9a12ae3bb8b86e1175489afda857ce0a780244c4bf	2026-09-05 17:02:23.497206	2026-08-06 17:22:05.677049	2026-08-06 17:02:23.513759
505	4	a2d0e5e58f82d7cbb78d9e88b73872587043dcfdca365077d32506acbfaeb329	2026-09-05 17:02:23.505616	2026-08-06 17:22:05.686783	2026-08-06 17:02:23.513963
508	4	4c8b272fab85af2fa8a007ff97318956e7dd7a7d5e2605e41876117d5d5e0725	2026-09-05 17:22:05.686818	2026-08-06 17:37:28.347012	2026-08-06 17:22:05.688268
507	1	d3c004cdd095c6e13d3da3df0b301c24e708d1fa3140616c59e5a99e61bdebff	2026-09-05 17:22:05.677569	2026-08-06 17:37:28.344018	2026-08-06 17:22:05.681801
510	4	b9e8e009aa9fa10260c83798d725ccd3d1c533677253dfef69608b58304a9fe7	2026-09-05 17:37:28.347041	2026-08-06 17:58:42.234278	2026-08-06 17:37:28.34931
509	1	91e520c3a612d29f32fdd2e4b1146ac0224d0efb414b09eaea93bf4b3b56c3d0	2026-09-05 17:37:28.344268	2026-08-06 17:58:42.234075	2026-08-06 17:37:28.348335
512	4	fb91d5b534b8401ec0216343c2cea520aedb66e3c5ee9ec0b971a94e72166c37	2026-09-05 17:58:42.234334	2026-08-06 18:18:24.522734	2026-08-06 17:58:42.237709
511	1	b1b5f02c00ab4e981429769cb893b7422af0c598d60c55e543117483dd8d2e33	2026-09-05 17:58:42.235647	2026-08-06 18:18:24.533575	2026-08-06 17:58:42.236308
513	1	a347c2b33a5347b183f3ef1cf4a6e476e8f3a96247831688bebb73781ba20d68	2026-09-05 18:18:24.533658	2026-08-06 18:37:54.425069	2026-08-06 18:18:24.539927
514	4	27ec307b3e0f330c79e4218cc22dfb3b357fc09839ab266db307b84fbc64bfe9	2026-09-05 18:18:24.523172	2026-08-06 18:37:54.425443	2026-08-06 18:18:24.538663
516	4	bdc60f04d0908c0b34fc27c0e5321104db74e6e45763e4fcc399feef36b93463	2026-09-05 18:37:54.425515	2026-08-06 18:59:06.558914	2026-08-06 18:37:54.433481
515	1	b74ab2c405bd09297b81d772ecea24ccfa3092bee46fa3a5499cbfc72ac911d2	2026-09-05 18:37:54.428919	2026-08-06 18:59:06.560033	2026-08-06 18:37:54.431368
517	4	1bbc3b02aec39b31d790b26615218169f0d4d341d530fa1a404a5f12debdebe5	2026-09-05 18:59:06.560135	2026-08-06 19:14:33.876476	2026-08-06 18:59:06.569996
518	1	7823077d90a206c9a157eae8c0a5fae9eea4a0b9b084115b5a6eea84c868753c	2026-09-05 18:59:06.565404	2026-08-06 19:14:33.867094	2026-08-06 18:59:06.57148
520	1	4dd5cc8734e2597a916302b8e259795e8969c7dedc15323326c01d03e7632c26	2026-09-05 19:14:33.879042	2026-08-06 19:40:45.777821	2026-08-06 19:14:33.91443
519	4	3fa2a5286580723630e3b1a225536dfedc851626514864a32d5cdd0c19170974	2026-09-05 19:14:33.886365	2026-08-06 19:40:45.777179	2026-08-06 19:14:33.912011
521	1	c1608d51dfebf5410a95c3e2d5bca778ba26411c9a7afc80b00cc1d8b13c840c	2026-09-05 19:40:45.781825	2026-08-06 20:11:30.429927	2026-08-06 19:40:45.78493
522	4	05620070a8639dd0f6e51626dfd7b40cfca517e6f5acecbf92414519288a8226	2026-09-05 19:40:45.777904	2026-08-06 20:11:30.430576	2026-08-06 19:40:45.785217
524	4	8732cf678c78bf8ae803084222a1bdb4667fd90790059d0e52cdafb8cee82f40	2026-09-05 20:11:30.430803	2026-08-06 20:40:11.969862	2026-08-06 20:11:30.447734
523	1	1ae9099715c127fb07e5e1552b3ee6ea283982fd1328058abafeba2675766719	2026-09-05 20:11:30.435215	2026-08-06 20:40:11.970166	2026-08-06 20:11:30.437409
526	4	69494db593a5ff4b49dae972caffb684b4b1483beccf6b077ad8a6c54f295d17	2026-09-05 20:40:11.972808	2026-08-06 20:56:17.740845	2026-08-06 20:40:11.97416
525	1	617559f3044ef6abce3f7f01b9ae62125c1c7c713b158e121bd3fd19097121fd	2026-09-05 20:40:11.970342	2026-08-06 20:56:17.736799	2026-08-06 20:40:11.974309
528	4	64efdc3a77310c49e2556c52845e5d514112b1af428867def5732f497554b486	2026-09-05 20:56:17.740867	2026-08-06 21:25:33.099122	2026-08-06 20:56:17.742203
527	1	47cefb591c8a44e5d1e8435f5719680ee50cf632e119f32fa7bda39c1915d16c	2026-09-05 20:56:17.737013	2026-08-06 21:25:33.098362	2026-08-06 20:56:17.747691
529	4	845315517ba466ea4d276edd3b1c0f74e1c054eb4c13d1563d01ccb5fa20b95d	2026-09-05 21:25:33.099322	2026-08-06 21:52:58.467919	2026-08-06 21:25:33.110635
530	1	d695ea24ac309a2680cb1555929b5cd2f6d5b102f76f52f76026a7e27083a11a	2026-09-05 21:25:33.106404	2026-08-06 21:52:58.487205	2026-08-06 21:25:33.111035
532	1	e60d5d194acfa032d0292e176d1a66f898dd039a5d3688cf8577e10744a6f5df	2026-09-05 21:52:58.487284	2026-08-06 22:14:34.026661	2026-08-06 21:52:58.488633
531	4	948d0777263c5e3ad72a7e30cb25eb3a6495197ef289f902e4391e19d08cad7f	2026-09-05 21:52:58.468195	2026-08-06 22:14:34.026217	2026-08-06 21:52:58.477207
533	4	cd8bd86d80f9274b5b865c21f99449732bbb544074297fad04842c603ea34484	2026-09-05 22:14:34.031963	2026-08-06 22:32:12.874711	2026-08-06 22:14:34.043835
534	1	a63bb871e104989feeae43ede3080d6b2a3853aace1a57ef6ddb0a78bcc9fd40	2026-09-05 22:14:34.026774	2026-08-06 22:32:12.87703	2026-08-06 22:14:34.042826
535	4	9552f5bbe0098dee8b237b8bd6af250f9306cec7fe33d822212a083fdbc31f4e	2026-09-05 22:32:12.875202	2026-08-06 22:51:59.687032	2026-08-06 22:32:12.878006
536	1	57680435830380a74169fb9ba4c7da33332d3c979b6f76136aba46c98629a6d5	2026-09-05 22:32:12.877054	2026-08-06 22:51:59.688864	2026-08-06 22:32:12.878385
537	4	e2bb16482e731b66e440caa31d9294d295c81e036b1c932f1e1730e08f8f222e	2026-09-05 22:51:59.696788	2026-08-06 23:07:06.956388	2026-08-06 22:51:59.71035
538	1	0a98a716d7500034f90289e957b6141df41b81ea52e26d88bc5f2e1e10bd2af1	2026-09-05 22:51:59.689288	2026-08-06 23:07:06.932003	2026-08-06 22:51:59.712592
539	4	3d15e9214b31e9aae00bf2949b40b72c441dfb1cf5579b0ca023879c248e4176	2026-09-05 23:07:06.956422	2026-08-06 23:26:41.391714	2026-08-06 23:07:06.958032
540	1	e8fd6c24199b7a606cfe7420d484df708cfbf66e03eba7393fb0e0c2c7c6b359	2026-09-05 23:07:06.9501	2026-08-06 23:26:41.398672	2026-08-06 23:07:06.962775
541	4	478f9af63f9cf8cab28c28c361565e30222d29a9a329c7d9ea7ef9f68427a69a	2026-09-05 23:26:41.3919	2026-08-06 23:45:56.196741	2026-08-06 23:26:41.398117
542	1	2513f166158ab08c3eea861417deb7161b4d231e9d6c13f59f06fb5acae3c93f	2026-09-05 23:26:41.398698	2026-08-06 23:45:56.197212	2026-08-06 23:26:41.399888
543	4	b2d33dea536b931b6e3bc0bb790285b76dae69e6d10fa1b6ac78b81a1e122aeb	2026-09-05 23:45:56.201591	2026-08-07 00:01:17.276382	2026-08-06 23:45:56.203455
544	1	1c8c7647b6ab731d6612fb0be3ae50d076b49dbaa4b0a7dbf0663599aa88188d	2026-09-05 23:45:56.198142	2026-08-07 00:01:17.277998	2026-08-06 23:45:56.206003
546	4	bac67969af21a0cc72d048b8d2d2a37701a4530b641d418b86f7e40d0f890965	2026-09-06 00:01:17.276537	2026-08-07 00:16:22.705404	2026-08-07 00:01:17.279452
545	1	5ea1a805daae96fe43fb47143fbcebb98ded9dfd33597dfa8589e42148db4999	2026-09-06 00:01:17.278016	2026-08-07 00:16:22.709006	2026-08-07 00:01:17.27855
548	4	84214153131975ed6a84607409d789fab059be04ca53548b224b7361b69d6388	2026-09-06 00:16:22.719041	2026-08-07 00:35:51.65471	2026-08-07 00:16:22.721383
547	1	d6925baf2a94de35c0fe8979c06978c751591ad6b39dd1f74a097024b111112c	2026-09-06 00:16:22.709115	2026-08-07 00:35:51.642299	2026-08-07 00:16:22.721833
550	1	938c0ba5cf4e5ac658397ec2668bb45894e9896501deb5b31b11fb22190f1000	2026-09-06 00:35:51.64408	2026-08-07 00:56:35.133272	2026-08-07 00:35:51.662127
549	4	948bee0700db367a5ce5a5ebacd8c6f0cd3df93ef1c7df770f90f2d5390c34be	2026-09-06 00:35:51.6548	2026-08-07 00:56:35.133622	2026-08-07 00:35:51.661951
552	4	f0cab1f9e1a5b9542530001076c775e7a1a40dc3d93d60266e256cd90af6807f	2026-09-06 00:56:35.13409	2026-08-07 01:11:50.378861	2026-08-07 00:56:35.143016
551	1	23aabdf72347c12ef3bae8341732955903bcfba52e38fed92968004f9a782294	2026-09-06 00:56:35.139875	2026-08-07 01:11:50.377022	2026-08-07 00:56:35.141295
553	1	5040caf59753938999e3dd38d92b75851f023d119c0153271767bc45ff718f0a	2026-09-06 01:11:50.379012	2026-08-07 01:28:09.882631	2026-08-07 01:11:50.418171
554	4	f287262a05a3ebdb56dd9b4f3c9f4e718245e3b9576775fc503ad2646b37780e	2026-09-06 01:11:50.385016	2026-08-07 01:28:09.88908	2026-08-07 01:11:50.439
556	4	85d666ffbdc7216a388d622de0a8ef8249b17e47df57889a4df8e20f45482bcf	2026-09-06 01:28:09.889912	2026-08-07 01:48:04.699673	2026-08-07 01:28:09.893734
555	1	6b6513e5c9f86f9da9a34f6e105cae00bcdf6cdd80e399bf87b87faffbeb3b67	2026-09-06 01:28:09.882829	2026-08-07 01:48:04.7219	2026-08-07 01:28:09.889466
557	1	263c547b880559ac3f052de35728ee56d0b5d9783354cee9f8f2fa86a2982f4e	2026-09-06 01:48:04.722208	2026-08-07 02:04:06.936418	2026-08-07 01:48:04.737189
558	4	56ea6ab5b3e2cd257d455fd1317081ffb0e8c55272ce4161daeed3a69438de9a	2026-09-06 01:48:04.702054	2026-08-07 02:04:06.989015	2026-08-07 01:48:04.734291
560	4	d6dbc30a5aa8fac613e8b26c4a99eb87b41e71586546d9b97b122edc37f2694b	2026-09-06 02:04:06.989848	2026-08-07 02:19:15.804004	2026-08-07 02:04:06.993642
559	1	c0fc2c5a574cd568187872243b6643a8a9bc057b7605ba88d63835257662f9b1	2026-09-06 02:04:06.937656	2026-08-07 02:19:15.796305	2026-08-07 02:04:06.950629
562	4	38bae7646d72de9dcf03eb642f96a6e734b0bbc7e01a9305569627695f87f440	2026-09-06 02:19:15.804069	2026-08-07 02:48:53.400943	2026-08-07 02:19:15.8165
561	1	aee36bbb704b516b9c15ea86339052b51029726eb72829947b8d4dd4ee8bc48c	2026-09-06 02:19:15.796744	2026-08-07 02:48:53.400693	2026-08-07 02:19:15.815055
563	4	3482e635e579b100ae42b75cc6f9ef0c5b5abf7231c55c076b871c64b5c413d4	2026-09-06 02:48:53.401002	2026-08-07 03:04:38.491322	2026-08-07 02:48:53.404592
564	1	6ab4f76f973381d306f799ba65fc6dcc35f66149b5e662812858b7a6f8179253	2026-09-06 02:48:53.402455	2026-08-07 03:04:38.488169	2026-08-07 02:48:53.404684
565	1	8467e560df836068941c8ff15a436082385949914bf9e985b74cba6692dc327d	2026-09-06 03:04:38.500202	2026-08-07 03:19:39.630073	2026-08-07 03:04:38.505525
566	4	2435873a08ad9c30b52b5fa21fd323e03d86bfd9c1ae59ea13906308d40baf3c	2026-09-06 03:04:38.491539	2026-08-07 03:20:40.159029	2026-08-07 03:04:38.505336
567	1	9140bde5287bfd1b62b9456dc5d39d1602e1dbdb8c5f6ffb1841012bd13082ad	2026-09-06 03:19:39.630935	2026-08-07 03:26:43.286596	2026-08-07 03:19:39.637284
570	3	bbc606337fc8ec256d48670e4c2df32870a3918551596bd32531587157ff5cf4	2026-09-06 03:35:08.83275	\N	2026-08-07 03:35:08.840823
571	3	967ec6241a1f5778ef01f35fceb75e3742ddff0766ccbcefc1d1cdd165fe77d2	2026-09-06 03:35:19.64949	\N	2026-08-07 03:35:19.651776
568	4	d7b5957020015d9bf1317bdc7df885630cf5133b34d6e84dbb040037a705eff3	2026-09-06 03:20:40.160892	2026-08-07 03:36:38.674349	2026-08-07 03:20:40.229694
573	3	9fc1b3bd6ea2fc2c362673788739eec53ba8e768814b897fc6ad0e7a2fa252af	2026-09-06 03:39:40.649282	\N	2026-08-07 03:39:40.651287
574	3	8ef8d11c573baefff0f17279bac76588bde91635955d886ebd80dd7a102e2290	2026-09-06 03:39:52.244921	\N	2026-08-07 03:39:52.248434
569	3	8ac8c5faa4fdd6153937b4a303f36f65c0ff26f53f266ff4f9e0d455d6bcbfa8	2026-09-06 03:27:02.966735	2026-08-07 03:42:03.156167	2026-08-07 03:27:02.968597
572	4	efdab32d2a58bdbc47a1cb36a74079018f8a510b59ba1740a6a3dc2c7ef2ff3a	2026-09-06 03:36:38.675266	2026-08-07 03:59:48.468688	2026-08-07 03:36:38.68309
575	3	d0f11f692e39416885e1cd4bf0d131d70043d01d5e0563a01add0a149e831f0d	2026-09-06 03:42:03.157683	2026-08-07 03:59:48.457419	2026-08-07 03:42:03.16307
577	3	cf32250de4c7a9c884df6c80bb1390ed5df25a1a259a0fbb7c016e58732b1149	2026-09-06 03:59:48.464589	2026-08-07 04:16:11.942577	2026-08-07 03:59:48.473933
576	4	085617b42f00275f92f502f16807d82faf90f949b3fb709c97e4048178f6a9f0	2026-09-06 03:59:48.468717	2026-08-07 04:16:11.948561	2026-08-07 03:59:48.47034
578	3	5bac9b471243846dbffa3843d6083f2f73c88b7a00b5036956a1d5419b748486	2026-09-06 04:16:11.943882	2026-08-07 04:31:39.543869	2026-08-07 04:16:11.949747
579	4	583ced937660bbd1dbc0fda8238489360a4027a4f2b1b238b76b5ec0b607ca81	2026-09-06 04:16:11.948595	2026-08-07 04:31:39.574885	2026-08-07 04:16:11.950976
582	3	630188b31869825abad8b4342151169d1d4b57342995030030973080e7f71d09	2026-09-06 04:42:02.378896	\N	2026-08-07 04:42:02.38349
580	3	a7befaf0082b6dc1b160a21192c73acc3e917f0db86fcf65c33ab4637b76e62b	2026-09-06 04:31:39.544132	2026-08-07 04:47:04.032136	2026-08-07 04:31:39.547407
581	4	f9c342daf5863adf7978f95e7154d9b4b9c4b76b9be8169eb1528d50340cfaae	2026-09-06 04:31:39.574926	2026-08-07 04:47:39.479368	2026-08-07 04:31:39.576651
583	3	469e6bd6567426643a43226a0010b55c4d17bddc93361b668e851e3f14ab1ca7	2026-09-06 04:47:04.032269	2026-08-07 05:02:07.915286	2026-08-07 04:47:04.035522
584	4	fe04fdc3116c7c1ce6457b77b8f1e11c7fe9176c74dadbe14829c7ca031155ca	2026-09-06 04:47:39.479478	2026-08-07 05:03:39.701511	2026-08-07 04:47:39.481097
587	3	5e315e73f7290566de84c9d5d3b46d93a354a16b919c52618e36261b4404baa9	2026-09-06 05:04:05.01954	\N	2026-08-07 05:04:05.022033
585	3	2597938e097d25c38a4d919fe32c6744911d13f21f2421e067e2d4735705459f	2026-09-06 05:02:07.915719	2026-08-07 05:17:31.863359	2026-08-07 05:02:07.930735
586	4	b544d243d42a307b7ea12bed64f9a6bd98e9729d89200de65fb5a9b73e39d824	2026-09-06 05:03:39.701759	2026-08-07 05:19:39.518143	2026-08-07 05:03:39.712461
588	3	b93f02b14b85d9b0a0660542426f18e7cd31477c10c29337f7248819b5903ec2	2026-09-06 05:17:31.863591	2026-08-07 05:32:38.610276	2026-08-07 05:17:31.866506
589	4	56db162710826bfeeb235b3c41e4b1a215946beb9ecaa547d63b16b5b1b3997c	2026-09-06 05:19:39.51835	2026-08-07 05:35:39.526398	2026-08-07 05:19:39.522069
590	3	9b990b749d4b51a2341c8f14b2845e04ec037b8ff071e22a3d98a06d1d2f3236	2026-09-06 05:32:38.610579	2026-08-07 05:47:39.541006	2026-08-07 05:32:38.615243
591	4	52285197e63bd581b9fe6aa5905b5e7eedda7d71f3096c979a445f0ff585cc8d	2026-09-06 05:35:39.526592	2026-08-07 05:51:39.477985	2026-08-07 05:35:39.531525
592	3	b9cd29334348ffeca7a1bd79c7202d1a36a09e16e28f1dc56da3d0cd7cb072a1	2026-09-06 05:47:39.541162	2026-08-07 06:03:39.48141	2026-08-07 05:47:39.544146
593	4	5109a106b4bf15da09da05a00c2a518f3052c69c89faa6d381bad17ce399b5d7	2026-09-06 05:51:39.478209	2026-08-07 06:07:39.523389	2026-08-07 05:51:39.481861
594	3	11b33dae9cc77a81dce35a353cc078c060bd86a4c39345af7cd00a63d1e44e5f	2026-09-06 06:03:39.48157	2026-08-07 06:19:39.459888	2026-08-07 06:03:39.487246
595	4	76e7e0515470f5df55e22d4a2633d0fe47d8e90f959647650e7f05a0ad1629e9	2026-09-06 06:07:39.523552	2026-08-07 06:23:39.431641	2026-08-07 06:07:39.526297
596	3	3a3dfeb9ef25f7a12c6c151132aef8938f3da61453b4b389da5af02a80cef7ba	2026-09-06 06:19:39.4605	2026-08-07 06:35:39.555287	2026-08-07 06:19:39.467082
597	4	4126a7b45a532c763adcb91527fdde82feb0089870e3bf8b0d7507515627261f	2026-09-06 06:23:39.431808	2026-08-07 06:39:40.094002	2026-08-07 06:23:39.43658
598	3	c7764f2ee180ff6de7744a2bb361eee13b377476b86900febb86da0263ecb3f6	2026-09-06 06:35:39.55546	2026-08-07 06:51:40.198791	2026-08-07 06:35:39.557991
599	4	dd22118f666a42376851e910dca7250585e021ffe08713c95db20a524136e5d9	2026-09-06 06:39:40.094348	2026-08-07 06:55:39.585345	2026-08-07 06:39:40.112273
600	3	998d10a758beccf04e27c21a50817332e499d5be168b47b6b9f4b5dbc620da95	2026-09-06 06:51:40.199328	2026-08-07 07:07:39.342836	2026-08-07 06:51:40.222469
601	4	55e439649a250fd7fd5cc5354ebeae6ceb792a0ef8ac3503289ff147c2dc7fbb	2026-09-06 06:55:39.585517	2026-08-07 07:11:39.615113	2026-08-07 06:55:39.589346
606	4	85c9d28fb2bc257e99e591edda64aa7ae0df45f7568bf0e7e71d30f2f3de563e	2026-09-06 07:43:04.494122	2026-08-07 07:59:04.286023	2026-08-07 07:43:04.501079
608	4	08743023b394d24b6cb6d1d6682ac0801927f3b7296ba5147cdc76bf9ecc9777	2026-09-06 08:21:55.622369	2026-08-07 08:37:46.738987	2026-08-07 08:21:55.627033
610	4	5b6b4be54e1a0f00d49d60fa6c1b9d19b59fadc0ad3da91bd73a23bb4c6d800e	2026-09-06 08:56:16.939176	2026-08-07 10:31:48.146196	2026-08-07 08:56:16.941518
611	4	1ac3eb9cb0a52aed98283b536bfb31ebd36f04e36b650997e6e5ddbfeaf0aa7d	2026-09-06 10:31:48.146565	2026-08-07 11:14:59.39685	2026-08-07 10:31:48.152203
614	4	1c1372b379c97ad58c4da3340e999958eb1833448139acb943ac2e20cdf1914c	2026-09-06 14:20:32.9887	2026-08-07 15:42:08.160108	2026-08-07 14:20:33.109099
620	4	4fa51a76e4083fe2aa62504b016ef3d46f4a01217f54b42d5a5562a83cf71464	2026-09-06 21:26:11.608941	2026-08-07 22:00:46.628921	2026-08-07 21:26:11.625869
602	3	c1576645857befd1a4f3f8ec8e3ae8c1880d5f09749d0cc7631f27d56e73cc28	2026-09-06 07:07:39.343081	2026-08-07 07:23:04.249785	2026-08-07 07:07:39.345333
603	4	d9458d037ac601f323f419636742c801854f506eeb3b2207fc1ddd2c12565b78	2026-09-06 07:11:39.618615	2026-08-07 07:27:04.242655	2026-08-07 07:11:39.636695
609	4	3d998841721b47b5d64fa7fbe510ecb89a159431a80a4cfc091b55b9339e559d	2026-09-06 08:37:46.739141	2026-08-07 08:56:16.938989	2026-08-07 08:37:46.741764
613	4	5c1082c9feefd2a90a074e36aa53d7e08992d78af709d543bcb84d9d4f65e9ce	2026-09-06 12:38:17.073142	2026-08-07 14:20:32.982941	2026-08-07 12:38:17.078983
617	4	69b4e6dc0a4047b8eda518450c95c2cc154d24f172c0d4f6d0e4a628cd7af8be	2026-09-06 17:34:40.798667	2026-08-07 18:54:58.033963	2026-08-07 17:34:40.814136
618	4	87e3f0e9352e31ecabf5d502df9e171bc335ee98b633e1a9094bfb11fc158143	2026-09-06 18:54:58.047816	2026-08-07 20:04:27.978536	2026-08-07 18:54:58.118084
622	4	be605a49216cabad90fd14d867a02e8486e4adf788ca2f039c8198043c643a1e	2026-09-06 23:43:27.687789	2026-08-08 00:02:04.111907	2026-08-07 23:43:27.832088
604	3	54cdae30cf13f3cf7014b180765a0c08e92bc29816dd136d0d2bcd3f3e825ad1	2026-09-06 07:23:04.249919	2026-08-11 09:26:33.750703	2026-08-07 07:23:04.253414
605	4	345b2fcc74ce83ca8d77203191c5e840f898964e3fe14a25ee2a0f039c9a12dc	2026-09-06 07:27:04.242829	2026-08-07 07:43:04.493301	2026-08-07 07:27:04.249044
607	4	623fae52524139a8522dac81fd4517ee9ddba5c062984af3ab7ffa515090b76d	2026-09-06 07:59:04.286193	2026-08-07 08:21:55.621478	2026-08-07 07:59:04.297303
612	4	69ac314a1cf153fcc99c9c71cab64d7a023a138f5391e8c5c55d629272ff8d49	2026-09-06 11:14:59.397082	2026-08-07 12:38:17.072921	2026-08-07 11:14:59.400057
615	4	1df9cd2f57e03b9c954fb5ed15cdc9af6fd01e2cb8e765efb37cf4d97ce9ed53	2026-09-06 15:42:08.166593	2026-08-07 16:31:41.072111	2026-08-07 15:42:08.384909
616	4	b7f24e5c91414893e42b14c98e129ebac1d97c4144a11b4d8132df4cd34eaf27	2026-09-06 16:31:41.072441	2026-08-07 17:34:40.79712	2026-08-07 16:31:41.088664
619	4	e515f3c62e170126691a292d609cede5582caed8beadac5161e6246df210737b	2026-09-06 20:04:27.978909	2026-08-07 21:26:11.607922	2026-08-07 20:04:27.984647
621	4	2c373a1a0a682d3233ffda6a834715413eb934880899129a78cdf939f16e5168	2026-09-06 22:00:46.629185	2026-08-07 23:43:27.685757	2026-08-07 22:00:46.633868
623	4	acd82cf0af75da1f0c1494d55b0ba160f0b14e913df88ea3160493c412e6ab5d	2026-09-07 00:02:04.113188	2026-08-08 00:24:35.068937	2026-08-08 00:02:04.131425
624	4	53bc47cfe82bb6d2193fc77ca6be87a26184198f01be0260451aceb81fa34c70	2026-09-07 00:24:35.070821	2026-08-08 00:43:36.972748	2026-08-08 00:24:35.139044
625	4	0f46ca7cf69c4ad0f82211d5c995ee158bf078d4498b1e7fdf8e04533a08c259	2026-09-07 00:43:36.974622	2026-08-08 00:59:37.952951	2026-08-08 00:43:36.996189
626	4	b78f9c7dfd84cc0962d1ab9e347c757c424003c81a9914d610e4a25453e8f9b5	2026-09-07 00:59:37.95431	2026-08-08 01:26:50.908638	2026-08-08 00:59:37.975322
627	4	3d17964d7d7506bf3839fe3702b34edb0e166276ce02654aed69df4bbe4e0357	2026-09-07 01:26:50.910563	2026-08-08 01:46:18.088544	2026-08-08 01:26:50.990253
628	4	ec0cbdb78c09959e8a2711efedcf76e2680635ce24fe0236af2691027d5ae006	2026-09-07 01:46:18.089375	2026-08-08 02:05:10.077878	2026-08-08 01:46:18.109049
629	4	caaff3a468ce08f1c5b8aca9d7acb62e74411ab4e8c3f6f39b8ef051b2c1d1d2	2026-09-07 02:05:10.082573	2026-08-08 02:27:05.136934	2026-08-08 02:05:10.116746
630	4	21145e32fb30adc320cc5610d6d232c6992245cde537ebade9d8e3aef9bcc70e	2026-09-07 02:27:05.139324	2026-08-08 02:44:08.195183	2026-08-08 02:27:05.162469
631	4	62e9c9b81a5fba1a0ef80f6ea0ac75c0b9904d0f627477dfacf737ec4183e794	2026-09-07 02:44:08.201075	2026-08-08 03:27:57.662751	2026-08-08 02:44:08.250247
632	4	ad3c941c56cd3a1cf4ff10a57a394729121fe977832d623ed2fa8e8906207f48	2026-09-07 03:27:57.663178	2026-08-08 04:29:30.809001	2026-08-08 03:27:57.736365
633	4	8b4fc3c174a5df055ce29d5e3b1d2bd447711420dbd420566d0e8b9830f50fb6	2026-09-07 04:29:30.812811	2026-08-08 05:30:19.713601	2026-08-08 04:29:30.85987
634	4	5b1db4dadba89b3b7b908dbf337601c952a4f944a0499ec501cc703b8e0d8918	2026-09-07 05:30:19.714004	2026-08-08 06:13:35.536931	2026-08-08 05:30:19.727813
635	4	a265153a25a4094e67267a9aa890f189efdffbfeb000638a148f37674b81ff38	2026-09-07 06:13:35.537342	2026-08-08 07:14:32.596329	2026-08-08 06:13:35.556877
636	4	71ea36c6c120d372cfdcadbbf0be74753a4a41ba04a3a2174a4e3be6f0eb3b46	2026-09-07 07:14:32.598953	2026-08-08 08:15:28.567931	2026-08-08 07:14:32.615479
637	4	6bd58d9c388287166efa12ca424fc715305ef84a8a9fc4389656027a3571b08d	2026-09-07 08:15:28.568514	2026-08-08 08:34:29.969046	2026-08-08 08:15:28.603421
638	4	e40d1dd94eb2b8ce36033f41d1367397e4fa887e789f8404be523c5b089409d1	2026-09-07 08:34:29.969384	2026-08-08 08:49:31.070466	2026-08-08 08:34:29.978193
639	4	0c99a39db315a7149384db5ac13498f78ab18d89b770879211329c5ec0512966	2026-09-07 08:49:31.071627	2026-08-08 09:05:29.418483	2026-08-08 08:49:31.079116
640	4	cbaf6a55f7c536aff787024b54c6fd7629ecb434a52e1bb1e59a40fa21f39417	2026-09-07 09:05:29.42119	2026-08-08 09:21:29.262735	2026-08-08 09:05:29.430548
641	4	0ea7fb440302c5e9176ce1b701e69996eca6aae4c9f7a88bbe2d7ef0b125a9a1	2026-09-07 09:21:29.262897	2026-08-08 09:37:29.386051	2026-08-08 09:21:29.265324
642	4	13e4cf4aa20a392f4c74c1ec08d5caaa5c4bf55268968a1e8a8a8a8a0589141b	2026-09-07 09:37:29.386267	2026-08-08 09:53:29.399839	2026-08-08 09:37:29.389399
643	4	8dee3d4f6ccdaf37c3474c32b73d870920d1ab86a15a0d9ed7705ad209461445	2026-09-07 09:53:29.40032	2026-08-08 10:09:29.406304	2026-08-08 09:53:29.405061
644	4	13a1504cc9851a12f5a63e7b76e0b2bc2c69c2e8c296c4bcbabd14abf32ae724	2026-09-07 10:09:29.406936	2026-08-08 10:38:27.526835	2026-08-08 10:09:29.413976
645	4	1dc25064d3e138452b715d35529ef52ffa20160d108003c314a0f276c7dbb26a	2026-09-07 10:38:27.52714	2026-08-08 10:58:48.237982	2026-08-08 10:38:27.555282
646	4	e1150c7dfbf1543933b22a66f8d08fc7e9cb1592a67543e3917a669dad83a293	2026-09-07 10:58:48.238324	2026-08-08 11:16:25.664327	2026-08-08 10:58:48.24304
647	4	ea944b889086d0891a02ac7b621bc8ae7c6fb0e7e87289cbec1ae5a2871f51f5	2026-09-07 11:16:25.664502	2026-08-08 11:38:29.042371	2026-08-08 11:16:25.66726
648	4	8f981bce45877b3adfc290f851ae10fb7220f0b8b4f49821c6595a592ec26896	2026-09-07 11:38:29.042841	2026-08-08 11:56:52.938015	2026-08-08 11:38:29.052537
649	4	3b6194a66cb597ec52b3631849fa7e0389d6655db5a8cefdc314cc317ad4a03d	2026-09-07 11:56:52.938183	2026-08-08 12:21:47.245979	2026-08-08 11:56:52.961614
650	4	efb01d3efbe1a0a638f7040d46cf806f363540fe43d233062d071bcc3b8974fc	2026-09-07 12:21:47.246241	2026-08-08 12:45:08.025817	2026-08-08 12:21:47.250949
651	4	e20852b2b0ce79874b9346596f951e4f24f1039e73b8fb8bd1e419e41b0bc008	2026-09-07 12:45:08.026073	2026-08-08 13:03:18.764879	2026-08-08 12:45:08.032745
652	4	37c48b3bc8f4474de0b2edf3211fca9b9f83f2e3a975d9787c0283005e71627b	2026-09-07 13:03:18.775641	2026-08-08 13:22:55.347552	2026-08-08 13:03:18.804083
653	4	03ea56b191ee5d00f830c3272154bc7ee99f9f09e26f0644a9ff2e6aa28e236f	2026-09-07 13:22:55.347826	2026-08-08 13:47:24.651453	2026-08-08 13:22:55.357324
654	4	03be837d411c0f90ff6c1806ce7b13dd458a0e7577f79240c25034662f76eafd	2026-09-07 13:47:24.651833	2026-08-08 14:06:08.26151	2026-08-08 13:47:24.657159
655	4	072ce2cf81cb7e49502b54e5302e876b0f2d7d32bc8869750574976ca46fd521	2026-09-07 14:06:08.261749	2026-08-08 14:31:47.732347	2026-08-08 14:06:08.264373
656	4	6213dae8909b8e21bbf2f1d14e59f803c3c2710edbf23c0110dee581d5eb5304	2026-09-07 14:31:47.732789	2026-08-08 14:54:57.199198	2026-08-08 14:31:47.740669
657	4	20459bcc5b11f91986bfc170c57d510dbde78907353f1ebc08ae06925c6ffa1c	2026-09-07 14:54:57.199536	2026-08-08 15:15:27.041214	2026-08-08 14:54:57.204475
658	4	16f8c1487849da4df7b262395fcd2cfdf28ebd0a717a291e676eb9f52234424a	2026-09-07 15:15:27.041366	2026-08-08 15:36:05.682203	2026-08-08 15:15:27.047745
659	4	2eda54929e9bdccfcdee9af2fe19fa5affd7ffd3924c67629e2753c0b81f158b	2026-09-07 15:36:05.682399	2026-08-08 16:00:12.854585	2026-08-08 15:36:05.685941
660	4	21f51149f8a678e355e8bf9276ed9fdb7ac2fb52ad8a0f086ee18ab8c334855a	2026-09-07 16:00:12.854768	2026-08-08 16:16:03.926939	2026-08-08 16:00:12.859292
661	4	78a36ff1bb108cf07e6ea2b0a4c930d2ccd3871d7152bea1cfd73b88527bae73	2026-09-07 16:16:03.927837	2026-08-08 16:38:28.06212	2026-08-08 16:16:03.933428
662	4	0b87ec6acb40e3082ed0d6f1eccc0d2c55c76405a4bb78411e72fa4de3117574	2026-09-07 16:38:28.068114	2026-08-08 17:08:33.872324	2026-08-08 16:38:28.104525
663	4	69526e4079275beac6f4c1ede7ec0a6e9b64ad0b4089cb2775a07f1980bc5b1b	2026-09-07 17:08:33.872977	2026-08-08 17:37:24.911975	2026-08-08 17:08:33.88041
664	4	adcde40671c0e3a81cec056187a5c34fdd889f504abb6b15132d7b6c2713b26e	2026-09-07 17:37:24.912325	2026-08-08 18:01:14.824974	2026-08-08 17:37:24.917336
665	4	8a1019b9e08847bcaee7c9f600dcabafa5104f77073bbc5e1f8f863af7df695a	2026-09-07 18:01:14.825177	2026-08-08 18:21:37.252663	2026-08-08 18:01:14.84615
666	4	10c4bcfd51fab353327edae39cc462784f96039a186fdd6831f35fde13a10806	2026-09-07 18:21:37.25289	2026-08-08 18:43:36.649579	2026-08-08 18:21:37.258349
667	4	ae272f8f0f1962c01ed3f21ce83d03079e5ce11282639396c2cef3e2ff728821	2026-09-07 18:43:36.649745	2026-08-08 19:10:13.434876	2026-08-08 18:43:36.654414
668	4	e724407716fdcb944a0a5c5cc2943890021b9a9af26cd880e9703e87866b9dad	2026-09-07 19:10:13.435079	2026-08-08 19:35:24.122415	2026-08-08 19:10:13.439993
669	4	57be8dc1b5d5b194b594906adecff99166f64fe2c8aaafaef675c48dca6d6899	2026-09-07 19:35:24.122734	2026-08-08 19:51:25.249285	2026-08-08 19:35:24.127779
670	4	25fdfead7574432ebd3ad6f3721861d29698f8f84d88dd5ee9f8bae644bd67e0	2026-09-07 19:51:25.251152	2026-08-08 20:08:10.695083	2026-08-08 19:51:25.25552
671	4	73b56f400ff25f3291cb62effe32720d31a37b671513c38db9596c5ecdd0b45a	2026-09-07 20:08:10.69528	2026-08-08 20:24:14.431881	2026-08-08 20:08:10.717699
672	4	dba527e9e156248bd3e9fa1229f7b5ea92e1152c3fb0d5d900b01d3ee790f996	2026-09-07 20:24:14.432074	2026-08-08 20:39:19.126918	2026-08-08 20:24:14.436138
673	4	361a2961ad56536a776d326123c51e50532149f66be71ab6a283088f881c8b23	2026-09-07 20:39:19.127086	2026-08-08 21:08:35.883195	2026-08-08 20:39:19.129174
674	4	d36a19e23a32b0b86b8b60bde49f5b5677930a535156d065102b5370077c6e9a	2026-09-07 21:08:35.883368	2026-08-08 21:29:30.730102	2026-08-08 21:08:35.885533
675	4	daa218087243dbebb111eae601cf0074f934a02ceb74d442c13d13af4c0c4eec	2026-09-07 21:29:30.730377	2026-08-08 21:58:51.460745	2026-08-08 21:29:30.736373
676	4	298a5838b4b7009cb1d1435e63020c803388e693084157a411a883d1f4f5e004	2026-09-07 21:58:51.460999	2026-08-08 22:14:52.113642	2026-08-08 21:58:51.464169
694	4	ec52f6b80fa583fc478f53e3c08d76523ef79f4285d80d819c2b0d30ceb05c16	2026-09-08 05:35:27.206799	2026-08-09 05:51:27.208842	2026-08-09 05:35:27.208971
701	4	5c698c061a9cd4edb1f149fd6a07d631ab8231a0ec42c265b600454611368f07	2026-09-08 07:31:44.928183	2026-08-09 07:47:45.508533	2026-08-09 07:31:44.93336
704	4	1c86c51b3c7185014e8845659a2ac57b55658004da8de2a4205d5b64192cfce4	2026-09-08 08:19:45.568241	2026-08-09 08:51:17.029339	2026-08-09 08:19:45.575381
677	4	b05b12c00c63b36c0999286369c0be1266fc91d505840845cf3087f1b724362b	2026-09-07 22:14:52.113876	2026-08-08 22:30:09.472265	2026-08-08 22:14:52.119085
678	4	eb1a67adfd7a10b229782d8ce24b8b1ffb688d38ad144dc496902a19c2743670	2026-09-07 22:30:09.473358	2026-08-08 22:49:52.143657	2026-08-08 22:30:09.485983
686	4	56bd577a895479bd272c7befafd2d62cbc743499b9b3189e4b1c4b000cb4e4f2	2026-09-08 01:29:12.724687	2026-08-09 01:50:58.146591	2026-08-09 01:29:12.727516
690	4	07d50fb9fa4ecb5e48dc2a1b33b683133d3cb0494d227f41b39cbef2b15350ce	2026-09-08 02:45:41.308985	2026-08-09 04:48:16.246435	2026-08-09 02:45:41.312804
693	4	83ec18c93001ff90dd1c1f90760c4dc35b5ce19ce755a20c5ed84d254a201c34	2026-09-08 05:19:27.296998	2026-08-09 05:35:27.206665	2026-08-09 05:19:27.304263
699	4	0253ce4bd906ec2e1b81df29c00f9ad4f41b10ce6304e7491d049ddcb7c3170c	2026-09-08 06:57:58.05401	2026-08-09 07:13:27.585919	2026-08-09 06:57:58.056652
700	4	7038492dc0382e5d65a5bb77ff58ba6d74f05917c499f0ae82936dce6ca0e997	2026-09-08 07:13:27.586607	2026-08-09 07:31:44.927959	2026-08-09 07:13:27.591759
703	4	1ad7d64b2d7c575cd821d86c8d150f12e1bd826ac04aa0149753138a2d14e90b	2026-09-08 08:03:45.510242	2026-08-09 08:19:45.567681	2026-08-09 08:03:45.518649
679	4	1aa11af8084be7d9425a00a0f530dd4557180c193e13ed07c63868fe96ffad55	2026-09-07 22:49:52.144026	2026-08-08 23:05:51.277472	2026-08-08 22:49:52.1487
689	4	4b58e71b051fc142ea49423c057949c38995049bae05c7e4431d18ce40d50020	2026-09-08 02:30:38.481651	2026-08-09 02:45:41.308665	2026-08-09 02:30:38.50154
691	4	b7a8f2e51eb878653245d908dae261846cbf136ea6096b710b1fd299007ae7e7	2026-09-08 04:48:16.246877	2026-08-09 05:03:27.352098	2026-08-09 04:48:16.262767
696	4	51229b275d3f2cf28b59a14d31755bd358b5ffb53375334c4daa79148a686057	2026-09-08 06:07:27.328515	2026-08-09 06:23:27.215825	2026-08-09 06:07:27.331098
698	4	85b6a335c7f5b5f92c598450e72af6cefa5d709e961808cc384947266e041ccb	2026-09-08 06:39:00.151339	2026-08-09 06:57:58.053806	2026-08-09 06:39:00.152857
705	4	81902128be9d88b92842f358f11f5dcf1f85cafac14563047c683588caa4d4e8	2026-09-08 08:51:17.029806	2026-08-09 10:27:54.973666	2026-08-09 08:51:17.035068
680	4	be0c12cba0b7676c6d814729bfce93ad062f01d5a1b37ea3e77bc6b1b822e38e	2026-09-07 23:05:51.277657	2026-08-08 23:26:43.434497	2026-08-08 23:05:51.280994
681	4	e990be335fd8c99cd683e7748ca479000add09fb218660bcaa585605061c3e1e	2026-09-07 23:26:43.436814	2026-08-08 23:41:46.65033	2026-08-08 23:26:43.483589
683	4	ee6585ef6a18635d50525bb707af51f3fedac8ae3d80503af5c5e6fd2a0c6c67	2026-09-08 00:00:27.937785	2026-08-09 00:31:43.463105	2026-08-09 00:00:27.942365
685	4	6ea88cbe51ad90fb052b2374dd27fdcfb189e624dfb9a07eda5a117637eb8625	2026-09-08 01:00:38.690308	2026-08-09 01:29:12.724501	2026-08-09 01:00:38.69382
695	4	a88109f0846594462bbaccf20101f8221ad46ec2b8db03fa04a28d61ddf33905	2026-09-08 05:51:27.20917	2026-08-09 06:07:27.32836	2026-08-09 05:51:27.211301
682	4	0a9e19b661f6e799ca83bbc46962db2b196fcf989f58f80501bae0fe5c5c3736	2026-09-07 23:41:46.650485	2026-08-09 00:00:27.937618	2026-08-08 23:41:46.65804
684	4	c61528493c73144922080231f275cbd19e6cdc2f6720aeced83b668a0f1ca583	2026-09-08 00:31:43.463259	2026-08-09 01:00:38.690017	2026-08-09 00:31:43.482181
687	4	d800048d8e14c979494101f2dcecee1fc034d9bd22ec5704bf6d02bd925fa79f	2026-09-08 01:50:58.146772	2026-08-09 02:14:33.362694	2026-08-09 01:50:58.15181
688	4	0206d737555491c320a7a9deda2aa9197a93d4a24be693aa64bf81c5bc929a5f	2026-09-08 02:14:33.363053	2026-08-09 02:30:38.479655	2026-08-09 02:14:33.369366
692	4	d63cf0b69308ca87ce230216bd03b21b7d8176823b6c3e0781a27d64fb2aa08b	2026-09-08 05:03:27.352298	2026-08-09 05:19:27.296689	2026-08-09 05:03:27.357514
697	4	ee683add7b894766174ad6c98a6e81848ad9bb1e7c3f1448d7eaaf006559c435	2026-09-08 06:23:27.21595	2026-08-09 06:39:00.151225	2026-08-09 06:23:27.219416
702	4	4878e11ad43cf4effe02b9d395200b4d31980ee2f1a217124ed3d605186420d5	2026-09-08 07:47:45.508725	2026-08-09 08:03:45.509186	2026-08-09 07:47:45.513933
706	4	eb6ecea9377e06601cbc34e73b738e5be9896270639f57106e08a8c3985dd1c4	2026-09-08 10:27:54.975241	2026-08-09 11:19:01.271936	2026-08-09 10:27:55.011916
707	4	c85180bfac0f72a1725da4fdc9a804c9d2a900834ad7e287b492b9f9795f62b7	2026-09-08 11:19:01.272271	2026-08-09 12:29:54.136531	2026-08-09 11:19:01.279096
708	4	5cacdb9e6c831805d200d50f66011e4e2ba5a8295a10652cdb45dbfd5bdeb732	2026-09-08 12:29:54.139071	2026-08-09 12:59:38.847067	2026-08-09 12:29:54.174078
709	4	31c56241f3984c2d46650d95842337878c1d7c5b7e16a1dd0e8264f3d4e6aa91	2026-09-08 12:59:38.847268	2026-08-09 13:14:57.91835	2026-08-09 12:59:38.864743
710	4	81881ac935ed79d943262a2d07e98f52c91aa3b1bb698a89a3852bfd3cd17968	2026-09-08 13:14:57.918521	2026-08-09 13:30:20.10357	2026-08-09 13:14:57.921559
711	4	e7684fa301f43569694316a411f3c7377d66245c0c72abc132e78b1d1d19ef04	2026-09-08 13:30:20.103967	2026-08-09 14:04:28.964433	2026-08-09 13:30:20.107695
712	4	e54e7da408373fbab16d5cb341287a50d3b5caa2ad2d759644a2ad06314b52eb	2026-09-08 14:04:28.964788	2026-08-09 14:20:24.924947	2026-08-09 14:04:28.98143
713	4	9f00c65efdedb0b0f34b1cc5569e216eb35b9a92d566be942a83ca3aab605156	2026-09-08 14:20:24.925989	2026-08-09 14:35:50.729461	2026-08-09 14:20:24.933013
714	4	3b96fcf12ced35d4f207c1d58333dba98c53ca5c94f5c80a9eb22599191d8470	2026-09-08 14:35:50.730179	2026-08-09 14:54:39.478928	2026-08-09 14:35:50.759437
715	4	0203846eef9c07b19eec6f37acf135823d4631442cda66002f47437c470e4591	2026-09-08 14:54:39.479994	2026-08-09 15:10:22.649743	2026-08-09 14:54:39.489863
716	4	096f0771059bdb263f5219154f021b90f59df0640b5c4f7f5ee213a304f28505	2026-09-08 15:10:22.650171	2026-08-09 15:25:43.153762	2026-08-09 15:10:22.66299
717	4	00eacb2578437064fda9ad2094bbd0cb5c758567d985bda7bfd4112af6eff430	2026-09-08 15:25:43.154694	2026-08-09 15:55:29.575212	2026-08-09 15:25:43.173069
718	4	2663c04b5cc61828ab670ee7aba8f0b668778088118fa4ac552a1401b43fab30	2026-09-08 15:55:29.575907	2026-08-09 16:11:07.568072	2026-08-09 15:55:29.58828
719	4	1869fbfc3a35545df49e59464f69df31909c292ee562186ac8d5503976f38122	2026-09-08 16:11:07.568314	\N	2026-08-09 16:11:07.577916
720	3	aadebe5a845f511753486496e49566e328f5adbe1aa3c22a63f5351399badc87	2026-09-10 09:26:33.75872	2026-08-11 09:41:48.169399	2026-08-11 09:26:33.811538
721	3	deba3009e05da37f3526a879c5c59f1ccbf1891fe0eae97d1395d02b96f5421b	2026-09-10 09:41:48.176034	2026-08-11 10:55:16.679372	2026-08-11 09:41:48.220489
722	3	ac571ea9562ca94c6d7ecbb416d1a69d49d09de70c32da35a42cb777dcb43e26	2026-09-10 10:55:16.933704	\N	2026-08-11 11:03:34.635767
723	3	a3b3b1ec79b9d9a2554b1378cf33e0b1d92edc71c24f0920f273b8083ebe8696	2026-09-10 12:40:52.569382	\N	2026-08-11 12:40:52.676182
724	3	9a30d3ce181a37033063f974e4f6d4684a4cd8364f5e7449cc55c2ffa0a8be56	2026-09-10 12:51:59.436958	2026-08-11 13:07:25.431685	2026-08-11 12:51:59.451816
725	3	ff666e3bac2662f9b2f987ad16842279724a8451580853d9f8a3bd125390df4f	2026-09-10 13:07:25.432148	2026-08-11 13:19:28.762873	2026-08-11 13:07:25.438263
726	1	8db671b97e2f490bb3e7d9222a147a32a2f8b9a983eb0d6db9cd075ccf372c1b	2026-09-10 14:26:59.227835	\N	2026-08-11 14:26:59.23091
727	3	4ea30df9e9f152dacbd6b6ec4be73275749b85b960858d8c78080ea55a28c95e	2026-09-10 14:26:59.418681	\N	2026-08-11 14:26:59.418921
729	1	e350c4e6d7699153aa4c71e17fc608389b1035e5aee8d214e85d8a2eb3b3541c	2026-09-10 14:34:22.369205	\N	2026-08-11 14:34:22.371614
730	1	0d863081e35f3d115d3fc1be97aa147c473d2d3bf43c5ca1fabc57b3322ed11a	2026-09-10 14:34:43.817795	\N	2026-08-11 14:34:43.819887
731	1	9ee9b9758617bb6937e39c07d60c1a2a08c70f5984e6f6ec5cdcc6a9df7a732c	2026-09-10 14:35:53.764759	\N	2026-08-11 14:35:53.76728
728	3	fa455b7cb179b7152a3ac8ff160b82d64d584c65e2b7b6869f3d1759fc8b9617	2026-09-10 14:27:26.22557	2026-08-11 14:42:49.79982	2026-08-11 14:27:26.226815
732	3	42583f0f1f06ddaf0f5de133692524cb3ebe0a92367a450f5ab0e1ce22453e96	2026-09-10 14:42:49.800871	2026-08-11 14:58:19.410618	2026-08-11 14:42:49.805994
733	3	c097ff70cc02aa8fc9fcaf3218b24f43b310b23db19171c8a367cb1fca8a00dd	2026-09-10 14:58:19.410969	2026-08-11 15:09:39.589931	2026-08-11 14:58:19.412465
734	1	59ac89daeb2f746fd8e0bcaa3e8f42d9fc43226ea694e94b34574c8a45fffc6d	2026-09-10 15:09:47.055961	2026-08-11 15:25:12.588746	2026-08-11 15:09:47.236085
735	1	78c8625600f95abb9b26bc31224e9b69d327ceaa80b84824e10167728dc7175e	2026-09-10 15:25:12.591848	2026-08-11 15:40:24.536812	2026-08-11 15:25:12.621048
736	1	7374b033c265be455b805ed7dea628f0dbe449874b07361a05d386b0255833de	2026-09-10 15:40:24.537925	2026-08-11 15:56:13.191386	2026-08-11 15:40:24.546253
737	1	4d43bb7daf86ec3fdf60f5416074ba06fe9631e7ab89e1ea5855066445a7d47f	2026-09-10 15:56:13.192654	2026-08-11 16:11:28.88149	2026-08-11 15:56:13.210095
738	1	23dfccb7b69bbf3b39eb115d879a225c6535cdaf8d553313935f974185db2982	2026-09-10 16:11:28.881855	2026-08-11 16:26:45.337232	2026-08-11 16:11:28.895534
739	1	05f53b5232ad05ae54fc9e41a1079c94c28293e257216a29722fe831d581d065	2026-09-10 16:26:45.341372	2026-08-11 16:41:55.754008	2026-08-11 16:26:45.394918
740	1	0e349174c1c632595991b6d1228623617296db0aa786f6275fb221d4ab7a2a40	2026-09-10 16:41:55.754372	2026-08-11 16:57:09.768875	2026-08-11 16:41:55.785367
741	1	1f3151686490475ed7db82cf30fcd6ca7f969bac754af509341d02c104295c38	2026-09-10 16:57:09.770675	2026-08-11 17:12:28.046971	2026-08-11 16:57:09.782364
742	1	ac1bd6bf82249aecc6262612add935ab1adf148dbe5d4ca386a70a06a22a096f	2026-09-10 17:12:28.049695	2026-08-11 17:27:48.948689	2026-08-11 17:12:28.055638
743	1	0b70c3f607ce2a08c2d88d168f6f85e6c3f4549778a38995c38e522f0e7ee7ef	2026-09-10 17:27:48.948954	2026-08-11 17:43:04.507465	2026-08-11 17:27:48.969987
744	1	a26dcd6f12bafcbd9076e82ca4147f5c300dedcb5e004704301fd970ff1018aa	2026-09-10 17:43:04.5077	2026-08-11 17:58:17.293786	2026-08-11 17:43:04.511412
745	1	c8938f9b0bc9507ec272a9c90d0e1ef1313fa8a1643f45e481cea43aa127d9d2	2026-09-10 17:58:17.293888	2026-08-11 18:13:34.317586	2026-08-11 17:58:17.295267
746	1	2098c4d6309e08a595c84f985ed412a56447834a6cb556fd0006a6ff9945de74	2026-09-10 18:13:34.318035	2026-08-11 18:28:47.479736	2026-08-11 18:13:34.327203
747	1	3e7abeb86c6cab3c57a475363c3880434a4f1ede3457c3884645d9ff6167693e	2026-09-10 18:28:47.480194	2026-08-11 18:43:59.347708	2026-08-11 18:28:47.486204
748	1	eccb8532d78c532670e86cb0498dd3c959f82bfcba2f8747345730292c20461f	2026-09-10 18:43:59.347908	2026-08-11 18:59:15.365699	2026-08-11 18:43:59.350322
749	1	71256f074a49cda8e2a949e9e724a330b2a1e720701203181feb668f6018b47c	2026-09-10 18:59:15.373013	2026-08-11 19:14:27.233721	2026-08-11 18:59:15.406914
750	1	abf3edc81226259437dae89fb189e7955953528aa153363d519f9be3d95a1771	2026-09-10 19:14:27.234018	2026-08-11 19:29:41.770103	2026-08-11 19:14:27.239363
751	1	abe8e5f0156da559759ff27df28673d0a3a8111641f1e2ad3ac631d4be37f166	2026-09-10 19:29:41.770386	2026-08-11 19:44:56.190061	2026-08-11 19:29:41.775506
752	1	a9909d693b4ae1908f36e4b13baced685755b562b806a083ba774b1efd3c248e	2026-09-10 19:44:56.190322	2026-08-11 20:00:11.208997	2026-08-11 19:44:56.19701
753	1	6b4033a715ea2debbc0c1bbe44935634b8a5552128f5e52cf3d6248ea0a555da	2026-09-10 20:00:11.209751	2026-08-11 20:15:24.927487	2026-08-11 20:00:11.219695
754	1	0c4e2410c977f8ae7facefa7c85ded0ae7f36a12cd343991bb4ffd1c08ff4f57	2026-09-10 20:15:24.927688	2026-08-11 20:30:39.417505	2026-08-11 20:15:24.930603
755	1	b357da72e393549ce70aa57a15dd28d1440d8cd2f19d04a8a5fb0f6867f5cbd6	2026-09-10 20:30:39.418491	2026-08-11 20:45:53.275635	2026-08-11 20:30:39.419874
756	1	dea7c18023648057253aceee7627cbda41fca19908a107aabfb33fac1a58010f	2026-09-10 20:45:53.27589	2026-08-11 21:01:06.204952	2026-08-11 20:45:53.32437
757	1	9cd145c1936f4177549c26664c6f37641cb85b3837234fda130128529bcb06cb	2026-09-10 21:01:06.20508	2026-08-11 21:16:21.174187	2026-08-11 21:01:06.209007
758	1	e2b6186b278ad7f704be1257ac972d3ef75318116e343ba6df56b99911ba9b7a	2026-09-10 21:16:21.174796	2026-08-11 21:31:36.19435	2026-08-11 21:16:21.179423
763	1	1d5df3fefe368ac86df58b16cbc04d46067e98876969a8f727ef04fdd565c41f	2026-09-10 22:32:34.754781	2026-08-11 22:47:49.988879	2026-08-11 22:32:34.773681
768	1	c0be4ac87447879c9de2e82fdf7fda516541d1c4e44b5c2216629087bcae2b07	2026-09-10 23:48:47.367797	2026-08-12 00:04:02.294036	2026-08-11 23:48:47.375679
771	1	75611d02f9f338f01c60e50fc40542242df8991f7812ca5ce3595653b9ff2be3	2026-09-11 00:36:38.897069	2026-08-12 00:52:22.661401	2026-08-12 00:36:38.901802
759	1	e056ab6c17308c4b447a1c9a6d71837c7a9e2e98c0143836330e9efd3311ce96	2026-09-10 21:31:36.194517	2026-08-11 21:46:50.369908	2026-08-11 21:31:36.197508
764	1	85f29fdfdc7e2f66bdff6b9e0742a8a71b9b372834d1b319c64dc03ddebfb531	2026-09-10 22:47:49.989041	2026-08-11 23:03:07.707124	2026-08-11 22:47:49.993062
769	1	25e815907575c67189cdbdb7488426de086144c5efa785bb301534c6b01d1fc7	2026-09-11 00:04:02.294398	2026-08-12 00:19:15.785351	2026-08-12 00:04:02.30102
772	1	9285e95ed30b07a6c9bf097877c211212a3ed6687e207b00ea7265b0f515875c	2026-09-11 00:52:22.66239	2026-08-12 01:08:22.213541	2026-08-12 00:52:22.687395
760	1	ad77b34abc9288f01f15d7c174e66d4e0a1c3542a20f9270a494f33c8ab8f8e9	2026-09-10 21:46:50.370081	2026-08-11 22:02:05.748722	2026-08-11 21:46:50.372689
765	1	d4403f15e5fbaa646a2b0d6c4cab0bb45607e8a5ff0ced107c843548326a3872	2026-09-10 23:03:07.707355	2026-08-11 23:18:19.501033	2026-08-11 23:03:07.710899
770	1	2c81ccaf95b2d49c7d884ae2386f5f8f15d743801a981751ba1fab197c26b877	2026-09-11 00:19:15.786034	2026-08-12 00:36:38.896688	2026-08-12 00:19:15.834732
761	1	005d07efc94647e814f6efeb69daeab145e192930348d7230659c1a91b37a8b1	2026-09-10 22:02:05.748964	2026-08-11 22:17:22.023103	2026-08-11 22:02:05.75288
766	1	b864b17b0b698fe25746e521b7b0de9cf8b0f48279581dbe6d1f64704bd295f7	2026-09-10 23:18:19.501547	2026-08-11 23:33:34.456007	2026-08-11 23:18:19.505332
762	1	8f1a008da233672b18173f289cad43ea1f3ebdcbfb30ecbf62f824ec60168482	2026-09-10 22:17:22.023311	2026-08-11 22:32:34.754325	2026-08-11 22:17:22.035777
767	1	5472a884437d00891e78cec32af764ee395cb601969587df30ef6e3cb2428c49	2026-09-10 23:33:34.456464	2026-08-11 23:48:47.367521	2026-08-11 23:33:34.466098
773	1	fe8c2e824b3286f13ecaa509358564ec6e5e0b9b1e39c13b9ae60179eac3206a	2026-09-11 01:08:22.213764	2026-08-12 01:24:04.227105	2026-08-12 01:08:22.219967
774	1	fa5921bcdd2772f78cbd3de06655eda7453a8a98a03061074385fc406f13dc9f	2026-09-11 01:24:04.227387	2026-08-12 01:39:19.160116	2026-08-12 01:24:04.243216
775	1	2bc4994e3b996c636487ca66b1b59ba9d3dcd0a802db5f498b41938fd3c8003c	2026-09-11 01:39:19.16039	2026-08-12 01:54:22.263142	2026-08-12 01:39:19.167704
776	1	f19b69750ccda0d640a7cf3d3eb4917027e3468715af715e32860582c4cf5db9	2026-09-11 01:54:22.26326	2026-08-12 02:10:22.255976	2026-08-12 01:54:22.272099
777	1	b0d65c9eb3f80cd37b86c33d6b5fd69416a69a84d2eb6755011991a8bdb3fc7b	2026-09-11 02:10:22.256577	2026-08-12 02:26:22.084743	2026-08-12 02:10:22.266787
778	1	9d6ad85fb19595330b15893119f76995d6c38f6b64bcc0fc510e03604945bc53	2026-09-11 02:26:22.084833	2026-08-12 02:42:22.234863	2026-08-12 02:26:22.088673
779	1	8f2523e82894b6e0deeb6c4acaf5aa148ca8f84d2a60a85fcbc0854ab825f396	2026-09-11 02:42:22.235179	2026-08-12 02:58:22.247979	2026-08-12 02:42:22.242263
780	1	fa0cb7fca3069d0070d23bd4eac7fadf6bf6bc0d15fb813423d184824b3392c8	2026-09-11 02:58:22.249016	2026-08-12 03:14:22.216484	2026-08-12 02:58:22.255687
781	1	f9635e2205072767b70614cc7087d5cff6e1e4f0f0c8a8e5c53b6ba144394c24	2026-09-11 03:14:22.216643	2026-08-12 03:30:22.286166	2026-08-12 03:14:22.218463
782	1	bd3f6d23bdda00551125b3ad59f1732579cb2c58e88335d23105dade9bb274bc	2026-09-11 03:30:22.286277	2026-08-12 03:46:22.284492	2026-08-12 03:30:22.289815
783	1	6b181fbc94c90c806b6d4e92c8eee31609abfb298f6ac11b8bb437055aaaccd0	2026-09-11 03:46:22.28463	2026-08-12 04:02:22.379621	2026-08-12 03:46:22.28794
784	1	3ace2a025a3b55a3732ce5baaf0845718c17338b38c3a3d31f4cd8eab638f967	2026-09-11 04:02:22.380147	\N	2026-08-12 04:02:22.385452
785	1	a1586f967fcb41874f83c743c7d74ba34d7a961ed32c159a92dff5ed06ecab71	2026-09-11 04:44:14.813822	2026-08-12 04:59:17.942999	2026-08-12 04:44:14.838981
786	1	64be3441324f52d8fb2fef89176bc3a21ac94dd3f63ca574d74d1510b617e5b8	2026-09-11 04:59:17.944015	2026-08-12 05:15:15.089027	2026-08-12 04:59:17.955979
787	1	711f11513b1ae14663f60f06a497ee5a6e090d019354d39254797d9852f51106	2026-09-11 05:01:49.260528	2026-08-12 05:17:22.218443	2026-08-12 05:01:49.270484
789	1	a09d873c91a3d1452a1ae45bddaee327b0772fac81bf65f4858499c0e32bc454	2026-09-11 05:17:22.218645	\N	2026-08-12 05:17:22.22087
791	1	d6cce1d93c820a20ca9855f24335d1c7e6ab90a5bea1ea3d9464edc9d8398e16	2026-09-11 05:28:30.144373	\N	2026-08-12 05:28:30.148146
792	1	07829c40eda5857c3e0360f95b8a8eb4d70134b906a091adf4c2b74a44df7a68	2026-09-11 05:29:56.557771	\N	2026-08-12 05:29:56.561066
788	1	987c8d4f251af1c0a921236ee28f872e7ccfec574a7e274a78a032347f2b4b18	2026-09-11 05:15:15.089271	2026-08-12 05:30:17.151491	2026-08-12 05:15:15.095603
794	1	f0f331bbcd8b867b838039e2f90d5a1744611f060d14e835db523d0b2d317342	2026-09-11 05:30:58.768163	\N	2026-08-12 05:30:58.778677
793	1	f366fad749ebf112781452c1b87b824d3794337483c9b1d18360a23aa946930a	2026-09-11 05:30:17.151757	2026-08-12 05:45:25.452915	2026-08-12 05:30:17.16134
795	1	c786ffcb7a69459c78d14640d74355908c5033caa4387d3959a2e3f89080d2d1	2026-09-11 05:45:25.457623	2026-08-12 06:01:13.100218	2026-08-12 05:45:25.525053
798	1	35db60a69059bd6800e2ef9c6f5c7a70a0f124685d42ee5071295a60127d1fd2	2026-09-11 06:07:44.856363	\N	2026-08-12 06:07:44.894274
799	1	e602cfea4ed3c5247cad81501b0a686d88de08b1a0c0f72867c711f232d08710	2026-09-11 06:08:57.557123	\N	2026-08-12 06:08:57.589604
800	1	619929facf10fae69e371d4a1c01d7c998522399434c974e85eee64228b9e57b	2026-09-11 06:09:46.995091	\N	2026-08-12 06:09:47.01202
801	1	d17508bcdcebeeddecd836f84912e6605b454e8717e9b2ab86042d206f2778a0	2026-09-11 06:10:58.929727	\N	2026-08-12 06:10:58.946619
796	1	0e8af479c6eed628c9da0620e155bffe330ff7f12f445f1eedf73b3b1da37cd0	2026-09-11 06:01:13.100531	2026-08-12 06:16:22.468337	2026-08-12 06:01:13.102917
797	1	a2a57238107e3a39a7aab935ea349a258b14d695b0f03c8b7eef0a753899c92e	2026-09-11 06:04:00.793272	2026-08-12 06:19:04.555711	2026-08-12 06:04:00.802904
802	1	c84f5abedcca8c829fe27e248d38c5cda9aa4d1c7745dc6acf1bd64d9701b83b	2026-09-11 06:16:22.470169	2026-08-12 06:32:22.316582	2026-08-12 06:16:22.475345
803	1	d275ba187fdf25a6d3b7e6ec2a309bb9ab753db7a88b0dd8b78f1299c39d16ab	2026-09-11 06:19:04.555919	2026-08-12 06:34:06.072942	2026-08-12 06:19:04.560833
804	1	5058a95880bf723dfbcb59a2a6ea04da784e7f171cc5f0272de8965d793a9954	2026-09-11 06:32:22.3168	2026-08-12 06:48:20.337908	2026-08-12 06:32:22.320984
805	1	ecb1037a9df3da72ebc0464f06a8891b5b9a986b8e75d5e932a6136c48afd37a	2026-09-11 06:34:06.07314	2026-08-12 06:49:19.99027	2026-08-12 06:34:06.078937
806	1	e60b09fe353d1f0b6faa2b2d82693eba2241b0cbd9e791724cbd2528f05b1ab8	2026-09-11 06:48:20.338188	2026-08-12 07:04:18.1445	2026-08-12 06:48:20.346507
807	1	ebefdfca4e5a509e864823c55ff95d02f53c5771a161dd0bce4bfe4452a092f3	2026-09-11 06:49:19.990992	2026-08-12 07:05:18.106552	2026-08-12 06:49:20.010247
808	1	aa54f44a160006ec91783074c255b9fdfeef357603efc15ae030c58bebbbcfce	2026-09-11 07:04:18.145286	2026-08-12 07:20:18.229309	2026-08-12 07:04:18.155869
809	1	a01a0e352672decec56a99b7b234d9ac7291621a2ffa38f61170dda0ff156eef	2026-09-11 07:05:18.106756	2026-08-12 07:21:18.196076	2026-08-12 07:05:18.11477
810	1	1a77b9140b4a24ac3e52b7694b8cdf83472524401f5a8e66fd007d894102cb62	2026-09-11 07:20:18.229415	2026-08-12 07:35:22.431746	2026-08-12 07:20:18.235137
811	1	88a82f0f252cf61383b28cc3e69d2f782572d0e88622d6f3a60ede5247498e4b	2026-09-11 07:21:18.19635	2026-08-12 07:36:22.376711	2026-08-12 07:21:18.198554
812	1	b8043bc7d7c7761ad580ed318f1cd29b564e776da788621e7e8c9f1c651efb22	2026-09-11 07:35:22.432112	2026-08-12 07:51:22.413663	2026-08-12 07:35:22.437935
813	1	e167ac6692330d9b0d12a57d0b4de3aaa60d5e5f4cbc483c4bdfc3a3052b3574	2026-09-11 07:36:22.376804	2026-08-12 07:52:22.575699	2026-08-12 07:36:22.379188
814	1	0da2276c844d2270165d49b46c0f3222af036ca21422632d324bb76442c553ea	2026-09-11 07:51:22.413836	2026-08-12 08:07:22.488785	2026-08-12 07:51:22.418971
815	1	94993ad7361192483d1dad7cb66a795a1473df9b38fdbd80f6fac9620b2b594f	2026-09-11 07:52:22.576193	2026-08-12 08:08:22.389278	2026-08-12 07:52:22.587865
817	1	28974d4a2087318bbf43aa4e6eed2b08bc9eb7589866aa431937e2eb3315f506	2026-09-11 08:08:22.389832	2026-08-12 08:24:23.753062	2026-08-12 08:08:22.393422
816	1	c791b56fd91f07f19081527d5937bd8c94adc24336711e324275da52631230f7	2026-09-11 08:07:22.488965	2026-08-12 08:25:23.062356	2026-08-12 08:07:22.499182
818	1	fcc3b39b0c251977a182a59f7a91aa75402588cf0e718f7b913968d13a0f3f9f	2026-09-11 08:24:23.756278	2026-08-12 08:40:12.325537	2026-08-12 08:24:23.848209
819	1	0d224d5ccf914d5b4ac574646737525583576b87236b4cb680582a4b74210407	2026-09-11 08:25:23.062626	2026-08-12 08:40:25.954439	2026-08-12 08:25:23.070485
820	1	d022c136395168790920c58c3bec5214620be7d166f256cd29e67114aa462770	2026-09-11 08:40:12.326603	2026-08-12 08:55:22.494409	2026-08-12 08:40:12.34552
821	1	1330c6666597aa281c3291803b9584fa05ab43176ce4afcd6cc3a6a205adbfa8	2026-09-11 08:40:25.960413	2026-08-12 08:56:22.557171	2026-08-12 08:40:26.118461
822	1	4a5ccfadb831b895ed000d2db91515379ba10103c62cbb5ebafe51f83f51e580	2026-09-11 08:55:22.494949	2026-08-12 09:11:22.468188	2026-08-12 08:55:22.503617
823	1	68b16bce2c9217093c389fbfbd07355023820810121e5c8b247d7cb991d98078	2026-09-11 08:56:22.557281	2026-08-12 09:12:22.383152	2026-08-12 08:56:22.562184
825	1	347167b9cf74f05f5f6c4dcd31166fe6ede44f5264a2520782ba92eb687cfad7	2026-09-11 09:12:22.383265	2026-08-12 11:10:28.219715	2026-08-12 09:12:22.386587
826	1	0bc8a1a5343721784bc786e486f20851e02188a8c0b595b508f51ca100bf90a6	2026-09-11 11:10:28.468251	\N	2026-08-12 11:21:48.590837
824	1	8940cfbb5c374e29244b6b38f43a94e5c2b4d3d658f92ab99d23ed064a98edb3	2026-09-11 09:11:22.468675	2026-08-12 11:58:51.185413	2026-08-12 09:11:22.472251
827	1	8fde87a51b0a967a53cea095f738c731a5c6c41e1977ee9e400f419a2ef79b59	2026-09-11 11:58:51.186335	2026-08-12 12:51:05.034021	2026-08-12 11:58:51.193184
828	1	119cbf16d73fa4509016e5d71c11a615c64d8359d97f22b71caa912f5ac50924	2026-09-11 12:51:05.05116	2026-08-12 13:09:51.196001	2026-08-12 12:51:05.119672
829	1	87df992e77daec0a39cc8f862c9e95e673934c9d5ba900c799fdf2720bfe479f	2026-09-11 13:09:51.196389	2026-08-12 13:25:03.42064	2026-08-12 13:09:51.199305
830	1	4cc2ce9dea8f308df940aed70f10f3bce75c1fc264431e1e5e6129db7fb48e83	2026-09-11 13:25:03.421777	2026-08-12 13:40:32.538858	2026-08-12 13:25:03.431165
790	1	86e35ba2fd07b6f6d2aad795044ecfff4e1ba81b19036c06eb4a135802ecdbed	2026-09-11 05:24:29.505406	2026-08-21 15:05:02.103322	2026-08-12 05:24:29.508287
831	1	4ecd3e4ac0e0742381d257e3884dd14a8abdeb4ef7fdc94e2633c33763d91c9f	2026-09-11 13:40:32.547979	2026-08-12 13:56:27.804255	2026-08-12 13:40:32.62292
832	1	df48ca681e084171138f1ddb77a9d0bbc37ec782e4dc4ef3aba9b44ed451d6db	2026-09-11 13:56:27.804475	2026-08-12 14:11:32.918479	2026-08-12 13:56:27.816127
833	1	d0c42e7acf73499e9b2413ad7c09c3eb02b712f057bb613bbd1bc57180124ec1	2026-09-11 14:11:32.919109	\N	2026-08-12 14:11:32.934909
834	1	a409333fa03bcfe628ed2e18abc121b0a2929644942b06d6f2b88d58c26e1379	2026-09-11 14:14:24.461438	2026-08-12 14:29:28.410215	2026-08-12 14:14:24.466571
835	1	01ba7a5148cd75cfe52eb558d036264dc7885a937bf19dc29434570581fb2e45	2026-09-11 14:29:28.411339	2026-08-12 14:44:36.50986	2026-08-12 14:29:28.419873
836	1	ac276a14b770b7a3f9968b63491f7736e08dba138fdd3fa4590130644f7eb32e	2026-09-11 14:44:36.510556	2026-08-12 14:59:49.147459	2026-08-12 14:44:36.52014
837	1	0d4a51018fad7a1e9954f2fc7836829399ce375e78c2c6dcce385941283ddce5	2026-09-11 14:59:49.1476	2026-08-12 15:15:06.565004	2026-08-12 14:59:49.156863
838	1	1e3648e1672add0e8537653b8b04f10f57ae97a65cbed39cd7a585803730302f	2026-09-11 15:15:06.565296	2026-08-12 15:30:30.475555	2026-08-12 15:15:06.568764
839	1	58185cb504a55518f323d2302e2ad2a4a16afdaad543e4bafe61669e6f4a4f11	2026-09-11 15:30:30.475857	2026-08-12 15:45:48.733626	2026-08-12 15:30:30.487926
840	1	f52301c442efb8227945d599f6805fbfcda70c1968fe0a23176598193462fbec	2026-09-11 15:45:48.733846	2026-08-12 16:01:12.926322	2026-08-12 15:45:48.739141
841	1	59800d5e01b6e3c4b6102aac6f3a822479d0794c0ffbc0df13dcf49ae4dcc2e6	2026-09-11 16:01:12.926726	2026-08-12 16:16:37.224174	2026-08-12 16:01:12.930355
842	1	92212a3ce3ecd3e2cfe2353f4f12efdadbdffa077b343138d2b16b1c7c689236	2026-09-11 16:16:37.224642	2026-08-12 16:31:56.574247	2026-08-12 16:16:37.232695
843	1	943557a8adb835582a34299627f87c7310db58506883edf446d4dd422952ad2f	2026-09-11 16:31:56.574386	2026-08-12 16:47:13.480329	2026-08-12 16:31:56.579979
844	1	6985ba361a7499e8f4a783badc0305f303a06b6e19a4a1bb2649b496f1ece2be	2026-09-11 16:47:13.480544	2026-08-12 17:02:34.96664	2026-08-12 16:47:13.485081
845	1	23d0d05289d207207be1664cc3409729d1af43123580563105242844a96dd916	2026-09-11 17:02:34.967	2026-08-12 17:17:52.632498	2026-08-12 17:02:34.971119
846	1	2e04ee2c08043815083b564a4fb7ca1ac78c5188ca9e161b21b80c33fd53831d	2026-09-11 17:17:52.632744	2026-08-12 17:33:20.856485	2026-08-12 17:17:52.635803
847	1	e133a7727d601464361d893511abde3279645c646c3e460dd08d8acfddc0f3e3	2026-09-11 17:33:20.856769	2026-08-12 17:48:42.060261	2026-08-12 17:33:20.862266
848	1	772a1116d72902397abd510312bf27f3f0c615bc1fc60fd714db141d229d215d	2026-09-11 17:48:42.060477	2026-08-12 18:04:05.918377	2026-08-12 17:48:42.065597
849	1	9b0cd4d0cd7030305e48e08283ec9074fd40d470c3f4e3f2bcfd9c371362cdca	2026-09-11 18:04:05.921401	2026-08-12 18:19:24.359968	2026-08-12 18:04:05.94521
850	1	60307c514ed5ab86b11023a43a837c8d5f05cfd75ccff1f7d50d305f7db9ec1d	2026-09-11 18:19:24.360246	2026-08-12 18:34:44.370375	2026-08-12 18:19:24.366856
851	1	c2bb3dc0b230e4c958c7ca48245c207d878aae6c68025b56ed1c89706d752cca	2026-09-11 18:34:44.3766	2026-08-12 18:50:07.261917	2026-08-12 18:34:44.409454
852	1	c1868160933da08162e5a6ea2b1172b66f045ae31173240fc43c0b955a0a470e	2026-09-11 18:50:07.262675	2026-08-12 19:05:24.034841	2026-08-12 18:50:07.272786
853	1	ae50572500baa22070d63c754bb48c7d88516391d3fa4ef6c4f3aa61dafd7a92	2026-09-11 19:05:24.038127	2026-08-12 19:20:49.946715	2026-08-12 19:05:24.098026
854	1	bf4cf5c14c973bc9061dc6003bbb01e049b939ebc29333b8729a5232cbe90422	2026-09-11 19:20:49.947259	2026-08-12 19:36:13.611946	2026-08-12 19:20:49.953507
855	1	3b147c5eb1ffada1b61d28df83d8c6b6984db48886a228631555d465d5e7b765	2026-09-11 19:36:13.612265	2026-08-12 19:51:33.935737	2026-08-12 19:36:13.617975
856	1	a3a085d9e79df846d8dc14ed969aa40b9d679555787b1744961bd72be3de4cc8	2026-09-11 19:51:33.936965	2026-08-12 20:06:59.99927	2026-08-12 19:51:33.943946
857	1	2f0e7ebef12c9e7007352b9f549335f5417b062837af4e78ba7ba8585b4230dd	2026-09-11 20:06:59.999375	2026-08-12 20:22:31.823503	2026-08-12 20:07:00.00303
858	1	979a29780ba76ba2609388683267ae02f7aef56dad687a2849d81abf0cd08461	2026-09-11 20:22:31.829087	2026-08-12 20:38:01.023855	2026-08-12 20:22:31.93812
859	1	9b92049adb6f79b511a4cf79ba6adfdec7e6e7b844f2332f23521d4abc7a4f22	2026-09-11 20:38:01.024116	2026-08-13 00:59:42.988962	2026-08-12 20:38:01.032077
860	1	b94ef5799f5a8024df762373c9a268307a62c4310cc6a2cac95044ee40eaa59c	2026-09-12 00:59:43.050959	\N	2026-08-13 00:59:46.592758
861	1	d194b5133bc75aabf2f5cf017de930b7d20ab97e6c10e01529c254c03c03cc97	2026-09-12 08:26:34.843135	2026-08-13 08:42:10.720306	2026-08-13 08:26:34.866796
862	1	f08996d84defcd5dc35e417d0d5ab940967d4eeb55e2d45f221a23b4dd6db932	2026-09-12 08:42:10.721618	2026-08-13 08:57:15.314424	2026-08-13 08:42:10.737251
864	1	b8d080b15a3f0e3735975480e566b535e7c97b8f04d500882387c4a63d41573d	2026-09-12 09:02:56.684148	\N	2026-08-13 09:02:56.685271
865	1	495967411d044ce0ee844441f04cfd3eacc6e062c40f79b45a8ea09fd149ff3d	2026-09-12 09:09:39.214826	\N	2026-08-13 09:09:39.216464
866	1	c9b7db2c5f26b4f6c276e290bbdd4abbcb7c9cb7ae7c102001b192ecdc5a22d0	2026-09-12 09:11:29.278172	\N	2026-08-13 09:11:29.282898
863	1	929cc966faab27e855504ab4a2775dfeb5e01ad9915add23f4a845bb63507952	2026-09-12 08:57:15.314921	2026-08-13 09:12:20.657084	2026-08-13 08:57:15.322951
868	1	95eac16b15d1c7e2d8464f52b055f5bb22ba8feeaf3741ba32124571492b11f3	2026-09-12 09:18:21.170849	\N	2026-08-13 09:18:21.172509
867	1	c22f93673b2085bd64e43db17ef8700a17da44d92d4ce6eacdc63a6a1c374174	2026-09-12 09:12:20.657345	2026-08-13 09:27:48.979322	2026-08-13 09:12:20.663367
869	1	084e34c276d86b4d1b7ea3c7f3e14ec95dc9aab5a6c52833dd4b367ed93eada8	2026-09-12 09:27:48.979437	2026-08-13 09:42:59.650939	2026-08-13 09:27:48.981036
870	1	4c263bf2ebb3867e0f643bc0be257c8dfa5bd43f90c579bb7971625569042874	2026-09-12 09:42:59.651632	\N	2026-08-13 09:42:59.654218
872	1	1ff5dce117e567c3e9542396b98484c44e00e954872870a9e48f0408907abea6	2026-09-12 09:47:28.916082	\N	2026-08-13 09:47:28.916652
873	1	a325a65c1a96bf3c488b8e0b8ad66f55370f1692dee9957d08f5f63f9893b477	2026-09-12 09:52:35.50697	\N	2026-08-13 09:52:35.508589
871	1	326a24f86ca3337292d6d91f03d1efe2ade47ccb452c177fafe36447c9d26abd	2026-09-12 09:47:07.844822	2026-08-13 09:53:29.126226	2026-08-13 09:47:07.853381
875	1	e04226dfcc4322c36323b40cd84e786444f2f632bc438aa38daf78a02cba34a3	2026-09-12 10:08:03.172946	\N	2026-08-13 10:08:03.218837
876	1	2db9d1ca1a30a8ffa750c53f79d78bff40b954d3869f8562fb0055ea9be026f6	2026-09-12 10:17:07.286876	\N	2026-08-13 10:17:07.291289
877	1	a122e53818509303c786b356e523b08df63281d88701f2167b6a13aebe1f7eca	2026-09-12 10:17:21.351903	\N	2026-08-13 10:17:21.355847
878	1	cac34c82c105e91b9cb134d888023a9c6603a8c2d0694400cf65d4df6163a5c9	2026-09-12 10:19:29.935389	\N	2026-08-13 10:19:29.938929
874	1	ba095579ed0b9202d8d99b8ee9164a2db58bf0156b6c33cf259bc9ecfcb20598	2026-09-12 10:04:07.207617	2026-08-13 10:19:30.500059	2026-08-13 10:04:07.210538
879	1	ece55860db5e1ec0bd32271c0b94917182d8137c8476501e1bf3fd1f1bae3778	2026-09-12 10:19:30.500081	\N	2026-08-13 10:19:30.500639
881	1	dc7b7bc28d7b09b75cb01ed10e7efc21c01ab76f047edbb937d908a0517effa7	2026-09-12 10:31:53.348608	\N	2026-08-13 10:31:53.349937
880	1	3db4fabcdc5b5382f01e63b2d3917e6e0dd34ba8160936b9c354db365f073780	2026-09-12 10:29:09.140701	2026-08-13 11:06:11.175068	2026-08-13 10:29:09.1462
882	1	558caf13e7a563e0a01ba5ad6cf708e9b020b6f7d77392aa4ab0d279546779f2	2026-09-12 11:06:11.225249	2026-08-13 12:21:24.737844	2026-08-13 11:06:12.240239
883	1	0dfe6a6612f948276e643eef6f6c942622b341eb9d4a6f346c8b55bf8418fdd2	2026-09-12 12:21:24.930934	2026-08-13 12:36:36.614267	2026-08-13 12:21:25.238338
884	1	4d103a32d4eee70bc8920864c4de4a3227771d55fd4ffa3888be891270604963	2026-09-12 12:36:36.638048	2026-08-13 13:07:09.374412	2026-08-13 12:36:37.015477
885	1	16a0bba92f48b806629ed6b5b2140b9f1fc4795a0cdce8b78e2de59134a74738	2026-09-12 13:07:09.397166	2026-08-13 13:23:14.09538	2026-08-13 13:07:09.673176
886	1	b683df0d6e9d1050a534c3b1778b40f9fc77a401d04f40cd7ce850b2378a8c2e	2026-09-12 13:23:14.096706	2026-08-13 13:38:26.877961	2026-08-13 13:23:14.104851
887	1	e88cc67d15d5a9e4eea7a82a8ad4917c139dc2fe777889a1b8e541a48b106650	2026-09-12 13:38:26.87828	2026-08-13 13:53:47.487646	2026-08-13 13:38:26.887402
888	1	200b33dbda79270fe7fefe902bc83ddb57afb28be5b773bec8f552a199d4f5f6	2026-09-12 13:53:47.487834	2026-08-13 14:08:54.587425	2026-08-13 13:53:47.492747
889	1	da297c42f87b630c8c669aa4fef251d2bbd7f8662545c37b0fa822de08f3c628	2026-09-12 14:08:54.587512	2026-08-13 14:24:10.465831	2026-08-13 14:08:54.589606
890	1	15cb454eba654c84220f0f3beb2733bb94d9d63347b572b9583ed99d51d13245	2026-09-12 14:24:10.465956	2026-08-13 14:39:13.668855	2026-08-13 14:24:10.471107
891	1	672c900d70b106a8215866c0a310d54514769f94e99658f21ac4e2664f83804a	2026-09-12 14:37:56.641863	\N	2026-08-13 14:37:56.647479
892	1	c160858b7a1b568c8a9989dcbfdfd2d4a3437cfe639c9e4345972d4769c95bb4	2026-09-12 14:39:13.669	2026-08-13 14:54:30.277667	2026-08-13 14:39:13.67101
893	1	27d47ff5cd2f35d8565dc39897232cae86e763b43e31accb15327a52fdf6a823	2026-09-12 14:54:30.278898	2026-08-13 14:58:56.791885	2026-08-13 14:54:30.282701
894	3	a8432df67246b63c296982e312b88296a763c1b5f5cbe72a9e79288991b87325	2026-09-12 14:58:59.978152	2026-08-13 14:59:18.662978	2026-08-13 14:58:59.979073
895	3	6ee6e0ca4c52d6cf2f6948546f3e297c37304d417e101bf70d893c60d42856c1	2026-09-12 14:59:42.7701	2026-08-13 15:14:43.220004	2026-08-13 14:59:42.771086
896	3	b957df7d1c71a2b6bc5480758470ab0b104da4219b02a09778ae231162113ce2	2026-09-12 15:14:43.220109	2026-08-13 15:29:56.945655	2026-08-13 15:14:43.228291
897	3	2df9f1e85bd38c9df4d82c06dfa6b7a8749538e1577172e103ae21d5a12eea97	2026-09-12 15:29:56.947405	2026-08-13 15:45:12.874036	2026-08-13 15:29:56.954668
898	3	5c9f9bf9d50e8b4b0917579c7361a22066d99a25ae92f3f8b70cfff22fb6b84d	2026-09-12 15:45:12.875448	2026-08-13 16:00:27.605675	2026-08-13 15:45:12.885428
899	3	b9ef5e368ea69ab5c3892c6ee6b0519f0f91db686aa0b9bb3b6e1f603cc77238	2026-09-12 16:00:27.606056	2026-08-13 16:15:47.706675	2026-08-13 16:00:27.611227
900	3	194e976a612120fa5c0c32199142051375477b33fc39774eed1490821066ca11	2026-09-12 16:15:47.706831	2026-08-13 16:31:05.552333	2026-08-13 16:15:47.710781
901	3	ba257fd6a9d64f74f03ef5b7b6ec7c796b10fdc528a1e907cb58162892ae7bc3	2026-09-12 16:31:05.552491	2026-08-13 16:46:25.566316	2026-08-13 16:31:05.554745
902	3	f8e956cfaabd7bcc29b82966eed72432369d8975bc7bccd5f40eaa9fc042990a	2026-09-12 16:46:25.566501	2026-08-13 17:01:37.821695	2026-08-13 16:46:25.571035
903	3	3596790f21c7afd9042e24df63e2cbcae8828894ea1809d54e90949f193047eb	2026-09-12 17:01:37.821814	2026-08-13 17:16:52.239651	2026-08-13 17:01:37.826921
904	3	e20462cbd151261cc5d4c1d20800118440781b2dc644df3dcb03cc57057c96cd	2026-09-12 17:16:52.240209	2026-08-13 17:32:10.105862	2026-08-13 17:16:52.248489
905	3	98691cb9f356204791e96116e9c727f6ed1bb7ca84102bb43bbcce9d19f6e694	2026-09-12 17:32:10.106052	2026-08-13 17:47:29.107151	2026-08-13 17:32:10.110303
906	3	f5bf01bfb8334ad4b3e8e47552d5721e6c248564f32d99cf8afab57346f1e744	2026-09-12 17:47:29.107293	2026-08-13 18:02:44.514178	2026-08-13 17:47:29.111405
907	3	4c59c34e8bbecb3fb6c0612ce4e3623794c1cf4fdfcd2f50c2cd136c201e04b2	2026-09-12 18:02:44.514321	2026-08-13 18:18:04.445685	2026-08-13 18:02:44.51595
908	3	b8b3a688ff2a033225c1dfda898951a110ff783d103aeacdc4f934ac7fab4588	2026-09-12 18:18:04.446176	2026-08-13 18:33:18.050646	2026-08-13 18:18:04.452975
909	3	e5e9de3da7f4a038314c5847b3f22fd712a2e9990c9c1db2dcce7e86df2cf9e8	2026-09-12 18:33:18.051035	2026-08-13 18:48:38.892416	2026-08-13 18:33:18.056588
910	3	4cd8cecb2cae5217b69bca41a4bdb01a8834dd363d77064f2b70f4615b1fe1a5	2026-09-12 18:48:38.893111	2026-08-13 19:03:59.391373	2026-08-13 18:48:38.904733
911	3	128d90b4c8d429519d94206cf762b4b61afce1e44ce2d325ed4432393d9a06ed	2026-09-12 19:03:59.392082	2026-08-13 19:19:13.563737	2026-08-13 19:03:59.399988
912	3	a37c1b1905ecad7b3c262729f10ff22d8531b7a296379112c29004ef97f3ea7e	2026-09-12 19:19:13.5639	2026-08-13 19:34:33.357502	2026-08-13 19:19:13.566233
913	3	355ccbaeec42aef9bb0bae1c36e10bfc8b54ab97fdde4b5a8916d17d81db91df	2026-09-12 19:34:33.357733	2026-08-13 19:49:49.774527	2026-08-13 19:34:33.368278
914	3	9ce0cc3b1d3e9c546ce1c58075e6d667d4f43480987647d5aeed14ff7a4546da	2026-09-12 19:49:49.774734	2026-08-13 20:05:06.479571	2026-08-13 19:49:49.776998
915	3	aa476e593f85baa613ad06547263d9c8ae58a2a883e73897365cdf3c3155dbec	2026-09-12 20:05:06.479762	2026-08-13 20:20:24.141904	2026-08-13 20:05:06.481638
916	3	369c5d6b9fc3ad87579aa81f7b61d872ff6c425582d0bddd8c92dde5bd6d7fe3	2026-09-12 20:20:24.142502	2026-08-13 20:35:45.853155	2026-08-13 20:20:24.149352
917	3	a4167e6fb5685d8a930dac667eaef767b9b29a544d85f09f99eeca833259a1e5	2026-09-12 20:35:45.853499	2026-08-13 20:51:00.511828	2026-08-13 20:35:45.857093
918	3	5b62093ccf182e5e54c5a7cbf498466638dc8a47a6a1c72f7e049b41d519ca69	2026-09-12 20:51:00.511949	2026-08-13 21:06:19.744683	2026-08-13 20:51:00.516616
919	3	1104d12a5072cb5f60601eca761c48bb6f5c1a0bf914650c236822e507352f27	2026-09-12 21:06:19.744841	2026-08-13 21:21:35.714075	2026-08-13 21:06:19.746937
920	3	d888b3c99cb3af1d8f69704fa7f6677b190a7408d6f742176b000af829e3c85f	2026-09-12 21:21:35.714232	2026-08-13 21:36:52.019062	2026-08-13 21:21:35.718558
921	3	598e53dba1d3bd28cf2499f06972dd16988503808e2856a8731a10696298b762	2026-09-12 21:36:52.019189	2026-08-13 21:52:06.651288	2026-08-13 21:36:52.020761
922	3	4761bc83472c1436e8259d1c761c16cd3e3a8ad77bd9eeabfd2617ae017aa9c8	2026-09-12 21:52:06.651421	2026-08-13 22:07:23.306328	2026-08-13 21:52:06.653729
923	3	bcab4ac5b6804fb3a1aa704d58d5e092271c3392c078d2537d7e34ecead09a4e	2026-09-12 22:07:23.306454	2026-08-13 22:22:33.380463	2026-08-13 22:07:23.309063
924	3	7a1bbe24ab816ba5d37939d5fdba5495c6b39b8d276ed588eb15832118d99f0f	2026-09-12 22:22:33.380611	2026-08-13 22:37:52.383614	2026-08-13 22:22:33.383763
925	3	9ec0095c1b1d2c335d45802fa4d6d6823e5fd0cae5bd51e729dcdae69cd1403b	2026-09-12 22:37:52.383746	2026-08-13 22:53:10.164505	2026-08-13 22:37:52.387045
926	3	1eac376af8070ab860014003ca3ed73a80ad77ab88ae223a403d3f41f478d488	2026-09-12 22:53:10.16474	2026-08-13 23:08:23.693825	2026-08-13 22:53:10.170652
927	3	9705728d4ef776ad043dae04892ba1a4df89020d6d5e68fcfb41b03c30da1808	2026-09-12 23:08:23.694021	2026-08-13 23:23:36.987494	2026-08-13 23:08:23.698401
928	3	a8fa344457564df05b264a9291f0660e1ca3ed222ba1b4fa366e2b9c7c766188	2026-09-12 23:23:36.987827	2026-08-13 23:38:53.471843	2026-08-13 23:23:36.991699
929	3	77c05b7cbc66d97f0bcc39db06b5cc88f10342e2415bc71cec4d113e3c6cadfe	2026-09-12 23:38:53.472128	2026-08-13 23:54:13.175462	2026-08-13 23:38:53.476589
930	3	0ccfda8a16617b1f895309f0559709526dd6cfdd76985db0feea922aeef059c8	2026-09-12 23:54:13.175595	2026-08-14 00:09:29.641266	2026-08-13 23:54:13.179483
931	3	4afaa6dddea93f8d5453c3a113d8afad0ee4505f73bdcc09e58d309794e2ed94	2026-09-13 00:09:29.641673	2026-08-14 00:24:44.634816	2026-08-14 00:09:29.645092
932	3	bea1f1c61ef0c7b98fd27a49c8118783aecc34b47c87eca755a06251af4fcd39	2026-09-13 00:24:44.635019	2026-08-14 00:39:56.072094	2026-08-14 00:24:44.638684
933	3	223354d6138cb537493604ba593b37efc3b29f3e0a58fe222a2f8da75c657594	2026-09-13 00:39:56.072224	2026-08-14 00:55:47.962095	2026-08-14 00:39:56.074112
934	3	b8f2399c9997bc1741a6dcc84e4537a9ba0deac2237b882cf46977b32a56d106	2026-09-13 00:55:47.962264	2026-08-15 14:16:44.638925	2026-08-14 00:55:47.97338
935	3	2a72884cb2b7a4e1add930d6fd0b01d02e8ac3c0b1878b2c01da028206f56219	2026-09-14 14:16:44.639863	2026-08-15 14:31:57.760724	2026-08-15 14:16:44.652025
936	3	ace174de18e2e2b00af0c3035d56305e446315390e0f74592d99e206acd6437d	2026-09-14 14:31:57.761268	2026-08-15 14:47:06.212713	2026-08-15 14:31:57.763117
937	3	31a1910d1aa45d42d1d946962f66b4d8b36765f6be45c350e2503c92d225979e	2026-09-14 14:47:06.214401	2026-08-15 15:02:41.864589	2026-08-15 14:47:06.220382
938	3	e770fa015a31477b32297aca27e16a1435f67702a3235001df35c6b1a8fc1651	2026-09-14 15:02:41.864817	2026-08-15 15:17:56.889244	2026-08-15 15:02:41.870628
939	3	a94de26c6bae19c8580361030c7562be3160f758ab8b9bf54a5a10c28564da02	2026-09-14 15:17:56.889447	2026-08-15 15:32:59.553333	2026-08-15 15:17:56.892427
940	3	ae83c0fe3c90b59792ffbbceee0da5ec24e0304ca6b641f7d9d6e145e03969a7	2026-09-14 15:32:59.554278	2026-08-15 15:48:41.888851	2026-08-15 15:32:59.556055
942	1	f3f4f3a4df183d971a438b411ced6738de4b51dade2de3e63f7bf7be81352b20	2026-09-14 15:51:52.096205	\N	2026-08-15 15:51:52.097918
943	1	5fa190811734bcece687b68be4f32d41f592a9b332878b3ebbcc6e521df1be00	2026-09-14 15:53:10.936859	\N	2026-08-15 15:53:10.937985
944	1	e39a7f773c0e76191699db1ed4961026265c32642f6ba450cb54378a12125ff8	2026-09-14 15:59:05.59008	\N	2026-08-15 15:59:05.596393
941	3	64740897938a1e6932cfb08c2e601f66efc18fa590a8f08ea7d1382d79a462f2	2026-09-14 15:48:41.889713	2026-08-15 16:04:35.874138	2026-08-15 15:48:41.892945
945	3	2be7ec0644b3dd332f09124f24a929a2b8e4d940f2eaef9a739eb55dd8462436	2026-09-14 16:04:35.874307	2026-08-15 16:19:41.970887	2026-08-15 16:04:35.877755
947	1	57ec848209ecdd1dba3cff3a716c6887bc98efc2f8a672076be5fc2161bd41f9	2026-09-14 16:21:51.556538	\N	2026-08-15 16:21:51.557587
948	1	62ed03d1eb5662f04812410f826b94b3f699bc2fe24f557a267ec13eeb87b814	2026-09-14 16:22:33.898028	\N	2026-08-15 16:22:33.89897
949	1	64560c3ca6a547ceeff23cc89541a657411a8807102b72dd7345fd9cc7955d95	2026-09-14 16:30:24.786564	\N	2026-08-15 16:30:24.797539
946	3	5c1b41bcca22f104da6bf6f5e6dda8434360563a4c80e58e4c0dd01451ed6e26	2026-09-14 16:19:41.971227	2026-08-15 16:35:11.94916	2026-08-15 16:19:41.975272
950	1	857d8c6474b452f795db97e2221c96b3241c835ecceac526887377cff9732910	2026-09-14 16:31:35.086245	\N	2026-08-15 16:31:35.087393
951	1	740dcd5d3b6f6410abc195d48c2635a99481dcdbd918d8c6c0ff3baef17f2f2d	2026-09-14 16:32:57.728065	\N	2026-08-15 16:32:57.730246
953	1	291b8e8218ac293e7d4e3c731590d1d5e1dc964ea1861f92c90c4d3cfba8d97e	2026-09-14 16:35:26.440721	\N	2026-08-15 16:35:26.442073
952	3	63a3b6f42be52ee3eb71d4709e8bede3b04ac30bd48d58218312790e55a1f6fc	2026-09-14 16:35:11.949273	2026-08-15 16:50:35.979757	2026-08-15 16:35:11.951422
954	3	4591983fb4f3ff6442428fcd02c62ac414a8f636d73b03f0848aa37d53f19039	2026-09-14 16:50:35.980967	\N	2026-08-15 16:50:35.986288
955	3	c3e429682892b7bd0d552206d1847dea312d814921df797ac29180a25bdeacaa	2026-09-14 16:52:55.408896	2026-08-15 17:08:03.077636	2026-08-15 16:52:55.41165
957	1	a0bf508e016f366e74e2d74e214ecc882efed21b7960d7bf21b949da2c0f2160	2026-09-14 17:12:37.493607	\N	2026-08-15 17:12:37.494559
958	1	abb2050a5c67d2b7b14c7299d2ad5b2dc90df44e3bb820b81d118263551f139c	2026-09-14 17:15:32.631163	\N	2026-08-15 17:15:32.632249
956	3	cb703284ab3eb5d3af627fdf661b6a23f07973fed048cf53c28f0f550a8c789f	2026-09-14 17:08:03.077784	2026-08-15 17:23:07.66452	2026-08-15 17:08:03.080493
959	3	fc0d517a36cdeabc436fa991db310d4516096147b6cde0ab500164e5c25597ba	2026-09-14 17:23:07.664683	2026-08-15 17:38:13.260537	2026-08-15 17:23:07.666588
960	3	288835e851e46e780652bb58273595991a52769386f6c79cf9054ab830362f5c	2026-09-14 17:38:13.260871	\N	2026-08-15 17:38:13.262583
961	1	dda3a07a585a773ba474766dbe346835cdd54efcc773ec5bb5b47270563a6904	2026-09-14 17:43:12.786153	\N	2026-08-15 17:43:12.78745
963	1	f1c4e27393cfccaa96cf9bb7b8f25cb58d5464cc80be95b5f908976993317a6c	2026-09-14 17:48:15.963377	\N	2026-08-15 17:48:15.964475
964	1	d2982516140b73af235d2005c496eb85de5064732765f814d442d7e02f468139	2026-09-14 17:51:10.51941	\N	2026-08-15 17:51:10.522846
965	1	713cda9f35a76667ac1d96aeb7ecf4c7f3a5e605e4938f2e1c31c032604d878e	2026-09-14 17:52:35.089418	\N	2026-08-15 17:52:35.090576
966	1	0f56ff6b27dfb8380d0ec8498507fb4af676a679ebc75faa68b32d4e0ca47bd1	2026-09-14 17:53:55.774479	\N	2026-08-15 17:53:55.775761
967	1	3ad935fe7927a78b1182a3d1c497edb10c74d0781d894cb9fd80d38cc5ce0e2f	2026-09-14 17:54:08.247185	\N	2026-08-15 17:54:08.248125
968	1	f91454b6e531e6aac565c505c2afac039ef846016a3d32bb449c321881cd7632	2026-09-14 17:55:17.105075	\N	2026-08-15 17:55:17.112186
969	1	24a93c105db65300d348d58cdf194c83481b4e3b8b9bd18fd61327ae8e2be849	2026-09-14 17:56:14.516972	\N	2026-08-15 17:56:14.518199
970	1	a1e7fd70fb3cf3813e46ce7b8fd69dca02294bc9608003e67d847f97b1fe2fbd	2026-09-14 17:58:10.729677	\N	2026-08-15 17:58:10.730841
962	3	6be5ab8d8d28d8f643652afa1068f2c5e0edefa2156ab64953284a2fd114e2c4	2026-09-14 17:44:16.438817	2026-08-15 17:59:04.331345	2026-08-15 17:44:16.440035
971	1	4ab00579b5f9936a50b10ebbd69db57e492f495d94d9cf61e361d59341c2f9b1	2026-09-14 18:00:01.286544	\N	2026-08-15 18:00:01.287872
972	1	4c912d3b96e82926d01ac84ed1a299e3905ce756d3ba05a265b21ec58c178630	2026-09-14 18:00:49.737576	\N	2026-08-15 18:00:49.738849
973	3	abe047354a04c98b3401bee480a60714c1d8c3a3ffdd488776482fafeb58c088	2026-09-14 18:01:40.94549	2026-08-15 18:04:34.461436	2026-08-15 18:01:40.946668
974	3	b3a32272a1b16784ebf9a3d26bf77d18d93f0a2ca140e4c574aac256752b51e1	2026-09-14 18:07:44.311571	2026-08-15 18:22:58.059721	2026-08-15 18:07:44.315499
975	3	05468de458a968988eed383fe064816b2232e8a22a95b4b474af16018e991200	2026-09-14 18:22:58.059975	2026-08-15 18:38:07.589778	2026-08-15 18:22:58.062614
976	3	4f7ecf611ae92c1b517ee710aa1c84e90d16005ceb6e1fc38c3db4cff1d876b9	2026-09-14 18:38:07.590095	2026-08-15 18:53:41.938572	2026-08-15 18:38:07.592684
977	3	f648d91c36a1ca4b2b510296cdda7362048e92af14f934b3cc39d36ed90e3d5e	2026-09-14 18:53:41.938824	2026-08-15 19:09:41.92808	2026-08-15 18:53:41.945719
978	3	f9f6e8b38dc84371faafa1f0476f614a0bce05d0cf3c7487564a121fa6c8d20e	2026-09-14 19:09:41.928209	2026-08-15 19:25:41.930491	2026-08-15 19:09:41.932102
979	3	be751bbc3dea55b411a6a23a13608b65835df4e4fb2284f0587cbace5ad89eab	2026-09-14 19:25:41.930718	2026-08-15 19:41:41.961219	2026-08-15 19:25:41.933951
980	3	5633cd0cffd8ab6bb51cc2b8f8f73a74ca9eafcb117fc6f7d2b9ff67c74c198c	2026-09-14 19:41:41.961499	2026-08-15 19:57:41.984077	2026-08-15 19:41:41.965103
981	3	7bca573ab79c7d85b6ad25d07ef8e796e674e1413067e2a6e43824761e315354	2026-09-14 19:57:41.984231	2026-08-15 20:13:41.905151	2026-08-15 19:57:41.991367
982	3	55cd8d6cb87c3b74febfb7b16685ba17e2ca6c7b246772d891283de83271330f	2026-09-14 20:13:41.905318	2026-08-15 20:29:41.94424	2026-08-15 20:13:41.907276
983	3	3c090eb095a23e1b84ff6ca984c65dc5cefa705e1a97549eb2b02069a99a6657	2026-09-14 20:29:41.944347	2026-08-15 20:45:41.88255	2026-08-15 20:29:41.945685
984	3	d6590e1eb8e9ac7b89a20dac31295a46c05612a864858ca1b00c80b0732421e3	2026-09-14 20:45:41.882711	2026-08-15 21:01:41.927441	2026-08-15 20:45:41.884649
985	3	9f58460eb1702b63838894b3af52ccca8ec561565ad53c0569a2f221f5574183	2026-09-14 21:01:41.927601	2026-08-15 21:17:41.937056	2026-08-15 21:01:41.931573
986	3	12b02da62ebf8c184ec657f515b55fdad5fa2d1537dd2c0103e74f988295f1e5	2026-09-14 21:17:41.937204	2026-08-15 21:33:42.078454	2026-08-15 21:17:41.939192
987	3	044e20eda48697e2a749f9558fd2943745a876f6024b41b5f9c5196cd84d7bd0	2026-09-14 21:33:42.078599	2026-08-15 21:49:41.979574	2026-08-15 21:33:42.082722
988	3	4aff4000b8a1c2f5958613e914e0f115faf358dcd41f3c1a680573fc5018f3df	2026-09-14 21:49:41.979744	2026-08-15 22:05:42.036558	2026-08-15 21:49:41.981435
989	3	f27c74f14926e7598ca0745037eb46b9fd9a6be545db7b0297a8a9ee7d31c7a2	2026-09-14 22:05:42.036899	2026-08-15 22:21:42.005719	2026-08-15 22:05:42.039929
990	3	85378a33ca06a86a2bbbdc546c6d17fbc95279ba4cb0bcd89e469a23b05df8fe	2026-09-14 22:21:42.006017	2026-08-15 22:37:42.020531	2026-08-15 22:21:42.009273
991	3	39d53c6598fcc029c0a3672b857ce3712a1d28323ea1c106606d19ae6cbc20f9	2026-09-14 22:37:42.02069	2026-08-15 22:53:42.003674	2026-08-15 22:37:42.023175
992	3	706cd62d8d246926b14e55ed580771f473d6372a2e32c54722046e3538687da6	2026-09-14 22:53:42.003819	2026-08-15 23:09:42.097022	2026-08-15 22:53:42.005809
993	3	2a12342db67b6b9a94b59b88d9b7c4964748b7507143e8af1edc14273cb8b7d4	2026-09-14 23:09:42.097196	2026-08-15 23:25:42.01174	2026-08-15 23:09:42.099693
994	3	53105432d79aaea5df947da7d56a07732218018dfdacdd68505179ee6a16a2c1	2026-09-14 23:25:42.011868	2026-08-15 23:41:41.979191	2026-08-15 23:25:42.013206
995	3	c72b7a88f781570602b8af85eaeeb942affd796c803be4b98bd19f8567cecfff	2026-09-14 23:41:41.979367	2026-08-15 23:57:42.016762	2026-08-15 23:41:41.98135
996	3	a40eb885cd18748d3b2809b1fe5b6702b01041da9dc42f23d2cb453fdeb04728	2026-09-14 23:57:42.017012	2026-08-16 00:13:42.0153	2026-08-15 23:57:42.019811
997	3	b5e65fa208a0af7e76649d10fab8279406f2a7a37b3216dcb7fe887ad6ae42c5	2026-09-15 00:13:42.015469	2026-08-16 00:29:42.000794	2026-08-16 00:13:42.017652
998	3	a5a9be217cdb15f149a0e4ec305593a8312222af041d34e367be1baf1f3cc770	2026-09-15 00:29:42.001292	2026-08-16 00:45:42.01141	2026-08-16 00:29:42.006089
999	3	22c88830185e0d9444d23c6d0dcff9748dc7b98321a4ba72be32f5043d0be1df	2026-09-15 00:45:42.011575	2026-08-16 01:01:41.990347	2026-08-16 00:45:42.013491
1000	3	2799640abe6011b898df432b294a6617cb20e4f8c9d9da2d63ffaf54b2f0129b	2026-09-15 01:01:41.990557	2026-08-16 01:17:42.017579	2026-08-16 01:01:41.99313
1001	3	e502c46d99c793d378ed1129d8420d54c7d2d713da159b46b37d3908ffbdd1c8	2026-09-15 01:17:42.017751	2026-08-16 01:33:42.027474	2026-08-16 01:17:42.02319
1002	3	5e00d4006c32b58e5a32ed97c1ff9dae904e34fe90a0f433f1ade005c5e5a8b0	2026-09-15 01:33:42.029	2026-08-16 01:49:42.017748	2026-08-16 01:33:42.0316
1003	3	fe0f066430cd5e4ba469093fc76a7d263306ef16e83a7d1f1d7efc466b49079b	2026-09-15 01:49:42.017863	2026-08-16 02:05:19.925008	2026-08-16 01:49:42.019504
1004	3	626b4061c329d0f645b7cbe3c88f8e2d555e45468d0b752a393428d9947559f8	2026-09-15 02:05:19.925687	2026-08-16 02:21:20.014564	2026-08-16 02:05:19.943718
1005	3	776d8654025f77571653f1574352c74c3021c44db8bb5ad9244ee95491bdef69	2026-09-15 02:21:20.015538	2026-08-16 02:50:06.158497	2026-08-16 02:21:20.024631
1006	3	10deaf6cdce045bdaf297b24bde3ab73bc7b5f475eb0a17084b9ff0e12c26765	2026-09-15 02:50:06.158631	2026-08-16 03:10:11.951867	2026-08-16 02:50:06.160003
1007	3	6606d0450cc011d43c12adc76ef90870c81e3e9712f81a06c449d74d438163be	2026-09-15 03:10:11.952004	2026-08-16 03:40:11.121011	2026-08-16 03:10:11.954283
1008	3	cadddfe481a44af6d40fe6c488153e684760170352e94e9fe397c2ff5636d507	2026-09-15 03:40:11.12118	2026-08-16 04:04:25.472083	2026-08-16 03:40:11.123022
1009	3	223f262d79b722b6e705c5d30a4885bf176cd14fa0452224d7c1d2d1c3d561ed	2026-09-15 04:04:25.472934	2026-08-16 04:26:42.458647	2026-08-16 04:04:25.47874
1010	3	8ab6214df31842f6c1116a9655cb3f4045536a83cb2f2a56fb54633c4d80f2a1	2026-09-15 04:26:42.458784	2026-08-16 04:52:35.451734	2026-08-16 04:26:42.460527
1011	3	c00a80a4347b9eab6b10d4f651725e1ad67e30d14bae379936a7080219f8e166	2026-09-15 04:52:35.451865	2026-08-16 05:07:37.474369	2026-08-16 04:52:35.453237
1012	3	8fab4e11dd94074f2056f978aad06263cd75cc796cff16613e06d1c228645ced	2026-09-15 05:07:37.474516	2026-08-16 05:27:29.669442	2026-08-16 05:07:37.476194
1013	3	320ba729ef856aad822b70b69d4e4965abfd2db3fb12fe11e162e89424f9d3bb	2026-09-15 05:27:29.669596	2026-08-16 05:43:32.182013	2026-08-16 05:27:29.674025
1014	3	b8f2f838b8aaecf73f60c41afd09c93b3cd9004302874b67fe16af0e8ff248bc	2026-09-15 05:43:32.182165	2026-08-16 05:58:34.496636	2026-08-16 05:43:32.183979
1015	3	1aa35b0ce7420e422d05c12d40beb039bdb5ff208f02cbc966674d48b959b293	2026-09-15 05:58:34.496777	2026-08-16 06:30:43.022018	2026-08-16 05:58:34.499572
1018	3	4c300863640bf0c79eb168f8a5f7197f07788980dbbe8360f67e82b94d61dce4	2026-09-15 07:02:43.052707	2026-08-16 07:18:43.036929	2026-08-16 07:02:43.056077
1019	3	a474e40d3d0d56e736bdad173f9ca3fdf884e7e3ed58940687c0ebcd8971e192	2026-09-15 07:18:43.037067	2026-08-16 07:34:43.079978	2026-08-16 07:18:43.038789
1027	3	82b119d56d4d5bdd9134d7fe84ed38985a991b5d058b05a3a7cb6588b61cfde8	2026-09-15 09:26:43.018306	2026-08-16 09:42:43.028912	2026-08-16 09:26:43.022015
1032	3	2729f8acf23c9973c13423aa3bab710aa0f63f74ac7e0b1f9830170e225f5458	2026-09-15 10:46:43.093674	2026-08-16 11:02:43.074887	2026-08-16 10:46:43.095404
1042	3	de1546d0469823864a352f5188f31f3475e63c26dd60065da49e70580f31ef73	2026-09-15 13:25:43.02125	2026-08-16 13:41:43.017723	2026-08-16 13:25:43.027659
1016	3	f8bf42da93fb5bb021a8f1465b94fad558fd5187448d84cacea352403806b0a5	2026-09-15 06:30:43.02213	2026-08-16 06:46:43.045561	2026-08-16 06:30:43.024095
1017	3	e6e49535be73a309515dec5b015a7f71a96cb7ffc39dba91147db1961656852c	2026-09-15 06:46:43.046228	2026-08-16 07:02:43.052499	2026-08-16 06:46:43.056784
1020	3	c22a41e0fbf6dc2939f00a6b47602b2028d2b6b318c5fdc529d4bf94964ec4df	2026-09-15 07:34:43.080087	2026-08-16 07:50:43.022646	2026-08-16 07:34:43.081407
1021	3	a81b6fab1c0da0414edb0a3e1d0101cff43d22c6fbd80c3e0c3a3a8c9dd50082	2026-09-15 07:50:43.024163	2026-08-16 08:06:43.035617	2026-08-16 07:50:43.030758
1022	3	4c2b5da31d4f6291461358b8be945c3c398f1ecf76777b8a3b63e817cdeb207c	2026-09-15 08:06:43.035787	2026-08-16 08:22:43.012777	2026-08-16 08:06:43.037745
1023	3	ab3a40a4907cdfcddd283c5019e3ff47cd236f9b8923a813faeb5e77675e062b	2026-09-15 08:22:43.01363	2026-08-16 08:38:43.05681	2026-08-16 08:22:43.020053
1024	3	31cf37e4e8f9ec1583ed25988024fba516a87812a5eb5e3fd93f744c45f7c127	2026-09-15 08:38:43.057071	2026-08-16 08:54:43.081334	2026-08-16 08:38:43.058965
1025	3	f302db9efe22588596448a48a02da3d70faba12d7a14280b802b2fdda44cf958	2026-09-15 08:54:43.081838	2026-08-16 09:10:43.026474	2026-08-16 08:54:43.088412
1026	3	3e01de3a6ad942dc3440bae1a7ccaa6b583f5d1572fe9b89b7175926cb133a9d	2026-09-15 09:10:43.026601	2026-08-16 09:26:43.018169	2026-08-16 09:10:43.028454
1028	3	6979c45abc48bc0892b227ad395e6c5a344d91921cb32331f11609e5f38b05e7	2026-09-15 09:42:43.029291	2026-08-16 09:58:43.048347	2026-08-16 09:42:43.033907
1029	3	65257ab6f46e86aee15277205b56dae4c4031aca68634bddd8749e9f886ab818	2026-09-15 09:58:43.048473	2026-08-16 10:14:43.017881	2026-08-16 09:58:43.049975
1030	3	b8b1eebf2c94a6f043fac7805fefb8184885700f50f4768a1b7dd220cf76ad15	2026-09-15 10:14:43.018	2026-08-16 10:30:43.058963	2026-08-16 10:14:43.020166
1031	3	6cdec1b8cd4979d16c24ff9be7e88fe6fefafbcf3fce3431f8d55e5b8c7160d1	2026-09-15 10:30:43.059163	2026-08-16 10:46:43.093492	2026-08-16 10:30:43.061035
1033	3	f4ad170666de3b0993a3e093106a7a29391b286ed31d5867b4bb27bf618c99e5	2026-09-15 11:02:43.075911	2026-08-16 11:18:43.03246	2026-08-16 11:02:43.079049
1034	3	0320765052cadf594d1161f71f8523b268413e1dba97d8cb58e0fc8107194ae9	2026-09-15 11:18:43.032626	2026-08-16 11:34:40.861021	2026-08-16 11:18:43.033848
1035	3	17125af5b0251cd7e40af5d5d863f9c5cdc2e63ec4ac6a6e0e9382edec7035a5	2026-09-15 11:34:40.861282	2026-08-16 11:50:40.833419	2026-08-16 11:34:40.865421
1036	3	db635797c0de5fe3bf583285046254af0962ddd11ff0dfca35f299106241cfee	2026-09-15 11:50:40.833566	2026-08-16 12:06:40.823064	2026-08-16 11:50:40.835029
1037	3	156ee33c405964d1c52f9c31ff45968b7722294b7d5f40a25c0cafc6a042b26c	2026-09-15 12:06:40.823204	2026-08-16 12:21:43.16113	2026-08-16 12:06:40.825987
1038	3	27aff09be9863c31db17f99513046783e93a331108b0cae5c27697b82dda3da5	2026-09-15 12:21:43.161308	2026-08-16 12:37:42.978646	2026-08-16 12:21:43.167103
1039	3	b930aa97e98d6457d0f3e5be3853a63c5d67fbe2b19c3408d61030ee2d7c4e36	2026-09-15 12:37:42.979249	2026-08-16 12:53:43.024925	2026-08-16 12:37:42.984075
1040	3	c19bc84e07a9dba7047bfc516db84c3dfae0aef677ad2de49bf7bebc012c7bdb	2026-09-15 12:53:43.025042	2026-08-16 13:09:43.143558	2026-08-16 12:53:43.026288
1041	3	06a3dd00b99564085a1d4320bf6589712d787ebca144fe22615aa1cb3574485c	2026-09-15 13:09:43.144817	2026-08-16 13:25:43.020308	2026-08-16 13:09:43.192778
1043	3	9e3bbebded7adbc36891b3a2a6018723cb5fc482ec74e172526851c9ae706955	2026-09-15 13:41:43.01812	2026-08-16 13:56:47.010407	2026-08-16 13:41:43.019782
1046	1	cef6f4f15094d300017f73c7785f1cd16b7630bea6bf06392fa102772a12ae75	2026-09-15 13:57:37.697044	\N	2026-08-16 13:57:37.69856
1044	3	2a2676295bde347f77d2d86a63a6e3ac8153baf4bee4f0c0e90fc6f90c2242c4	2026-09-15 13:54:47.904084	2026-08-16 14:10:09.212324	2026-08-16 13:54:47.907508
1045	3	be0ec129105187360b4df0dbf618e51185b45c177ff06f8d696e5f715db94817	2026-09-15 13:56:47.010863	2026-08-16 14:12:42.994064	2026-08-16 13:56:47.034819
1049	1	58c407fe61ff40fb302863619887c3b46f2034a49ca1481bb67bb33264890bc2	2026-09-15 14:17:07.88518	\N	2026-08-16 14:17:07.891731
1050	1	af728bbb20f654de152e214d099552789c83bdec14fc8b946e62d2fb81021509	2026-09-15 14:18:22.502883	\N	2026-08-16 14:18:22.503916
1047	3	7fca6a0da3bb3ecca989da08d2cd8d77410b791633a13ce0646fab941a5047af	2026-09-15 14:10:09.21386	2026-08-16 14:25:30.953311	2026-08-16 14:10:09.225715
1051	3	d177a870d70215d0856a00e8dd64454f0b0a2e69422ad4d508a0c8d293c048bb	2026-09-15 14:25:30.956362	\N	2026-08-16 14:25:30.967685
1048	3	8b0999cb0884f4359700a2ee21c3998d24f5901744790845943375c45da2c171	2026-09-15 14:12:42.994158	2026-08-16 14:28:42.971278	2026-08-16 14:12:42.99541
1052	3	f55530cbb1c74b617911e6dd08a8e6c81476df748d816727174fc1f1f2de2dfd	2026-09-15 14:28:42.971404	2026-08-16 14:44:10.143602	2026-08-16 14:28:42.973829
1053	3	4640ea8973c4dfa70023586cfc74e0bf2baa6c8a0dd6cd3478a1a372c28d1e01	2026-09-15 14:44:10.144306	2026-08-16 15:12:34.461503	2026-08-16 14:44:10.147086
1054	3	7c0b7b25f600038cc7a5207b613a78e645de22cc515781f92f87fb496b8fe032	2026-09-15 15:12:34.463714	2026-08-16 15:28:22.06875	2026-08-16 15:12:34.476371
1055	3	581321fd24aad38a3222332f4d4e590ab673782ad7147b23e1127af73df03c65	2026-09-15 15:28:22.069038	2026-08-16 15:44:27.059723	2026-08-16 15:28:22.072857
1056	3	ee35603d7dac06c69e38cfdaac7681dad1b32a7f922222d84c7c4f1a80a45014	2026-09-15 15:44:27.059963	2026-08-16 16:00:32.192599	2026-08-16 15:44:27.063053
1057	3	cab86a411eb99b0f9726378c529489e95a9883bd415ae4852242100208125142	2026-09-15 16:00:32.192814	2026-08-16 16:16:36.247649	2026-08-16 16:00:32.196183
1058	3	381020a20a4bcc50f6c1b8576af99350a8758194eeb6c93383dcc40b8873df4b	2026-09-15 16:16:36.247776	2026-08-16 16:31:38.116882	2026-08-16 16:16:36.249283
1059	3	53bbf2934f68fccfa01e1abe883675dc1bb0e88c0c2fcf298b3158ad6d51e142	2026-09-15 16:31:38.117016	2026-08-16 16:46:40.085425	2026-08-16 16:31:38.1183
1060	3	eeb1e1fd8ab83b135fa6fceb905e69a8b48f4bc9587ee60b923f2d446c83bf2f	2026-09-15 16:46:40.085592	2026-08-16 17:02:44.164599	2026-08-16 16:46:40.08731
1061	3	af624797f484f6830a0df32bafc3b58d34f02efbad6528b207fbc4f9c7916951	2026-09-15 17:02:44.164718	2026-08-16 17:18:48.002633	2026-08-16 17:02:44.166237
1062	3	e56f907946420e4f61e8f2b7bd637673205198298d1af439f24b8d76c98cda27	2026-09-15 17:18:48.002776	2026-08-16 17:34:52.100063	2026-08-16 17:18:48.008558
1063	3	0ddc5259f5f64293ad0847800e4153cdc64f131c8335855f987e6a6717556112	2026-09-15 17:34:52.100246	2026-08-17 05:12:19.792251	2026-08-16 17:34:52.10185
1064	3	21153a5c3ef7e2178dfe80196109983c8e116c6c21397858506ec60f8a0cdab3	2026-09-16 05:12:19.794835	2026-08-17 05:28:19.067698	2026-08-17 05:12:19.810601
1065	3	6d41d7e570f3bdfc590f9332ee9bbfe66daa2eaf5186cd164ca6f3d1ff00e22b	2026-09-16 05:28:19.068254	2026-08-17 05:44:17.23498	2026-08-17 05:28:19.074608
1066	3	ec9c33ae44bf0df634fed1207b29918dd7a7396580b420a7650c62c39903391e	2026-09-16 05:44:17.235495	2026-08-17 05:59:19.467564	2026-08-17 05:44:17.243078
1067	3	034f2da91643820b934d7ba0acd88780aa21a098629d7e1fc74d3c4b75b23af3	2026-09-16 05:59:19.46823	2026-08-17 06:15:19.512941	2026-08-17 05:59:19.470225
1068	3	b50c00ec045570627f383fc0d8d4a2697200b97ad8e7d02ffa3d56ef5fdd621a	2026-09-16 06:15:19.513313	2026-08-17 06:31:19.480489	2026-08-17 06:15:19.519535
1069	3	74e590324e12a5bc37b09f40a65f62ea511e70979ec384e4d1914f8c3e7a393b	2026-09-16 06:31:19.480849	2026-08-17 06:47:19.372591	2026-08-17 06:31:19.482625
1070	3	cf015af28cf878504e7c157f70b2822d077267ef1d0bd537ef4002435b4d7ade	2026-09-16 06:47:19.372716	2026-08-17 07:03:19.352718	2026-08-17 06:47:19.374633
1071	3	95ea40ef9ba3e85af6254ad8ac256cb0a61e77d8cf08f54ceaf31a321031f613	2026-09-16 07:03:19.352879	2026-08-17 07:19:19.36269	2026-08-17 07:03:19.356459
1072	3	4645680d86f4ac76d0282ab3f7ba77b48a279860c4bc6d7896704a78eda0ed0f	2026-09-16 07:19:19.362855	2026-08-17 07:35:19.358072	2026-08-17 07:19:19.365352
1073	3	1d4d263dbf79f5e9d1501aad5c22e54ec3afdf98674ce69d2a602b1144767f02	2026-09-16 07:35:19.358223	2026-08-17 07:51:19.307011	2026-08-17 07:35:19.36054
1074	3	2f00075e5d904607e3579312780a7c6cb7e9fed057eb4075a7854df5732db28b	2026-09-16 07:51:19.307416	2026-08-17 08:07:19.27716	2026-08-17 07:51:19.309961
1075	3	12c32134068b1e312c7221d99f2ab68ffaa17a924158a705509a065717390cf1	2026-09-16 08:07:19.277909	2026-08-17 08:23:19.282368	2026-08-17 08:07:19.280934
1076	3	6e77b8d1266e06d57e8dbf982bb4375d0482e637b42b2fd23bac979d813510cf	2026-09-16 08:23:19.282877	2026-08-17 08:39:19.412715	2026-08-17 08:23:19.285596
1077	3	195b6bca4d7125cc3f2cd9367464c1a1b17771acd25e0dfd9230e7c491cd6494	2026-09-16 08:39:19.412872	2026-08-17 08:55:19.451624	2026-08-17 08:39:19.41718
1078	3	4928921769b5b5ae6ba029fa671be6ac055fd4c7a7e1f5ea3022952d68a3510d	2026-09-16 08:55:19.451786	2026-08-17 09:11:19.382083	2026-08-17 08:55:19.454343
1079	3	e453c5f1b12ff0ac7a258e23b2fcc551c973249d85360e4196788c23b4f36b2c	2026-09-16 09:11:19.382293	2026-08-17 09:27:19.426723	2026-08-17 09:11:19.384872
1080	3	5e97ee3eea7ae05f782f99017977f767c8bc784e576de2e3a5ea6703d25829ee	2026-09-16 09:27:19.426951	2026-08-17 09:43:19.512001	2026-08-17 09:27:19.430696
1081	3	385e9ecd93f6f01022233d071dde68f466c0378e0efe7a93c8a94788a3eee982	2026-09-16 09:43:19.512191	2026-08-17 09:59:19.521182	2026-08-17 09:43:19.514488
1082	3	19a06e95d859fb68c7e99241993b57b655ec3ff791a2536bd72b4947f4ffc723	2026-09-16 09:59:19.521339	2026-08-17 10:15:19.472602	2026-08-17 09:59:19.523027
1083	3	0932587bef27079d8b12885d16d953ae4f14dda2f9076586172b93176f6c251a	2026-09-16 10:15:19.47276	2026-08-17 10:31:19.534805	2026-08-17 10:15:19.483852
1084	3	20e421609b1b54defa5eef3b0d78a87a3459fba5fd0def82788deb5b30313901	2026-09-16 10:31:19.534942	2026-08-17 10:47:19.584793	2026-08-17 10:31:19.538365
1085	3	4a3417f8e04762b364008f4e5bb42f345254dde02979f327628ba3f19479fa4d	2026-09-16 10:47:19.584899	2026-08-17 11:03:19.467518	2026-08-17 10:47:19.586684
1086	3	8007c466888cc14811b9d681aeb2612c0bbf297da18ae03705b016b6149fcf0a	2026-09-16 11:03:19.467794	2026-08-17 11:19:19.56341	2026-08-17 11:03:19.472694
1087	3	d4b8a9c032781c22122893600140ab5a8d12da096da155eb804d1e472d36adac	2026-09-16 11:19:19.563624	2026-08-17 11:35:19.529011	2026-08-17 11:19:19.566775
1088	3	3f8a9459250366f743ae567aebc7c357e9628da5b5410ec184a87fbfc5e24a0d	2026-09-16 11:35:19.529813	2026-08-17 11:51:19.52765	2026-08-17 11:35:19.535033
1089	3	e95d655fcfc127e585ef470d42a424b9210be72f008ddb9d22dff9916e6a0dfd	2026-09-16 11:51:19.527887	2026-08-17 12:07:19.597329	2026-08-17 11:51:19.531011
1090	3	90fd64c14977669f34112f4fbce00e7004f1c3f8c52268bd37439ed05a5704cb	2026-09-16 12:07:19.597646	2026-08-17 12:23:19.561604	2026-08-17 12:07:19.601202
1091	3	b140fa25361a128c09cf3e1f16375a83bb39089d939ec3082fa193a585d431ec	2026-09-16 12:23:19.561789	2026-08-17 12:39:19.586265	2026-08-17 12:23:19.564419
1092	3	cb642a6ae3ea708f92fa4d9736d4d0a9f19322aa516e2d14e7738f55e5969fd9	2026-09-16 12:39:19.586493	2026-08-17 12:55:19.552985	2026-08-17 12:39:19.589125
1093	3	cc1afc867454cfc97cc66da1e6e89decdc431a5a21bb82da2e82f9c643887d20	2026-09-16 12:55:19.553183	2026-08-17 13:11:19.512279	2026-08-17 12:55:19.561166
1094	3	45bd5571172489b15f360511e70eb2e48a2639814dcab49ab53fe6e5f963baef	2026-09-16 13:11:19.512534	2026-08-17 13:26:24.641715	2026-08-17 13:11:19.515079
1095	3	54776add38b01fc77a4db3ffcb38edb6ea37d879c22c9de9953770647c17086a	2026-09-16 13:26:24.642822	2026-08-17 13:42:23.178045	2026-08-17 13:26:24.65134
1096	3	53b201fcefe481e0f20e4075b87d67119d8cf76fa90b96c58cb0605a07a6ff2c	2026-09-16 13:42:23.17846	2026-08-17 13:58:27.212806	2026-08-17 13:42:23.180477
1097	3	744ee8ad6ee87d725f8afeed02b426ef38a42b831987f2bb690f28064ce29720	2026-09-16 13:58:27.213023	2026-08-17 14:14:30.778843	2026-08-17 13:58:27.217485
1098	3	f4eadc183c6f6a9153be0accb3a111e13274aa4d7121b5a56590712f23eb2bb1	2026-09-16 14:14:30.779108	2026-08-17 14:29:31.794669	2026-08-17 14:14:30.781546
1099	3	993ba4c005b65eaf4d32c2fad48819bdb8f2e2d965480a0dba59124dea6d8e19	2026-09-16 14:29:31.794923	2026-08-17 14:44:32.846199	2026-08-17 14:29:31.799159
1100	3	1f42a3ccdb0e21fdea3353f7f39f77ac2e99060e595312520e2ca1247ab9b1c0	2026-09-16 14:44:32.846368	2026-08-17 14:59:35.023574	2026-08-17 14:44:32.854376
1101	3	03fa16f3d9bf8090ef4cf24004beabb378206a567e55a2d4eb4b6a710ff7d1b9	2026-09-16 14:59:35.024383	2026-08-17 15:15:37.724519	2026-08-17 14:59:35.030404
1102	3	1b32986f14001e774c8ed4a425f2dae0610147ad151a643cac18b427f2e6d766	2026-09-16 15:15:37.724653	2026-08-17 15:31:41.278976	2026-08-17 15:15:37.726826
1103	3	0c70eac510d88f235b90f9939828b890947dba56692800d0908af92a81efa118	2026-09-16 15:31:41.279173	2026-08-17 15:47:43.063794	2026-08-17 15:31:41.284266
1104	3	7fceaa5451a6159ed26ee45dd7e0d5dc89dcdc587cc6cc8d155405b1ad880726	2026-09-16 15:47:43.064941	2026-08-17 16:03:45.348609	2026-08-17 15:47:43.071616
1105	3	edec021dc7667819c43c21fe7f195ccb6233e11311de94ab709e4b5022f69252	2026-09-16 16:03:45.34886	2026-08-17 16:18:47.28499	2026-08-17 16:03:45.352964
1106	3	74a07148489245c7b40bf77a84d91297ab0d561976966832f9afa63e45a46b4e	2026-09-16 16:18:47.285291	2026-08-17 16:34:51.360382	2026-08-17 16:18:47.290352
1107	3	22de6127b8cdcec3f83c18295ccebf1163664e6c794ff11f3f1e40d76462b1dc	2026-09-16 16:34:51.360551	2026-08-17 16:50:54.798058	2026-08-17 16:34:51.362433
1108	3	c94cf590d176d26f9a43236ec1ab3b0f93bea4973c94f6e3ea7e547790d56266	2026-09-16 16:50:54.798201	2026-08-17 17:06:55.454139	2026-08-17 16:50:54.80184
1109	3	f75c4fb5cda10d018681003a83ce3b69c84f70f583aafab09f0d15cfb866b419	2026-09-16 17:06:55.454513	2026-08-17 17:22:02.761621	2026-08-17 17:06:55.458772
1110	3	868cf39826cc1d3c1885b39326eb2ebd44085b53bc5eac921a3beb40bbc643fe	2026-09-16 17:22:02.76183	2026-08-17 17:37:03.098188	2026-08-17 17:22:02.765818
1111	3	92deae5c71c3d5fb6ab583c6d56c943eea3ae55a962d408e0797f0a8b3fe9c71	2026-09-16 17:37:03.098321	2026-08-17 17:53:08.606782	2026-08-17 17:37:03.099733
1112	3	536025578863e475c9872d3afb9a9e883a475dc90b55c7ae4b978a78854a5858	2026-09-16 17:53:08.606911	2026-08-17 18:09:09.294512	2026-08-17 17:53:08.608532
1113	3	1c764f92746f69b3a50f22b9edf6584da108e555edf45bda5cc5207c7523b283	2026-09-16 18:09:09.294768	2026-08-17 18:24:12.184155	2026-08-17 18:09:09.298986
1114	3	49533e1bf5600964ec97bbc2d336ad63b861b38ca269e2382fa051e6324ec85d	2026-09-16 18:24:12.184323	2026-08-17 18:40:15.24343	2026-08-17 18:24:12.189737
1115	3	ebdc23852b8f176c0f486d46c16a2d1b0c8980d72cd4d52372e45ea922d83877	2026-09-16 18:40:15.243553	2026-08-17 18:55:19.780898	2026-08-17 18:40:15.245688
1116	3	1ce01aa3aa32fcbf9dbb8e80cae03e88095da8ef0f2e069a3271588b52e01468	2026-09-16 18:55:19.781089	2026-08-17 19:11:22.60199	2026-08-17 18:55:19.78634
1117	3	04afbeb82350f9e6fbc9e8c102007b9aa1e55cc0b770410c3c9d8fae2d6906e8	2026-09-16 19:11:22.602266	2026-08-17 19:27:26.426902	2026-08-17 19:11:22.605082
1118	3	f937f4af1036c0e3ab7c8bec93a7b66209251e33af09e38fa20785a6bad4c199	2026-09-16 19:27:26.427143	2026-08-17 19:43:32.028457	2026-08-17 19:27:26.430243
1119	3	ef9ef75e3b82bfcc403d92fec616470cce5dd6795b912afe7b4f13bd23fc4de1	2026-09-16 19:43:32.028721	2026-08-17 19:59:33.242815	2026-08-17 19:43:32.034508
1120	3	88377b860d9b25cd505cfa8c2f6771fb69e5c3911d788632ef50e98a29d972c9	2026-09-16 19:59:33.243073	2026-08-17 20:14:36.129012	2026-08-17 19:59:33.250276
1121	3	f68fde741c212f9553f78a3e7351de76e21a00f2a3dbf59d8a8427019586d884	2026-09-16 20:14:36.12948	2026-08-17 20:30:38.904783	2026-08-17 20:14:36.135631
1122	3	623e8b3484b22d6a82155a588b8f34e5035f32e135667f1351d6cd7ca2921ffe	2026-09-16 20:30:38.904973	2026-08-17 20:45:43.178932	2026-08-17 20:30:38.911868
1123	3	eeffca378de3e560c49553d96a5ca0abdb53be2333b9b6077d3fa0a32cd15644	2026-09-16 20:45:43.179273	2026-08-17 21:01:46.467139	2026-08-17 20:45:43.187604
1124	3	c24c28ca5392fa34602c3809eb285a90c904ba790246252f28fb3f68e4547209	2026-09-16 21:01:46.467382	2026-08-17 21:17:50.905388	2026-08-17 21:01:46.468848
1125	3	5b00a22fadeb195fd9e525c81e0d67fdcc22a1e0269ebbad58a661eaaa85c0e7	2026-09-16 21:17:50.905543	2026-08-17 21:32:51.353447	2026-08-17 21:17:50.907488
1126	3	51c4dbacdc596057fdb59fe52bb36e7f1f7f2fbf6cf1eb56d81bd5513b0f850a	2026-09-16 21:32:51.353574	2026-08-17 21:47:52.338094	2026-08-17 21:32:51.354963
1127	3	7830d436c426879343f70487db450e85e2c457ca214bcceffa782a6af7f26334	2026-09-16 21:47:52.338406	2026-08-17 22:03:54.122615	2026-08-17 21:47:52.342156
1128	3	865a731a0ccb387a4522522cf2d5dca2cd918131aaa0616fce68bf3471bc1e5c	2026-09-16 22:03:54.122755	2026-08-17 22:19:55.61419	2026-08-17 22:03:54.125746
1129	3	a789b22712900e60af577db51182452ed822b423122d313af4fa2cca2589229c	2026-09-16 22:19:55.614449	2026-08-17 22:34:58.019478	2026-08-17 22:19:55.617344
1130	3	8685f01bbb29bfc454d2616055261173b2bf46064f85a2191eafbb99114922c4	2026-09-16 22:34:58.01968	2026-08-17 22:51:02.797196	2026-08-17 22:34:58.022815
1131	3	1cf395afa7d7217759984d1405cd2021a506900640b3d40c9303bc4a1003d6c5	2026-09-16 22:51:02.797421	2026-08-17 23:07:04.814641	2026-08-17 22:51:02.801499
1132	3	6de1a24e18f4e700a52aa0808fd7d32afa513e19b7dc5fcce0b332179809d661	2026-09-16 23:07:04.814793	2026-08-17 23:22:06.069117	2026-08-17 23:07:04.81663
1133	3	f078b48c21cb5bb6097a76d30688291361d854543d4514278ad92ccf185a05cf	2026-09-16 23:22:06.069277	2026-08-17 23:38:09.141052	2026-08-17 23:22:06.07196
1134	3	064163837e78e686bbbec5965ee2271a88d5daf05e1c4be6f50d188e0e3ba920	2026-09-16 23:38:09.141331	2026-08-17 23:54:12.088416	2026-08-17 23:38:09.144332
1135	3	709e8f8c34d5b1c8e34721933068c58ab8b80a847fb7ae5ac312a60063589f64	2026-09-16 23:54:12.088559	2026-08-18 00:10:14.115571	2026-08-17 23:54:12.090021
1136	3	7933c8faae03cc178968f53a4f2c1266c35ab35525660d1f5e4949505ee0a51f	2026-09-17 00:10:14.116675	2026-08-18 00:26:16.617674	2026-08-18 00:10:14.123864
1137	3	c0ba6193cae903aa01c7c08adfceb1595c287f1754b1151ba9069e049a362177	2026-09-17 00:26:16.617822	2026-08-18 00:42:16.633373	2026-08-18 00:26:16.619372
1138	3	a6797f92ffc40c92286784156088d3743d4b029270e313c486aae36f03862ea4	2026-09-17 00:42:16.634116	2026-08-18 00:58:21.265778	2026-08-18 00:42:16.644887
1139	3	3c9da2e792d692e0f4b03efe87807b328b749dda8094a97faa1c7a2af91440d9	2026-09-17 00:58:21.265929	2026-08-18 01:13:22.364822	2026-08-18 00:58:21.267436
1140	3	321ea8e94ea763efd708a583aaf282e0de4ee140dab04af6411e37171a91686e	2026-09-17 01:13:22.365018	2026-08-18 01:28:24.308113	2026-08-18 01:13:22.369782
1143	3	b0fde26f33dd6886d6d57dd26621f2cfb8c5e44a4f0eb486a1e88070f6f9645f	2026-09-17 02:00:30.456712	2026-08-18 02:15:33.051956	2026-08-18 02:00:30.458181
1152	3	2389f1b54208dc9ade1522868c37f22801c11e1035231c81acaad96678cfc247	2026-09-17 04:21:55.450022	2026-08-18 04:37:56.706846	2026-08-18 04:21:55.452547
1155	3	5ab3525218df225edad8a760ca88114c1987256f7eb04dcd75e26f50b65ea089	2026-09-17 05:09:03.714737	2026-08-18 05:25:04.552937	2026-08-18 05:09:03.716727
1159	3	cd71c4f57be91d19dff8e2cb37d6b9571b0aa56d7b6fcfc30f680ee2d2147202	2026-09-17 06:10:08.779391	2026-08-18 06:26:09.621493	2026-08-18 06:10:08.782236
1141	3	b0a923a166cfae40b7975c30f939ecf23ac3009307c45928bff9b1c1d61618c9	2026-09-17 01:28:24.308246	2026-08-18 01:44:28.997494	2026-08-18 01:28:24.309518
1144	3	d364d480380e117e59c4024ab699fc5f259391585ba31080a5da21dc2fce6f15	2026-09-17 02:15:33.05255	2026-08-18 02:30:34.37286	2026-08-18 02:15:33.059273
1147	3	75d292e83fdd840741fe89688e2bc2a96716eeec4329ad9a8b461e8825fc09d0	2026-09-17 03:02:40.036071	2026-08-18 03:18:42.400829	2026-08-18 03:02:40.045996
1150	3	f457feabd0f052b0d28821ad8a85be053203c3fc103945027a308176dd4b1e62	2026-09-17 03:49:50.304795	2026-08-18 04:05:54.808328	2026-08-18 03:49:50.309579
1142	3	f29dd7d00f9a904f7d68ff513fac9e9d7e220143719e457a7752ae9bf66728ed	2026-09-17 01:44:28.997661	2026-08-18 02:00:30.456563	2026-08-18 01:44:29.000011
1148	3	fc5a3b96c3cc1fb1454a6339cf780162d1a2f1f3ca32b373470f2ea8c6962d21	2026-09-17 03:18:42.401039	2026-08-18 03:33:46.065923	2026-08-18 03:18:42.405417
1151	3	25f695e1a1b6320096b3d5a36e928c152c16d76375f895974cc77cac4d0bc6d3	2026-09-17 04:05:54.808506	2026-08-18 04:21:55.449875	2026-08-18 04:05:54.81165
1154	3	1ef82a8ed3613de3bfc9a1706ca31c5dd1f146f5644b92522238d632ca4a69c9	2026-09-17 04:52:59.050245	2026-08-18 05:09:03.714571	2026-08-18 04:52:59.055221
1157	3	6b74037afb5254988d758e2a929ce72f325c64a1ca81247f68df91469645adc2	2026-09-17 05:40:05.345522	2026-08-18 05:55:06.181009	2026-08-18 05:40:05.351077
1145	3	3e3a02fbda679a9663334a5d06302d165802bd2f1908134e6634b006ec51eff3	2026-09-17 02:30:34.37367	2026-08-18 02:46:35.041749	2026-08-18 02:30:34.381358
1153	3	b844e887ea7c4dac51270fb5ea505549ff670fa9e97750801ac932d67313f752	2026-09-17 04:37:56.707206	2026-08-18 04:52:59.049937	2026-08-18 04:37:56.710871
1156	3	00879a0d7011a2b2fcedca93cc744cecfa8262506716e35aa2b0182b2c13625b	2026-09-17 05:25:04.553141	2026-08-18 05:40:05.342976	2026-08-18 05:25:04.555343
1146	3	4b3baf6918e9c12456517428bb00c509df0ef641528c1b2d48c55f02774ffbef	2026-09-17 02:46:35.042043	2026-08-18 03:02:40.034557	2026-08-18 02:46:35.044589
1149	3	af6452b42e1eb304d76ceea0a910b1c91dd0bc03402155226b0394787465fd7e	2026-09-17 03:33:46.066133	2026-08-18 03:49:50.304501	2026-08-18 03:33:46.067923
1158	3	abae8c400583af55cd5b406603bac107e66d6f459ebafe5c2d5a971859c88e39	2026-09-17 05:55:06.181193	2026-08-18 06:10:08.779143	2026-08-18 05:55:06.184252
1160	3	24ea4832ccdd20fbd32a66458d2ee8e3ad4c9432f0e8891124aa77d0c8879502	2026-09-17 06:26:09.621636	2026-08-18 06:41:13.889704	2026-08-18 06:26:09.623346
1161	3	cb797a9bfb9bd4838f5a76f78f32ee686b7b017d36b8add99cde09ae20e7d8e3	2026-09-17 06:41:13.889861	2026-08-18 06:57:17.56832	2026-08-18 06:41:13.892902
1162	3	9c530edefa535187189af68e972f7f0264d4970f542bf75242e10676ecb36434	2026-09-17 06:57:17.568745	2026-08-19 00:52:40.68885	2026-08-18 06:57:17.572488
1163	3	84060dff986c28c8bea3eac40d9cbe8dbf916793ee63c9ad8f1431edff7469fa	2026-09-18 00:52:40.6969	2026-08-19 01:44:50.834391	2026-08-19 00:52:41.124878
1164	3	b1930316fb50297236a81d338f0b28c5f0bb8a04b22a62dc644e037e410f967a	2026-09-18 01:44:50.836049	2026-08-19 02:00:50.702653	2026-08-19 01:44:50.853668
1165	3	dd8890f3d0da77ee092a48d46a1b8b5579315aa3629842fda2a530933c24c633	2026-09-18 02:00:50.702848	2026-08-19 02:16:50.746355	2026-08-19 02:00:50.706818
1166	3	eedec40e06a733091cad2010e628e19d77b54aa5e8b2d3178e79ed47cfb6cbc6	2026-09-18 02:16:50.74653	2026-08-19 02:32:50.774015	2026-08-19 02:16:50.750491
1167	3	ac646cb69571b863b352203917238351c7b2d6eb16bae1976c57680183eeffe8	2026-09-18 02:32:50.774889	2026-08-19 02:48:50.753598	2026-08-19 02:32:50.780003
1168	3	e8ab2093d005ae9911d19a0a74f0181f70cde593f9b3229ed23e350d6bdfe935	2026-09-18 02:48:50.753998	2026-08-19 03:04:50.977373	2026-08-19 02:48:50.759871
1169	3	4a37e4a0092fb400ae923967946ff3401318060812cd4a13c57f8a5677e75db5	2026-09-18 03:04:50.97753	2026-08-19 03:19:52.891174	2026-08-19 03:04:50.981831
1170	3	2c4686d475b4de840b54b52a911e961feeb08c2ddbe0c6ba405915ae15b3299f	2026-09-18 03:19:52.891337	2026-08-19 03:35:52.864937	2026-08-19 03:19:52.892858
1171	3	13007de7194b379079a697336a0e9867a7368792494a7b498161999c39df5da5	2026-09-18 03:35:52.865072	2026-08-19 08:51:55.423306	2026-08-19 03:35:52.86697
1172	3	ece1bae81d5a2888c117cc0667569e632a6e90ec1b61ca82d5bfb13a52e0ba3b	2026-09-18 08:51:55.423474	2026-08-19 09:07:52.808501	2026-08-19 08:51:55.450108
1173	3	439f0d675a1bf0cec1f1d061680f928477c7f0b07dfcd96f0e0ec625af262e99	2026-09-18 09:07:52.81003	2026-08-19 09:23:52.891677	2026-08-19 09:07:52.823873
1174	3	ffb7e880d91cf0bd8647f08f5054cd8db9207e3143d6ec4178bd7aa72c4d1584	2026-09-18 09:23:52.892039	2026-08-19 09:39:52.847647	2026-08-19 09:23:52.901668
1175	3	c8c14e306219144a30b832b7a10cebf8055c83f7b8627cd5bb5e017a9b948b4f	2026-09-18 09:39:52.848001	2026-08-19 09:55:52.791657	2026-08-19 09:39:52.854603
1176	3	efc6a422ef8a6864fef7586ce8d85b46f867f1f3057e1cd1acbf12d466e3c3a2	2026-09-18 09:55:52.792103	2026-08-19 10:11:52.798704	2026-08-19 09:55:52.797587
1177	3	851939936fe70935dc81934953ad79a4d20d9a5a687c3f8b5ff5a7875254f429	2026-09-18 10:11:52.799188	2026-08-19 10:27:52.95668	2026-08-19 10:11:52.804918
1178	3	32f1b4b049c15f37554e2579f685faefad0ca046340804aa2153eb7ae12dbdcc	2026-09-18 10:27:52.956946	2026-08-19 10:43:52.99678	2026-08-19 10:27:52.958864
1179	3	e835a44f1ff6771c63e5e6877ef88997801e330512f3d06644c2fc2c829b68fc	2026-09-18 10:43:52.997351	2026-08-19 10:59:52.912201	2026-08-19 10:43:53.003915
1180	3	20f23f719e311e735730469326ceecebff61e7ba10e77314b8e6f1f2b0770c60	2026-09-18 10:59:52.912877	2026-08-19 11:15:52.879876	2026-08-19 10:59:52.916699
1181	3	b1d815300ad6878170f86daa59a3b1a02a97b7a59a061df17ae8d5ded956b9dc	2026-09-18 11:15:52.879999	2026-08-19 11:31:39.351267	2026-08-19 11:15:52.881584
1182	3	8cd67bf67d7d118cfcda418707df5bea01c603d33dda38eb733e5c0fa07adfeb	2026-09-18 11:31:39.351891	2026-08-19 12:20:11.550062	2026-08-19 11:31:39.363416
1183	3	796aef8f091838e93cd325e3f5286f6cfea47746cb26e7ed4a4a1aed10bfc9f6	2026-09-18 12:20:11.550654	2026-08-19 12:35:55.321949	2026-08-19 12:20:11.561772
1184	3	98d17e676775e7e2ccc59107151ca5417e905a6a82e758dbbc806974cd9abce9	2026-09-18 12:35:55.322278	2026-08-19 12:51:05.12743	2026-08-19 12:35:55.324606
1185	3	f4e8a8dfea4b654df86cc198f0990ec40a7a94506b38393a94ae8010fd3b1084	2026-09-18 12:51:05.127616	2026-08-19 13:06:08.80216	2026-08-19 12:51:05.130522
1186	3	43c61ee969833cd0f8fa7192eb9acbbcda89e7ab93920616d29ebc93c3c53d12	2026-09-18 13:06:08.802411	2026-08-19 13:21:11.00775	2026-08-19 13:06:08.805139
1187	3	a85e273e5865ef4588d8feef73c00081c8c8f5ca7c1d3ece5fcf358eaada9dc7	2026-09-18 13:21:11.007876	2026-08-19 13:36:18.495314	2026-08-19 13:21:11.016833
1188	3	8a6dc2bf73e8ff16d8c26cfcf36b72088161afa216163ba6f85fcc8ecb809916	2026-09-18 13:36:18.495457	2026-08-19 13:51:19.560518	2026-08-19 13:36:18.501791
1189	3	c646b603ddc9d7abc467438ecc1a2c0913227016461f434cb9c2f37f6f732b9e	2026-09-18 13:51:19.560759	2026-08-19 14:07:19.577153	2026-08-19 13:51:19.571335
1190	3	db10e077a44b756bcfee3f8d09fcf037152ca9165936cf075428701655850062	2026-09-18 14:07:19.577703	2026-08-19 14:23:19.472738	2026-08-19 14:07:19.579286
1191	3	44e6e88c8786c94cac7ff0f13f7213277bf4dfc5f2d76a7758c3adf363ec7838	2026-09-18 14:23:19.474703	2026-08-19 14:39:19.643154	2026-08-19 14:23:19.482869
1192	3	ff1375d679745316f945bb02ab27ed403821596b5baaa57179d4961d023cd9a6	2026-09-18 14:39:19.643397	2026-08-19 14:55:21.921584	2026-08-19 14:39:19.645825
1193	3	4bc7c6f0dbd569a621066431b3e599e15c4880074dfbe075bd3a3056b3fb9d92	2026-09-18 14:55:21.921731	2026-08-19 15:11:21.935915	2026-08-19 14:55:21.925115
1194	3	c1baa71b8c092355ebf33630550d73ea5a3cbff6bc23d5cfca0c0856c4099aa5	2026-09-18 15:11:21.936049	2026-08-19 15:27:24.994247	2026-08-19 15:11:21.940078
1195	3	fb61426dfe939d4c7f75fd6e06a88aacbf265e9f474652979c1fbda9ca4cee4e	2026-09-18 15:27:24.99448	2026-08-19 15:43:24.797283	2026-08-19 15:27:25.001308
1196	3	19ac7ccc6966c0db1c1255823684a1823ade568c86c95dd84855b7e595ef5d60	2026-09-18 15:43:24.797542	2026-08-19 15:59:27.854129	2026-08-19 15:43:24.803266
1197	3	ec790f156cd88e0bf3ca6bc6de0e970faf84e4b8f6351b99e9d6b5e6ac5c8b75	2026-09-18 15:59:27.854542	2026-08-19 16:15:27.15587	2026-08-19 15:59:27.857405
1198	3	a03889c6555313e3ffff82300b4aaa2fa649165df499822381ece1c24e101e57	2026-09-18 16:15:27.156008	2026-08-19 16:30:31.371119	2026-08-19 16:15:27.158765
1199	3	520128fc5dfe6d2ce37ba9655d56b4ce5bb203ffb78255505bca2fc30c7da9bc	2026-09-18 16:30:31.371914	2026-08-19 16:46:35.618831	2026-08-19 16:30:31.381277
1200	3	3b3acf88859ac398c31d904ca535d3c02d770f80b37b6675bfdde82b7e32d267	2026-09-18 16:46:35.618967	2026-08-19 17:01:37.373078	2026-08-19 16:46:35.622633
1201	3	5917034139d9624cfe2e5c0863e9ee1692cebe7daec8d46ec235c94ec47f8e0c	2026-09-18 17:01:37.373245	2026-08-19 17:17:39.731341	2026-08-19 17:01:37.375626
1202	3	4886476091bedefe6e7a4f50eaf8c90c214397046773cc1c95cb47506d237a19	2026-09-18 17:17:39.73147	2026-08-19 17:32:40.431084	2026-08-19 17:17:39.732911
1203	3	bbd5568bb23ff84b8a4316465183930b2566184725868feb33570e9f06ba4377	2026-09-18 17:32:40.431299	2026-08-19 17:48:43.275309	2026-08-19 17:32:40.434652
1204	3	fa4c3d50282a0220204c580a2697c2b8d47fdf2a182f9fb60c85bac86b17eb11	2026-09-18 17:48:43.27545	2026-08-19 18:04:03.82363	2026-08-19 17:48:43.277688
1205	3	de779f6ef92ce7da50dca9623f516bf8176b065eee9411851ace3f7a84f7dcee	2026-09-18 18:04:03.824202	2026-08-19 18:19:16.075141	2026-08-19 18:04:03.830631
1206	3	539e7287ee8a367c004a5ff3ff9938a7ee5d969c1e4c13d9f8701e88d90fbd54	2026-09-18 18:19:16.07534	2026-08-19 18:34:22.258236	2026-08-19 18:19:16.078085
1207	3	c343e764918732f132bf82bc3e9b8dfd134a524e97333142489776af4d713f05	2026-09-18 18:34:22.260095	2026-08-19 18:49:24.703335	2026-08-19 18:34:22.264152
1208	3	72b215492077bcea6279c93d95be27dd001e6067c44065720ae8033d2b75d2c3	2026-09-18 18:49:24.703849	2026-08-19 19:04:29.44484	2026-08-19 18:49:24.707537
1209	3	3b5e3a428d2627d157dd37dd12aaa3b2385a03eb79290d4226d331aef5e355fb	2026-09-18 19:04:29.445008	2026-08-19 19:20:17.512844	2026-08-19 19:04:29.447124
1210	3	2b0bdb1581f10ab7c8f45620d7f5be127062fa744d03c26b9b1c4f4ddf1a4b28	2026-09-18 19:20:17.512992	2026-08-19 19:35:25.513704	2026-08-19 19:20:17.5144
1211	3	ffd1e25689cc989872f98cab75b30203046f7e15c6f7d2fda78d51680c030567	2026-09-18 19:35:25.513843	2026-08-19 19:51:26.282433	2026-08-19 19:35:25.515795
1212	3	31c1ea103fa9a990c15782fb9026520bdecee2d45ba9e23f3b235c4644723092	2026-09-18 19:51:26.282645	2026-08-19 20:07:31.872261	2026-08-19 19:51:26.285231
1213	3	feef311b2e95076dc7e72944a19b73684d83991d1d8d1bfc24716aadd11b6fa8	2026-09-18 20:07:31.87242	2026-08-19 20:23:35.205997	2026-08-19 20:07:31.874262
1214	3	f40418e12216d81685f47b51252a79d9d830989781c30422dba1ba69dc54f8f5	2026-09-18 20:23:35.206267	2026-08-19 20:38:37.056151	2026-08-19 20:23:35.209599
1215	3	a64904bf3562c42c320a91f55fdd23acd284966359f1987ad6fccb284dec0e3a	2026-09-18 20:38:37.056343	2026-08-19 20:54:39.336763	2026-08-19 20:38:37.058704
1216	3	fdf8b44933fd87404d855d31111ed26c629651205905426b093c1210d54201d3	2026-09-18 20:54:39.33715	2026-08-19 21:10:42.610291	2026-08-19 20:54:39.338545
1219	3	de5c7677368abe9a2c2387b1f8da2a0b67bf7c4fbd3ac09141b198a64974b6d0	2026-09-18 21:41:43.267347	2026-08-19 21:57:43.80703	2026-08-19 21:41:43.268849
1225	3	e9a257c6bedaa4ed17c42ef2d1dfe1a3a0d66a7a4b6016b4f85a5931d12eb088	2026-09-18 23:15:53.877196	2026-08-19 23:30:59.626012	2026-08-19 23:15:53.878958
1229	3	55e61a063c3c84160495788e7d72da55b7c88bd23085ba4089f7b6daa60d8a37	2026-09-19 00:17:07.213701	2026-08-20 00:32:13.259114	2026-08-20 00:17:07.217867
1234	3	2218ccae086d8afa92fa9075bd7e4869fb5ddcb8b024f9c2b88a7544b8adc843	2026-09-19 01:32:25.852767	2026-08-20 01:48:27.767931	2026-08-20 01:32:25.85756
1240	3	d61978b0119e5677dfe65658bfd06a1790c8d33cb2439c986887a64d00284306	2026-09-19 08:42:10.969107	2026-08-20 08:58:11.030337	2026-08-20 08:42:10.97174
1245	3	589f6c1a18360d93235fafa9bded55ef266bf9c04c3926ec1769fa7abb0278d0	2026-09-19 10:02:10.966343	2026-08-20 10:18:10.877304	2026-08-20 10:02:10.975102
1250	3	20db775fa299fdb0c72f0a218dec8c0f902359b1e9fba34e221d16432ea0e93b	2026-09-19 11:22:10.811919	2026-08-20 11:38:10.864999	2026-08-20 11:22:10.814693
1217	3	b1da33de6afd9344b3fa25320badcc772163424463246fab63447070f72fa33e	2026-09-18 21:10:42.6104	2026-08-19 21:26:41.687098	2026-08-19 21:10:42.612124
1220	3	4f6a1f15a2cea083f531ede78aa48d6c711a562a1c53209a3ce66b7d469d1c8f	2026-09-18 21:57:43.807323	2026-08-19 22:13:44.403449	2026-08-19 21:57:43.808973
1223	3	c33f82292b5de7425232447f6412a8fb2f643bfeffd89e2a6486154985ab20ca	2026-09-18 22:44:48.329393	2026-08-19 23:00:52.214874	2026-08-19 22:44:48.332588
1231	3	bbd7cd62095305529ddf7d5951ca71c322f235d130052510f0fb93f2f0ddee4b	2026-09-19 00:47:14.907845	2026-08-20 01:02:18.727683	2026-08-20 00:47:14.919322
1235	3	ca87b4bb7a5ba1ed4648b85ce83012b3de26a69b84a4ab2f1589a4f339b19ce8	2026-09-19 01:48:27.768295	2026-08-20 07:39:38.25363	2026-08-20 01:48:27.803163
1242	3	29dbd91c6427187e2f784c4eb944ee7b3539b919b3c77881d28f46d619c2076c	2026-09-19 09:14:10.957188	2026-08-20 09:30:11.006253	2026-08-20 09:14:10.963186
1247	3	224cefefad3281ba32bfd2326707986eda8095256e3aa49778a92c7f18283bf6	2026-09-19 10:34:10.935206	2026-08-20 10:50:10.893493	2026-08-20 10:34:10.942327
1252	3	c2e6972f73ce3638f0f9b7355a6fc61725c75678adc70500072d480c5415bb0d	2026-09-19 11:54:10.931677	2026-08-20 12:10:10.86507	2026-08-20 11:54:10.938705
1218	3	83644c57b33665d27c1f75631388fae3615133112b60855b545a332df86030ad	2026-09-18 21:26:41.687213	2026-08-19 21:41:43.26723	2026-08-19 21:26:41.689011
1221	3	a14076f88a62d41662661377c734a9e594f3f56fa871a4ac1a457b9d427ddd0a	2026-09-18 22:13:44.403586	2026-08-19 22:29:45.586671	2026-08-19 22:13:44.408812
1224	3	888d571b4e84bcbc79da805a59fb35823faf6eaca0a14cefb4cfeeb99a3f4aef	2026-09-18 23:00:52.215012	2026-08-19 23:15:53.877017	2026-08-19 23:00:52.218658
1228	3	0406d934df6b85d254e225f8ed1bc3061c1f7054330ff643233d2e5d85746f8a	2026-09-19 00:02:04.607913	2026-08-20 00:17:07.213413	2026-08-20 00:02:04.615678
1233	3	bbe9db79d12b12208861b20670a70db66c96999631c9cc25b4177ae15f1fb5bf	2026-09-19 01:17:20.966862	2026-08-20 01:32:25.852562	2026-08-20 01:17:20.972437
1236	3	bfdfdcd9b287c51593913a68e03004d0a4380e8234916d80cbccab70e7bc330c	2026-09-19 07:39:38.285136	2026-08-20 07:55:08.871072	2026-08-20 07:39:38.850959
1241	3	b2396bfbdc941ba78ae64a8042993064e98127e828cad105f03cdd19e875efaa	2026-09-19 08:58:11.030496	2026-08-20 09:14:10.956343	2026-08-20 08:58:11.033474
1246	3	45d0974f43303b4bc08cb710789529410f3b09e333f017d626a79ca7f713f6d7	2026-09-19 10:18:10.877549	2026-08-20 10:34:10.934573	2026-08-20 10:18:10.881058
1251	3	4fd91c86c16d4a09368a400f8f89ea2600bb6e039e931101cc7a4f3ed8545231	2026-09-19 11:38:10.865219	2026-08-20 11:54:10.930927	2026-08-20 11:38:10.867917
1222	3	5f7631cd9bbad5f172bb14aa4b99f164f00794e0432865bd4c4fc9b9a0f48a40	2026-09-18 22:29:45.586788	2026-08-19 22:44:48.329159	2026-08-19 22:29:45.589158
1226	3	cadd1ababc827a0e78d08e9b68609f663e7195f68a9aead74dce3379ff7dc9a8	2026-09-18 23:30:59.626117	2026-08-19 23:47:03.025665	2026-08-19 23:30:59.627587
1230	3	08dceec3b07f33ba7da86a5ade167bd368325f66363ce944559940fcbd2bbe3b	2026-09-19 00:32:13.259247	2026-08-20 00:47:14.905853	2026-08-20 00:32:13.260737
1237	3	c7a04268afc17d2bae789421fe95530903ab87aa1c04797b4b7d6fdd025b21a5	2026-09-19 07:55:08.871913	2026-08-20 08:10:10.962214	2026-08-20 07:55:08.883944
1239	3	6d0bc1593cb2ae2a3efda3ff3f9639a693aead7452a7614f2c676512ea7b0303	2026-09-19 08:26:10.96633	2026-08-20 08:42:10.968986	2026-08-20 08:26:10.970214
1244	3	ee635d75ae57b30b60f640ced711671c72e44e8e9c7a756bbe697761262ca98c	2026-09-19 09:46:11.002996	2026-08-20 10:02:10.965646	2026-08-20 09:46:11.005187
1249	3	5d85787fb63dccebdfe0972be75a5ba3a72304a47c83ae3099463d8ad8f80222	2026-09-19 11:06:10.868579	2026-08-20 11:22:10.811705	2026-08-20 11:06:10.871766
1227	3	f0fb078b7df2cd91aabfbd9bcb0dd44e0bdf06719d9dd63276cd198287226a66	2026-09-18 23:47:03.026231	2026-08-20 00:02:04.607675	2026-08-19 23:47:03.028652
1232	3	351d9e27e178e1ae4e8a167d92938d2b4e2a922220279c69bd0d788d24d92c84	2026-09-19 01:02:18.727877	2026-08-20 01:17:20.966671	2026-08-20 01:02:18.730048
1238	3	5ff463a01ab638ee1bee4d2d7eec42987e330087e8b600f70d437aa3afc988df	2026-09-19 08:10:10.962526	2026-08-20 08:26:10.966133	2026-08-20 08:10:10.966193
1243	3	83a091e507a892b2485f4e94f0f96949bb2fa73029877f3270d55795ad6ee70d	2026-09-19 09:30:11.006848	2026-08-20 09:46:11.002608	2026-08-20 09:30:11.013234
1248	3	a5d108fce7c023d0ce455932ecd323b7935643dd6d953575c9b533198df507c7	2026-09-19 10:50:10.894155	2026-08-20 11:06:10.868389	2026-08-20 10:50:10.897449
1253	3	95d394853b5744f3f23ca5c8d1dd6ff3d63d9712ccf562ea6f2a289e7d62f436	2026-09-19 12:10:10.865164	2026-08-20 12:26:10.786811	2026-08-20 12:10:10.866303
1254	3	bbaf47bf5ce7d2210ee1be6f689a100c65129f6856e54839217c9da7b4641a7c	2026-09-19 12:26:10.786972	2026-08-20 12:42:10.850259	2026-08-20 12:26:10.789286
1255	3	954061ada0c68a816bafcafce59e82b2dce6504dcc2269f21d7c5886ef8d58d1	2026-09-19 12:42:10.850499	2026-08-20 12:58:10.849523	2026-08-20 12:42:10.854328
1256	3	1fd09785b4a98b1a9e11758283dac5a8f3c70e7c1d6dd7cc81dbc3e07da20c60	2026-09-19 12:58:10.850181	2026-08-20 13:14:11.070994	2026-08-20 12:58:10.858893
1257	3	f93a7aa01304d70309954a5313899fa47e8b5965cbbe2b998838d69053865180	2026-09-19 13:14:11.072737	2026-08-20 13:30:10.910279	2026-08-20 13:14:11.078245
1258	3	ab48cbc9b8837873f2c4ad23fd035c6bff158be381591ece5811b7b1233edce6	2026-09-19 13:30:10.910553	2026-08-20 13:46:11.034723	2026-08-20 13:30:10.914725
1259	3	1984c18cc526335a85b96c87dde411b9fc5f1bb0b63eb088d4c7b3dc326baf80	2026-09-19 13:46:11.034814	2026-08-20 14:02:10.915263	2026-08-20 13:46:11.036982
1292	3	6dc9b9b053f7d4d7b49802389280a01a37a290ff5ab817ffbd83c9afe882029e	2026-09-19 14:02:10.916762	2026-08-20 14:18:10.89896	2026-08-20 14:02:10.951255
1293	3	90667c38a145591c6a30d61e502dea7761f98a92adfc730161a5c33392989713	2026-09-19 14:18:10.899119	2026-08-20 14:34:10.990923	2026-08-20 14:18:10.902438
1294	3	b4cfd2fa7afa619278a25c9a847e239486b423da05134faba11243fe6b1afa4f	2026-09-19 14:34:10.991064	2026-08-20 14:50:10.99776	2026-08-20 14:34:10.994952
1295	3	1251b68144a94f6be29005d2f796d509987e7a84a86152af5102293d63b4dfc8	2026-09-19 14:50:10.998739	2026-08-20 15:09:12.237318	2026-08-20 14:50:11.003723
1296	3	74f04ea702220e9480c8a80344c3ae42306e1f177adc89a0a38b0aa01b319e0d	2026-09-19 15:09:12.237634	2026-08-20 15:24:41.969651	2026-08-20 15:09:12.242002
1297	3	5f078240a8e7d1e69bd623c8f87e76f07d6db09024a0d5dda1afe8f4ecd278d4	2026-09-19 15:24:41.970424	2026-08-20 15:39:47.780705	2026-08-20 15:24:41.975218
1298	3	52dd271600068ad2e201f036f26f698a0ed40e0008813857c39af74d0b74c72e	2026-09-19 15:39:47.780825	2026-08-20 15:54:58.33077	2026-08-20 15:39:47.785094
1299	3	4fe135c28711458d398bb5b8a3fd5bd9acf2344d7e85536bc1b3bc567d06b27d	2026-09-19 15:54:58.330865	2026-08-20 16:11:03.000356	2026-08-20 15:54:58.332308
1300	3	ee2932e7ae0b7f68be2c1eb3984eae78ead085d53c1b535ac14f399896a3e1c3	2026-09-19 16:11:03.000478	2026-08-20 16:26:14.342321	2026-08-20 16:11:03.00327
1301	3	e9355c31b360e20138b11540ff1be32078a55487bf54802fdcf1c614528a441b	2026-09-19 16:26:14.342617	2026-08-20 16:41:19.025576	2026-08-20 16:26:14.346025
1302	3	6ea25ac2e892a60223bb994d87aa6aeba8547064ea4564abfaed26a9f3a787e9	2026-09-19 16:41:19.025701	2026-08-20 16:56:22.388524	2026-08-20 16:41:19.028421
1303	3	34d077f455aad6725a0f6ec49b1174bceb20af47d1ac2fbb3147ae68aeb0563c	2026-09-19 16:56:22.388637	2026-08-20 17:11:28.014511	2026-08-20 16:56:22.390236
1304	3	873c620bdb0ca453a24be697e843defcb0c029cdeb76d062a18493687b6739e5	2026-09-19 17:11:28.014739	2026-08-20 17:26:38.982586	2026-08-20 17:11:28.017622
1305	3	40e646d20649f4a65b0b7850f610e7a35e7ed1362f289e1430c3ce0501fa2824	2026-09-19 17:26:38.982698	2026-08-20 17:41:54.184935	2026-08-20 17:26:38.984956
1306	3	036dc2b1c8c41644129212ffca38527b120cd9dad109c9eadc20315b8527bfdc	2026-09-19 17:41:54.185053	2026-08-20 17:56:57.149833	2026-08-20 17:41:54.187426
1307	3	35013fe6faba624cab0682561ceee8e28ce745e58d3a0542bb499f9eb0a91ca4	2026-09-19 17:56:57.149947	2026-08-20 18:12:04.489094	2026-08-20 17:56:57.151978
1308	3	4f5ecae5f43cee92b73aeec0eab4fde4bf7c3fc2f12e341048eab93744bda6fc	2026-09-19 18:12:04.489308	2026-08-20 18:27:07.640808	2026-08-20 18:12:04.493328
1309	3	322b48c59a9e1290f2c8d3a0b7ff8217a8440cd03009e27cb795bda482d6e97c	2026-09-19 18:27:07.640936	2026-08-20 18:42:16.859079	2026-08-20 18:27:07.642587
1310	3	b4fb9542b24b81d12a1998b8136df6c59d727f8a9bea5fa9e4ca4533ab892fd5	2026-09-19 18:42:16.859558	2026-08-20 18:57:25.198296	2026-08-20 18:42:16.862554
1311	3	38367e31bd68ee252d33ab1f8a7ac753d14cbe220fd62fae74b8610153d74fd5	2026-09-19 18:57:25.198574	2026-08-20 19:12:33.437899	2026-08-20 18:57:25.201228
1312	3	4f57745614e17e09e3f430883a3a1cc6da02b766becc52ab5250f9e95b2d56f5	2026-09-19 19:12:33.438003	2026-08-20 19:27:48.548857	2026-08-20 19:12:33.439655
1313	3	5b4d1d4114762be243de98339abb11defcae0f3f90dfbf93836dd9c1980f1356	2026-09-19 19:27:48.548978	2026-08-20 19:42:55.740971	2026-08-20 19:27:48.550497
1314	3	3c98092dcfef68395b93b1bcb1402e87840aec92ce2aeb172aacd52688301e5f	2026-09-19 19:42:55.741176	2026-08-20 19:58:07.717667	2026-08-20 19:42:55.743185
1315	3	1e97c096bd845916698f0ee300e6153c97beff0c49c39316af40e9f405989e6e	2026-09-19 19:58:07.717764	2026-08-20 20:13:19.874374	2026-08-20 19:58:07.719277
1316	3	c1781c4a3d6dc58d7ec1ffa4e6b4343abebf5eef277716b85ac131dac18e1a89	2026-09-19 20:13:19.87449	2026-08-20 20:28:21.165341	2026-08-20 20:13:19.878649
1317	3	830ba1d404d732412dd8cb5f7e9265118ba9fd9363be2a25c6b5180ba94acea4	2026-09-19 20:28:21.165507	2026-08-20 20:43:31.114866	2026-08-20 20:28:21.167306
1318	3	677f39f4400195f4c735ca665069f09a4b47024bb0e33cedc38d2330cb6b143a	2026-09-19 20:43:31.115232	2026-08-20 20:58:35.172393	2026-08-20 20:43:31.118286
1319	3	1b220c3cc501206beb030495407f56f48646dd9d7866c7d84cfe750df26d19e5	2026-09-19 20:58:35.1725	2026-08-20 21:13:42.172145	2026-08-20 20:58:35.175375
1320	3	3049c933e8a3d8f1b13dd566d38697fdc7f05c5054683aef4c8853542423dcaa	2026-09-19 21:13:42.172245	2026-08-20 21:28:43.663464	2026-08-20 21:13:42.17429
1321	3	dc096e80bbea0477cf2b0b3118a15c9b9e13deb649252e01232a93659b249c6c	2026-09-19 21:28:43.663569	2026-08-20 21:43:57.853619	2026-08-20 21:28:43.665757
1322	3	cbb271118376299359409faefe9b894478c94dc059041d8b37a73222a97c1e36	2026-09-19 21:43:57.853748	2026-08-20 21:59:02.90686	2026-08-20 21:43:57.855954
1323	3	a8b6bb5e379357afaa53f190330c7b6a78be8b9bb82d2e0030edef49f5bd6004	2026-09-19 21:59:02.907467	2026-08-20 22:14:22.898575	2026-08-20 21:59:02.911333
1324	3	72261adc4f4ef6ef5fe6713a08d722c48f7bc481c94ec11b140fe8ae1d937dbe	2026-09-19 22:14:22.898694	2026-08-20 22:29:32.311094	2026-08-20 22:14:22.900837
1325	3	e18251f685dd71bba1a2bad5f715e464a2dfacc240d5ab891a3ad413eacadf2c	2026-09-19 22:29:32.311275	2026-08-20 22:44:41.969884	2026-08-20 22:29:32.314711
1326	3	98873f4bc70ab4b14bdc2083b8188480058ecdf6cc3c17be0e61638703ddf447	2026-09-19 22:44:41.970004	2026-08-20 22:59:57.172745	2026-08-20 22:44:41.973722
1327	3	3b7abd976f0b27841301a06239c332bbdeda150a44d55a40ebe4e797fa05833b	2026-09-19 22:59:57.172887	2026-08-20 23:15:07.163273	2026-08-20 22:59:57.177079
1328	3	c6537879361930c45cc97e5d8af95062313e016ab87e5bcee0f8d0a00e891a9e	2026-09-19 23:15:07.163683	2026-08-20 23:30:25.005133	2026-08-20 23:15:07.16854
1329	3	33c1fb34b82c689ce318ecf7bd0fa71e8a3dfece93333d759d82abe302025253	2026-09-19 23:30:25.005321	2026-08-20 23:45:34.440498	2026-08-20 23:30:25.00833
1330	3	13bd746920433ce532bd2551487c3decd92534edd54acee69bff9bf1be367b88	2026-09-19 23:45:34.440592	2026-08-21 00:00:37.859689	2026-08-20 23:45:34.442425
1331	3	f045d51a477c1d679ff906d9b86b125edccac522194c2932f39c9eab0d7643a2	2026-09-20 00:00:37.859868	2026-08-21 05:43:25.933623	2026-08-21 00:00:37.862959
1333	1	ac58f8d6d92064a65a302c126508550f76b3485b303c4344f8ae21c5a8f3874d	2026-09-20 05:43:59.241942	\N	2026-08-21 05:43:59.242317
1332	3	359c6456cb525559083826762fc95be7ea28bd5de907e4fc29d402e3aee796f9	2026-09-20 05:43:25.933758	2026-08-21 05:58:41.446799	2026-08-21 05:43:25.939955
1334	3	ef5370780406004b9a673af71b752470b56f6cf294dc671f5b7446b8c026ebf5	2026-09-20 05:58:41.446923	2026-08-21 06:14:41.4844	2026-08-21 05:58:41.449154
1335	3	36b03ad2f0d173083029f079361c10f297ed0581128166de5778c6b4b65e77a2	2026-09-20 06:14:41.484742	2026-08-21 06:30:41.513538	2026-08-21 06:14:41.488199
1336	3	bc857d5b07cf7f040c6992c82dad86e28cdc2d9107c60956e9bf58909b50532e	2026-09-20 06:30:41.513755	2026-08-21 06:46:41.472227	2026-08-21 06:30:41.516224
1337	3	74e57974a58e391ed15021a76ada46f9533095a32fc2cc6dd70f162b5dbb529f	2026-09-20 06:46:41.472355	2026-08-21 07:02:41.472378	2026-08-21 06:46:41.474332
1338	3	88fac3fde3c02ee3c6bf6a47e3eb5e51f3ad03178d06b05b2a46a6c4cc249bc7	2026-09-20 07:02:41.472625	2026-08-21 07:17:44.937239	2026-08-21 07:02:41.481904
1339	3	b52f0d6de598765851395b74965d99834c13503a7aa6b291aa408d95e8a1d030	2026-09-20 07:17:44.937327	2026-08-21 07:33:18.563672	2026-08-21 07:17:44.938562
1340	3	26a8208e6a1796f564aafb42a3e77f0908c2b1e2748c236eb8049fa13d8b9ebd	2026-09-20 07:33:18.563768	2026-08-21 07:49:18.583985	2026-08-21 07:33:18.564914
1341	3	03b8ea2648beeb54ccf8f5e70157fdb3eb649f52905924b75141f0f03ccc0cb6	2026-09-20 07:49:18.58421	2026-08-21 08:04:47.706139	2026-08-21 07:49:18.587145
1342	3	96bf93c38074e2359f2625b5861e24a07749899e4446b8f9ad8e6e62b21cf558	2026-09-20 08:04:47.706385	2026-08-21 08:20:18.54073	2026-08-21 08:04:47.70927
1344	1	831fbfddf92cf65461a1984af647d5fad9045334d54502361cd9cf3c1bed2c8a	2026-09-20 08:32:07.619211	\N	2026-08-21 08:32:07.620096
1370	3	f4da9acadfd4802f68c8f09bc8a3b3de8364ab2c21407711322035b466cf08d2	2026-09-20 11:54:35.752123	2026-08-21 12:09:38.539811	2026-08-21 11:54:35.755067
1343	3	b7816cc51f4b05eb47964d220196f2ed02a582e97de2b8936346ec6f4b8d2f7b	2026-09-20 08:20:18.540907	2026-08-21 08:36:18.559923	2026-08-21 08:20:18.543277
1345	3	85fa43db222b3525c8609e9877eb704355b993e911f7506d72f73112c080c084	2026-09-20 08:36:18.559121	2026-08-21 08:52:18.555839	2026-08-21 08:36:18.560366
1346	3	9ad653461a332b1a63a3f0a204162719649d9b8f60ef1a59260ab960f617afc7	2026-09-20 08:36:18.559953	2026-08-21 08:52:18.557203	2026-08-21 08:36:18.563372
1347	3	aab8726d916b9f8b63e82d3c1b73e86b74885eeef8895ed9ab569a811f72731e	2026-09-20 08:52:18.555925	2026-08-21 09:08:18.564516	2026-08-21 08:52:18.55759
1348	3	9e22e11d1240955300dc65d83b5e65e91d8ae1fa98ed0110f381863ac2ae42b8	2026-09-20 08:52:18.557243	2026-08-21 09:08:18.566213	2026-08-21 08:52:18.557706
1350	3	3e3abb8d1b74aa9d4357a746d1d21f8664366ea5c5051c5daf6989212ba97953	2026-09-20 09:08:18.566296	2026-08-21 09:24:18.582339	2026-08-21 09:08:18.567291
1349	3	37996fcd676ab65b77b96adeb5b9dcb8cec20b745617ab8e1ce6441b6baf0bdd	2026-09-20 09:08:18.564691	2026-08-21 09:24:18.584101	2026-08-21 09:08:18.566985
1352	3	02dff38dead933d68b233fdda60448c1b8755c0d7b84ea9d3724def33e79a3e1	2026-09-20 09:24:18.584159	2026-08-21 09:40:18.586926	2026-08-21 09:24:18.584995
1351	3	c3ddebc3e9569572056a9020a5bcc8e8dea9667cdd63b809c56bc4bff2517fa0	2026-09-20 09:24:18.582497	2026-08-21 09:40:18.588793	2026-08-21 09:24:18.584797
1353	3	fce93f2cdcd7a714a9ea11738839e7a8f9a7c3bffc922f9ead371d0478dd4d4d	2026-09-20 09:40:18.58726	2026-08-21 10:04:21.051351	2026-08-21 09:40:18.589556
1354	3	2bfa13d81491b4166e3c756c7c19d7f90a24b750d7ef345a145baa1c84bc65e5	2026-09-20 09:40:18.588818	2026-08-21 10:04:41.0654	2026-08-21 09:40:18.590289
1355	3	8008538ff6edf9fa975e71c43cc9a6c4ff97487f15d2303532d074f200b7858b	2026-09-20 10:04:21.051545	2026-08-21 10:21:23.049772	2026-08-21 10:04:21.053626
1356	3	954c4d0d5c4a2a7ca1c4ec8b1784cb8f4db0c1821afec9e7c0b62182191e47a0	2026-09-20 10:04:41.065478	2026-08-21 10:21:42.038937	2026-08-21 10:04:41.066999
1357	3	a650cc72c756ef218e82e66233093456945c1b5672267b1ec37f23c17920e1de	2026-09-20 10:21:23.049946	2026-08-21 10:37:42.036427	2026-08-21 10:21:23.052097
1359	3	9a4dafde5c3262a709d94ae5d39ddf4e18075f17b63be65f3e93154f536e5c8d	2026-09-20 10:37:42.036557	\N	2026-08-21 10:37:42.038116
1358	3	8c0efc4c2891eded01236423b012f16c022ceb5ffe244a3acf1bd430b1bfc770	2026-09-20 10:21:42.038968	2026-08-21 10:38:00.073413	2026-08-21 10:21:42.04
1360	3	484d3f73072a41ea5ffee9efce7bfeeba77467088e8e993cad90635e16c6af99	2026-09-20 10:38:00.073507	2026-08-21 10:53:21.32367	2026-08-21 10:38:00.076173
1361	3	c38a4fad43d6c466cf7a71fa3fd26c4b6f873f042221804770e5da8481fc89bf	2026-09-20 10:53:21.323759	\N	2026-08-21 10:53:21.325095
1362	3	d029df75ba1255806ec85df2e44325fa57f2553c9ac0b26d02399d47f0dded4a	2026-09-20 10:53:31.604615	2026-08-21 11:08:33.150548	2026-08-21 10:53:31.605125
1364	1	d18574a3a59e28b356854fd24795e99f4796ca2b09314dee26e3e08810f4f44f	2026-09-20 11:13:14.077168	\N	2026-08-21 11:13:14.078916
1365	1	8124b591a777836e944a96fa238ac54ad260c61f2cf4e3724a06a6d7240eb7ba	2026-09-20 11:19:19.139828	\N	2026-08-21 11:19:19.140703
1363	3	b85e0d9603b8571c1ddd2df55ec3c4990f6ef6538debbc5fbc4f325c8c7ea869	2026-09-20 11:08:33.150647	2026-08-21 11:24:16.816718	2026-08-21 11:08:33.153224
1366	3	99e77b9d121edea3c67b42b2fd74f17b64fe3e578ce4440defac1bb0ec468460	2026-09-20 11:24:16.81681	2026-08-21 11:39:18.85544	2026-08-21 11:24:16.818098
1368	1	9713d3c1c3a518ba8150f8c6f0c1953635bc987620048e52cf730c6993c7f553	2026-09-20 11:45:28.490117	\N	2026-08-21 11:45:28.490709
1369	1	c7f232b4cd0771746a43b41b8fb28a1e600ad751764d3cb7bfb01abc80a8ea39	2026-09-20 11:53:03.804576	\N	2026-08-21 11:53:03.805448
1367	3	4d9228e4139ea707bb0c53bbe19ffcd8fb5e3beb9d63bade7dcb7b9321695567	2026-09-20 11:39:18.855521	2026-08-21 11:54:35.751938	2026-08-21 11:39:18.856704
1371	1	ba65ceef2fba81439e2a4712cc96a21a40174dc3ee23342b0f3e825faa5c054b	2026-09-20 11:55:57.678617	\N	2026-08-21 11:55:57.679468
1373	1	8eaa5b14d3d77fdfafc3e4be124eac67b66750536c9b817c6e3b26caaf89279f	2026-09-20 12:23:09.394525	\N	2026-08-21 12:23:09.396093
1372	3	bf2db1488ba61291fd3f1fcf4d299bff1a665d78c82f1be5598dccc719bcb3cd	2026-09-20 12:09:38.54005	2026-08-21 12:24:43.87106	2026-08-21 12:09:38.542414
1375	3	6a435fe76cc21f9e159e182eeb927c2c83979fd6203b95cc3341d0d1f61bb7e6	2026-09-20 12:26:09.823479	\N	2026-08-21 12:26:09.824848
1374	3	b7a4eadb1fc4ebe2d71adf23ba356537815320726ed7709278387438057457f2	2026-09-20 12:24:43.87243	2026-08-21 12:39:56.299637	2026-08-21 12:24:43.877715
1377	1	22bd540452b7cc097bad0bbae44b609f28553d2814938fd9a6270b8109651e00	2026-09-20 12:44:48.675315	\N	2026-08-21 12:44:48.676275
1378	1	6fa88633e0b758b8ecb0f5ca2431edde953e62a451c55b77c7084cd4a67e0a06	2026-09-20 12:46:02.772614	\N	2026-08-21 12:46:02.773591
1379	1	69454bfc67733b1f70dfc4eef88d80c578c3fb0c66eebaeaccf892f379e74745	2026-09-20 12:47:06.133876	\N	2026-08-21 12:47:06.134342
1380	1	2295b237f0f1b73af22b391d22deb7b321cc489b9bd5fbabbc8c786c016750ba	2026-09-20 12:52:41.687591	\N	2026-08-21 12:52:41.688795
1376	3	bbe1ffb6f27d06265ebc7b2ed4562cd4dcec34aa5759e81ac158cc9c6f1559e5	2026-09-20 12:39:56.299904	2026-08-21 12:54:57.336023	2026-08-21 12:39:56.303267
1382	1	65a61033d31e0baf93bcc738b55520b6cb98e2f93883f34a6ed62c07924cb3a0	2026-09-20 12:55:36.844075	\N	2026-08-21 12:55:36.844634
1381	3	65a7a916c196077bf86e27fae7900656efced96d96082c52172b8327bd0f7cd9	2026-09-20 12:54:57.336358	2026-08-21 13:10:13.835906	2026-08-21 12:54:57.338898
1383	3	528bab149e39eb5f19888fe2b563c8933d417d14906d4aa3c486d2e263884989	2026-09-20 13:10:13.836022	2026-08-21 13:25:41.875394	2026-08-21 13:10:13.838224
1384	3	a15b222c6610e3f282edc55534ef18168c83476d449f72fdca1c753907ca0a7c	2026-09-20 13:25:41.875681	2026-08-21 13:41:41.870737	2026-08-21 13:25:41.879628
1386	3	0db469cdf7d6c255df0cb2ddc3b24c9d0bfbcb488da46dea699130612faa1250	2026-09-20 13:41:48.39985	2026-08-21 13:57:30.830213	2026-08-21 13:41:48.400293
1385	3	5fd87281e44d3b16f73b6e292beda4e963895625c4fd40e132cbe21c58d31b0f	2026-09-20 13:41:41.870919	2026-08-21 13:57:41.834496	2026-08-21 13:41:41.877281
1387	3	aa66ec5cc522be9212801600e03f4f5e55992175dc4276d54698ade33be00fc8	2026-09-20 13:57:30.830441	2026-08-21 14:12:32.870189	2026-08-21 13:57:30.835169
1388	3	b60b5e22a434e7cc02a85949fb05149f4f9ed07ce9456d432561d7c25a9f54b0	2026-09-20 13:57:41.834593	2026-08-21 14:13:41.883409	2026-08-21 13:57:41.83632
1389	3	68210ff006831576441b0efdc1c2b0d17a4b513c879467146cf1c695579fdb67	2026-09-20 14:12:32.870444	2026-08-21 14:27:38.843474	2026-08-21 14:12:32.874116
1390	3	6bfaabb91fb7f3d9f3e6610a3e690da4611549b2042304a10bdfad61e8dd0c6c	2026-09-20 14:13:41.883442	2026-08-21 14:29:41.810566	2026-08-21 14:13:41.884025
1391	3	0e97e43a341eae2bcc962742e82dcec5493cb445e8dcb066db0f7544a8ffe71f	2026-09-20 14:27:38.843634	2026-08-21 14:42:41.83256	2026-08-21 14:27:38.845764
1392	3	7fb44a5e2676be2aa9dbb223c053574378cb32fcdfae456bce858588ac6c8ccf	2026-09-20 14:29:41.810634	2026-08-21 14:45:41.86522	2026-08-21 14:29:41.811421
1393	3	4268dccbb09e14ca196c29420ba2c14055294845ae437c2b355016cfaadbd0e2	2026-09-20 14:42:41.832778	2026-08-21 14:56:32.163328	2026-08-21 14:42:41.838604
1394	3	ceb7c32385ad58890552e30e1d0421b94f65ad2c3aa9aa75d7ad886b26bd2d34	2026-09-20 14:45:41.865366	2026-08-21 15:01:41.859241	2026-08-21 14:45:41.867465
1397	1	1fe47dbb0af54dabc64b876de5ca898fd586bd0fb362d288e48f9ef2921aca84	2026-09-20 15:09:22.408135	\N	2026-08-21 15:09:22.409711
1395	3	742d5dc7b921d8fd5b327d44e1202d0c522a72798fc117798fb51ae6ac057eb7	2026-09-20 15:01:41.859394	2026-08-21 15:17:41.844692	2026-08-21 15:01:41.86251
1398	3	695f2bed34eafa21a7f3362632f353a1084afe5ba93bbfc7b967b11a5e214f25	2026-09-20 15:17:41.844847	2026-08-21 15:33:41.903923	2026-08-21 15:17:41.848836
1399	1	a6d46d1dc28e5e8e30a38133be5d7145ce93694962aeeb22c991861fc7e885e2	2026-09-20 15:20:41.853519	\N	2026-08-21 15:20:41.85472
1396	1	29db3ee01efc336d20d66ce19d3e622822f90feeeef40a2455c6baffd2804a84	2026-09-20 15:05:02.10408	2026-08-21 15:20:41.855271	2026-08-21 15:05:02.107689
1400	1	7d98e72e75af6844c5102ebb9574d9eb35360ba3fa5ded5f1009d4a4ae81611b	2026-09-20 15:20:41.855291	\N	2026-08-21 15:20:41.85789
1401	3	a98b3945745dcfec748cca6e2531765511bbe10bd1170f1fb3708defa198067a	2026-09-20 15:33:41.904211	2026-08-21 15:49:41.829203	2026-08-21 15:33:41.907762
1404	1	9b59dd87eebafa4b3783c045778d8575969f8ac643098ff74de3e81386742ed9	2026-09-20 15:54:16.672308	\N	2026-08-21 15:54:16.67348
1405	1	388da4b80fbaa22440d20c3f1808075164ca3758b066ee4280b06a9aa739c8bb	2026-09-20 15:54:44.219087	\N	2026-08-21 15:54:44.219394
1406	1	87c1109332e83236e3137d822401caa05f2694efe96b94c6fe5bf405aa5f9c67	2026-09-20 15:54:54.438667	\N	2026-08-21 15:54:54.438935
1407	1	1cc9ce893332a869f20e1a06333d21b1248d4c0c78207ad4a4d2aea6d5e0b6ec	2026-09-20 15:55:11.452996	\N	2026-08-21 15:55:11.45358
1408	1	3752adecd1edafe73b85a14a4044bd04e19463d892d8e0c9217544a14cadb21d	2026-09-20 15:55:25.096242	\N	2026-08-21 15:55:25.096768
1409	1	6c333d5daa3fa117caf42bea1b9e38c4133953525b951ebb8911124c4bb9b0c1	2026-09-20 15:56:51.353476	\N	2026-08-21 15:56:51.354457
1410	1	82b9b85676f0dd2374fcfffa034210322fb2e20743153f24c0ce45bb1c499d1a	2026-09-20 15:57:05.152485	\N	2026-08-21 15:57:05.153023
1411	1	1121d1259ee364f14750bfb4c2ef8c5e11c337195e4632116954b5260a1b0b94	2026-09-20 15:59:09.08151	\N	2026-08-21 15:59:09.083104
1412	1	1cd550809e2b9ae753e4303575b314550abcbe54b3a6b43d1aa2c2e3feea3d18	2026-09-20 15:59:49.259063	\N	2026-08-21 15:59:49.259867
1413	1	b8e347235fac25aa757f55d3022123b383b1cb5ae1ea4d6be08452a72797e479	2026-09-20 16:00:40.989106	\N	2026-08-21 16:00:40.990446
1414	1	58b527bf572cf31dadbe1a49d58985a9d0a526e23321886da14cbf1a1379a973	2026-09-20 16:02:25.44275	\N	2026-08-21 16:02:25.443525
1415	1	43d03aed6224de8b637f0541b9c0c76818a5d184bca3a9d42b4f6b890d07e289	2026-09-20 16:03:55.272912	\N	2026-08-21 16:03:55.273243
1416	1	90c2dd13c9ed533de43b1beb1ebb861eff31aa779b8ce74fa158fae50e81887b	2026-09-20 16:04:15.201798	\N	2026-08-21 16:04:15.202393
1402	3	32478ed1220bccc72111b28d918532afe5373a11d176d3ad5f612792a0c166c0	2026-09-20 15:49:41.829402	2026-08-21 16:05:41.887344	2026-08-21 15:49:41.831915
1403	3	6100d7453df1bcaff805ea3d6738ce6ac9bdcf853ebf1ba5b8b3491a6e069248	2026-09-20 15:52:59.83241	2026-08-21 16:08:12.145184	2026-08-21 15:52:59.833427
1418	3	655f719ae2e53b7b83099c152655cb8d6fa2ded35b359185570b98cdf874d6fb	2026-09-20 16:08:12.14578	2026-08-21 16:10:46.360038	2026-08-21 16:08:12.149104
1417	3	b15579918a8d5b52fa45ccfd00782f1a1fb7f2898d770ab12e3cf7d742c9b2e3	2026-09-20 16:05:41.887561	2026-08-21 16:21:41.853717	2026-08-21 16:05:41.8895
1419	3	b7c8a791849647ea18be2210fc097e6c253ea4451d8c5025e2487014e06f8966	2026-09-20 16:15:40.067585	2026-08-21 16:30:41.839345	2026-08-21 16:15:40.069105
1420	3	5162fa8e936c196bed9b5b74600e9a35e4003f51953cd446fa306408520bdf81	2026-09-20 16:21:41.853871	2026-08-21 16:37:41.964103	2026-08-21 16:21:41.856519
1421	3	31c1bd599cc40a331c7ec3b64d48134d2fcf135041b80626408420e7a3369313	2026-09-20 16:30:41.839512	2026-08-21 16:46:41.834462	2026-08-21 16:30:41.843782
1422	3	faffcf0bc7e665ec4218be47901fea942ff5beec5ea7c48c80d221f5fa69503b	2026-09-20 16:37:41.964152	2026-08-21 17:08:59.015176	2026-08-21 16:37:41.967149
1423	3	0c659ff7834b14bb2c54d5de0e84455a5c5ddea98d0908852331372194ec02f2	2026-09-20 16:46:41.834771	2026-08-21 17:08:59.036124	2026-08-21 16:46:41.839498
1424	3	7da2e23d60f12817da9106908ab993437824f4b427d2e954ff8e545b17bcaaa4	2026-09-20 17:08:59.015667	2026-08-21 17:25:32.660284	2026-08-21 17:08:59.020993
1425	3	6cd3b35546da8a1f25d1fc892f432777396ecc7a49a23b9594bb6b5f226a140b	2026-09-20 17:08:59.03615	2026-08-21 17:25:32.664417	2026-08-21 17:08:59.036687
1426	3	f3718e449db39298a6d05f7491c5b3b58fb6c89018852380eaab5ce6dbad385e	2026-09-20 17:25:32.660381	2026-08-21 17:41:45.125191	2026-08-21 17:25:32.66162
1427	3	b01b6501f962518ea134c0d9177a183205db43c4f801c8dbe4e4906e160786ee	2026-09-20 17:25:32.664491	2026-08-21 17:41:45.138848	2026-08-21 17:25:32.665737
1428	3	37d32dfd826bdb6f3b42be772be3c61ba5ec5e933ef34af99ed1145fcff365f6	2026-09-20 17:41:45.125281	2026-08-21 18:47:49.736032	2026-08-21 17:41:45.128299
1429	3	022741ed585f44ff778d9e56990f50a450666ffaf7634238391826bdc7c856d0	2026-09-20 17:41:45.138906	2026-08-21 18:47:49.737064	2026-08-21 17:41:45.141657
1430	3	41b672d259ff9e0d3c689895877a5823202e664f054feb71adc8a7cc6573e254	2026-09-20 18:47:49.736131	2026-08-21 20:13:59.243802	2026-08-21 18:47:49.737596
1431	3	e58dd2a94a834ecf682370afacbc7b451698452a5ae5ae39de198ae352ee14ed	2026-09-20 18:47:49.737103	2026-08-21 20:13:59.248387	2026-08-21 18:47:49.737912
1433	3	58635d9f75e604df888353a835d8334c1dfccd6deef9c66898110a6c147dfd55	2026-09-20 20:13:59.248426	2026-08-21 23:01:00.679897	2026-08-21 20:13:59.249933
1432	3	3f31f6de058a67fcca158bee11c803e041e27869060e06bf77b17c297ef98a7c	2026-09-20 20:13:59.243852	2026-08-21 23:01:00.68145	2026-08-21 20:13:59.244643
1435	3	d514eae27b458c9105957e182d2d4440cd7c54be2ce6925ef37d9abb098f120d	2026-09-20 23:01:00.68148	2026-08-22 00:11:00.884905	2026-08-21 23:01:00.681974
1434	3	365b339ca22c8d9ab77e95cf08f14917838f8f819914d2a4282876b1e6a385bb	2026-09-20 23:01:00.680072	2026-08-22 00:11:01.043031	2026-08-21 23:01:00.681829
1437	3	291c8dbfbfd2abe081d419467592f7d5ddc878b870ce183837a83321b2bd2e9c	2026-09-21 00:11:01.043128	2026-08-22 01:48:00.479311	2026-08-22 00:11:01.056997
1436	3	3bf60478db2f3ab00f7080df278c16d10a8f397a2df3b77d8837e22e7d499111	2026-09-21 00:11:00.885072	2026-08-22 01:48:00.4862	2026-08-22 00:11:00.887574
1439	3	247a59e8bab14c2209c0c731c42dda375c67d3d1e13e81b5fb78b9e51f61f0f5	2026-09-21 01:48:00.486237	2026-08-22 02:49:01.442057	2026-08-22 01:48:00.487506
1438	3	e7d06e1c2264c94579462383ea75ff97979a007457d871b40723cdb0b8ce2bef	2026-09-21 01:48:00.479452	2026-08-22 02:49:01.444767	2026-08-22 01:48:00.480962
1440	3	2888790ea1ba195ec4c2aa93dd89a5ebb438e4957bdf061867055170b1e4e84b	2026-09-21 02:49:01.442125	2026-08-22 04:37:51.103427	2026-08-22 02:49:01.442977
1441	3	7ac05546050055fd80146e85b09c37dd7492bc2ba17e53192dc7772ea5d1f3b1	2026-09-21 02:49:01.444806	2026-08-22 04:37:51.105015	2026-08-22 02:49:01.445544
1443	3	40c03559fa0ae5f63ffe89d872827400f1518b1235f14602c9dc9a07de68c9f4	2026-09-21 04:37:51.105048	2026-08-22 06:53:01.18121	2026-08-22 04:37:51.105918
1442	3	153b8213f222727c64bacb19d358c674d6df19f5b1a9da54188f307e92bf4817	2026-09-21 04:37:51.103616	2026-08-22 06:53:01.182905	2026-08-22 04:37:51.105638
1444	3	6072f385e23f1479719bec717ea302486ef277257e1a936e022de4877b06120f	2026-09-21 06:53:01.181341	2026-08-22 08:10:45.206808	2026-08-22 06:53:01.183445
1445	3	fcbd24c3d9df3dd04d25f3bff4c863e43ceceb8ffbdf5df9330fb992f3f8e86f	2026-09-21 06:53:01.182946	2026-08-22 08:10:45.208295	2026-08-22 06:53:01.184139
1446	3	f6fc58e872a83d391075575a8872fa3914978c5751c5f36c1a5ca54be58eebbf	2026-09-21 08:10:45.206945	2026-08-22 10:11:29.84484	2026-08-22 08:10:45.208921
1447	3	bd09a7c50ca0a75b5a571395337e4169613838373b76d0e07e14ffa1699ffa1a	2026-09-21 08:10:45.208352	2026-08-22 10:11:29.847941	2026-08-22 08:10:45.209197
1448	3	73ac5529d60bc3bb6706415905ec11450f804e0264b7bad53dc25071c6d83867	2026-09-21 10:11:29.845001	2026-08-22 12:47:27.32914	2026-08-22 10:11:29.847667
1449	3	10a039fd12dd2e8b33502951f0d794b7d93a7b791d48871778504aeb599fa822	2026-09-21 10:11:29.847972	2026-08-22 12:47:27.331119	2026-08-22 10:11:29.848832
1451	3	e07ae958c6d52e59ff2fa5405057b3c650cb99dc327e36615b0b748b665564ed	2026-09-21 12:47:27.331153	2026-08-22 15:00:58.738694	2026-08-22 12:47:27.332074
1450	3	ff94493879f4eacca5bb7d835cf81d3cc781b6cc313e7dcc09c7b3a895518dc2	2026-09-21 12:47:27.329289	2026-08-22 15:00:58.750752	2026-08-22 12:47:27.33085
1452	3	03b246c00bfe01a2175500e42f083baae3b0f9658ad6baf8902a49e8a47da69e	2026-09-21 15:00:58.740453	2026-08-22 16:37:30.520608	2026-08-22 15:00:58.756303
1453	3	54b1b8c1c247a1dc47eb9dbf6f10a3d479beb832b9511b7c0501fc2910b4b8db	2026-09-21 15:00:58.750836	2026-08-22 16:37:30.522464	2026-08-22 15:00:58.757391
1455	3	11fa7fc57be8a9d6c96f9fa35a4201f4bf339f807d4faafa934aab575c508daa	2026-09-21 16:37:30.522499	2026-08-22 18:58:20.631414	2026-08-22 16:37:30.523489
1454	3	470ccd6fad67c6a05399374ce734ab9b46454e4ec65d1c57d7cae2200887b89a	2026-09-21 16:37:30.520773	2026-08-22 18:58:20.638228	2026-08-22 16:37:30.523241
1456	3	e39573ed145dc12af4b79e36abcfa1ac31203d1c7960a27209c95b1ae2e8278d	2026-09-21 18:58:20.631451	2026-08-22 20:22:36.652176	2026-08-22 18:58:20.632135
1457	3	3316b359f2e5593d71cce3821e203ced2abe3305c75085bfe4af4ab035cf28ff	2026-09-21 18:58:20.638252	2026-08-22 20:22:36.65481	2026-08-22 18:58:20.638886
1458	3	a034061a4a597871c6a7319b53613c0fe4bd7f259e42c0877a5b2b0b8cd1212d	2026-09-21 20:22:36.652294	2026-08-22 22:38:13.065898	2026-08-22 20:22:36.653488
1459	3	83115a4c7038085789f0b6347577eadd72e2ae6a3db1ce08223cc5e339a8a878	2026-09-21 20:22:36.65484	2026-08-22 22:38:13.07245	2026-08-22 20:22:36.655838
1469	3	ab2708f55eed5a558c6d6c1ed6ad833dea55827d4d09d8b6a4ce9e458d7cbb89	2026-09-22 05:10:59.802169	2026-08-23 06:27:33.105365	2026-08-23 05:10:59.802547
1470	3	841c794e71289aacd9a5a4c723df557bc4e7571a05f4e3d6ecf6742601c287b3	2026-09-22 06:27:33.100904	2026-08-23 07:12:52.701018	2026-08-23 06:27:33.102989
1461	3	dfaa7f0a76ad795c11e77b4a72c896505d973b0624ac0d4ee93b11ab04120585	2026-09-21 22:38:13.072492	2026-08-23 01:06:55.085353	2026-08-22 22:38:13.073131
1460	3	6cb668efdd78847d85e61ef54f98a3a7e61769c3dc1e29fffe01fe36a1d845ff	2026-09-21 22:38:13.065991	2026-08-23 01:06:55.086798	2026-08-22 22:38:13.067735
1463	3	d10159e60f5dc3684975d617762bd1e076998c23d09cf271a56e6f2d01907da0	2026-09-22 01:06:55.086822	2026-08-23 02:43:42.782873	2026-08-23 01:06:55.088097
1462	3	33d104fc4947e5ff25ef4e57bd9adbaea8a045bf06cc9f71421a7e3253c746ac	2026-09-22 01:06:55.085524	2026-08-23 02:43:42.784223	2026-08-23 01:06:55.087389
1465	3	deb3dc87abb2f4ee02784dc76a4be77ab5626a4dedfd5eaa98fc350bffa68efc	2026-09-22 02:43:42.784246	2026-08-23 04:26:35.800989	2026-08-23 02:43:42.788515
1464	3	ff5f3a7e339fe5209f0d21c6c88e38fb1c0393f26afebcec5ccbef01d4ce8b79	2026-09-22 02:43:42.783019	2026-08-23 04:26:35.804558	2026-08-23 02:43:42.787249
1467	3	4f2739ce6dd9f06f50d71284cdf9f5714850ef47a1675fb33885235b4b0ac8b8	2026-09-22 04:26:35.804582	2026-08-23 05:10:59.800561	2026-08-23 04:26:35.805332
1466	3	a800cf1df1f52f6bbe0dee07690d2005553e103814f6c4c56b20412c2a3c5e7a	2026-09-22 04:26:35.801335	2026-08-23 05:10:59.802142	2026-08-23 04:26:35.805184
1468	3	44a209c550c85136c7696f1567fb2e94c135198052efb42bf68d7b5fd8efbf8a	2026-09-22 05:10:59.800633	2026-08-23 06:27:33.100449	2026-08-23 05:10:59.801433
1471	3	8f1f0dbdddd2b1ef2ac51ae036d5dbdd8b069bccaf0c049e8469635b59a52ad0	2026-09-22 06:27:33.10541	2026-08-23 07:12:52.701848	2026-08-23 06:27:33.106441
1472	3	f61518d0e6474e5d858270a97638309d4c44eb92726d66a6861c3aa4905af5b7	2026-09-22 07:12:52.701135	2026-08-23 08:25:31.317357	2026-08-23 07:12:52.702345
1473	3	b7ca433649eb4baec0e8caa91c26f308899d84291307cdd6d31be377a102967c	2026-09-22 07:12:52.701874	2026-08-23 08:25:31.318616	2026-08-23 07:12:52.702486
1474	3	75054ba8dd0136685015168bfbed6e57abf8549a7559641f08cd72776dd9a711	2026-09-22 08:25:31.317501	2026-08-23 08:43:35.775987	2026-08-23 08:25:31.319236
1475	3	8529b58b3210b88a67db69569c5c6b1317d0731a053cfbb8d9b37c40072f058c	2026-09-22 08:25:31.318655	2026-08-23 08:43:35.777506	2026-08-23 08:25:31.319611
1477	3	69315553c0ffd0f86d016e7d2eeef2423b4d7d60654546a9ab1952088f2c4b5d	2026-09-22 08:43:35.777533	2026-08-23 08:59:21.473814	2026-08-23 08:43:35.778143
1476	3	3ecbf7c3345c3bbc6de577e593a4a2d370295d49fb1472f35788696d33e08313	2026-09-22 08:43:35.776161	2026-08-23 08:59:21.474746	2026-08-23 08:43:35.777981
1479	3	6d1ca5f126a42f6e2f96b5bfb961c044edb7854de685a7578ecda64b966939fa	2026-09-22 08:59:21.473938	2026-08-23 09:17:22.153197	2026-08-23 08:59:21.475143
1478	3	659ec660a806fc97d21033290d8c71889fc6eb3204ddda99be80abc0de9dff1c	2026-09-22 08:59:21.474763	2026-08-23 09:17:22.154783	2026-08-23 08:59:21.475268
1481	3	da9cf95044b5b184d4e5b16e29254f605fff9b4fdcdf73ffb68f739791296c2b	2026-09-22 09:17:22.154797	2026-08-23 09:34:32.474119	2026-08-23 09:17:22.155177
1480	3	e9b3c21aede4f0bd4944b97e3509d40247bf0df7532c64f92098e152058a19bb	2026-09-22 09:17:22.153328	2026-08-23 09:34:32.475579	2026-08-23 09:17:22.154615
1482	3	2bf1bbb999e38c4a00caf5e1c69003ee38383ef1eb2df90070864134fbdd87d1	2026-09-22 09:34:32.474272	2026-08-23 09:49:37.1792	2026-08-23 09:34:32.47616
1483	3	b0866d6fcbfbc20b179046f2dca9cbcbe643285cc1ab8759dca75d0e8cc5f46e	2026-09-22 09:34:32.475615	2026-08-23 09:49:37.18084	2026-08-23 09:34:32.476341
1485	3	f8397fe459138fe646ea1f7b4bd6ecf60247e47e1f536aa5f24d65b2f6dcce05	2026-09-22 09:49:37.180901	2026-08-23 10:05:37.16448	2026-08-23 09:49:37.181655
1484	3	f9447ee85e0c5fd0e41ba324fc3bbec36fe4be40fd437208e99cf7cd16496350	2026-09-22 09:49:37.179381	2026-08-23 10:05:37.16674	2026-08-23 09:49:37.181456
1487	3	fc7b45cffe87044280636c4fa7c1c36187dc9208eb7f57316d1a6b74b57b7dba	2026-09-22 10:05:37.166801	2026-08-23 10:21:11.666582	2026-08-23 10:05:37.167904
1486	3	7e23940040e6a6ce140237da25034c0f8e3434102a61f3202ae87e41ceb1885c	2026-09-22 10:05:37.164811	2026-08-23 10:21:11.665592	2026-08-23 10:05:37.167612
1488	3	4df37a13485ec69724a2ca2e5eb10cdf62e31449f5463e6a9267402b7ffaaf1d	2026-09-22 10:21:11.670209	2026-08-23 10:37:11.679404	2026-08-23 10:21:11.67331
1489	3	4f5a41316e2a1f80d7f6f173304e008436f96e18b3e43039ffadd424589cbd43	2026-09-22 10:21:11.666644	2026-08-23 10:37:11.682508	2026-08-23 10:21:11.673498
1491	3	23cfb2c1898b894e36af7d20490ed157e0d632ac44c059da4dc7b2b91e83b090	2026-09-22 10:37:11.679748	2026-08-23 10:53:11.606449	2026-08-23 10:37:11.684081
1490	3	65ccf92cc1a8909d3cc10cadfd71ae308732291dfbda232fbf178bcec581b3c2	2026-09-22 10:37:11.682548	2026-08-23 10:53:11.608561	2026-08-23 10:37:11.68429
1493	3	b820e322762835f8c9670620b148da477c92ee5442c80b30cfbf46fb448f68ec	2026-09-22 10:53:11.608608	2026-08-23 11:09:11.637102	2026-08-23 10:53:11.609594
1492	3	728ecb04585d4db8b3055cc70c57b150faff4f1f2306ea6ec7bf9c4a6db3466c	2026-09-22 10:53:11.606613	2026-08-23 11:09:11.638313	2026-08-23 10:53:11.608134
1494	3	b6c916c9251360a35a74e801719367806e7e0bba15148274360b22cd8eb0b257	2026-09-22 11:09:11.638344	\N	2026-08-23 11:09:11.639793
1495	3	1cfbd2a80019a2ca8ec6955dbe49464bf3cbb727c387336c344e221263601463	2026-09-22 11:09:11.637228	2026-08-23 11:25:11.587719	2026-08-23 11:09:11.639339
1496	3	9ce9ababf7c9fed733536fd463367dc0eb6163917d07c4d2efe7285655f37df8	2026-09-22 11:25:11.5887	2026-08-23 11:41:09.856614	2026-08-23 11:25:11.596183
1497	3	61be563052420b03fe3a6534e58bc9f5206d03d856480d168a69f551298be682	2026-09-22 11:41:09.856845	2026-08-23 11:57:09.848985	2026-08-23 11:41:09.858925
1498	3	e9efa3157358b7e3f706ea2a3e1c386024f1213b1f9530712c9e43f7ee157104	2026-09-22 11:57:09.849142	2026-08-23 12:13:09.856427	2026-08-23 11:57:09.853265
1499	3	8209c583e3d55be7b59e0889eb518744af9558d648be78dfa513b8c9093bb53b	2026-09-22 12:13:09.856561	2026-08-23 12:29:09.900059	2026-08-23 12:13:09.858592
1500	3	d6c5108ea8d2bccfc197e02a2d1f250ae2423689a700b5ec04b22906db814038	2026-09-22 12:29:09.900191	2026-08-23 12:45:09.894135	2026-08-23 12:29:09.903358
1501	3	43fa73aa4e32dafce4ea9cf7f2045f971ecc6d65d332b0ddac02ab32134c9f18	2026-09-22 12:45:09.894258	2026-08-23 13:01:07.903156	2026-08-23 12:45:09.895972
1502	3	c88540a037b5a3acb4c9b52c3cd8fbe8396dbc85260874d3d8a0527121d36a6f	2026-09-22 13:01:07.904257	2026-08-23 13:17:08.07131	2026-08-23 13:01:07.912284
1503	3	69f082384230e28f765b55e1ff1c09290a5973d8a13884d0c49f177bb7ed9284	2026-09-22 13:17:08.07149	2026-08-23 13:32:09.982604	2026-08-23 13:17:08.07346
1504	3	4a8f31d35ed45e2cc2af3f2a49f4ec382db110aacfc3e5d7a230dc8390ba6f3e	2026-09-22 13:32:09.98284	2026-08-23 13:48:09.855787	2026-08-23 13:32:09.988532
1505	3	5f7bad0453f6bf746db33b5fdfda1c4f66afad46fce5b32b40fc82fd53277fa0	2026-09-22 13:48:09.85611	2026-08-23 14:19:07.442842	2026-08-23 13:48:09.869434
1506	3	da2971d6e80d312dde22d99a00b4d4bc603395ed0d1362e4a841c32e764ff4b6	2026-09-22 14:19:07.443129	2026-08-23 14:35:07.331219	2026-08-23 14:19:07.446773
1507	3	fcf7d70927b4100b4b97686f8e4076634a96a0cd4877dc902ba626383c79b3d1	2026-09-22 14:35:07.331393	2026-08-23 14:51:07.372568	2026-08-23 14:35:07.3344
1508	3	280f00372e066b9a3680c971b204b8e489d1df093c584005f08378ed23501a81	2026-09-22 14:51:07.37271	2026-08-23 15:06:11.301289	2026-08-23 14:51:07.376727
1509	3	643291b8274e524e31f182a1eaa312c3a7371a44a5cd3d17e99eea7844281c8a	2026-09-22 15:06:11.30155	\N	2026-08-23 15:06:11.304295
1511	1	f3f7467434526a6f1feb23e95e9b58d79a628f18bac0241db84d47bd8272fcfb	2026-09-22 15:16:08.321431	\N	2026-08-23 15:16:08.326169
1512	1	95e813ff40540fd377966d9078b9d81a0c40f11e5ac23ee84f67619ff3646140	2026-09-22 15:17:35.805235	\N	2026-08-23 15:17:35.806303
1513	1	834d169e98e0f527577dbbf3b79fcfa08bd03d177913f45c25bd09034da01c66	2026-09-22 15:20:35.857608	\N	2026-08-23 15:20:35.85907
1510	3	b6cf5fea7b56f75085a1c92639fea7a294012c446dec5a0961ff1416d589e9d7	2026-09-22 15:08:25.344832	2026-08-23 15:23:29.905126	2026-08-23 15:08:25.345526
1515	1	b4fe3f177b0127c5f4ad5e138b7cbd594aadfa8933d4137646266fe5c2960e62	2026-09-22 15:23:38.943684	\N	2026-08-23 15:23:38.944975
1514	3	9a510d57ceed02c9411e40ad1653da345e571a448b208eade9e4991ce257abec	2026-09-22 15:23:29.905187	2026-08-23 16:41:15.345202	2026-08-23 15:23:29.906366
1516	3	7b3b81a6768f2235a88fda3eee8576363873211a10074e9cd45add1ed3efac2d	2026-09-22 16:41:15.345459	2026-08-23 16:57:20.770244	2026-08-23 16:41:15.349559
1517	3	1a362e79a38061a97af392f209ecaf75ebb45cd57a38e378c5f391846a2d7007	2026-09-22 16:57:20.770313	2026-08-23 17:27:24.575779	2026-08-23 16:57:20.771487
1518	3	bacdd2f822c93aa5a8df6e112a508ca3cd7349e3e7cbedda484b83a14bdc9b57	2026-09-22 17:27:24.575957	2026-08-23 18:01:34.698898	2026-08-23 17:27:24.578147
1519	3	668c97e86a61730d8e26a790121315c999f37912160c7759679368e1e6526a1d	2026-09-22 18:01:34.699114	2026-08-23 18:37:54.444216	2026-08-23 18:01:34.702061
1520	3	0da483e8d43beac5f17140b56b23171c6429cc0acf5349bd95b3b3c6a7db081a	2026-09-22 18:37:54.444321	2026-08-23 18:56:42.999455	2026-08-23 18:37:54.448938
1521	3	e10301d29413344ea60e43d28ca333f44fbf36b34003b8b657794c457ce0cc2a	2026-09-22 18:56:42.999588	2026-08-23 19:13:57.016294	2026-08-23 18:56:43.001334
1522	3	c18d396fc3338d0d77a4f7f90e0623a2a5049b8455fe32f357e4638aebee90bf	2026-09-22 19:13:57.01641	2026-08-23 19:46:40.357259	2026-08-23 19:13:57.018069
1523	3	f5dd7f47e7bc572a925be0fd48e4316662773206a6d87b475c5c5b001e5ca674	2026-09-22 19:46:40.35889	2026-08-23 20:05:54.453263	2026-08-23 19:46:40.383229
1524	3	7a5fe36c3529e7bffc9af7722725e14e0890e27e0a8015650b8184aaa4b6e6e7	2026-09-22 20:05:54.453831	2026-08-23 20:22:56.585583	2026-08-23 20:05:54.463224
1525	3	beefe05b6f4ab5d236ef278c094b2d6c713d4bd8b243695058549275fcb0cacc	2026-09-22 20:22:56.585814	2026-08-23 20:43:17.126453	2026-08-23 20:22:56.590067
1526	3	027b366c9f69b2ee11fb852805751c5a7d4df81fb8f23823827b532aa4a1ba9b	2026-09-22 20:43:17.126676	2026-08-23 21:04:18.123159	2026-08-23 20:43:17.133039
1527	3	1c6c321f1ac8f14404dea1130d88fa65a488c7d5888ffa053c7520922072515f	2026-09-22 21:04:18.123413	2026-08-23 21:21:53.068031	2026-08-23 21:04:18.142525
1528	3	51b471c1dbd212be8f0d1c846f6a67559b747584b5874e90fe099c2b628e5856	2026-09-22 21:21:53.068207	2026-08-23 21:39:58.245933	2026-08-23 21:21:53.070405
1529	3	c1245f6ded99ab66a98c4fb6ca4ed7ecba8b3832413511276dc12736e33f7f0a	2026-09-22 21:39:58.24612	2026-08-23 21:57:17.527164	2026-08-23 21:39:58.248454
1530	3	c9906ba551f5170875d3fc747af85ae97249d049292908a8ee1f86736eb4456c	2026-09-22 21:57:17.528438	2026-08-23 22:13:59.695057	2026-08-23 21:57:17.539406
1531	3	56d660cd8bfcccfc806d8e9cebc2a41927f2f177c9829f66eab760c46734fa0b	2026-09-22 22:13:59.707867	2026-08-23 23:13:48.362267	2026-08-23 22:13:59.720197
1532	3	cf6c35f7171021bd7f21c263719753cb626f384914cb246bb737204dd7169a61	2026-09-22 23:13:48.362438	2026-08-23 23:29:32.72638	2026-08-23 23:13:48.369497
1533	3	625f82ed179e9fe925c046fa11c43dcdd6b8ed7399e80044bc8efbe29b94f8b3	2026-09-22 23:29:32.729531	2026-08-23 23:45:32.471891	2026-08-23 23:29:32.735066
1534	3	e655597d809ab71ab5a6eea81a266c45853684b931183730a7bab51cb4c2dee9	2026-09-22 23:45:32.472089	2026-08-24 00:01:32.47556	2026-08-23 23:45:32.474748
1535	3	cbf0a46e216a07b181beb8e9d0a38414760944b33aaa05606e15c066a92857e8	2026-09-23 00:01:32.475744	2026-08-24 00:17:32.617008	2026-08-24 00:01:32.478262
1536	3	144b4dcfafca8f05262da6e6c4dd0ae7517d46e4abf3e744a9661b75076c88ae	2026-09-23 00:17:32.617263	2026-08-24 00:33:32.638227	2026-08-24 00:17:32.620857
1537	3	c7911f744e878932358a433a4990ab1153baaab874e69e50d1147ccd8cd206f5	2026-09-23 00:33:32.638356	2026-08-24 00:49:32.734586	2026-08-24 00:33:32.63989
1538	3	574fdf6f66b65cb340e3b1c86508e29472629de30b3e1f3627305b0eafcc8461	2026-09-23 00:49:32.734939	2026-08-24 01:05:32.735598	2026-08-24 00:49:32.744682
1539	3	1a5c06183110eacdbff773d76f4870d327b7c68c03230a0f9793db6878973c12	2026-09-23 01:05:32.735833	2026-08-24 01:21:32.677649	2026-08-24 01:05:32.743232
1540	3	0436694515d830c7cbf862d6142ef697d3257e92a1f5c123b4fa7ee58b87ed72	2026-09-23 01:21:32.677816	2026-08-24 01:37:30.591743	2026-08-24 01:21:32.681507
1541	3	f0ed7185af3ecf4839bda63633d490c2d5a9590efadad7313c643455cc661c1e	2026-09-23 01:37:30.59189	2026-08-24 01:52:32.712671	2026-08-24 01:37:30.595358
1542	3	9882a1f62903e40393dd0381deaea8861cabf38f178be442670df5846e207abf	2026-09-23 01:52:32.712867	2026-08-24 02:08:32.649273	2026-08-24 01:52:32.716472
1543	3	fe6c011e9b11aab55f2056acffc7768d1fafeac83e8f579c829a3279bccb2287	2026-09-23 02:08:32.64963	2026-08-24 02:24:11.617494	2026-08-24 02:08:32.652655
1544	3	dc8e60402dff2c3eba981565b00789cddc1a16ed56906e25de76e629534c6a3c	2026-09-23 02:24:11.617804	2026-08-24 02:40:11.680542	2026-08-24 02:24:11.62065
1545	3	9af256833385355a4e5bc6ea3d1844b3459b54659f967eb9afb834c15cadc14a	2026-09-23 02:40:11.680921	2026-08-24 02:56:09.867021	2026-08-24 02:40:11.68236
1546	3	fc516372dca46e9575862affe3ef83225cdff3359657d44597cc9215533583bb	2026-09-23 02:56:09.86722	2026-08-24 03:13:01.803564	2026-08-24 02:56:09.873877
1547	3	83bf06ddefcdd013b57f46214c3a92c9f3daddc995034c19c6743d449f633bfa	2026-09-23 03:13:01.803694	2026-08-24 03:29:52.126558	2026-08-24 03:13:01.806206
1548	3	793a610aeed27180d121a5f7289908eacef54d77bbb398eae580dc9b42aee707	2026-09-23 03:29:52.126648	2026-08-24 03:45:01.701001	2026-08-24 03:29:52.127913
1549	3	524bb9fcd8a8a27532b5a65372f6ed18e1e5aa9190c82bcfb360106640c3ca75	2026-09-23 03:45:01.701275	2026-08-24 04:01:01.719525	2026-08-24 03:45:01.703918
1550	3	bfeadd6b2d36b4ccd46bba766eb99a11a4bb47f5243d9c99b2d3ba611775e646	2026-09-23 04:01:01.719701	2026-08-24 04:17:01.739748	2026-08-24 04:01:01.721298
1551	3	58cd66bfd0cec2d38c9436ab5350cb5510c48fa794c2392184a616b8dad3da52	2026-09-23 04:17:01.739859	2026-08-24 04:33:01.74756	2026-08-24 04:17:01.741346
1552	3	635ce0bc931d7b8f9e9bbb4e00bf251124b42b48c96f7365d33fc23dde745327	2026-09-23 04:33:01.747772	2026-08-24 04:49:01.762124	2026-08-24 04:33:01.750252
1553	3	0305348a1a957262bf10eb2c4410fc2d7da43e5018f52d9e16b3e63629d4c0e1	2026-09-23 04:49:01.762334	2026-08-24 05:05:01.847443	2026-08-24 04:49:01.768903
1554	3	b74fa1d6bf534ebfc9969d4caa9df47de328d81b649ef636b4a243cb163786d5	2026-09-23 05:05:01.847606	2026-08-24 05:21:01.985917	2026-08-24 05:05:01.849689
1555	3	99ead63d2c9c8510c4567d9cfc4e3c6a5ae610859d0af587c1839274159e20c3	2026-09-23 05:21:01.986062	2026-08-24 05:37:01.865113	2026-08-24 05:21:01.989546
1556	3	235d3692fabaf2799696565d58cfb67dcf1fd0331223d7815fe7812f35df2f6f	2026-09-23 05:37:01.865439	2026-08-24 05:55:10.722852	2026-08-24 05:37:01.86978
1557	3	75decf5672d2a4f5799803d62a6f165bcefe0a0c96b8d54533cd6ce882fc32f3	2026-09-23 05:55:10.722976	2026-08-24 06:20:11.705388	2026-08-24 05:55:10.7244
1558	3	7b22068fe8d671665fffc282d332fe2890e0f6a1159a0859da2be0875b33e34f	2026-09-23 06:20:11.705505	2026-08-24 06:36:19.275314	2026-08-24 06:20:11.711232
1559	3	5a00913db723e8258be551ec8bc2887504d3f13f38c9d6cbf253e2a7413165d1	2026-09-23 06:36:19.27557	2026-08-24 06:53:38.413177	2026-08-24 06:36:19.280639
1560	3	b7744159c627d7e3579cef9b6f7b93c92fca79ec949153c3a6ad9cf4f6fed4ef	2026-09-23 06:53:38.413317	2026-08-24 07:09:38.293174	2026-08-24 06:53:38.428441
1561	3	52331052fe7ded2605f8b045aa558c34f5332824b72c28d64dd59dade8faf581	2026-09-23 07:09:38.2945	2026-08-24 07:25:36.133331	2026-08-24 07:09:38.297762
1562	3	448b649607fa6c761b76f8e5592fc5e71cfbe9536e60035ad83ca8fdd3fde2d5	2026-09-23 07:25:36.133744	2026-08-24 07:40:38.298594	2026-08-24 07:25:36.14003
1563	3	b23ab43537da537eb543fc85e5a7a2e322c190ee8e7a7dd0b9b61b841d1be40f	2026-09-23 07:40:38.29879	2026-08-24 07:56:38.585534	2026-08-24 07:40:38.301514
1564	3	5b3f7a19782cee6f8e3ae87da9926c0483ab534eefbe6e58d2a2196ac571b944	2026-09-23 07:56:38.585679	2026-08-24 08:12:38.481843	2026-08-24 07:56:38.588609
1565	3	e1c601a7e5609b9a998e571292a7751c7b74947e5018d0f54d33ca8eabd9280f	2026-09-23 08:12:38.482021	2026-08-24 08:28:21.264441	2026-08-24 08:12:38.491191
1566	3	7d733a54a8fe3c0be9811fd6bb68187fab39e345a7f7580d8c63f10613808f2e	2026-09-23 08:28:21.265008	2026-08-24 08:44:21.529007	2026-08-24 08:28:21.27021
1567	3	38c665eda5f39c48e9b0021a57a1d6bb2598c8b3e5d75707a00aec229fd464f6	2026-09-23 08:44:21.531217	2026-08-24 09:33:04.623667	2026-08-24 08:44:21.541606
1568	3	697a2c30cbaaaf830fb920e3d3d8cadecf2587e4ff9c066bf237b32e8c88f78f	2026-09-23 09:33:04.624166	2026-08-24 09:59:29.422082	2026-08-24 09:33:04.629272
1569	3	e3bdc09a5a526c22a571976c688bfbac0874a8a1237d0f26a5030501dcb1631b	2026-09-23 09:59:29.484165	2026-08-24 10:17:55.213069	2026-08-24 09:59:29.602106
1570	3	c2e18514adf7574ca73c58e358ba6c1d98a2d408cd9e1a109558d3ed41a11568	2026-09-23 10:17:55.213546	2026-08-24 10:35:08.201193	2026-08-24 10:17:55.223439
1571	3	55c822737b26b4a28c638654ab21611ecb5699bd11ff7b1946c17a70c2686f1d	2026-09-23 10:35:08.201395	2026-08-24 10:54:36.277598	2026-08-24 10:35:08.203984
1572	3	f81488896b8d498bbc6348364cdf608aacef566d80b2565a4298cbefa096eeb3	2026-09-23 10:54:36.278232	2026-08-24 11:35:37.859509	2026-08-24 10:54:36.28277
1573	3	89070e1a8cc3b4f893bbb4be5125f2b741fb0e015b0f620116c085ae26375161	2026-09-23 11:35:37.859693	2026-08-24 12:06:04.486599	2026-08-24 11:35:37.868624
1574	3	90a7670714c87ad2b7965cfa95da114f52ce1b5d2135458d64bd4d4774ff9faf	2026-09-23 12:06:04.486745	2026-08-24 12:59:24.920033	2026-08-24 12:06:04.4895
1575	3	572b1b9079466b7d486839aebec6eadd84b7c1f839acc0c0df3b71d5b782aea0	2026-09-23 12:59:24.920256	2026-08-24 13:14:32.905769	2026-08-24 12:59:24.925298
1576	3	a89fdff77c58d1643cd64a4df94c4ba53017afc4ceff7c41c0fa29a09fb4036f	2026-09-23 13:14:32.90596	2026-08-24 13:33:10.471703	2026-08-24 13:14:32.90794
1577	3	1e5efdeaa2ba52a869c223b9bffd00305d54df12f331352878abb328213f569c	2026-09-23 13:33:10.471814	2026-08-24 13:48:32.269983	2026-08-24 13:33:10.473056
1578	3	d94d6b023970f3c40f8687a147e0a9532ba22d352c0cd4d37c6b11c9ae09884c	2026-09-23 13:48:32.270097	2026-08-24 14:04:32.322788	2026-08-24 13:48:32.272547
1579	3	60a54e0439ff5b2c417a74d4acdfd32ba465747e33f7dd28fbb92c0a4cfbc74b	2026-09-23 14:04:32.322907	2026-08-24 14:19:34.503996	2026-08-24 14:04:32.324443
1580	3	90fd2424ecfaa74d44c6394db116665ac51910e55e04153f685309c00646b936	2026-09-23 14:19:34.504143	2026-08-24 14:40:53.528689	2026-08-24 14:19:34.505696
1581	3	39f96b6de02b0b2d231211eacf5b5c9b0fc73f1ce31454f0b874b79520c15d06	2026-09-23 14:40:53.534486	\N	2026-08-24 14:40:53.627076
1583	1	91f6ad9f9fb1f0c78deb444b1f50e3266c3428740badb5304c1bda3c57de6c20	2026-09-23 14:52:02.21329	\N	2026-08-24 14:52:02.214602
1584	1	973c08613558e73595f09a1c4d21ee93bcad832b5de52b790bdeaba6b2e28bf9	2026-09-23 14:54:27.258493	\N	2026-08-24 14:54:27.259713
1585	1	dd488581b9f6d59472e38d3f302821f9205d7474f504481881a2efd4a42b8eca	2026-09-23 14:55:44.672325	\N	2026-08-24 14:55:44.673445
1586	1	be6933808b752a7a0776bb18228c264c46be1f853ece33bd60e5738aa8d8fba8	2026-09-23 14:59:36.219567	\N	2026-08-24 14:59:36.222868
1582	3	17b47b61c4c7b45aa3ee8b3fb1a1de3bfd87c762e4f006daca10d26f477faabd	2026-09-23 14:44:42.802362	2026-08-24 15:00:02.724452	2026-08-24 14:44:42.80787
1587	3	2ac2830b8dbff91f98b3cf1c17ec5c5a8d8c4a5499afab2a76640d09a9f10ed2	2026-09-23 15:00:02.724663	2026-08-24 15:20:18.15693	2026-08-24 15:00:02.731476
1588	3	7f853d3ef0e76534df9136dd36ed8a92a5f64d608658b0c9ed85663e6421e7a3	2026-09-23 15:20:18.157091	2026-08-24 16:41:10.544264	2026-08-24 15:20:18.159192
1589	3	7d208f91507e88b06b9564a1ba792c5c3bb99ac208d459d106cc72b289ce04d0	2026-09-23 16:41:10.545084	2026-08-24 18:07:53.684075	2026-08-24 16:41:10.54828
1590	3	b60ea1bf898fdd2fb1d8016d4f0cf05f9207a74973f599e084682e06156c051d	2026-09-23 18:07:53.684185	2026-08-24 19:29:42.797115	2026-08-24 18:07:53.687455
1591	3	b5b0f46caecee966dd6652ebfeb8161419d84f0ddd30171992a15dfdca423386	2026-09-23 19:29:42.797417	2026-08-24 20:53:38.330095	2026-08-24 19:29:42.831202
1592	3	aac2f56752ef09a5af05e85a52f247dd7961daa92026fe30e87320c99fb28235	2026-09-23 20:53:38.330252	2026-08-24 22:22:51.00093	2026-08-24 20:53:38.332588
1593	3	90d325e5e7a880210e335cd889c83fe40010003ce552e4c1e7a2d3820df5d0c4	2026-09-23 22:22:51.004166	2026-08-24 23:45:51.170596	2026-08-24 22:22:51.011562
1594	3	bf3af9e967a7067f3b9292d6250c91d0728c769bd58a07fea39097b7d24549e8	2026-09-23 23:45:51.171261	2026-08-25 00:28:35.472449	2026-08-24 23:45:51.191281
1595	3	ea1321eacf9a4fe90b6d3dff69c7c7ef0b1ff3e0f4a67cc2ab9ca3f1bafc37c4	2026-09-24 00:28:35.504824	2026-08-25 00:44:05.246572	2026-08-25 00:28:35.611101
1596	3	56261af2de9481d1e284558c7183deab3986092784fe0d2a6e08b2a5d0e7bfc9	2026-09-24 00:44:05.247126	2026-08-26 06:29:24.177838	2026-08-25 00:44:05.256654
1597	3	40e5da9e475929e0dc0862833771ed0171e5b4cbdaba42b5574e6ce0a97d975e	2026-09-25 06:29:24.177871	2026-08-26 06:45:23.145081	2026-08-26 06:29:24.17992
1598	3	4c70b754169bbad2151e18873dd72d1084cdf03b796bd014e2340ef3de833534	2026-09-25 06:45:23.146642	2026-08-26 07:06:12.358292	2026-08-26 06:45:23.148523
1599	3	fc222b72daa4307636d1dd42e842172fe7b465ec97be7b2caa4deff191016225	2026-09-25 07:06:12.358596	2026-08-26 07:31:11.954513	2026-08-26 07:06:12.364974
1600	3	e816932706fd0c8decf3cbfb31982295495cb725430a94a95f4dd28403269b28	2026-09-25 07:31:11.954702	2026-08-26 07:46:40.385641	2026-08-26 07:31:11.959067
1601	3	a3d66b122b0370cd1be83cc0f79bed5394e1c09ad98d13a19797491bec0d4afe	2026-09-25 07:46:40.385781	2026-08-26 08:02:10.380361	2026-08-26 07:46:40.389928
1602	3	b277109142c9a0a258250f31d540099c12a14243f42e759f27f8e6a4a8fa170e	2026-09-25 08:02:10.380506	2026-08-26 08:17:40.373621	2026-08-26 08:02:10.383456
1603	3	589b680bc60ffa270a66a4260cdefe7022fd43f702f261a4889936210a534724	2026-09-25 08:17:40.373743	2026-08-26 08:32:56.205302	2026-08-26 08:17:40.375204
1604	3	164f6f1dfb2e225b9b2df7424c12ef4dfe876d7ec699bc14fb44faf8e9e77f70	2026-09-25 08:32:56.205568	2026-08-26 08:48:33.119314	2026-08-26 08:32:56.20949
1605	3	4ec53a856e6a2c7a17a6ab26507f4adcabd7a9217b07a24493df399ea11f1584	2026-09-25 08:48:33.119649	2026-08-26 09:04:33.759197	2026-08-26 08:48:33.127347
1606	3	cb8e6e77a44865fb87e6a6b8aef9ee886f682bd71f48607ddf8f09702dd0c091	2026-09-25 09:04:33.765118	2026-08-26 09:20:33.231175	2026-08-26 09:04:33.783979
1607	3	c6a0340f63fcb4c2d3683b7902a169876fd8cb737d51b1fa6856adc6fb335a74	2026-09-25 09:20:33.232004	2026-08-26 09:39:31.922698	2026-08-26 09:20:33.244947
1608	3	afeb9fcbd06b8cc2e4307b9e9388d119dbe40da99a3ecd9ed9ba425b62e2bb81	2026-09-25 09:39:31.924317	2026-08-26 09:55:17.501945	2026-08-26 09:39:31.935232
1609	3	1043ee666534c28f41237257c3d0bfc21d3093da9e0aa355d161d067fdaac020	2026-09-25 09:55:17.502116	2026-08-26 10:25:42.702638	2026-08-26 09:55:17.512658
1610	3	2a8286e19589b08f8188936a614321a0623ff1fe2b7ed383a1c467b144532039	2026-09-25 10:25:42.706229	2026-08-26 11:58:05.413738	2026-08-26 10:25:42.717257
1611	3	41c301017a141c9048b3e66d5498063b58604c567ce1d9b6af416ab3054e6d92	2026-09-25 11:58:05.417302	2026-08-26 12:44:25.082952	2026-08-26 11:58:05.430683
1612	3	72f2b3d9f79fef2d6aa72b548f79e02406b8768e74a115d6b30b39174b8b0369	2026-09-25 12:44:25.088168	2026-08-26 13:28:45.727935	2026-08-26 12:44:25.143444
1613	3	99d283c61a1456d324e6567d98623450a0685567b32832a729a7d52185145a25	2026-09-25 13:28:45.728148	2026-08-26 14:05:13.917307	2026-08-26 13:28:45.730713
1614	3	5c27ca56485f306228311b7e51ba8590458ec353bdf423aa86794f11d0b43002	2026-09-25 14:05:13.917713	2026-08-26 14:23:30.923938	2026-08-26 14:05:13.920947
1615	3	86e769b1a394f5eb4c4173223630994e569d5faf13a45e28dbc497c7b66a1696	2026-09-25 14:23:30.924147	2026-08-26 14:47:16.996975	2026-08-26 14:23:30.926848
1616	3	e1f31dbda44c0f4f09542216bd3859376cc7396d008a7a9abfe3f022ea976fe7	2026-09-25 14:47:16.997176	2026-08-26 15:21:14.256642	2026-08-26 14:47:17.009207
1617	3	5e95dce175a93babdef65f0ed44cb061945d0a5ac3f9df4425d4455ff2bc8b25	2026-09-25 15:21:14.2612	2026-08-26 16:03:17.698286	2026-08-26 15:21:14.287825
1618	3	606f9c21cf45d2dfdbc481e54652df92e5fb77db6622de2ea2c972c7d19cc5fb	2026-09-25 16:03:17.698421	2026-08-26 16:23:16.212999	2026-08-26 16:03:18.170882
1619	3	be57257b939d39e9b064b877373f00e2cd0a72425883e3c65323e90cf1cc4fc1	2026-09-25 16:23:16.213136	2026-08-26 17:05:32.845207	2026-08-26 16:23:16.21569
1620	3	3b85ca0cb658796e735e6ac0561036395f8f51a2a7a1cde6f14535fc567a117a	2026-09-25 17:05:32.845697	2026-08-26 17:23:57.694994	2026-08-26 17:05:32.849328
1621	3	dd48af65dca90e6bba9632236193422b305cbc0a1ae776d6c4dbf3ff3a53fd6a	2026-09-25 17:23:57.695547	2026-08-26 17:43:09.497108	2026-08-26 17:23:57.701573
1622	3	255af0a52ec372eca2c9d8355a85f7bb4c0917e7a49ba2369c77ddf84aad8c7c	2026-09-25 17:43:09.49722	2026-08-26 17:59:30.394354	2026-08-26 17:43:09.498488
1623	3	c08609bbb1e0c31b140ca5ac78ac667eaf932fc8a02edee1718719d2c208b54f	2026-09-25 17:59:30.394475	2026-08-26 18:18:14.790643	2026-08-26 17:59:30.399626
1624	3	056f7dc3223c27f147558320b81968cb1c9c21424928cc8041876c83e90e7107	2026-09-25 18:18:14.790796	2026-08-26 18:36:07.532075	2026-08-26 18:18:14.793862
1625	3	5611ec198e1c9d06c5feb34488e3c56ff77e787a7649a585a063a5f262c18b65	2026-09-25 18:36:07.532329	2026-08-26 18:53:57.266761	2026-08-26 18:36:07.535035
1626	3	6cd6d49249a4dcfb93b24ca2e1fddc513efae8642656e3b6c073cb22be32a698	2026-09-25 18:53:57.266972	2026-08-26 19:10:09.001377	2026-08-26 18:53:57.272143
1627	3	d2c573842b311879f476f1a840b2c9ea270b9c6a853c53e86bd61c8d6a195dbe	2026-09-25 19:10:09.001554	2026-08-26 19:27:21.152493	2026-08-26 19:10:09.00422
1628	3	234be04e3c362b01d56fca7b653c35a63231de9dc04c5080bdd1505e0c50fcde	2026-09-25 19:27:21.15274	2026-08-26 19:47:24.610884	2026-08-26 19:27:21.155606
1629	3	957a2137ec3353bd4d07ff4035cf5727424a5489d3755dd338a9c3d08b84157d	2026-09-25 19:47:24.611152	2026-08-26 20:06:45.900337	2026-08-26 19:47:24.612998
1630	3	67d1a9cf3ee6b0e5ab7ded8eb7998783d0dc4ada4244627ddaa036df43876d69	2026-09-25 20:06:45.900545	2026-08-26 20:25:09.823382	2026-08-26 20:06:45.906067
1631	3	1fdff37fa00cdf6170ddd17dfd55acf7106c0a81f3177f925463471c26355462	2026-09-25 20:25:09.824531	2026-08-26 20:44:00.88503	2026-08-26 20:25:09.83649
1632	3	353d7ee1c782cb65916ac0b5b2f04626dfd012489476604cbea9357fafaf02ab	2026-09-25 20:44:00.885204	2026-08-26 21:03:54.480221	2026-08-26 20:44:00.889419
1633	3	b16636bff7b90fd4a54f13f03d26dd3621dae0901f8af6c385a13b3a91ea488d	2026-09-25 21:03:54.480366	2026-08-26 21:23:08.239996	2026-08-26 21:03:54.481886
1634	3	b1edd0b741f5ecec59ac562911cec26620af016003fe22972ec265d4ed3a36ee	2026-09-25 21:23:08.240158	2026-08-26 21:40:55.713869	2026-08-26 21:23:08.245972
1635	3	58bff15fa664a1bcf131d81a0e5dfb6d5a41da2a22a083c3e6a2ddbc095aa157	2026-09-25 21:40:55.714789	2026-08-26 21:59:44.707125	2026-08-26 21:40:55.717247
1636	3	6e873133ab351f62786c522c0630eb2ce118ba0e20551374b462829c7b0c1d4a	2026-09-25 21:59:44.707231	2026-08-26 22:17:45.451089	2026-08-26 21:59:44.708504
1637	3	c1c64a9735fc089c0f6d976a025eb9b3098bd8614e578b84eb028e403bd3acee	2026-09-25 22:17:45.451237	2026-08-26 22:46:21.961219	2026-08-26 22:17:45.454431
1638	3	db8d9f916e0c018c99feda324a614dc8ffe6fd97333f9fb1184828d4ed87ac67	2026-09-25 22:46:21.961402	2026-08-26 23:07:27.520491	2026-08-26 22:46:21.965713
1639	3	ef76a667a8de89451ab579577d13e6c157cfbf4d0f9bd2db5990fd6fa2013898	2026-09-25 23:07:27.52089	2026-08-27 00:05:07.598782	2026-08-26 23:07:27.523289
1640	3	f753492b9825724708787da8105760c5d40610b045b5d16899b4d10149a44c36	2026-09-26 00:05:07.598967	2026-08-27 00:21:03.636841	2026-08-27 00:05:07.612417
1641	3	99c2c274bd5b80635440995f0422a1e31b4a9a96efb1480120471c225fb0de82	2026-09-26 00:21:03.637768	2026-08-28 11:32:15.047969	2026-08-27 00:21:03.643456
1642	3	081764cdfa657b3afe5b69726fa81ce48d53ab532b3b880f2b5840ed9bd0b15b	2026-09-27 11:32:15.049111	2026-08-28 11:47:16.631843	2026-08-28 11:32:15.062069
1643	1	c3bd5d433eb7d53595e3d63039400605c5d7d8c4af9e1dfe95fc1cb673aa54ce	2026-09-27 11:45:09.863018	\N	2026-08-28 11:45:09.863964
1645	1	7a22e3b0b4055cfbfbc17841154c70a018bc306ef264d5de6525fc68ee93d41a	2026-09-27 11:47:17.341267	\N	2026-08-28 11:47:17.341539
1646	1	4671566b76166629bae927be5ecd88aa6ec33eaf7b953fa4fe2690f8b729fde5	2026-09-27 11:58:17.502675	\N	2026-08-28 11:58:17.503671
1647	1	2b673a94e712dfc82b66fef7ba9e454a85a6818487ae9b3829b4c028f42f35ce	2026-09-27 11:59:51.84564	\N	2026-08-28 11:59:51.846404
1644	3	962eb69aea797d1192445170ce1e249e23e0f090a3298240f18e1ad7184a9a55	2026-09-27 11:47:16.631977	2026-08-28 12:02:46.586763	2026-08-28 11:47:16.633837
1649	1	b901479dee4074ebf9d89a79a093f814d938023248ca3cf2db4ecc999984a300	2026-09-27 12:12:39.769705	\N	2026-08-28 12:12:39.770843
1648	3	1074c267a1341e6124aeb575510a9cf6570af5b3f90eecc77a19d11cee040206	2026-09-27 12:02:46.58687	2026-08-28 12:18:12.515567	2026-08-28 12:02:46.58838
1651	1	10f5f7e700c055b4cb22cb39a0c5c749aa632a8a257be2f23bfa71e6ec4e244c	2026-09-27 12:18:45.731729	\N	2026-08-28 12:18:45.732623
1652	1	4a8a56d6ae156109c4363f4afc6972904064ab033fbdedb40d97b51d67877ba2	2026-09-27 12:20:49.990413	\N	2026-08-28 12:20:49.991417
1650	3	0f7a03ffa78685bff1892560bc5f48e2a752024d05ba52237fb44cfeab810953	2026-09-27 12:18:12.515664	2026-08-28 12:33:29.754527	2026-08-28 12:18:12.517383
1654	1	b877d63c0c19894de61c7aa59812ac4a2fdc50b032ebf84204e9fffa7f4763de	2026-09-27 12:38:30.290172	\N	2026-08-28 12:38:30.291185
1655	1	1308c293d7a59d131175aecbeb910c039603b86bbec9d1176db24447209a21af	2026-09-27 12:39:29.548246	\N	2026-08-28 12:39:29.549089
1656	1	f91f84c32d874864ba87fa9218da6ad6425842f2aa6770f1937e484bbe385ec5	2026-09-27 12:40:06.555858	\N	2026-08-28 12:40:06.557094
1657	1	98c7ec24d0623f694a6fb2b2edf441b236d6a81bba08968cf43ed457bef6114d	2026-09-27 12:40:14.640771	\N	2026-08-28 12:40:14.641076
1653	3	3e8fcdc7488517d266c10dba685a2081c006fc09e67a7970b8cfc44788e8e115	2026-09-27 12:33:29.754688	2026-08-28 12:48:37.34571	2026-08-28 12:33:29.756811
1659	1	0dd939111f454ce0c0b226310101c610d9b2bcd9c8c999169c62286a8bf376b0	2026-09-27 12:52:19.716731	\N	2026-08-28 12:52:19.718504
1660	1	02d3b0ebc3bfd646694d567d2f11aa3043ad7598f2b11cfadbfb894f8faecf1e	2026-09-27 12:55:24.337293	\N	2026-08-28 12:55:24.340058
1658	3	2365f41cc7e8921e281738b52b8a40f58232bf19e680e180b1c018cb61421c9d	2026-09-27 12:48:37.345796	2026-08-28 13:04:06.874101	2026-08-28 12:48:37.347273
1661	3	2b41f5952011d802772e4750a6eea68994136f77e549f686943becdc89ba8707	2026-09-27 13:04:06.874304	2026-08-28 13:19:35.961523	2026-08-28 13:04:06.875898
1662	3	49c47f756662425eb68b6043ff0366b5ae3ff65ee84a5a15db3c6cf7fbd49b99	2026-09-27 13:19:35.96162	2026-08-28 13:48:24.033684	2026-08-28 13:19:35.963286
1663	3	e1b7e759e45fe6deb336f4ad0f0206efd4eeaa1521969a7ae2030a0f451509ca	2026-09-27 13:48:24.033836	2026-08-28 14:05:32.510616	2026-08-28 13:48:24.040059
1664	3	57de349ae3abe46fd90ae2782cb933894d84e9f0eec8d2f643e442ff8e394ddf	2026-09-27 14:05:32.510736	2026-08-28 14:39:03.440649	2026-08-28 14:05:32.512349
1665	3	2f1dc37df85ec1b0ab6821719f50d9b3d73aa39d4f6c9bae6091a6a20c9f3058	2026-09-27 14:39:03.440786	2026-08-28 14:56:51.278285	2026-08-28 14:39:03.442611
1666	3	61f381c41bdd1dc1bfe90e2a80907c2f4e8385bb1a8237d2ce27f8a443028719	2026-09-27 14:56:51.278467	2026-08-28 15:13:52.319055	2026-08-28 14:56:51.280177
1667	3	4b04924f7e904addac7a175956a5dead2135eb35997db5144b20cdc192012d37	2026-09-27 15:13:52.319168	2026-08-28 15:59:49.639559	2026-08-28 15:13:52.320724
1668	3	a02b96b0e94db36e402d1280a574fb99d9a38112309c1b281d2f9ef58523d726	2026-09-27 15:59:49.63984	2026-08-28 16:27:19.632099	2026-08-28 15:59:49.643099
1669	3	250a38b07e49b0cae2acaa57e30f3bbb09f3ea26902dfe83386108585e847505	2026-09-27 16:27:19.632234	2026-08-28 17:02:58.937193	2026-08-28 16:27:19.633733
1670	3	164ddb29615e8255028e4a95678edaa26f17e9f465e3a033b5d64b6a37eebe80	2026-09-27 17:02:58.937335	2026-08-28 17:21:53.787076	2026-08-28 17:02:58.938981
1671	3	3a4874e1def398db981c0db068977f1215f400de0df7ecefb45b72bb5f73e16b	2026-09-27 17:21:53.787189	2026-08-28 17:46:26.438709	2026-08-28 17:21:53.788471
1672	3	222dee94a808ff032449cb7a0d8877f49875764a856f2b2602817387a50d677c	2026-09-27 17:46:26.438925	2026-08-28 18:04:13.54614	2026-08-28 17:46:26.441824
1673	3	071207898ee7ef3901e4e7f439f2dd7596cc60829b002abba61975502b12bcbf	2026-09-27 18:04:13.546421	2026-08-28 18:22:21.139555	2026-08-28 18:04:13.549574
1674	3	fdcc38855287ee004839e252893203fa728c59e58f2fd4a08d2e05b447fce21b	2026-09-27 18:22:21.139697	2026-08-28 18:41:18.278885	2026-08-28 18:22:21.141084
1675	3	c49eccf132cd1f81ed1d1c3d3a99f315909d65bbd490e9536466cb358738949d	2026-09-27 18:41:18.279107	2026-08-28 18:58:01.682907	2026-08-28 18:41:18.2818
1676	3	3ed657394a90ec83d385e7aff8363b1cf16484c4f60c367ac2938824b062fe2a	2026-09-27 18:58:01.683056	2026-08-28 19:15:25.657921	2026-08-28 18:58:01.684609
1677	3	cb78cff9eb7ba9639abbf9d4cbd84d0fb3195f95a11065627ff34f8fee85739a	2026-09-27 19:15:25.658078	2026-08-28 19:33:54.215627	2026-08-28 19:15:25.659355
1678	3	491558e71d2e690f034e7a813b7c0cb150ad2ca4678d75e14b29d739d5bde12a	2026-09-27 19:33:54.216039	2026-08-28 19:52:08.157765	2026-08-28 19:33:54.220522
1679	3	6a9ad9b05326ce7b610bf524c0335f74eba86d408903a130e4be10799bcc7b0c	2026-09-27 19:52:08.157949	2026-08-28 20:11:54.468109	2026-08-28 19:52:08.160587
1680	3	c2d4a12ddde7bd752fdf3f3a892cf405bf6da24a03bb75ca1e76ecfe822d92cf	2026-09-27 20:11:54.468304	2026-08-28 20:31:17.677543	2026-08-28 20:11:54.471888
1681	3	fffaa01328cb3a31a8e72f07b3e7a3d87918e526e84818846654ef63377c48d0	2026-09-27 20:31:17.677691	2026-08-28 20:52:20.352458	2026-08-28 20:31:17.681567
1682	3	41e1349c9860fc8571ca523cabce9b1165766577c4d49672f4b082a31a4daad2	2026-09-27 20:52:20.352646	2026-08-28 21:12:16.917905	2026-08-28 20:52:20.354858
1683	3	034b19aa8fa8b8d13d9465ca12f8a057b1cbe1547dc2a041dd9fdbbfd5574db5	2026-09-27 21:12:16.918015	2026-08-28 21:41:15.595177	2026-08-28 21:12:16.919448
1684	3	68aae385065054aa9398e4b19bed5b0e6a9ac959c6de9a172aaa67ffec6cdc53	2026-09-27 21:41:15.595289	2026-08-28 22:05:00.208355	2026-08-28 21:41:15.596488
1685	3	acbf66cd63156d8f325fab5471271da31e70dcdd015d6dbc2d05814524c9b9df	2026-09-27 22:05:00.208524	2026-08-28 22:24:52.968423	2026-08-28 22:05:00.210532
1686	3	898cfa6a26453d2993af036ddf45e302a6263d0d22058e6c5bde563ae616e183	2026-09-27 22:24:52.968565	2026-08-28 22:46:37.737966	2026-08-28 22:24:52.97075
1687	3	525958580cf70f20cffd3cc9b3ca4db724d9fbe821ec97904ecb9fd7ae34f297	2026-09-27 22:46:37.738176	2026-08-28 23:09:02.339626	2026-08-28 22:46:37.745522
1688	3	c4da50e6eda4b28d62f483228cde472705cf06bbfb683a615a2a77dbb43d5f29	2026-09-27 23:09:02.339827	2026-08-28 23:24:34.293315	2026-08-28 23:09:02.348063
1689	3	50549d644505cbd2f9f7a127e380388d202d59a37801355fa0b21c4ab80a74ec	2026-09-27 23:24:34.293412	2026-08-28 23:55:00.303418	2026-08-28 23:24:34.294876
1690	3	bdfa41a511eb57ab8f9b19b74a3a23ca1cee4f84a7e121f4bc528c4d8d5148bf	2026-09-27 23:55:00.303732	2026-08-29 00:20:01.746951	2026-08-28 23:55:00.307865
1691	3	d6abb07c96089cd56c9c89b11bd9c1fffd36d9e31e3ed5f99a40936ab482b1f3	2026-09-28 00:20:01.747054	2026-08-29 00:36:06.115091	2026-08-29 00:20:01.748301
1692	3	fa9c338645da12e6d34df689fc6e734a93e629852e0eb8810eae635302521880	2026-09-28 00:36:06.115342	2026-08-29 00:52:09.411895	2026-08-29 00:36:06.120575
1693	3	e64fcda8861e8737a367e9f14274b1943e91dff619a31ee07e188be03808a27e	2026-09-28 00:52:09.412041	2026-08-29 01:08:11.005657	2026-08-29 00:52:09.413857
1694	3	a160135f682579be12d152efaba40c56a8c0cf04559066e1ae30cda1a4797726	2026-09-28 01:08:11.005809	2026-08-29 01:24:16.727692	2026-08-29 01:08:11.00829
1695	3	3939f0d6359a39d6c8a8d91d390b6e7f2c7527d73f4868b5f1498119a31f831b	2026-09-28 01:24:16.727864	2026-08-29 01:40:20.986719	2026-08-29 01:24:16.729514
1696	3	ae22b5c2b5e43ff6012f0dc1efec29b6a76f3ced7257f0df14caf01d431857b0	2026-09-28 01:40:20.986856	2026-08-29 01:56:24.435871	2026-08-29 01:40:20.988595
1697	3	632b47284660849b0c03a2e683694b10566db782d76d4988a703698dcf5aeec7	2026-09-28 01:56:24.436498	2026-08-29 02:12:26.352244	2026-08-29 01:56:24.437898
1698	3	210a812e9893be31469d0cc04dd03b1442371cbb7df18eedc0eeeb5a198ea5d0	2026-09-28 02:12:26.352775	2026-08-29 02:27:27.865572	2026-08-29 02:12:26.354357
1699	3	c26a182bfaa8bfbfc6c39527f7f2fba74ddbabdade03bbf587b82c3e9f2d0450	2026-09-28 02:27:27.865683	2026-08-29 02:42:28.646204	2026-08-29 02:27:27.866906
1700	3	dc0215675978b5bf57ec3d50c9c5440f2f888f8f5cefb82a6c8c60fe6574f3e3	2026-09-28 02:42:28.646682	2026-08-29 02:58:31.320319	2026-08-29 02:42:28.653172
1701	3	6a4c251a06ea88cca9ae1ef2fbf8499dd481b0b1013dd3416400759deb871c39	2026-09-28 02:58:31.320583	2026-08-29 03:14:35.462854	2026-08-29 02:58:31.323913
1702	3	31796ee6c875f7501fcf19fde2f1557160d04f2cb226836cf68ef76a90d768f2	2026-09-28 03:14:35.463033	2026-08-29 03:30:37.66199	2026-08-29 03:14:35.465093
1703	3	6174a3dc443dd9ebea5a5cf6f483f4996c3c6b3657671beb38f7176b632af1a8	2026-09-28 03:30:37.662091	2026-08-29 03:46:39.192773	2026-08-29 03:30:37.663312
1708	3	0358c95c842989b34ac539f85ee9ddd842683b2a0a12b3807b5e671a2024eda4	2026-09-28 05:10:57.01072	2026-08-29 05:26:00.157731	2026-08-29 05:10:57.06031
1712	3	bf54c695a6e19c9c0be2a89e4ddbd3f69bc6879f0da847ae2b13e95cd4827850	2026-09-28 06:13:05.005082	2026-08-29 06:29:05.034784	2026-08-29 06:13:05.009666
1704	3	221df7a458dbeb97216cd386bfc8450b7606578d492ab91fe4803121cbb96192	2026-09-28 03:46:39.194451	2026-08-29 04:02:43.084642	2026-08-29 03:46:39.200872
1707	3	bcd98cd25f8a9475e35d4f90da805302f866240f6dad594f00c07f2f4fd667d0	2026-09-28 04:33:46.322532	2026-08-29 05:10:56.983249	2026-08-29 04:33:46.325014
1705	3	8e0fa93cf8a89d0cad82aaa9dff0b63ce23f9eda7e30dbb485aa47950778b228	2026-09-28 04:02:43.084794	2026-08-29 04:18:44.749782	2026-08-29 04:02:43.08623
1706	3	280f1b0d19886b326293cd2b025bef5af947e0708acb4fec7cfbe2cf4b656605	2026-09-28 04:18:44.750022	2026-08-29 04:33:46.322322	2026-08-29 04:18:44.753869
1709	3	336cf28e117c092fb143385cdc6a31b3827440d9f30dc6f4b01112c271c8d789	2026-09-28 05:26:00.158119	2026-08-29 05:41:05.014359	2026-08-29 05:26:00.165065
1710	3	2f9a7305b81c414ce7e87af7ba884a17a35702b8b44b5e181b25ba77b5b3f31c	2026-09-28 05:41:05.014531	2026-08-29 05:57:05.090972	2026-08-29 05:41:05.016133
1711	3	ee437f0e46f75a607fea1ad10c255f5e7956dc116be6e2b0c214b6a8747cecfd	2026-09-28 05:57:05.091148	2026-08-29 06:13:05.004921	2026-08-29 05:57:05.094426
1713	3	e00ae7dc937cbd543ee9ee7518b43975befa5bc2958d5783f68c161817a2100c	2026-09-28 06:29:05.035075	2026-08-29 06:45:05.046757	2026-08-29 06:29:05.038136
1714	3	3255de15967c0060a429400f10848524c8610966e8768b614aae75d85677b6eb	2026-09-28 06:45:05.046913	2026-08-29 07:01:05.083751	2026-08-29 06:45:05.048348
1715	3	6570bd26c4311132c90ae0ef98c79a466a0e23912f7623d14bda4fb4af027c28	2026-09-28 07:01:05.084568	2026-08-29 07:17:05.036211	2026-08-29 07:01:05.091948
1716	3	50cf64fb7a409e91d08bdd4ef482cceffa9f4c029b0e48c32dbc25ab1f7e0192	2026-09-28 07:17:05.036397	2026-08-29 07:32:30.193978	2026-08-29 07:17:05.038431
1717	3	3a38f81494d649df0c9f9fa28623f86d1257ab5aa8e515703e7ffe8455562f71	2026-09-28 07:32:30.194218	2026-08-29 07:48:00.226805	2026-08-29 07:32:30.202567
1718	3	2196ab9f826750e2d6ba18ff8c7909ce461231420d1ab4273aed031115a1d098	2026-09-28 07:48:00.226942	2026-08-29 08:04:02.000255	2026-08-29 07:48:00.233113
1719	3	ba0793d37e381c418d03589bafe67ab521587e24b568380859b1d9cdf264c5c8	2026-09-28 08:04:02.00044	2026-08-29 08:19:30.143409	2026-08-29 08:04:02.004057
1720	3	067240be668a8ac217c414c6c516d7eef80756447d2a69a09de7cb1e359da0e3	2026-09-28 08:19:30.144831	2026-08-29 08:35:00.124202	2026-08-29 08:19:30.148765
1721	3	33d8e6d51bebc7c8bdd6ec523e2d896afa45db22356aec2be95ddd9c30b8fef8	2026-09-28 08:35:00.124346	2026-08-29 08:50:04.983832	2026-08-29 08:35:00.126804
1722	3	247b223c4ca3d9406012e003bb6475a5e06d8d7cb1a2fe9943b178decaa54344	2026-09-28 08:50:04.984062	2026-08-29 09:06:05.003575	2026-08-29 08:50:04.986777
1723	3	00dcc15c620d30a67cf50d4a30ff4efbf17453a7b95ed01e0ef73558bd8049a7	2026-09-28 09:06:05.003771	2026-08-29 09:21:30.154096	2026-08-29 09:06:05.006817
1724	3	429fe7b9fb391950d8eafa53034b1ce8479075867e52a2f406473bd82b983362	2026-09-28 09:21:30.154214	2026-08-29 09:37:05.051325	2026-08-29 09:21:30.156242
1725	3	de2654a1f318002fff19625ce2cb7525c58a442ce64c22c6263f850a58e48be7	2026-09-28 09:37:05.052268	2026-08-29 09:53:05.010504	2026-08-29 09:37:05.058718
1727	1	f209ddaf1d07ae2ab3c0a94ea14d49646bed9ff9bfd9cc42baeb61c0631f4759	2026-09-28 10:06:38.807807	\N	2026-08-29 10:06:38.809265
1726	3	9eec7254af1a964a530ab5c91fee695d830eb4697cec3c8b40039d763f7efec5	2026-09-28 09:53:05.01735	2026-08-29 10:08:16.241991	2026-08-29 09:53:05.021218
1729	1	0f10143ce17414063037cf306473858472ec268c081fa3ffdb244ec269a4cceb	2026-09-28 10:10:17.214451	\N	2026-08-29 10:10:17.217241
1730	1	b01b1b8cae25ce4fd061781c60f31ddc8c28d300f90dd3f6e23b576f2a25ede3	2026-09-28 10:15:15.147184	\N	2026-08-29 10:15:15.149881
1728	3	329c2aa4c73483646cad6489c808f17d6ec8566d85cfb416a143ab0728736af0	2026-09-28 10:08:16.242137	2026-08-29 10:23:30.140441	2026-08-29 10:08:16.245368
1731	3	4c704a53ca9b0228fbfd281cf9dc4c4b7c14bee74f978f84719075d6761a72b5	2026-09-28 10:23:30.140636	2026-08-29 10:39:04.913732	2026-08-29 10:23:30.143078
1732	3	af844dde5e4538e46a7cd773c25754e7cb032e5e79abd84207fead6dbb306e14	2026-09-28 10:39:04.913895	2026-08-29 10:55:04.962836	2026-08-29 10:39:04.915995
1733	3	5055d2a2c0b5200ee83f8273db2a25502668a483000839a1bd0a46efe63d4928	2026-09-28 10:55:04.962979	2026-08-29 11:11:04.931584	2026-08-29 10:55:04.964973
1734	3	7bee51bcc29e25dd4be9cd183774b1c4bb26d4975c0edc9b870f92431fdac14e	2026-09-28 11:11:04.93173	2026-08-29 11:27:04.936588	2026-08-29 11:11:04.933984
1735	3	52f7c669c3c4ca41109bf398dd68cb1db8027f34eaaef7488b7a6ea29d410ed6	2026-09-28 11:27:04.937011	2026-08-29 11:42:08.857218	2026-08-29 11:27:04.941425
1736	3	c57db0fb49d6f32c9c164386478fcf61f91055773fb95a1765620b6f75e681d8	2026-09-28 11:42:08.857456	2026-08-29 12:00:11.398519	2026-08-29 11:42:08.860538
1737	3	ad1b970997d01715a53f23eb56ed1c675ea463ede63de825b99e360122250c47	2026-09-28 12:00:11.39891	2026-08-29 12:15:32.948705	2026-08-29 12:00:11.4257
1738	3	a93ca7341c705d5a0a29f84c7630d8b283b8ec4d7ffb484b99b5ad98b8223704	2026-09-28 12:15:32.948951	2026-08-29 12:31:02.963803	2026-08-29 12:15:32.952505
1739	3	5c1b97c82ec516280caf3d33402965427b8f64f2fa2dd444516f2a62a890d436	2026-09-28 12:31:02.964204	2026-08-29 12:46:57.281756	2026-08-29 12:31:02.970133
1740	3	72d45eb9c7ad46d6cddafb9666e651aa9000da13b6625077fde6b86723c31829	2026-09-28 12:46:57.281851	2026-08-29 13:02:57.351492	2026-08-29 12:46:57.285118
1741	3	c9217ea5bc6279eb62397c4d5759d145777e5d995375681f64929986b3dc9d40	2026-09-28 13:02:57.351659	2026-08-29 13:18:49.989841	2026-08-29 13:02:57.353942
1742	3	3d08ac21538005b78e4fc4474a4b7cbff4302b43cf2b66e3117104d001148dba	2026-09-28 13:18:49.990103	2026-08-29 13:34:49.687587	2026-08-29 13:18:49.993466
1743	3	804358bed03db0a54254390a19bae419d806bd2c1d505905f89b9385bc0be1c6	2026-09-28 13:34:49.688253	2026-08-29 13:50:51.020163	2026-08-29 13:34:49.695718
1744	3	0289ba473dfa2a14f88c680a7c2d264957bffdccc905f5ab093f22577a57c85f	2026-09-28 13:50:51.020275	2026-08-29 14:06:53.255603	2026-08-29 13:50:51.022053
1745	3	8a52d0be6f476e712ff8b19bc8602cf4ae073f57ffd9905232ec02189d3e9045	2026-09-28 14:06:53.255739	2026-08-29 14:22:52.243258	2026-08-29 14:06:53.257724
1746	3	5da362875ffed5419b889f80ae52c5d08422f8d740697e7a3db6da5b2c6da05f	2026-09-28 14:22:52.243474	2026-08-29 14:37:55.468931	2026-08-29 14:22:52.245317
1748	1	e8a092a61a780b902c2d4e1bf00372a7ec20352d360391545a8e2a4811d5ca9d	2026-09-28 14:42:35.941418	\N	2026-08-29 14:42:35.94862
1749	1	12d6d3c9f7e9f941405f1510146639bb20ad9c610837e606751df0e4ba9a891a	2026-09-28 14:44:31.569491	\N	2026-08-29 14:44:31.571503
1747	3	f9e3e24c14c605f67bce2455f221909238d5d53dbc0f32029f9d24adcfa31279	2026-09-28 14:37:55.46904	2026-08-29 14:53:48.626963	2026-08-29 14:37:55.470709
1750	3	58433aec689fc9d4bca27a7ed6923adb40f3c0395e18771f9e4587e0cee017f9	2026-09-28 14:53:48.62709	2026-08-29 15:09:48.593407	2026-08-29 14:53:48.629205
1751	3	170b3d188c37cefd2987a7d2bd05d3f2d1419c0463266734db3a8f7e8b5ac5b6	2026-09-28 15:09:48.593549	2026-08-29 15:25:48.701929	2026-08-29 15:09:48.596344
1752	3	7e57c6b32923b7bd1ec0e22d6d397e172e5a32f9c9ebcdd3ab28b3134d61bb59	2026-09-28 15:25:48.702459	2026-08-29 15:41:16.254893	2026-08-29 15:25:48.761457
1753	3	9d400fc4a3fbad497e3852f7711a328984eb6e14f2b5ac5b737fcde9a192a8ce	2026-09-28 15:41:16.255038	2026-08-29 15:56:18.776811	2026-08-29 15:41:16.257041
1755	1	dff552167df0c2de8dbac15d753895022f2a288010ed8f3e6c249a5bf56b0d80	2026-09-28 15:56:46.242033	\N	2026-08-29 15:56:46.243107
1757	1	aa9fc11dce10726a8cb493d4ec76b115ee04370ffd5b0881bff29e8a2580037c	2026-09-28 16:06:48.999441	\N	2026-08-29 16:06:49.00215
1754	3	9603de0bfdbb3675115298dd05d2dc67c91838828573b2e070750ba35c5d4119	2026-09-28 15:56:18.777379	2026-08-29 16:11:48.918627	2026-08-29 15:56:18.785501
1759	1	13e4ac7bd8c5af30c2988dbaa8bba85b46de1e3cc48b76fc2cc3fc1f19a5aabf	2026-09-28 16:12:46.935359	\N	2026-08-29 16:12:46.936528
1760	1	fcddc7926aa79b12bcbf14ade66037a3a339e01b16d004b51a5d3a02c150a364	2026-09-28 16:13:20.295345	\N	2026-08-29 16:13:20.296226
1761	1	30335126df98609e705bdbed2ad23c48466f81a555657d69aa56e3393fb5a7a2	2026-09-28 16:15:32.218092	\N	2026-08-29 16:15:32.219045
1762	1	822cf4d65f6fa50218f7d4e3056d417dfe60a86d5823d73db3978d3bc96d4a6f	2026-09-28 16:15:44.506442	\N	2026-08-29 16:15:44.507414
1756	3	28ca0d95c6f55797646baa2bde0f47a7c38006f02d504d7fb81cf43e7297255c	2026-09-28 16:02:03.398819	2026-08-29 16:17:23.119364	2026-08-29 16:02:03.428078
1764	1	0af514b0c53c60cf862901314983a2f334a583518c30de88a0ab393842897281	2026-09-28 16:20:21.390286	\N	2026-08-29 16:20:21.39136
1765	1	32ef8105ea58626f9ff95a3f7afec4ee0dc078f84d5ce1652a7dbc758ecdb9e8	2026-09-28 16:21:34.295089	\N	2026-08-29 16:21:34.296328
1758	3	6d2cd865356e77c777477e23b9aa238628e56ba5758cbf50db43e72957514990	2026-09-28 16:11:48.918749	2026-08-29 16:27:20.594041	2026-08-29 16:11:48.920639
1763	3	3a4e58f00d805ef57163d7425a3965a2997d3f416aaf917b2e9065c2f96e79d6	2026-09-28 16:17:23.119465	2026-08-29 16:32:49.087464	2026-08-29 16:17:23.137676
1766	3	b16d4b64460e888d8ac23c274f036b3d1148e1470d850d39d919f09235569437	2026-09-28 16:27:20.594334	2026-08-29 16:42:53.535542	2026-08-29 16:27:20.595782
1767	3	b3efa692de9d8c12b878830a6cc0d64fa3b82220b518bb0e5e29431b252f102b	2026-09-28 16:32:49.087558	2026-08-29 16:47:55.735014	2026-08-29 16:32:49.091662
1768	3	f529717d9cfcc52fa09d0bcb27812a1b527efd9d6df22d5cf2f854f59bc15f84	2026-09-28 16:42:53.535702	2026-08-29 16:58:00.770183	2026-08-29 16:42:53.538128
1769	3	16c07cd000278f311a91418df6ff6dd6f7fd6aceedb8e646cee9607d1cde3c65	2026-09-28 16:47:55.735558	2026-08-29 17:03:05.43585	2026-08-29 16:47:55.738392
1779	3	e5df0408dacabcf96458f7f581e10c9deeb6f5cc2e18cc7800cd245f93fcfd12	2026-09-28 18:03:34.662108	2026-08-29 18:18:43.687568	2026-08-29 18:03:34.665607
1780	3	9fe036628e9dc644600e81547cbd94d693e5c1757703b76d6f3b177e0599752f	2026-09-28 18:13:41.377006	2026-08-29 18:28:48.318189	2026-08-29 18:13:41.378501
1791	3	0c9ebb9f147a4b2c232d9bdd6338a19663913e6d8c01ce33c270b435079e9b55	2026-09-28 19:34:19.670717	2026-08-29 19:49:26.497627	2026-08-29 19:34:19.673393
1793	3	dd8d59ada350a5293bae2b66910cccea3ca9b219b96396eda5f390884a593d72	2026-09-28 19:49:26.497907	2026-08-29 20:04:36.001423	2026-08-29 19:49:26.503537
1800	3	b59c0c309306e18a59327b90f580b34f403ea255106bb7cae2dce2387949a89d	2026-09-28 20:44:56.81305	2026-08-29 21:00:03.820444	2026-08-29 20:44:56.815357
1803	3	540fd848d11c8b2ad285a1704433f1be8c6d79e22159db6657154e382a7e4779	2026-09-28 21:05:05.540138	2026-08-29 21:20:12.884493	2026-08-29 21:05:05.557055
1806	3	1b416a7890abba5e4600c2e77bd405672e5f2e91bf79b13a47ebf025df475e2c	2026-09-28 21:30:17.46955	2026-08-29 21:45:25.080774	2026-08-29 21:30:17.471322
1808	3	f2067c6a328cb06848d77e2e752d87b882d95b477ac6af239c4ea2e25ddc225d	2026-09-28 21:45:25.080899	2026-08-29 22:00:33.554988	2026-08-29 21:45:25.083467
1810	3	512bda0835ad3da826aebf9a00594944e4306910ea1009703bfab7f3c6b49a3e	2026-09-28 22:00:33.555285	2026-08-30 13:47:18.109053	2026-08-29 22:00:33.558304
1770	3	bf9a0b22d27c58aef860f79f6ae1d70dfbff527a0e803797dfde8cee86e94279	2026-09-28 16:58:00.770308	2026-08-29 17:13:11.089362	2026-08-29 16:58:00.771706
1773	3	3a30c033b0ce357bcf28e13e09b51e4ce48607543ec271e742070eeadbf07c31	2026-09-28 17:18:14.218505	2026-08-29 17:33:19.129206	2026-08-29 17:18:14.220544
1782	3	23191551999ae41c1d5eb52821bdbb3548f3efdabed325e5dd946da74857fec4	2026-09-28 18:28:48.318289	2026-08-29 18:43:55.780397	2026-08-29 18:28:48.319559
1784	3	147d4719e9f8d001194f3623dfb2e2bfd4ae95c5ba072eb0534ea8abc6d5649f	2026-09-28 18:43:55.780693	2026-08-29 18:59:03.300636	2026-08-29 18:43:55.782763
1785	3	9ad797dd9687eebbf1fa5d5b920ebb2da4f55d6390550c2804db9290715669a5	2026-09-28 18:48:59.341802	2026-08-29 19:04:05.858237	2026-08-29 18:48:59.344775
1786	3	191b7db0388f113bd3e736e96c57af94488eaf806ed5788fe0a4850a591a083d	2026-09-28 18:59:03.30094	2026-08-29 19:14:10.236022	2026-08-29 18:59:03.305494
1789	3	b3b917960bda254c396d77f5342efe470dc6370024448a540787c6fa25bb72b2	2026-09-28 19:19:13.00237	2026-08-29 19:34:19.670588	2026-08-29 19:19:13.007416
1798	3	5f023a71204b2f484c71006e83792a6134ca88fd102005e26fce4d0f5d8513c3	2026-09-28 20:29:49.193089	2026-08-29 20:44:56.812913	2026-08-29 20:29:49.194672
1771	3	26eb66d952a332278e28c44574ce28cc9c3548e2e3d9e13b0d933dde1dcd2c06	2026-09-28 17:03:05.435963	2026-08-29 17:18:14.218388	2026-08-29 17:03:05.437621
1774	3	2d1434d62b217e7dc1067c8a0012519c074cc6e28934749c12032d595d0e7ed5	2026-09-28 17:28:17.680538	2026-08-29 17:43:24.704068	2026-08-29 17:28:17.687889
1778	3	420feee24bba5b14868c10d57fb2a0923f90b318b9c05a882da055bbd08f7c4a	2026-09-28 17:58:31.62345	2026-08-29 18:13:41.37691	2026-08-29 17:58:31.625536
1783	3	61e79574bbff7b71345f03eb57d650fc6deaf4c875445a2658ad0548587bf91d	2026-09-28 18:33:50.833169	2026-08-29 18:48:59.341531	2026-08-29 18:33:50.836486
1788	3	0c1d5ae139e83baa29ebec741e0095a146a7e2d42d023d10127dd292822799dd	2026-09-28 19:14:10.236114	2026-08-29 19:29:17.775266	2026-08-29 19:14:10.237509
1794	3	3121b7c0ed96cf1062bf4dfe05fa5137817c0864836c58629d91e856b02df7a7	2026-09-28 19:59:33.956124	2026-08-29 20:14:40.634648	2026-08-29 19:59:33.958578
1797	3	e01d11e56a291719e7029578f06f6efe2490ebb6c146552bb7fd636d3a3d6c9b	2026-09-28 20:19:43.850179	2026-08-29 20:34:52.700954	2026-08-29 20:19:43.851933
1801	3	c8a48a34b3121445c40da499eb06397b5a52e43530cffac353980cf82312720c	2026-09-28 20:49:59.089777	2026-08-29 21:05:05.536644	2026-08-29 20:49:59.092135
1805	3	52bc3172f80bb9495b798cb8ef803e372f6cdb0da75b717085227ad6f5638dea	2026-09-28 21:20:12.884742	2026-08-29 21:35:20.622831	2026-08-29 21:20:12.888489
1772	3	5ddcb4dcc8677eae632ec5563aaceda78b5bd05fd64b53e55d0e9252c981b923	2026-09-28 17:13:11.089631	2026-08-29 17:28:17.680033	2026-08-29 17:13:11.092157
1775	3	af86dc6de34a1071772a75cae873b9ef344eaae0d72126194d3ca5aa8c33405a	2026-09-28 17:33:19.129498	2026-08-29 17:48:27.03683	2026-08-29 17:33:19.133152
1776	3	c627925a9704289508bac817a0ef551b0fa2bd711ef11a80f1deab0b47e28487	2026-09-28 17:43:24.704202	2026-08-29 17:58:31.623218	2026-08-29 17:43:24.705673
1777	3	2861e3ba046b08beef1320586392a7cd225a70aab12c2086839da25895470a42	2026-09-28 17:48:27.03707	2026-08-29 18:03:34.661895	2026-08-29 17:48:27.038924
1781	3	220069f7896965c4178571c7e1fe0297a01987dc2cb1b93e2e185d37bbe66dcc	2026-09-28 18:18:43.688585	2026-08-29 18:33:50.832925	2026-08-29 18:18:43.690542
1787	3	65203a5af377dc1a979d3eb0000eeff26774cbf1638b0bc45b85d76f1e0e6ee0	2026-09-28 19:04:05.858463	2026-08-29 19:19:13.0022	2026-08-29 19:04:05.862432
1790	3	7084cc62ab224ee06010f3e45a8a1f9a7c68ef06de24986132b3b78bd4e27862	2026-09-28 19:29:17.775338	2026-08-29 19:44:24.427374	2026-08-29 19:29:17.77685
1792	3	2356e43f1f8ca908fefbf6e76cfe4201306d27000643588f09a9e37d402ba616	2026-09-28 19:44:24.427523	2026-08-29 19:59:33.955926	2026-08-29 19:44:24.430031
1795	3	0383b40bf0e68675f29a7d8395f50b525f998a353a06e0e08e934c3a6405f9ac	2026-09-28 20:04:36.001532	2026-08-29 20:19:43.850067	2026-08-29 20:04:36.003384
1796	3	28136c6b4325b9c09daefa8e9fb3b6c09d021358928b52a61108039761d71f6c	2026-09-28 20:14:40.634755	2026-08-29 20:29:49.192975	2026-08-29 20:14:40.636199
1799	3	21abe515e5f4e7cb42387a8055f2c85bd8390182a11a252f96702cc8ad19b315	2026-09-28 20:34:52.701203	2026-08-29 20:49:59.089501	2026-08-29 20:34:52.70371
1802	3	6625a529217afb92de12848707591c6719f7673d12340cc7f8a1592ee27e9278	2026-09-28 21:00:03.820564	2026-08-29 21:15:10.419183	2026-08-29 21:00:03.822158
1804	3	e6dee7dc6f5788d08a8505831f949fc2935ed2694c4caf9601b1ef4d0418bf99	2026-09-28 21:15:10.419299	2026-08-29 21:30:17.469464	2026-08-29 21:15:10.420656
1807	3	f47d9ae2a59b7fa15ba003d24edfe814b7ec2dff9aa804339f88e6d615a73fc1	2026-09-28 21:35:20.62332	2026-08-29 21:50:27.234578	2026-08-29 21:35:20.629289
1809	3	b1a8c0f8179415832cdd10ecb09517853f3214b15c8270a659a3aa7721a878e1	2026-09-28 21:50:27.23473	2026-08-29 22:05:36.033463	2026-08-29 21:50:27.236571
1811	3	a7d42dd7652297af303949ed9a40cd4e589cb0bdc20b81b80d2bedb3ae9c2885	2026-09-28 22:05:36.033688	2026-08-30 13:47:24.338818	2026-08-29 22:05:36.036159
1814	1	af8546eb14fafdfc9d0a2e9f420dc62aafed7845b521f58fb6432839adb1d1ef	2026-09-29 13:53:41.574497	\N	2026-08-30 13:53:41.575499
1812	3	60343bd9547bd49c1310723ed024e633bf778f840c1a64a54e6ef1cbf2247f84	2026-09-29 13:47:18.1149	2026-08-30 14:02:23.059043	2026-08-30 13:47:18.157736
1813	3	25e95c93dead4252eae20d746538427fc019e9c8669478e9e7734ac37f7b9eb7	2026-09-29 13:47:24.338877	2026-08-30 14:02:41.034566	2026-08-30 13:47:24.340273
1815	3	cfff3618fa3f4f710355b8817ef1fe0d3b2d5f09cc89eb5f432e8110c4dfce09	2026-09-29 14:02:23.059327	2026-08-30 14:17:35.952257	2026-08-30 14:02:23.064293
1816	3	5968456bef756dbf83ecbce3ac36e605dcf2e31a31e1368aefb6cec077f0b3e0	2026-09-29 14:02:41.034702	2026-08-30 14:18:38.939545	2026-08-30 14:02:41.036677
1817	3	8d92687c4f65cdf86d6d6457360f131208c7fd64a508b7037c16678e5ea0a9d6	2026-09-29 14:17:35.952362	2026-08-30 14:32:45.914076	2026-08-30 14:17:35.956128
1818	3	6a6c7a8d8c39db92f592693e0477c61f0c437c75fe7f31fc51bb5a557b0ac08b	2026-09-29 14:18:38.939686	2026-08-30 14:33:47.170301	2026-08-30 14:18:38.941521
1819	3	f9047ebd747274f9da5acfe1e201cda55d9f79961c82d453b602989250607cb6	2026-09-29 14:32:45.914361	2026-08-30 14:47:57.985319	2026-08-30 14:32:45.917966
1820	3	21ab33300b4a094d085fda1a8a91edc66bbaebe49cc3ccb95f8a9a14cf7c3ec1	2026-09-29 14:33:47.170347	2026-08-30 14:48:58.146634	2026-08-30 14:33:47.171611
1821	3	4a9f5ca5ea4b0a53e14d0be4a5dcd7283084ca601974725d369323ef00b3e866	2026-09-29 14:47:57.985451	2026-08-30 15:03:10.981867	2026-08-30 14:47:57.987836
1822	3	968746ed92e774f936d7685869929a0882f03667753ddab088593685df3a3aca	2026-09-29 14:48:58.146663	2026-08-30 15:04:11.704831	2026-08-30 14:48:58.147358
1823	3	303211ab0a9efbffec4263230d26110e6db0e4a2f49bb27753b6bf4bf5d6b809	2026-09-29 15:03:10.982083	2026-08-30 15:18:21.980157	2026-08-30 15:03:10.984786
1824	3	67f4a72edd5f5e006cbeafc246a309190e2aa1e7af3a7e3a7586be55774d7bb9	2026-09-29 15:04:11.704909	2026-08-30 15:19:22.656811	2026-08-30 15:04:11.706645
1825	3	a8e60406fa60f7640fcb3850685e9b1d38e8067f099aedf4667b22b882c89fe9	2026-09-29 15:18:21.980365	2026-08-30 15:33:32.895764	2026-08-30 15:18:21.981637
1826	3	937c2ea20c1e7db928f2a912a50971ed496db56dab22e9d61d2db2f3873a805d	2026-09-29 15:19:22.656854	2026-08-30 15:34:32.675129	2026-08-30 15:19:22.657745
1827	3	2d68bef5a77e91d892f63274c59943895b2108db3a12e0cf81c1605c44c12722	2026-09-29 15:33:32.895915	2026-08-30 15:48:39.23032	2026-08-30 15:33:32.897962
1828	3	26e84263ceda2fc5bc9fb38449d7a57fc75efa44dc74147121536aef4f5bd511	2026-09-29 15:34:32.675442	2026-08-30 15:49:43.809315	2026-08-30 15:34:32.681325
1829	3	76ed051d37fb81564a181ae420e812e9e5594059ae7a214f131c794b56a68ec3	2026-09-29 15:48:39.230695	2026-08-30 16:04:42.684656	2026-08-30 15:48:39.235797
1830	3	c4e233894fae492cc753ea725ccdbce7d93f8f41519964b2f5e59e61b5834cec	2026-09-29 15:49:43.809411	2026-08-30 16:05:46.438683	2026-08-30 15:49:43.810651
1831	3	a7dda9bcab474d5594ec7b5800c9c4f6939be1376f1e68663a2fe7476a689377	2026-09-29 16:04:42.684826	2026-08-30 16:19:45.320422	2026-08-30 16:04:42.687338
1832	3	f1247deb50f5056cdcac5f97551e1ba0dfc3facf8a6dda5f3a981d2ac0281bdf	2026-09-29 16:05:46.438768	2026-08-30 16:20:49.398701	2026-08-30 16:05:46.440051
1833	3	29fe1e900fc8db01b1569852fc7027c551a5ab021fb71a584971b5ffdcf36501	2026-09-29 16:19:45.32078	2026-08-30 16:34:47.760164	2026-08-30 16:19:45.324385
1834	3	531b14cea1bc41d66abe28ca95a43f7b913dfd9eea8b600d06572e5e0810d32c	2026-09-29 16:20:49.398743	2026-08-30 16:35:51.94931	2026-08-30 16:20:49.399647
1835	3	104dec9b91c75ad94485aed84d1bf70ed98769c6c8ec5e0f3f8f65b9ef507d8b	2026-09-29 16:34:47.760246	2026-08-30 16:49:48.669946	2026-08-30 16:34:47.761472
1836	3	6f09a7d8e86b586cf210b6281b146da65ae91c0be569e4b59d5649b2dc87fd9a	2026-09-29 16:35:51.949398	2026-08-30 16:50:52.707848	2026-08-30 16:35:51.950992
1837	3	46bbd965774ebf1a3bb1289c92e78e208dca59c7b86e4e1dc516ad694b7d4adc	2026-09-29 16:49:48.670127	2026-08-30 17:05:46.122493	2026-08-30 16:49:48.672345
1838	3	f65c5bb9b9c7d410fc782d24f5f239cde83a69ad30e481723b9d403d81e353b6	2026-09-29 16:50:52.707911	2026-08-30 17:06:50.641216	2026-08-30 16:50:52.708944
1839	3	b5f880965a30056f4f2dc3e6fa1254a2cbdd36e59fc33c48719291e046dbcf1a	2026-09-29 17:05:46.122664	2026-08-30 17:20:53.753454	2026-08-30 17:05:46.125624
1840	3	4d6a05c1c3c7a81624c67edf7b6b08bf4a0055e130fb9d5fa13b53532722b964	2026-09-29 17:06:50.641331	2026-08-30 17:21:57.536121	2026-08-30 17:06:50.642678
1841	3	e92f253b70df23b4351251b3f144e44324b76f6ecf6c284a295362f17db58f87	2026-09-29 17:20:53.75355	2026-08-30 17:36:53.610178	2026-08-30 17:20:53.755108
1842	3	93d469c7afe59c07901021a911c1298a4f333b68671d13f3a1265f2a55eac47d	2026-09-29 17:21:57.536228	2026-08-30 17:37:57.214761	2026-08-30 17:21:57.538334
1843	3	83888fe348ea57bc150a9e6d144bf84caca124b6eff383b86125e7c463203364	2026-09-29 17:36:53.610641	2026-08-30 17:51:59.47037	2026-08-30 17:36:53.614169
1844	3	174d66811e06467fa239c404b6b9b4aff2f8b8cf609ac7a42a46ca58a1863bfd	2026-09-29 17:37:57.214878	2026-08-30 17:53:04.23388	2026-08-30 17:37:57.216529
1845	3	a52ea2a766a4ef2a221d0729948cd47d4f6cf90e6f6a9b6939fbaff447015666	2026-09-29 17:51:59.470541	2026-08-30 18:08:03.256389	2026-08-30 17:51:59.474077
1846	3	70d638b5acdd8899cccdaf6e69fce291b49d7ee0fa890e34b05268e16576810b	2026-09-29 17:53:04.233972	2026-08-30 18:09:06.312144	2026-08-30 17:53:04.235422
1847	3	6b9bdf64c0cb5204226a1ca0f8212b7039759cabcf177500c91a0c686665dc43	2026-09-29 18:08:03.256715	2026-08-30 18:23:08.552766	2026-08-30 18:08:03.265041
1848	3	ae811033eb999fe73ebd57c27b5f0d1976215837e73280fe3770d4ae17c8cd56	2026-09-29 18:09:06.315104	2026-08-30 18:24:12.536312	2026-08-30 18:09:06.321196
1849	3	556f4d20ab78bd0de897ae00169500aadcb29f6496cebd4da023d407be40d786	2026-09-29 18:23:08.552925	2026-08-30 18:38:09.262363	2026-08-30 18:23:08.557354
1850	3	1ff872e0edebf44b4ffe7eab431946a140581a66bf0101efde3b73f7a7d48af1	2026-09-29 18:24:12.536614	2026-08-30 18:39:13.669853	2026-08-30 18:24:12.541673
1851	3	130529037555f89036e85ac562e2fc93c62d28cfdef1650af2723936648d736f	2026-09-29 18:38:09.262516	2026-08-30 18:53:12.222456	2026-08-30 18:38:09.264833
1852	3	2fb269ba4c8dd7eb2d512a24b8a46135598af914e736fb45578a5bb57ce65c3c	2026-09-29 18:39:13.670508	2026-08-30 18:54:17.30818	2026-08-30 18:39:13.675093
1853	3	bd56b75053194d504aa96b5ecd54cad9cda75b142f4d911b2d2b508903e15d55	2026-09-29 18:53:12.222587	2026-08-30 19:08:19.78586	2026-08-30 18:53:12.224396
1854	3	48b199fbb7cb684dd50f11744397f09cd335646a268aa08846bc28d73cf44e6c	2026-09-29 18:54:17.308274	2026-08-30 19:09:24.380465	2026-08-30 18:54:17.311152
1855	3	eed4a783e215150eeb13b5581f38dc7c4a5537b09d7990a2dad493b9a7e21d36	2026-09-29 19:08:19.786278	2026-08-31 00:03:08.958534	2026-08-30 19:08:19.800211
1858	3	d57184d29aedd9edb674d45072831146df441469726c00fc4058d77376d0e4ef	2026-09-30 00:03:14.444957	2026-08-31 00:18:27.319739	2026-08-31 00:03:14.447935
1861	3	c1057c930d7b598457cfc39e181176cfa58a6ef7c58177a2ec6ed57ec0639703	2026-09-30 00:33:29.62238	2026-08-31 00:49:29.72413	2026-08-31 00:33:29.625925
1865	3	762500d1ee31b8181cbd2288382c9567040e298cff3320412c6068a230ed0ff0	2026-09-30 01:05:29.689946	\N	2026-08-31 01:05:29.696741
1856	3	520c4d9f8981732fca9ee766972c6446ecd2557322594a36c3fcdc2e2a25cce5	2026-09-29 19:09:24.380856	2026-08-31 00:03:14.444922	2026-08-30 19:09:24.382923
1857	3	1fd59f23ed9cc133d7b56d50fc6268493ca4e12cea5813107a402b5a38519fb8	2026-09-30 00:03:08.962109	2026-08-31 00:18:12.325421	2026-08-31 00:03:09.013554
1866	3	e13c7888b8b03507c3082789294ab5c4ac65bb06b475dbe4b17dfc7f1b8892a5	2026-09-30 01:05:29.694456	\N	2026-08-31 01:05:29.696928
1860	3	f0a79136a55f78286cffd144253d6e9e3f20dbd4b8ad4ac93a011d3bb7656dd9	2026-09-30 00:18:27.319806	2026-08-31 00:33:29.622132	2026-08-31 00:18:27.321355
1859	3	df5b2ed33e5b11a33846716abe2f6e54c430fbbea770c4c32a7fa527ece4c5d5	2026-09-30 00:18:12.325643	2026-08-31 00:33:29.626233	2026-08-31 00:18:12.328428
1862	3	eb0e729c859aaed8a4a8d7f5771c4eb09c754044fc796573051d88d21c5d9809	2026-09-30 00:33:29.626372	2026-08-31 00:49:29.718639	2026-08-31 00:33:29.627689
1864	3	61cef61027fac8f7e9ad5046b76655995d8f3cd73e5b633310fc3dc990bf3624	2026-09-30 00:49:29.724171	2026-08-31 01:05:29.689449	2026-08-31 00:49:29.724565
1863	3	d089e99913de5d1d21be293d10e7e4f9147fdc387fac58b3434a84d536515c56	2026-09-30 00:49:29.718863	2026-08-31 01:05:29.694414	2026-08-31 00:49:29.72159
\.


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reports (id, reporter_id, target_type, target_id, reason, detail, status, created_at, updated_at) FROM stdin;
1	3	post	21	spam	\N	open	2026-08-06 08:13:00.632245	2026-08-06 08:13:00.632247
2	3	post	22	other	\N	open	2026-08-06 08:21:06.074316	2026-08-06 08:21:06.074321
3	3	post	17	other	신고 test	open	2026-08-06 08:25:19.409806	2026-08-06 08:25:19.409808
\.


--
-- Data for Name: search_histories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.search_histories (id, user_id, keyword, created_at) FROM stdin;
1	1	졸업논문	2026-07-21 07:17:46.432594
2	1	졸업논문	2026-07-21 07:17:54.906731
3	1	졸업논문	2026-07-21 07:18:08.272044
4	1	졸업논문	2026-07-22 03:38:45.78966
5	1	졸업논문	2026-07-22 03:38:55.798893
6	1	졸업논문	2026-07-22 03:39:19.726576
7	1	졸업논문	2026-07-22 03:39:20.261775
8	1	졸업논문	2026-07-22 03:39:20.583604
9	1	졸업논문	2026-07-22 03:39:20.953429
10	1	졸업논문	2026-07-22 03:39:21.244502
11	1	졸업논문	2026-07-22 03:39:22.118379
12	1	졸업논문	2026-07-22 03:39:22.710506
13	1	졸업논문	2026-07-22 03:39:23.134665
14	1	졸업논문	2026-07-22 03:39:23.445567
15	1	졸업논문	2026-07-22 03:39:23.979031
16	1	졸업논문	2026-07-22 03:46:03.553443
17	3	졸업	2026-08-11 14:48:15.574577
18	3	졸업	2026-08-11 14:52:15.111447
19	3	졸업	2026-08-11 14:52:23.757408
20	3	졸업	2026-08-11 15:00:01.326872
21	3	졸업	2026-08-11 15:04:47.031948
22	3	졸업	2026-08-11 15:06:44.832474
23	3	AISW	2026-08-11 15:06:57.373637
24	1	AISW	2026-08-12 01:14:03.77503
25	3	아아	2026-08-21 10:48:26.541325
\.


--
-- Data for Name: user_blocks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_blocks (id, blocker_id, blocked_user_id, reason, created_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password_hash, nickname, major, phone, company, job_title, "position", email, profile_image_url, role, is_active, created_at, updated_at, cohort, last_login_at, enrollment_status, dues_status, privacy_policy_version, privacy_consented_at) FROM stdin;
3	12312@sogang.ac.kr	$argon2id$v=19$m=65536,t=3,p=2$xRIxRqopjF5X8uAZ6Lh48A$CmjGEMIuh7baCx3lzFGFGq/rbNhc5Ughp98ywgOYpIo	손예진	데이터사이언스·인공지능	01066259554	\N	\N	\N	12312@sogang.ac.kr	/api/media/39/access-url	user	t	2026-07-23 10:15:13.789778	2026-08-31 01:05:29.69895	73	2026-08-31 01:05:29.690869	active	paid	2026-07-12	2026-07-23 10:15:13.780154
2	testmate71	$argon2id$v=19$m=65536,t=3,p=2$xRIxRqopjF5X8uAZ6Lh48A$CmjGEMIuh7baCx3lzFGFGq/rbNhc5Ughp98ywgOYpIo	김동료	데이터사이언스·인공지능	01012312333	\N	\N	\N	mate71@sogang.ac.kr	\N	user	t	2026-07-22 08:38:45.911438	2026-08-06 08:47:31.732779	71	2026-08-06 08:47:31.729872	active	paid	2026-07-12	2026-03-02 09:15:00
1	testuser	$argon2id$v=19$m=65536,t=3,p=2$xRIxRqopjF5X8uAZ6Lh48A$CmjGEMIuh7baCx3lzFGFGq/rbNhc5Ughp98ywgOYpIo	72gi_KimJinsan	AI-SW	010-0000-0000	WithWe	Dev Lead	\N	test@sogang.ac.kr	\N	admin	t	2026-07-21 05:48:30.686403	2026-08-30 13:53:41.578048	72	2026-08-30 13:53:41.574778	active	paid	2026-07-12	2026-03-02 09:00:00
4	123123@sogang.ac.kr	$argon2id$v=19$m=65536,t=3,p=2$xRIxRqopjF5X8uAZ6Lh48A$CmjGEMIuh7baCx3lzFGFGq/rbNhc5Ughp98ywgOYpIo	예진	데이터사이언스·인공지능	01012341234	\N	\N	\N	123123@sogang.ac.kr	\N	user	t	2026-08-06 09:35:26.880953	2026-08-09 16:11:07.580165	73	2026-08-09 16:11:07.568672	active	paid	2026-07-12	2026-08-06 09:35:26.868342
\.


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banners_id_seq', 1, true);


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_id_seq', 33, true);


--
-- Name: bookmarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bookmarks_id_seq', 13, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 28, true);


--
-- Name: dues_payers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dues_payers_id_seq', 6, true);


--
-- Name: email_verification_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.email_verification_tokens_id_seq', 46, true);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_id_seq', 17, true);


--
-- Name: faq_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faq_attachments_id_seq', 1, false);


--
-- Name: faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faqs_id_seq', 6, true);


--
-- Name: legacy_import_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.legacy_import_records_id_seq', 1, false);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.likes_id_seq', 8, true);


--
-- Name: major_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.major_options_id_seq', 10, true);


--
-- Name: media_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.media_assets_id_seq', 59, true);


--
-- Name: notification_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notification_settings_id_seq', 4, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 226, true);


--
-- Name: operational_audit_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operational_audit_logs_id_seq', 11, true);


--
-- Name: password_reset_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.password_reset_tokens_id_seq', 23, true);


--
-- Name: post_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_attachments_id_seq', 49, true);


--
-- Name: post_lecture_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_lecture_reviews_id_seq', 1, false);


--
-- Name: post_mutual_aid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_mutual_aid_id_seq', 6, true);


--
-- Name: post_suggestions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_suggestions_id_seq', 5, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 86, true);


--
-- Name: privacy_policy_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.privacy_policy_versions_id_seq', 1, true);


--
-- Name: push_deliveries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.push_deliveries_id_seq', 1, false);


--
-- Name: push_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.push_tokens_id_seq', 1, false);


--
-- Name: rate_limit_buckets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rate_limit_buckets_id_seq', 1279, true);


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refresh_tokens_id_seq', 1866, true);


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reports_id_seq', 3, true);


--
-- Name: search_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.search_histories_id_seq', 25, true);


--
-- Name: user_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_blocks_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: account_deletion_receipts account_deletion_receipts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_deletion_receipts
    ADD CONSTRAINT account_deletion_receipts_pkey PRIMARY KEY (receipt_id);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: boards boards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (id);


--
-- Name: boards boards_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_slug_key UNIQUE (slug);


--
-- Name: bookmarks bookmarks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT bookmarks_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: dues_payers dues_payers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dues_payers
    ADD CONSTRAINT dues_payers_pkey PRIMARY KEY (id);


--
-- Name: email_verification_tokens email_verification_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_verification_tokens
    ADD CONSTRAINT email_verification_tokens_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: faq_attachments faq_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq_attachments
    ADD CONSTRAINT faq_attachments_pkey PRIMARY KEY (id);


--
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);


--
-- Name: legacy_import_records legacy_import_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legacy_import_records
    ADD CONSTRAINT legacy_import_records_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: major_options major_options_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.major_options
    ADD CONSTRAINT major_options_pkey PRIMARY KEY (id);


--
-- Name: media_assets media_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media_assets
    ADD CONSTRAINT media_assets_pkey PRIMARY KEY (id);


--
-- Name: notification_settings notification_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_pkey PRIMARY KEY (id);


--
-- Name: notification_settings notification_settings_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_user_id_key UNIQUE (user_id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: operational_audit_logs operational_audit_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operational_audit_logs
    ADD CONSTRAINT operational_audit_logs_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_token_hash_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_token_hash_key UNIQUE (token_hash);


--
-- Name: post_attachments post_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_attachments
    ADD CONSTRAINT post_attachments_pkey PRIMARY KEY (id);


--
-- Name: post_lecture_reviews post_lecture_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_lecture_reviews
    ADD CONSTRAINT post_lecture_reviews_pkey PRIMARY KEY (id);


--
-- Name: post_lecture_reviews post_lecture_reviews_post_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_lecture_reviews
    ADD CONSTRAINT post_lecture_reviews_post_id_key UNIQUE (post_id);


--
-- Name: post_mutual_aid post_mutual_aid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_mutual_aid
    ADD CONSTRAINT post_mutual_aid_pkey PRIMARY KEY (id);


--
-- Name: post_mutual_aid post_mutual_aid_post_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_mutual_aid
    ADD CONSTRAINT post_mutual_aid_post_id_key UNIQUE (post_id);


--
-- Name: post_suggestions post_suggestions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_suggestions
    ADD CONSTRAINT post_suggestions_pkey PRIMARY KEY (id);


--
-- Name: post_suggestions post_suggestions_post_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_suggestions
    ADD CONSTRAINT post_suggestions_post_id_key UNIQUE (post_id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: privacy_policy_versions privacy_policy_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.privacy_policy_versions
    ADD CONSTRAINT privacy_policy_versions_pkey PRIMARY KEY (id);


--
-- Name: push_deliveries push_deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.push_deliveries
    ADD CONSTRAINT push_deliveries_pkey PRIMARY KEY (id);


--
-- Name: push_tokens push_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.push_tokens
    ADD CONSTRAINT push_tokens_pkey PRIMARY KEY (id);


--
-- Name: rate_limit_buckets rate_limit_buckets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rate_limit_buckets
    ADD CONSTRAINT rate_limit_buckets_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens refresh_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens refresh_tokens_token_hash_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_hash_key UNIQUE (token_hash);


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: search_histories search_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_histories
    ADD CONSTRAINT search_histories_pkey PRIMARY KEY (id);


--
-- Name: bookmarks uq_bookmarks_user_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT uq_bookmarks_user_post UNIQUE (user_id, post_id);


--
-- Name: dues_payers uq_dues_payers_student_number; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dues_payers
    ADD CONSTRAINT uq_dues_payers_student_number UNIQUE (student_number);


--
-- Name: faq_attachments uq_faq_attachments_faq_media; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq_attachments
    ADD CONSTRAINT uq_faq_attachments_faq_media UNIQUE (faq_id, media_id);


--
-- Name: legacy_import_records uq_legacy_import_records_source_entity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legacy_import_records
    ADD CONSTRAINT uq_legacy_import_records_source_entity UNIQUE (source_file, source_sheet, entity_type, source_id);


--
-- Name: likes uq_likes_user_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT uq_likes_user_post UNIQUE (user_id, post_id);


--
-- Name: major_options uq_major_options_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.major_options
    ADD CONSTRAINT uq_major_options_name UNIQUE (name);


--
-- Name: post_attachments uq_post_attachments_post_media; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_attachments
    ADD CONSTRAINT uq_post_attachments_post_media UNIQUE (post_id, media_id);


--
-- Name: privacy_policy_versions uq_privacy_policy_versions_version; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.privacy_policy_versions
    ADD CONSTRAINT uq_privacy_policy_versions_version UNIQUE (version);


--
-- Name: push_tokens uq_push_tokens_token; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.push_tokens
    ADD CONSTRAINT uq_push_tokens_token UNIQUE (token);


--
-- Name: rate_limit_buckets uq_rate_limit_action_subject; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rate_limit_buckets
    ADD CONSTRAINT uq_rate_limit_action_subject UNIQUE (action, subject_hash);


--
-- Name: reports uq_reports_reporter_target; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT uq_reports_reporter_target UNIQUE (reporter_id, target_type, target_id);


--
-- Name: user_blocks uq_user_blocks_pair; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_blocks
    ADD CONSTRAINT uq_user_blocks_pair UNIQUE (blocker_id, blocked_user_id);


--
-- Name: user_blocks user_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_blocks
    ADD CONSTRAINT user_blocks_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: ix_account_deletion_receipts_completed_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_account_deletion_receipts_completed_at ON public.account_deletion_receipts USING btree (completed_at);


--
-- Name: ix_banners_placement_active_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_banners_placement_active_order ON public.banners USING btree (placement, is_active, sort_order);


--
-- Name: ix_dues_payers_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_dues_payers_name ON public.dues_payers USING btree (name);


--
-- Name: ix_email_verification_tokens_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_email_verification_tokens_email ON public.email_verification_tokens USING btree (email);


--
-- Name: ix_faq_attachments_faq_sort; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_faq_attachments_faq_sort ON public.faq_attachments USING btree (faq_id, sort_order);


--
-- Name: ix_legacy_import_records_status_entity; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_legacy_import_records_status_entity ON public.legacy_import_records USING btree (status, entity_type);


--
-- Name: ix_legacy_import_records_target; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_legacy_import_records_target ON public.legacy_import_records USING btree (target_table, target_id);


--
-- Name: ix_major_options_active_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_major_options_active_order ON public.major_options USING btree (is_active, sort_order);


--
-- Name: ix_notifications_dedupe_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_notifications_dedupe_key ON public.notifications USING btree (dedupe_key);


--
-- Name: ix_operational_audit_logs_actor_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_operational_audit_logs_actor_created ON public.operational_audit_logs USING btree (actor_id, created_at);


--
-- Name: ix_operational_audit_logs_target; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_operational_audit_logs_target ON public.operational_audit_logs USING btree (target_type, target_id);


--
-- Name: ix_password_reset_tokens_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_password_reset_tokens_user_id ON public.password_reset_tokens USING btree (user_id);


--
-- Name: ix_posts_author_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_posts_author_created ON public.posts USING btree (author_id, created_at);


--
-- Name: ix_posts_board_category; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_posts_board_category ON public.posts USING btree (board_id, category);


--
-- Name: ix_posts_board_pinned_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_posts_board_pinned_created ON public.posts USING btree (board_id, is_pinned, created_at);


--
-- Name: ix_posts_notice_deadline; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_posts_notice_deadline ON public.posts USING btree (is_notice, deadline_at);


--
-- Name: ix_push_deliveries_status_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_push_deliveries_status_created ON public.push_deliveries USING btree (status, created_at);


--
-- Name: ix_push_deliveries_ticket_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_push_deliveries_ticket_id ON public.push_deliveries USING btree (ticket_id);


--
-- Name: ix_push_tokens_user_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_push_tokens_user_active ON public.push_tokens USING btree (user_id, is_active);


--
-- Name: ix_rate_limit_buckets_updated_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_rate_limit_buckets_updated_at ON public.rate_limit_buckets USING btree (updated_at);


--
-- Name: ix_refresh_tokens_expires_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_refresh_tokens_expires_at ON public.refresh_tokens USING btree (expires_at);


--
-- Name: ix_refresh_tokens_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_refresh_tokens_user_id ON public.refresh_tokens USING btree (user_id);


--
-- Name: ix_reports_status_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_reports_status_created ON public.reports USING btree (status, created_at);


--
-- Name: ix_reports_target; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_reports_target ON public.reports USING btree (target_type, target_id);


--
-- Name: ix_search_histories_user_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_search_histories_user_created ON public.search_histories USING btree (user_id, created_at);


--
-- Name: ix_user_blocks_blocked_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_user_blocks_blocked_user_id ON public.user_blocks USING btree (blocked_user_id);


--
-- Name: ix_user_blocks_blocker_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_user_blocks_blocker_created ON public.user_blocks USING btree (blocker_id, created_at);


--
-- Name: ix_users_is_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_users_is_active ON public.users USING btree (is_active);


--
-- Name: ix_users_role; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_users_role ON public.users USING btree (role);


--
-- Name: uq_privacy_policy_versions_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uq_privacy_policy_versions_active ON public.privacy_policy_versions USING btree (is_active) WHERE is_active;


--
-- Name: banners banners_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: bookmarks bookmarks_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT bookmarks_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: bookmarks bookmarks_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT bookmarks_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: comments comments_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: comments comments_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comments comments_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: events events_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: faq_attachments faq_attachments_faq_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq_attachments
    ADD CONSTRAINT faq_attachments_faq_id_fkey FOREIGN KEY (faq_id) REFERENCES public.faqs(id) ON DELETE CASCADE;


--
-- Name: faq_attachments faq_attachments_media_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq_attachments
    ADD CONSTRAINT faq_attachments_media_id_fkey FOREIGN KEY (media_id) REFERENCES public.media_assets(id) ON DELETE CASCADE;


--
-- Name: likes likes_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: likes likes_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: media_assets media_assets_owner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media_assets
    ADD CONSTRAINT media_assets_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: notification_settings notification_settings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: notifications notifications_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;


--
-- Name: notifications notifications_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: notifications notifications_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: operational_audit_logs operational_audit_logs_actor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operational_audit_logs
    ADD CONSTRAINT operational_audit_logs_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: password_reset_tokens password_reset_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: post_attachments post_attachments_media_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_attachments
    ADD CONSTRAINT post_attachments_media_id_fkey FOREIGN KEY (media_id) REFERENCES public.media_assets(id);


--
-- Name: post_attachments post_attachments_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_attachments
    ADD CONSTRAINT post_attachments_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: post_lecture_reviews post_lecture_reviews_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_lecture_reviews
    ADD CONSTRAINT post_lecture_reviews_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: post_mutual_aid post_mutual_aid_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_mutual_aid
    ADD CONSTRAINT post_mutual_aid_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: post_mutual_aid post_mutual_aid_reviewed_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_mutual_aid
    ADD CONSTRAINT post_mutual_aid_reviewed_by_fkey FOREIGN KEY (reviewed_by) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: post_suggestions post_suggestions_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_suggestions
    ADD CONSTRAINT post_suggestions_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: post_suggestions post_suggestions_replied_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_suggestions
    ADD CONSTRAINT post_suggestions_replied_by_fkey FOREIGN KEY (replied_by) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: posts posts_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: posts posts_board_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_board_id_fkey FOREIGN KEY (board_id) REFERENCES public.boards(id);


--
-- Name: privacy_policy_versions privacy_policy_versions_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.privacy_policy_versions
    ADD CONSTRAINT privacy_policy_versions_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: push_deliveries push_deliveries_notification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.push_deliveries
    ADD CONSTRAINT push_deliveries_notification_id_fkey FOREIGN KEY (notification_id) REFERENCES public.notifications(id) ON DELETE SET NULL;


--
-- Name: push_deliveries push_deliveries_push_token_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.push_deliveries
    ADD CONSTRAINT push_deliveries_push_token_id_fkey FOREIGN KEY (push_token_id) REFERENCES public.push_tokens(id) ON DELETE SET NULL;


--
-- Name: push_tokens push_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.push_tokens
    ADD CONSTRAINT push_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: refresh_tokens refresh_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT refresh_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: reports reports_reporter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_reporter_id_fkey FOREIGN KEY (reporter_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: search_histories search_histories_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_histories
    ADD CONSTRAINT search_histories_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_blocks user_blocks_blocked_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_blocks
    ADD CONSTRAINT user_blocks_blocked_user_id_fkey FOREIGN KEY (blocked_user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_blocks user_blocks_blocker_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_blocks
    ADD CONSTRAINT user_blocks_blocker_id_fkey FOREIGN KEY (blocker_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict 6w8E3CgHbwVMVDLyTHU4sV0l7dJ9dZAphmbklyDTMCwY89dLNG0cuFFCLXVA84r

