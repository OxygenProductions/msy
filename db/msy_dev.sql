--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    resource_id character varying(255) NOT NULL,
    resource_type character varying(255) NOT NULL,
    author_id integer,
    author_type character varying(255),
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    namespace character varying(255)
);


ALTER TABLE public.active_admin_comments OWNER TO postgres;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO postgres;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- Name: audios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE audios (
    id integer NOT NULL,
    title character varying(255),
    image character varying(255),
    audio character varying(255),
    weight integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_tmp character varying(255),
    audio_tmp character varying(255)
);


ALTER TABLE public.audios OWNER TO postgres;

--
-- Name: audios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE audios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audios_id_seq OWNER TO postgres;

--
-- Name: audios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE audios_id_seq OWNED BY audios.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE authors (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    biography text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO postgres;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE authors_id_seq OWNED BY authors.id;


--
-- Name: cards; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cards (
    id integer NOT NULL,
    name character varying(255),
    is_new boolean,
    card_type character varying(255),
    envelope_id integer,
    author_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.cards OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cards_id_seq OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cards_id_seq OWNED BY cards.id;


--
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ckeditor_assets (
    id integer NOT NULL,
    data_file_name character varying(255) NOT NULL,
    data_content_type character varying(255),
    data_file_size integer,
    assetable_id integer,
    assetable_type character varying(30),
    type character varying(30),
    width integer,
    height integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ckeditor_assets OWNER TO postgres;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ckeditor_assets_id_seq OWNER TO postgres;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ckeditor_assets_id_seq OWNED BY ckeditor_assets.id;


--
-- Name: envelopes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE envelopes (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.envelopes OWNER TO postgres;

--
-- Name: envelopes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE envelopes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.envelopes_id_seq OWNER TO postgres;

--
-- Name: envelopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE envelopes_id_seq OWNED BY envelopes.id;


--
-- Name: fields; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fields (
    id integer NOT NULL,
    name character varying(255),
    field_type character varying(255),
    region character varying(255),
    editable boolean,
    font_family character varying(255),
    font_size integer,
    letter_spacing integer,
    word_spacing integer,
    line_height integer,
    has_text_shadow boolean,
    text_shadow character varying(255),
    text_align character varying(255),
    text character varying(255),
    card_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.fields OWNER TO postgres;

--
-- Name: fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fields_id_seq OWNER TO postgres;

--
-- Name: fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fields_id_seq OWNED BY fields.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE images (
    id integer NOT NULL,
    image character varying(255),
    image_size integer,
    image_type character varying(255),
    name character varying(255),
    card_id integer,
    field_id integer,
    author_id integer,
    env_top_id integer,
    env_bottom_id integer,
    env_under_id integer,
    env_thumb_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE images_id_seq OWNED BY images.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE posts (
    id integer NOT NULL,
    title character varying(255),
    summary text,
    content text,
    permalink character varying(255),
    date date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: readings; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE readings (
    id integer NOT NULL,
    title character varying(255),
    image character varying(255),
    weight integer,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.readings OWNER TO postgres;

--
-- Name: readings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE readings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.readings_id_seq OWNER TO postgres;

--
-- Name: readings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE readings_id_seq OWNED BY readings.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE roles (
    id integer NOT NULL,
    name character varying(255),
    resource_id integer,
    resource_type character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: slideshows; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE slideshows (
    id integer NOT NULL,
    title character varying(255),
    image character varying(255),
    content text,
    weight integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_tmp character varying(255)
);


ALTER TABLE public.slideshows OWNER TO postgres;

--
-- Name: slideshows_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE slideshows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.slideshows_id_seq OWNER TO postgres;

--
-- Name: slideshows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE slideshows_id_seq OWNED BY slideshows.id;


--
-- Name: taggings; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_id integer,
    taggable_type character varying(255),
    tagger_id integer,
    tagger_type character varying(255),
    context character varying(128),
    created_at timestamp without time zone
);


ALTER TABLE public.taggings OWNER TO postgres;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO postgres;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE taggings_id_seq OWNED BY taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: testimonials; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE testimonials (
    id integer NOT NULL,
    title character varying(255),
    summary text,
    content text,
    weight integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.testimonials OWNER TO postgres;

--
-- Name: testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testimonials_id_seq OWNER TO postgres;

--
-- Name: testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE testimonials_id_seq OWNED BY testimonials.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying(255),
    confirmation_token character varying(255),
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying(255),
    customer_id character varying(255),
    last_4_digits character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users_roles (
    user_id integer,
    role_id integer
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- Name: videos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE videos (
    id integer NOT NULL,
    title character varying(255),
    description text,
    video character varying(255),
    image character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    weight integer,
    image_tmp character varying(255)
);


ALTER TABLE public.videos OWNER TO postgres;

--
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_id_seq OWNER TO postgres;

--
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE videos_id_seq OWNED BY videos.id;


--
-- Name: workshops; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE workshops (
    id integer NOT NULL,
    title character varying(255),
    summary text,
    content text,
    date date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.workshops OWNER TO postgres;

--
-- Name: workshops_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE workshops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workshops_id_seq OWNER TO postgres;

--
-- Name: workshops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE workshops_id_seq OWNED BY workshops.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY audios ALTER COLUMN id SET DEFAULT nextval('audios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY authors ALTER COLUMN id SET DEFAULT nextval('authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cards ALTER COLUMN id SET DEFAULT nextval('cards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('ckeditor_assets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY envelopes ALTER COLUMN id SET DEFAULT nextval('envelopes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fields ALTER COLUMN id SET DEFAULT nextval('fields_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY images ALTER COLUMN id SET DEFAULT nextval('images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY readings ALTER COLUMN id SET DEFAULT nextval('readings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY slideshows ALTER COLUMN id SET DEFAULT nextval('slideshows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggings ALTER COLUMN id SET DEFAULT nextval('taggings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY testimonials ALTER COLUMN id SET DEFAULT nextval('testimonials_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videos ALTER COLUMN id SET DEFAULT nextval('videos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workshops ALTER COLUMN id SET DEFAULT nextval('workshops_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY active_admin_comments (id, resource_id, resource_type, author_id, author_type, body, created_at, updated_at, namespace) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	admin@example.com	$2a$10$lQiEqltsKv03pkhdRYfbguCh3CHabitGiQyvhK73LAHxVWx2IrGw2	\N	\N	\N	2	2013-06-28 20:08:44.622941	2013-06-28 02:42:09.714458	127.0.0.1	127.0.0.1	2013-06-26 22:25:33.548749	2013-06-28 20:08:44.625429
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- Data for Name: audios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY audios (id, title, image, audio, weight, created_at, updated_at, image_tmp, audio_tmp) FROM stdin;
11	Guided Practice - 6. Standing Asanas II	\N	6_standing_asanas_2.mp3	100	2013-06-30 05:30:51.651256	2013-06-30 06:02:29.996886	\N	\N
12	Guided Practice - 7. Core Integration	\N	7_core_integration.mp3	110	2013-06-30 05:31:12.991888	2013-06-30 06:02:59.914925	\N	\N
1	Ancient Roots of Modern Yoga - Vedas	sunsalutewebplay.jpg	Vedas___Gayatri_Mantra_-_MP3_0.mp3	0	2013-06-28 07:57:49.867781	2013-06-30 00:00:44.558188	20130629-2000-94161-0003/sunsalutewebplay.jpg	20130629-2000-94161-2217/Vedas___Gayatri_Mantra_-_MP3_0.mp3
7	Guided Practice - 2. Warming the Body	\N	2_warming_the_body.mp3	60	2013-06-30 05:29:14.055293	2013-06-30 06:03:12.288313	\N	\N
3	Guiding Asanas - Part I	WaterSLidecropped.jpg	Guiding_Asanas_-_Part_I.mp3	20	2013-06-30 00:04:51.540925	2013-06-30 00:04:51.643077	20130629-2004-94161-8915/WaterSLidecropped.jpg	20130629-2004-94161-5619/Guiding_Asanas_-_Part_I.mp3
2	Ancient Roots of Modern Yoga - Tantra	Astavakra300_copy_1.jpg	Tantra_Talk.mp3	10	2013-06-30 00:02:49.10682	2013-06-30 00:02:49.348163	20130629-2002-94161-3158/Astavakra300_copy_1.jpg	20130629-2002-94161-3251/Tantra_Talk.mp3
4	Guiding Asanas - Part II	MarkTeachSideAngle72_0.jpg	Guiding_Asanas_-_Part_II.mp3	30	2013-06-30 00:06:41.033762	2013-06-30 00:06:41.071058	20130629-2006-94161-1255/MarkTeachSideAngle72_0.jpg	20130629-2006-94161-1529/Guiding_Asanas_-_Part_II.mp3
9	Guided Practice - 4. Surya Namaskara B	\N	4_surya_namaskara_2.mp3	80	2013-06-30 05:30:04.814572	2013-06-30 06:03:42.658587	\N	\N
19	Guided Practice - 14. Savasana	\N	14_savasana.mp3	180	2013-06-30 05:33:26.084101	2013-06-30 06:00:48.323661	\N	\N
18	Guided Practice - 13. Inversions	\N	13_inversions.mp3	170	2013-06-30 05:33:07.642228	2013-06-30 06:01:05.313039	\N	\N
17	Guided Practice - 12. Twists, Forward Bends and Hip Openers	\N	12_forward_bends.mp3	160	2013-06-30 05:32:47.795052	2013-06-30 06:01:16.999597	\N	\N
16	Guided Practice - 11. Backbends II	\N	11_backbends_2.mp3	150	2013-06-30 05:32:29.237921	2013-06-30 06:01:27.189361	\N	\N
15	Guided Practice - 10. Backbends I	\N	10_backbends.mp3	140	2013-06-30 05:32:11.373414	2013-06-30 06:01:37.590489	\N	\N
5	Guided Practice - Complete	\N	complete_practice.mp3	40	2013-06-30 05:28:11.317266	2013-06-30 19:56:48.810371	\N	\N
14	Guided Practice - 9. Arm Balances II	\N	9_arm_balances_2.mp3	130	2013-06-30 05:31:55.44014	2013-06-30 06:01:55.592842	\N	\N
13	Guided Practice - 8. Arm Balances I	\N	8_arm_balances.mp3	120	2013-06-30 05:31:35.768849	2013-06-30 06:02:06.468116	\N	\N
8	Guided Practice - 3. Surya Namaskara A	\N	3_surya_namaskara.mp3	70	2013-06-30 05:29:36.862004	2013-06-30 06:12:32.026974	\N	\N
10	Guided Practice - 5. Standing Asanas I	\N	5_standing_asanas.mp3	90	2013-06-30 05:30:31.913343	2013-06-30 06:13:09.926678	\N	\N
6	Guided Practice - 1. Seated Awakening	\N	1_seated_awakening.mp3	50	2013-06-30 05:28:54.613247	2013-06-30 06:13:40.519642	\N	\N
\.


--
-- Name: audios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('audios_id_seq', 19, true);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY authors (id, first_name, last_name, biography, created_at, updated_at) FROM stdin;
\.


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('authors_id_seq', 1, false);


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cards (id, name, is_new, card_type, envelope_id, author_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cards_id_seq', 1, false);


--
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ckeditor_assets (id, data_file_name, data_content_type, data_file_size, assetable_id, assetable_type, type, width, height, created_at, updated_at) FROM stdin;
\.


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ckeditor_assets_id_seq', 1, false);


--
-- Data for Name: envelopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY envelopes (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Name: envelopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('envelopes_id_seq', 1, false);


--
-- Data for Name: fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fields (id, name, field_type, region, editable, font_family, font_size, letter_spacing, word_spacing, line_height, has_text_shadow, text_shadow, text_align, text, card_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fields_id_seq', 1, false);


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY images (id, image, image_size, image_type, name, card_id, field_id, author_id, env_top_id, env_bottom_id, env_under_id, env_thumb_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('images_id_seq', 1, false);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY posts (id, title, summary, content, permalink, date, created_at, updated_at) FROM stdin;
2	Archtypes & Mythology: Vasistha & Vishvamitra – Effortless Grace and Determined Practice	The tale of Vasistha and Vishvamitra in the Ramayana tells of the dynamic tension in spiritual life between the ease that arises from contentment and the spiritual depth that can result from struggle and effort. Vasisthawas an enlightened spiritual sage who established a peaceful, self-governing, cooperative society where all were happy. He had a “cow of plenty” named Nandini with the power to grant him whatever he wanted.	<p>The tale of&nbsp;Vasistha&nbsp;and&nbsp;Vishvamitra&nbsp;in the&nbsp;Ramayana&nbsp;tells of the dynamic tension in spiritual life between the ease that arises from contentment and the spiritual depth that can result from struggle and effort.&nbsp;Vasisthawas an enlightened spiritual sage who established a peaceful, self-governing, cooperative society where all were happy. He had a &ldquo;cow of plenty&rdquo; named&nbsp;Nandini&nbsp;with the power to grant him whatever he wanted.</p>\r\n\r\n<p>The powerful ruler of a neighboring kingdom,&nbsp;Vishvamitra, was curious about&nbsp;Vasistha&rsquo;ssociety and went to visit with his army.&nbsp;Vishvamitra&nbsp;was impressed with&nbsp;Vashistha&rsquo;s&nbsp;cow and tried to take her away by force, but&nbsp;Vasistha&rsquo;sspiritual power&mdash;his tolerance and mastery of emotion&mdash;was too great for the many weapons that&nbsp;Vishvamitra&nbsp;used against him. In an epic battle between&nbsp;Vishvamitra&nbsp;and&nbsp;Vasistha, a hundred of&nbsp;Vishvamitra&rsquo;s&nbsp;sons were incinerated by&nbsp;Vasistha&rsquo;s&nbsp;breath.&nbsp;Vishvamitra&nbsp;eventually abdicated and committed himself to a simple ascetic life in pursuit of spiritual strength. Showing little hope for spiritual achievement, the very difficulty of his spiritual path led him to become a great sage himself, and&nbsp;Vasistha&nbsp;was among those who would come to pay homage to&nbsp;Vishvamitra.</p>\r\n\r\n<p>While the asanas named for these two sages are both difficult,&nbsp;Vishvamitrasana&nbsp;is considerably more challenging, requiring a deeper level of commitment, strength, and surrender.</p>\r\n	archtypes-and-mythology-vasistha-vishvamitra	2013-02-11	2013-06-30 22:12:47.98516	2013-06-30 22:20:42.978694
1	Archtypes & Mythology: Hanuman – Leaping with Devotion	Like Ganesha, Hanuman commands respect and veneration across Indian culture for his strength, humility, selflessness, devotion, determination, fearlessness, and commitment to spiritual discipline. The son of Vayu, the god of wind, and Anjana, a celestial being with the tail of a monkey (a vanara), Hanuman was the friend, confidant, and servant of King Rama. (Hanuman is also called Anjaneya, meaning “arising from Anjana,” for whom the Anjaneyasana, Low-Lunge Pose, is named.)	<p>Like&nbsp;Ganesha, Hanuman&nbsp;commands respect and veneration across Indian culture for his strength, humility, selflessness, devotion, determination, fearlessness, and commitment to spiritual discipline. The son of&nbsp;Vayu, the god of wind, and&nbsp;Anjana, a celestial being with the tail of a monkey (a&nbsp;<em>vanara</em><em>),</em>&nbsp;Hanuman&nbsp;was the friend, confidant, and servant of King Rama. (Hanuman&nbsp;is also called&nbsp;Anjaneya, meaning &ldquo;arising from Anjana,&rdquo; for whom the&nbsp;Anjaneyasana,&nbsp;Low-Lunge Pose, is named.)</p>\r\n\r\n<p>He accomplishes many feats in the Ramayana War. When&nbsp;Rama&rsquo;s&nbsp;wife,&nbsp;Sita,&nbsp;is kidnapped,&nbsp;Hanuman&nbsp;searches the world for her, eventually encountering the vast ocean. Everyone in the search party laments&nbsp;Hanuman&rsquo;s&nbsp;inability to jump across the water, and he too is saddened at the likely failure of his mission. But his commitment to his master is so great that&nbsp;Hanuman&nbsp;feels his powers, enlarges his body, and leaps across the ocean to find her.</p>\r\n\r\n<p>The story is one of purity of motive in uniting what has been separated, and the commitment to make whatever effort is needed to rise to the challenges we face in life.&nbsp;Hanuman&nbsp;reminds us that we can take larger steps in our lives if we open our awareness beyond the limitations of our immediate circumstances.</p>\r\n\r\n<p>The challenging asana named for&nbsp;Hanuman,&nbsp;Hanumanasana, allows us to embody these traits as we confront the apparent limitations we find in the flexibility of our hamstrings, quadriceps, and hip flexors. With patient devotion and openness to the possibility of going beyond what they think are their limits, students can invoke the spirit of&nbsp;Hanuman&nbsp;in exploring not just this difficult asana but other challenges in their lives as well.</p>\r\n	archtypes-mythology-hanuman	2013-02-11	2013-06-30 21:57:09.13971	2013-06-30 22:20:14.360286
3	Archtypes & Mythology: Ganesha – Removing Obstacles	Ganesha is the most popular member of the Indian pantheon of mythological deities. Represented as a short, potbellied man with yellow skin, four arms, and an elephant’s head with one tusk, Ganesha is the second son of Shiva and Parvati (a form of Shakti). As with all the Indian gods, there are innumerable myths surrounding his creation and his role in the universe. He is the Lord of Obstacles, popularly worshipped as a remover of obstacles, although many stories have him both placing and removing obstacles.[i] Ganesha’s elephant head symbolizes his unstoppable power and auspiciousness, his rotund body and potbelly symbolize abundance, and the subservient rat he rides symbolizes the wisdom that arises in the sublimation of selfish desires. While these qualities might seem to be in contradiction to one another, Ganesha represents balance in spiritual and material life. Loving, forgiving, and moved by affection, he can be ruthless when combating evil. If loved and respected, Ganesha is said to grant all wishes and ensure a steady path to success.	<p>Ganesha&nbsp;is the most popular member of the Indian pantheon of mythological deities. Represented as a short, potbellied man with yellow skin, four arms, and an elephant&rsquo;s head with one tusk,&nbsp;Ganesha&nbsp;is the second son of&nbsp;Shiva&nbsp;and&nbsp;Parvati&nbsp;(a form of&nbsp;Shakti). As with all the Indian gods, there are innumerable myths surrounding his creation and his role in the universe. He is the Lord of Obstacles, popularly worshipped as a remover of obstacles, although many stories have him both placing and removing obstacles.[i]&nbsp;Ganesha&rsquo;s&nbsp;elephant head symbolizes his unstoppable power and auspiciousness, his rotund body and potbelly symbolize abundance, and the subservient rat he rides symbolizes the wisdom that arises in the sublimation of selfish desires. While these qualities might seem to be in contradiction to one another,&nbsp;Ganesha&nbsp;represents balance in spiritual and material life. Loving, forgiving, and moved by affection, he can be ruthless when combating evil. If loved and respected,&nbsp;Ganesha&nbsp;is said to grant all wishes and ensure a steady path to success.</p>\r\n\r\n<div style="color: rgb(68, 68, 68); font-family: Univers45Light; font-size: 15px; line-height: 20px;">\r\n<hr />\r\n<div id="edn1">\r\n<p>[i]. There are hundreds of sources on&nbsp;Ganesha. Courtright (1985) provides a scholarly treatment of Ganesha that many purist Hindus have assiduously sought to have removed from circulation; Getty&rsquo;s&nbsp;<em>Ganesa</em>&nbsp;(1936) is among the earliest introductions to Ganesha in the English language; Swami Chinmayananda (1987) offers a traditionalist interpretation that may have motivated Courtright&rsquo;s work; a delightful rendition is found in Kapur&rsquo;s&nbsp;<em>Ganesha Goes to Lunch&nbsp;</em>(2007).</p>\r\n</div>\r\n</div>\r\n	archtypes-and-mythology-ganesha	2013-02-11	2013-06-30 22:21:41.982971	2013-06-30 22:21:41.982971
4	Archtypes & Mythology: Astavakra - Transcending Misunderstanding	Kagola, a poor student of the Vedas, sat at night reciting aloud the sacred verses of the Vedas, his pregnant wife by his side in the dim light of candles. One late night he heard a voice laughing and correcting him for mispronouncing a verse. The tired and short-tempered father was enraged, cursing the unborn child, causing him to be born with eight crooks in his body, naming him Astavakra for the deformity (asta meaning “eight,” vakra “crooked”).	<p>Kagola, a poor student of the&nbsp;Vedas, sat at night reciting aloud the sacred verses of the Vedas, his pregnant wife by his side in the dim light of candles. One late night he heard a voice laughing and correcting him for mispronouncing a verse. The tired and short-tempered father was enraged, cursing the unborn child, causing him to be born with eight crooks in his body, naming him&nbsp;Astavakra&nbsp;for the deformity (<em>asta</em>&nbsp;meaning &ldquo;eight,&rdquo;&nbsp;<em>vakra</em>&nbsp;&ldquo;crooked&rdquo;).</p>\r\n\r\n<p>The crippled and humbled child sought to redeem himself to his father, studying deeply in the sacred philosophy of India and, in time, becoming a great Vedic scholar. But his deformities caused others to judge him for what they saw, not for his knowledge, wisdom, and simple articulation of the essence of mystical experience. While still a boy, King Janaka heard of Astavakra&rsquo;s wisdom and sought him out as a sage and teacher. When the boy&rsquo;s father learned of Astavakra&rsquo;s great scholarly accomplishments and the honor bestowed upon him by King Janaka of being the king&rsquo;s teacher, Kagola blessed him, his deformity vanished, and Astavakra stood straight.</p>\r\n\r\n<p>The story portrays the human tendency to dwell on appearances rather than on inner truths that are often concealed by what we see. In approaching&nbsp;Astavakrasana, the asana named for Astavakra, students are usually intimidated by what appears to be a very complex and difficult pose. In reality, it is one of the easiest arm balances, requiring basic technique and knowledge of what to do. When we guide students to pause, breathe, watch, feel, and patiently explore with the knowledge of what we are sharing, they find a sense of liberation in&nbsp;Astavakrasana&nbsp;and other apparently challenging asanas.</p>\r\n\r\n<p>This extends into life off the mat, where we might shrink from certain actions in life out of misunderstanding the true nature of what is before us. With patience and learning, we can usually move forward with a renewed sense of freedom born of knowledge.</p>\r\n	archtypes-mythology-astavakra	2013-02-11	2013-06-30 22:23:45.407456	2013-06-30 22:23:45.407456
5	Archtypes & Mythology: Shakti – The Divine Feminine	This is where we can infuse our classes with creativity and playfulness. Shakti is the creative power of existence, the cosmic energy that animates the universe, the source of energy, the mother goddess, representing the active, dynamic principles of feminine power.	<p>This is where we can infuse our classes with creativity and playfulness.&nbsp;Shakti&nbsp;is the creative power of existence, the cosmic energy that animates the universe, the source of energy, the mother goddess, representing the active, dynamic principles of feminine power.</p>\r\n\r\n<p>In some Indian traditions, every god in the panoply of Indian deities has his&nbsp;Shakti, the divine feminine energy without which the god would have no power.&nbsp;Shakti&nbsp;is the world-protecting, feminine, maternal side of god, symbolizing the spontaneous and loving acceptance of life&rsquo;s tangible reality. She is the creative joy of life, the beauty, enticement, and seduction of the living world, instilling in us surrender to the changing qualities of existence. She is the preeminent enigma to the masculine principle of spirit, symbolizing the way that the flow of experience in daily life casts mists around the clarity of being. As we constantly project and externalize our&nbsp;Shakti&nbsp;energy, we create the universe of our life, the small sphere of our immediate concerns. Like a painter covering a canvas, we populate and color the canvas of our lives, creating dramas and delights that are the illusions of our own&nbsp;Shakti&nbsp;energy. When we are entangled and captivated by what we feel are the vital, passionate issues in our lives, we are dealing with the projection of who we are, the spell of our creative being.</p>\r\n\r\n<p>Becoming aware of these creative projections, observing them just as we revel in them, brings dynamism to a life that might otherwise be quite boring. Rather than always guiding students into holding poses in a static mold,&nbsp;Shakti&nbsp;insists on liberating that dynamism in asanas, playing with the asanas, dancing with them, feeling them as fully alive, vibrant, and sensuous.</p>\r\n	archtypes-mythology-shakti	2013-02-11	2013-06-30 22:24:30.572273	2013-06-30 22:24:30.572273
6	Archtypes & Mythology: Virabhadra – The Spiritual Warrior	When Shiva’s consort Shakti was killed by the chief of the gods, Daksha, Shiva tore out his hair in grief and anger, creating the fierce warrior Virabhadra from his locks. With a thousand arms, three burning eyes, and fiery hair, Virabhadra wore a garland of skulls and carried many terrifying weapons. Bowing at Shiva’s feet and asking his will, Virabhadra was directed by Shiva to lead his army against Daksha to avenge Shakti’s death, which he did with immediate success. Like Shiva, Virabhadra’s aim in destruction is not revenge but to destroy the real enemy, which is the ego standing in the way of humility.	<p>When&nbsp;Shiva&rsquo;s&nbsp;consort Shakti was killed by the chief of the gods,&nbsp;Daksha, Shiva&nbsp;tore out his hair in grief and anger, creating the fierce warrior&nbsp;Virabhadra&nbsp;from his locks. With a thousand arms, three burning eyes, and fiery hair,&nbsp;Virabhadra&nbsp;wore a garland of skulls and carried many terrifying weapons. Bowing at&nbsp;Shiva&rsquo;s&nbsp;feet and asking his will,&nbsp;Virabhadra&nbsp;was directed by&nbsp;Shiva&nbsp;to lead his army against&nbsp;Daksha&nbsp;to avenge&nbsp;Shakti&rsquo;s&nbsp;death, which he did with immediate success. Like Shiva,&nbsp;Virabhadra&rsquo;s&nbsp;aim in destruction is not revenge but to destroy the real enemy, which is the ego standing in the way of humility.</p>\r\n\r\n<p>Approaching the asanas named for&nbsp;Virabhadra&mdash;Virabhadrasana I, II, and III<em>&mdash;</em>we can encourage students to cultivate the mind of the spiritual warrior, aware of all sides, unattached to attainment, centered in one&rsquo;s being. Staying focused in the practice, holding on in the midst of fear and intensity, the spirit of&nbsp;Virabhadra&nbsp;helps students discover the strength and humility to explore challenges in their practice and life with greater courage and determination.</p>\r\n	archtypes-mythology-virabhadra	2013-02-11	2013-06-30 22:25:11.414797	2013-06-30 22:25:11.414797
7	Archtypes & Mythology: Nataraja – The Dancing Warrior	Shiva is usually represented in Indian iconography as immersed in deep meditation or dancing the Tandava upon the demon of ignorance in his manifestation of Nataraja, the lord of the dance (Zimmer 1972, 151–157). As an ancient form of magic, dancing induces trance, ecstasy, and self-realization. Shiva manifests in the form of Nataraja to gather and project his frantic, endless gyrations in order to arouse dormant energies that are the creative forces shaping the world. Leading a class through a linked dance-like series of warrior asanas and vinyasas awakens students’ creative energy as body and breath are synchronized in flowing movement. But Nataraja is also the god of destruction, manifesting the element of fire that symbolizes the destruction of illusions we hold about life and the world.	<p>Shiva&nbsp;is usually represented in Indian iconography as immersed in deep meditation or dancing the&nbsp;Tandava&nbsp;upon the demon of ignorance in his manifestation of&nbsp;Nataraja, the lord of the dance (Zimmer 1972, 151&ndash;157). As an ancient form of magic, dancing induces trance, ecstasy, and self-realization.&nbsp;Shiva&nbsp;manifests in the form of&nbsp;Nataraja&nbsp;to gather and project his frantic, endless gyrations in order to arouse dormant energies that are the creative forces shaping the world. Leading a class through a linked dance-like series of warrior asanas and&nbsp;vinyasas&nbsp;awakens students&rsquo; creative energy as body and breath are synchronized in flowing movement. But&nbsp;Nataraja&nbsp;is also the god of destruction, manifesting the element of fire that symbolizes the destruction of illusions we hold about life and the world.</p>\r\n\r\n<p>In the balance of the dancing&nbsp;Shiva, we thus find a counterpoise of destruction and creation in the play of the cosmic dance, offering a pathway to enlightenment and equanimity.</p>\r\n	archtypes-mythology-nataraja	2013-02-11	2013-06-30 22:25:50.758591	2013-06-30 22:25:50.758591
8	Archtypes & Mythology: Surya Namskara – Bowing to the Inner Sun	The Sun Salutations that initiate many yoga classes are rich in symbolism. Surya is the chief solar deity who drives his chariot across the sky each day as the most visible form of God that one can see. It is also the ancient Sanskrit term for “sun,” which in most ancient mythology is revered, as Richard Rosen (2003) says, “as both the physical and spiritual heart of the world.” Namaskara is from the root namas, “to bow” (as in “namaste”). In the myths of the Vedas, the gods use the sun’s heat for many purposes, especially creation. Our “inner sun,” the spiritual heart center, is seen as the source of light and truth along the life’s path. In Surya Namaskara, we are bowing to the truth of who we are in our essence, releasing the head lower than the heart, connecting with our inner wisdom.	<p><span style="color:rgb(59, 59, 59); font-family:georgia,times new roman,times,serif; font-size:14px">The Sun Salutations that initiate many yoga classes are rich in symbolism. Surya is the chief solar deity who drives his chariot across the sky each day as the most visible form of God that one can see. It is also the ancient Sanskrit term for &ldquo;sun,&rdquo; which in most ancient mythology is revered, as Richard Rosen (2003) says, &ldquo;as both the physical and spiritual heart of the world.&rdquo;&nbsp;</span><em>Namaskara</em><span style="color:rgb(59, 59, 59); font-family:georgia,times new roman,times,serif; font-size:14px">&nbsp;is from the root&nbsp;</span><em>namas</em><em>,</em><span style="color:rgb(59, 59, 59); font-family:georgia,times new roman,times,serif; font-size:14px">&nbsp;&ldquo;to bow&rdquo; (as in &ldquo;</span><span style="color:rgb(59, 59, 59); font-family:georgia,times new roman,times,serif; font-size:14px">namaste&rdquo;</span><span style="color:rgb(59, 59, 59); font-family:georgia,times new roman,times,serif; font-size:14px">). In the myths of the Vedas, the gods use the sun&rsquo;s heat for many purposes, especially creation. Our &ldquo;inner sun,&rdquo; the spiritual heart center, is seen as the source of light and truth along the life&rsquo;s path. In&nbsp;</span><span style="color:rgb(59, 59, 59); font-family:georgia,times new roman,times,serif; font-size:14px">Surya Namaskara,</span><span style="color:rgb(59, 59, 59); font-family:georgia,times new roman,times,serif; font-size:14px">&nbsp;we are bowing to the truth of who we are in our essence, releasing the head lower than the heart, connecting with our inner wisdom.</span></p>\r\n	archtypes-mythology-surya-namskara	2013-02-11	2013-06-30 22:26:28.06306	2013-06-30 22:26:28.06306
9	Archtypes & Mythology: Ha & Tha – Yoga as Balanced Integration	Reminding students of the essence of hatha yogaas a practice of balanced integration of effort and ease is a powerful starting point for making yoga more transformational, especially as students begin to explore and discover how the practice can play with the apparent polarities of life. Although typically reduced to “physical yoga,” the term hatha is made from the syllables ha and tha, which respectively signify the solar and lunar energies pulsating throughout the world. Both sun and moon have rich symbolic significance in Indian mythology. The solar energies are expansive and invigorating, while lunar energies are more integrative and calming. The term hatha yoga thus conveys the integration of opposites, the balance of effort and ease, a practice that is at once awakening and calming. Brought into asana and pranayama classes, these balanced qualities make yoga more sustainable and transforming.	<p>Reminding students of the essence of&nbsp;hatha yogaas a practice of balanced integration of effort and ease is a powerful starting point for making yoga more transformational, especially as students begin to explore and discover how the practice can play with the apparent polarities of life. Although typically reduced to &ldquo;physical yoga,&rdquo; the term&nbsp;<em>hatha</em>&nbsp;is made from the syllables&nbsp;<em>ha</em>&nbsp;and&nbsp;<em>tha,</em>&nbsp;which respectively signify the solar and lunar energies pulsating throughout the world. Both sun and moon have rich symbolic significance in Indian mythology. The solar energies are expansive and invigorating, while lunar energies are more integrative and calming. The term&nbsp;<em>hatha yoga</em>&nbsp;thus conveys the integration of opposites, the balance of effort and ease, a practice that is at once awakening and calming. Brought into asana and&nbsp;pranayama&nbsp;classes, these balanced qualities make yoga more sustainable and transforming.</p>\r\n\r\n<p>Note: ALL forms of physical yoga &ndash; from Ashtanga and Iyengar to Anusana and Vinaysa Flow &ndash; are Hatha Yoga. This is the large umbrella that all asana practices fall under.</p>\r\n	archtypes-mythology-ha-tha	2013-02-11	2013-06-30 22:27:08.712758	2013-06-30 22:27:08.712758
10	Archtypes & Mythology: Overview	The verbal root as in asana includes the idea of ritual, a set of actions with symbolic significance that we can tie into practice to highlight certain areas of personal, emotional, spiritual, social, and ecological experience. When teaching yoga, you can accentuate these ties by emphasizing the symbolism expressed in different parts of the practice. One source of symbolism is the vast realm of mythological figures found across the world’s diverse cultural landscapes. Whether we interpret myth as allegory and a “medium for or a flawed version of an immutable, eternal reality created by or for unsophisticated minds” or as “an essential function of the mind (conscious or unconscious) to express repressed needs and desires or to make sense out of life and resolve all conflicts therein,” as Devdutt Pattanaik (2003, 161–162) contrasts, we can find within them profound wisdom about the conditions and circumstances of life and consciousness.	<p>The verbal root&nbsp;<em>as</em>&nbsp;in&nbsp;<em>asana&nbsp;</em>includes the idea of ritual, a set of actions with symbolic significance that we can tie into practice to highlight certain areas of personal, emotional, spiritual, social, and ecological experience. When teaching yoga, you can accentuate these ties by emphasizing the symbolism expressed in different parts of the practice. One source of symbolism is the vast realm of mythological figures found across the world&rsquo;s diverse cultural landscapes. Whether we interpret myth as allegory and a &ldquo;medium for or a flawed version of an immutable, eternal reality created by or for unsophisticated minds&rdquo; or as &ldquo;an essential function of the mind (conscious or unconscious) to express repressed needs and desires or to make sense out of life and resolve all conflicts therein,&rdquo; as Devdutt Pattanaik (2003, 161&ndash;162) contrasts, we can find within them profound wisdom about the conditions and circumstances of life and consciousness.</p>\r\n\r\n<p>Indian mythology is especially rich in tales, symbols, and rituals that are a reaction to and a communication of humans&rsquo; understanding of nature and being. Part of the beauty of Indian mythology is that is it alive and evolving with new interpretations that relate to the quests of whoever delves into its seemingly endless stories. Many asanas are named for figures in these stories, offering a variety of metaphors that relate to daily life and yoga. The aim of Indian spiritual philosophy and mythology is to learn the secret of entanglement and dissolve the mental and emotional cobwebs that envelop our conscious being. Indian mythology offers abundant symbols found in the natural world that represent aspects of human life and experience: light and dark, mountains and rivers, trees and animals, wind and stars.</p>\r\n\r\n<p>Read on for some of the ways that, as a teacher, you can tap into this mythological tradition, much of it found in the&nbsp;Ramayana&nbsp;and&nbsp;Mahabharata, making the practice more one of conscious awareness and self-transformation.</p>\r\n	archtypes-mythology-overview	2013-02-11	2013-06-30 22:27:43.123963	2013-06-30 22:27:43.123963
11	Groundedness & Spaciousness	When casually standing or sitting, the tendency is to connect passively with the earth. The effect is that the body collapses into itself, each joint compressing as the body slumps and sags. But the moment you consciously root down into whatever is on the floor, the immediate effect is creation of space in the body. Referred to as the “rebounce effect” by Dona Holleman (1999, 26), this relationship between roots and extension is an expression of the “normal force” explained by Isaac Newton’s Third Law of Motion: for every action there is an equal and opposite reaction.	<p>When casually standing or sitting, the tendency is to connect passively with the earth. The effect is that the body collapses into itself, each joint compressing as the body slumps and sags. But the moment you consciously root down into whatever is on the floor, the immediate effect is creation of space in the body. Referred to as the &ldquo;rebounce effect&rdquo; by Dona Holleman (1999, 26), this relationship between roots and extension is an expression of the &ldquo;normal force&rdquo; explained by Isaac Newton&rsquo;s Third Law of Motion: for every action there is an equal and opposite reaction.</p>\r\n\r\n<p>To the extent that you apply effort through intentional muscular action&mdash;for example, pressing down more firmly through your feet and into the floor when standing&mdash;the &ldquo;equal and opposite reaction&rdquo; of energy drawing up the body occurs. Emphasizing the application of consciousness in the discovery of foundational elements in each asana, yoga teacher Chuck Miller has referred to this as the intention of seeking the origin of every action.</p>\r\n\r\n<p>In rooting down we naturally stimulate muscular engagement and manifest space through the joints, particularly through the spine, creating the foundation of structural stability and ease that is increasingly important as students move into more and more advanced asanas. The specific point or points vary in the different asanas, but the practice of establishing and exploring from the basis of this foundation is consistent throughout all the asanas.</p>\r\n\r\n<p>While maintaining this initial foundation, students can find further stability and ease in asanas by consciously applying what Joel Kramer (1980, 19) coined as &ldquo;lines of energy.&rdquo; Bringing conscious effort to the radiation of neuromuscular effort (or &ldquo;current,&rdquo; in Kramer&rsquo;s terms) through the body creates lines of energy. By radiating out from the core to the periphery, these lines of energy expand your body from the inside out in every direction, creating spaciousness while maintaining the stability that is created by drawing the body&rsquo;s muscular support system to the skeletal structure.</p>\r\n\r\n<p>Consciously running lines of energy through the body is a way of accentuating the principle of roots and extension. This technique can be variously applied by students in exploring the level of intensity that is appropriate in their personal practice, listening to the body-breath-mind for feedback that suggests when, where, and how intensely to move energy through their body.</p>\r\n\r\n<p>Remind students that it is not important how far they go in an asana; rather, keep them focused on&nbsp;<em>how</em>&nbsp;they go, cultivating steadiness and ease as they explore the relative intensity of asanas that are simultaneously grounded and expansive.</p>\r\n	groundedness-spaciousness	2013-02-11	2013-06-30 22:29:51.173679	2013-06-30 22:29:51.173679
12	Voice & Language	Your voice and use of language are invaluable teaching tools. Considered from a chakra perspective, the voice manifests through the vishuddha chakra, which opens with ease and clarity when the body is grounded, the creative juices flowing, the willful center strong yet supple, the heart open, and the mind clear. How you speak as a teacher thus reflects where you are in your life, skills, and knowledge. Building from this natural foundation, there are several elements of voice to consider.	<p>Your voice and use of language are invaluable teaching tools. Considered from a&nbsp;chakra&nbsp;perspective, the voice manifests through the&nbsp;vishuddha chakra, which opens with ease and clarity when the body is grounded, the creative juices flowing, the willful center strong yet supple, the heart open, and the mind clear. How you speak as a teacher thus reflects where you are in your life, skills, and knowledge. Building from this natural foundation, there are several elements of voice to consider.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="color: rgb(68, 68, 68); font-family: Univers45Light; font-size: 15px; line-height: 20px;">\r\n<p>First and foremost, your voice should be sufficiently audible that everyone can hear you, yet not so loud that it interferes with students&rsquo; attentiveness to the sound of their breath and sense of being in a tranquil space. If you choose to use music in your classes, control the volume of the music to be lower than you can comfortably project your own voice throughout the class. If you have a very soft voice or find yourself teaching very large classes, consider using amplification</p>\r\n\r\n<p>Explore how you can modulate your voice to match the mood or intensity of the asanas without resorting to a singsong quality of elocution. Your voice should flow along with the arc of the class, starting gently as students are warming into their bodies, reaching moderate crescendos accented by strength and dynamism as the practice moves through waves of intensity, softening and quieting as the class wanes toward&nbsp;Savasana. In a restorative class, try to maintain an even, relaxed tone that encourages letting go, allowing more space between statements so students can experience the freedom of silence.</p>\r\n\r\n<p>Be aware of your tone of voice. Try recording and listening to one of your classes to become more aware of your tone. Many teachers are unaware that their voices sound a certain way. Speaking from your heart, let your technical instructions come across with the same even tonality as if you were speaking casually with a friend. At the same time, play with bringing enthusiasm and inspiration into your teaching through the current of your voice, balancing these qualities with assertiveness that tends more toward loving kindness than stern authority.</p>\r\n\r\n<p>Language itself plays significantly in how students will hear and comprehend what you are saying. Try to use plain language that clearly describes what you intend to cue. It is usually much more effective to use direct, simple language than esoteric terms you learned studying anatomy, physiology, yoga philosophy, and psychology. Giving instructions in a concise manner is usually more effective in helping students to understand than flowery poetics or verbose statements. If you want your students to bring their feet together at the front of their mat, say, &ldquo;Please bring your feet together at the front of your mat.&rdquo; That&rsquo;s all that&rsquo;s needed. Focus your initial cues on the basic foundational elements of the asana, saving more elaborate (yet still concise and specific) cues for the transition into the asana and refinements.</p>\r\n\r\n<p>Different terms carry more or less weight. Verbs of action such as&nbsp;<em>press your fingers</em>&nbsp;or&nbsp;<em>breathe deeply</em>&nbsp;have more of a command quality than their noun forms, which tend to be more encouraging:&nbsp;<em>pressing your fingers&nbsp;</em>or&nbsp;<em>breathing deeply.</em>&nbsp;An even softer quality of instruction is expressed with terms like&nbsp;<em>feel, allow,</em>&nbsp;and&nbsp;<em>explore.</em>&nbsp;As a general approach, try offering the stronger verbs of action when cueing what you consider the most important foundational actions of an asana, then use softer language to cue refinements and inner exploration.</p>\r\n\r\n<p>Using Sanskrit terms for asanas and other aspects of the practice is a matter of personal choice. You might feel that Sanskrit does not resonate well with your students (or with your employer or you), or you might feel that using Sanskrit lends to a deeper feeling of authenticity in your teachings as you anchor your expressions in the ancient and traditional language of yoga. If you choose to use Sanskrit, try also to give the English terms for the words. For example, say, &ldquo;Preparing for&nbsp;Ardha&nbsp;Chandrasana, Half-Moon Pose, please.&hellip; &rdquo; Some Sanskrit terms have become so ubiquitous in yoga classes that they have now entered the English lexicon:&nbsp;<em>Chataranga</em>&nbsp;(short for&nbsp;<em>Chataranga Dandasana</em>) is surely more familiar to most students than its English translation, &ldquo;Four-Limbed Staff Pose.&rdquo;</p>\r\n\r\n<p>As with other aspects of your teaching, play around with this to find what is most comfortable for you and your students.</p>\r\n</div>\r\n	voice-language	2013-02-11	2013-06-30 22:30:29.420466	2013-06-30 22:30:29.420466
13	Teaching Yoga & Student Leaning Styles	The primary goal in teaching asanas is to enable students to perceive and understand more clearly what they are doing in developing a sustainable personal practice, whether in a class or independently. But there are many different ways of learning that require a varied approach to teaching. How people learn is closely tied to what educator Howard Gardner (1993) refers to as “qualities of multiple intelligence,” which vary considerably in any given class of yoga students.	<p>The primary goal in teaching asanas is to enable students to perceive and understand more clearly what they are doing in developing a sustainable personal practice, whether in a class or independently. But there are many different ways of learning that require a varied approach to teaching. How people learn is closely tied to what educator Howard Gardner (1993) refers to as &ldquo;qualities of multiple intelligence,&rdquo; which vary considerably in any given class of yoga students.</p>\r\n\r\n<p>In yoga classes, where the learning objectives include conceptual, emotional, physical, and metaphysical elements, the full range of multiple intelligences are in play. At the same time, a human being is more than his or her intellectual powers; motivation, personality, emotions, physical health, and personal will are more significant than a particular learning style in shaping how, where, and when one learns. This suggests that effective yoga instruction takes into account these variables in engaging with students while still appreciating the following learning styles:</p>\r\n\r\n<ul>\r\n\t<li><em>Visual/spatial</em><em>:</em>&nbsp;Tend to think in pictures and need vivid mental images to retain information, underlining the importance of demonstrating every asana.</li>\r\n\t<li><em>Verbal/linguistic</em><em>:</em>&nbsp;Tend to think in words rather than pictures and have highly developed auditory skills, thus needing clearly enunciated verbal descriptions of asanas.</li>\r\n\t<li><em>Bodily/kinesthetic</em><em>:</em>&nbsp;Process and remember information through interacting with the space around them and need to directly experience asanas.</li>\r\n\t<li><em style="line-height:1.6em">Musically/rhythmically inclined</em><em style="line-height:1.6em">:</em><span style="line-height:1.6em">&nbsp;Think in sounds, rhythms, and patterns and may be highly sensitive to environmental sounds. Can benefit from being encouraged to tune in more closely the sound and rhythm of their breath. They may also benefit from soft music that syncopates with the rhythm of a class.</span></li>\r\n\t<li><span style="line-height:1.6em"><em>Interpersonal</em><em>:</em>&nbsp;Try to see things from other people&rsquo;s point of view; use both verbal and nonverbal cues to open up and maintain communication channels with others; need to feel a sense of genuine presence from their teacher in the learning process.</span></li>\r\n\t<li><span style="line-height:1.6em"><em>Intrapersonal</em><em>:</em>&nbsp;Tend to be absorbed in trying to comprehend their feelings, dreams, relationships, strengths, and weaknesses; benefit from having more time and space to explore what an asana is about for them as they explore their practice.</span></li>\r\n</ul>\r\n	teaching-yoga-student-leaning-styles	2013-02-11	2013-06-30 22:31:50.357494	2013-06-30 22:31:50.357494
14	The Simple Reality of Teaching Yoga	Teaching yoga is at once profoundly personal, predicated on sharing, and shaped by context. It is also inevitably surprising. We have no choice but to start from where we are and who we are, with whatever knowledge, skills, and experience we have in the moment. We also have little choice but to work with whomever shows up for class, teaching students whose conditions, intentions, learning styles, and needs are widely varied.	<p>A good traveler has no fixed plans and is not intent on arriving.</p>\r\n\r\n<p>&mdash;Lao Tzu</p>\r\n\r\n<p>Teaching yoga is at once profoundly personal, predicated on sharing, and shaped by context. It is also inevitably surprising. We have no choice but to start from where we are and who we are, with whatever knowledge, skills, and experience we have in the moment. We also have little choice but to work with whomever shows up for class, teaching students whose conditions, intentions, learning styles, and needs are widely varied.</p>\r\n\r\n<p>On any given day, unanticipated events can make a class much different than what you might have envisioned. The changes that happen from class to class also have everything to do with whoever is in the class, the time of day, our own mood, and myriad other factors that invariably come into play in teaching. If your classes are always perfectly predictable&mdash;if you feel the same, the students seem the same, the environment manifests as exactly the same&mdash;you might benefit from reflecting on the bubble you are in and how it is probably suffocating some aspect of the practice.</p>\r\n\r\n<p>It is precisely in the variability of every class and the unique experience of each new breath&mdash;even in fixed-sequence classes such as Bikram or Ashtanga Vinyasa&mdash;that we find renewed stimulation of self-exploration and self-transformation, yet also the challenges that naturally arise in teaching. Going with the flow of change, you can draw from the richness of your teaching palette to inspire and guide your students along their yoga path.</p>\r\n	simple-reality-teaching-yoga	2013-02-11	2013-06-30 22:32:36.92752	2013-06-30 22:32:36.92752
15	Mula Bandha & Uddiyana Bandha	Pada bandha, the energetic awakening of the feet through the stirrup-like effect of contracting the tibialis posterior and peroneus longus muscles on the lower leg, can be intimately related to the activation of mula bandha and uddiyana bandha. The fascial attachments of these two muscles interweave with those of the hip adductors, which have origins in and around the ischial tuberosities (the sitting bones). The sitting bones are the lateral aspects of the perineum, with the pubic symphysis at the front and the coccyx at the back. 	<p>Pada bandha, the energetic awakening of the feet through the stirrup-like effect of contracting the tibialis posterior and peroneus longus muscles on the lower leg, can be intimately related to the activation of mula bandha and uddiyana bandha. The fascial attachments of these two muscles interweave with those of the hip adductors, which have origins in and around the ischial tuberosities (the sitting bones). The sitting bones are the lateral aspects of the perineum, with the pubic symphysis at the front and the coccyx at the back. The front half of this diamond is the urogenital triangle, a landmark for the urogenital diaphragm, a hammock-like layer that is created by three sets of muscles: transverse perineal (connecting the two sitting bones), bulbospongiosus (surrounding the vagina or bulb of the penis), and ischiocavernosus (connecting the ischium to the clitoris or covering the penile crura) (Hatley Aldous 2004, 41).Contracting this set of muscles awakens the levator ani muscle, another hammock-like layer composed of the coccygeus, iliococcygeus, and the pubococcygeus muscles. When these muscles contract, they pull the entire pelvic floor up and naturally stimulate the awakening of core abdominal muscles with attachments at the pubis (including the TA and RA). This is the muscular action of&nbsp;mula bandha, which creates a feeling of grounded levity in the asana practice, supports the pelvis organs, creates an upward movement of energy, and stimulates&nbsp;uddiyana bandha. With practice,&nbsp;mula bandha&nbsp;can be accessed directly (i.e., independently of&nbsp;pada bandha)&nbsp;and steadily maintained throughout asana practice.</p>\r\n\r\n<p>Uddiyana bandha&nbsp;is among the most misunderstood aspects of practice, owing in part to very different definitions and instructions from different traditions and teachers. In its basic form,&nbsp;uddiyana bandha&nbsp;involves pulling the entire abdominal region strongly back toward the spine and then up toward the breastbone when completely empty of breath. Its engagement is part of specific&nbsp;pranayama&nbsp;and&nbsp;kriya&nbsp;practices, not asana practice, yet many teachers instruct students to engage it while doing asanas. In asana practice we want the breath to flow smoothly, continuously, and fully, which requires the full, natural functioning of the diaphragm. However,&nbsp;uddiyana bandha&nbsp;prevents the diaphragm from expanding naturally, thus severely restricting the inhalation of breath.</p>\r\n\r\n<p>The confusion about&nbsp;uddiyana bandha&nbsp;arises from a very different breath-related muscular action in the lower abdomen that we do want to cultivate in asana practice. With each and every complete exhale the major abdominal muscles naturally contract (primarily the TAs but also the obliques and the RA). When this occurs along with&nbsp;mula bandha,&nbsp;the very light, subtle engagement of these abdominal muscles can accentuate, deepen, and give more stability and ease to the body in many (but not all) asanas and asana transitions. Indeed, in some asanas we want the belly to be quite relaxed in order for the spine, pelvis, and breath to move appropriately for those asanas. We can refer to this as &ldquo;uddiyana bandha light&rdquo; to distinguish it from the full form of&nbsp;uddiyana bandha&nbsp;done in&nbsp;pranayama.</p>\r\n\r\n<p>Mula bandha&nbsp;and&nbsp;uddiyana bandha&nbsp;are tools that can be variously engaged to support different energetic actions in the practice. In no situation do we want to grip the belly as in full&nbsp;uddiyana bandha, which restricts the breath in asana practice. Nor do we want to create tightness in the pelvic floor. Rather,&nbsp;mula bandha&nbsp;and&nbsp;uddiyana bandha&nbsp;are best cultivated as light and steady energetic lifting actions that draw energy up and into the core of the body while allowing that energy to radiate out and fuel the practice. The balance of the qualities comes with practice, and with time is increasingly subtle yet pervasive in its effects.</p>\r\n	mula-bandha-uddiyana-bandha	2013-02-11	2013-06-30 22:33:17.94861	2013-06-30 22:33:17.94861
16	Stretch Reflex & Playing the Edge	Some movements involving voluntary muscle contraction happen automatically as a reflexive response to intended movements or external stimulation. Here the body is acting before you can think about it. When a muscle contracts in response to stretching within the muscle, this is called a stretch reflex. With eccentric contraction—for example, the hamstrings while folding forward into Uttanasana—it is easy to generate a stretch reflex. In folding forward we ideally relax the hamstrings, allowing them to stretch more easily. But before we know it, the hamstrings are actively engaging to control the weight of the upper body moving forward and down. It is as if the hamstrings want to pull the body back up into its natural anatomical position, fully upright and stable. Stretch reflexes limit the development of flexibility and must be circumvented through countervailing muscular actions in order to cultivate full flexibility.	<p>Some movements involving voluntary muscle contraction happen automatically as a reflexive response to intended movements or external stimulation. Here the body is acting before you can think about it. When a muscle contracts in response to stretching within the muscle, this is called a&nbsp;stretch reflex. With eccentric contraction&mdash;for example, the hamstrings while folding forward into&nbsp;Uttanasana&mdash;it is easy to generate a stretch reflex. In folding forward we ideally relax the hamstrings, allowing them to stretch more easily. But before we know it, the hamstrings are actively engaging to control the weight of the upper body moving forward and down. It is as if the hamstrings want to pull the body back up into its natural anatomical position, fully upright and stable. Stretch reflexes limit the development of flexibility and must be circumvented through countervailing muscular actions in order to cultivate full flexibility.</p>\r\n\r\n<p>When students move very quickly in and out of asanas, they are likely to trigger stretch reflexes that not only limit flexibility but also increase the risk of straining muscles or tearing ligaments. As we will explore in some detail when discussing how to &ldquo;play the edge,&rdquo; listening to the body&rsquo;s natural feedback through the breath, heartbeat, and nervous-system messages is the key to moving with ease and stability.</p>\r\n	stretch-reflex-playing-edge	2013-02-11	2013-06-30 22:33:54.158652	2013-06-30 22:33:54.158652
17	The Feet & Pada Bandha	With twenty-six bones that form twenty-five joints, twenty muscles, and a variety of tendons and ligaments, the feet are certainly complex. This complexity is related to their role, which is to support the entire body with a dynamic foundation that allows us to stand, walk, run, and have stability and mobility in life. In yoga they are the principal foundation for all the standing poses and active in all inversions and arm balances, most back-bends and forward bends, and many twists and hip openers. Meanwhile they are also subjected to almost constant stress, ironically one of the greatest stresses today coming from a simple tool originally designed to protect them: shoes.	<p>With twenty-six bones that form twenty-five joints, twenty muscles, and a variety of tendons and ligaments, the feet are certainly complex. This complexity is related to their role, which is to support the entire body with a dynamic foundation that allows us to stand, walk, run, and have stability and mobility in life. In yoga they are the principal foundation for all the standing poses and active in all inversions and arm balances, most back-bends and forward bends, and many twists and hip openers. Meanwhile they are also subjected to almost constant stress, ironically one of the greatest stresses today coming from a simple tool originally designed to protect them: shoes. Giving close attention to our feet&mdash;getting them strong, flexible, balanced, aligned, rooted, and resilient&mdash;is a basic starting point for building or guiding practically any yoga practice, including seated meditation.</p>\r\n\r\n<p>In order to support the weight of the body, the tarsal and metatarsal bones are constructed into a series of arches. The familiar&nbsp;medial arch&nbsp;is one of two&nbsp;longitudinal arches&nbsp;(the other is called the&nbsp;lateral arch). Due to its height and the large number of small joints between its component parts, the medial arch is relatively more elastic than the other arches, gaining additional support from the&nbsp;tibialis posterior&nbsp;and&nbsp;peroneus longus&nbsp;muscles from above. The lateral arch possesses a special locking mechanism, allowing much more limited movement. In addition to the longitudinal arches, there are a series of transverse arches. At the posterior part of the metatarsals and the anterior part of the tarsus these arches are complete, but in the middle of the tarsus they present more the characters of half-domes, the concavities of which are directed inferiorly and medially, so that when the inner edges of the feet are placed together and the feet firmly rooted down, a complete tarsal dome is formed. When this action is combined with the awakening of the longitudinal arches, we create&nbsp;pada bandha, which is a key to stability in all standing poses (and a key source of&nbsp;mula bandha).</p>\r\n\r\n<p>However, the feet do not stand alone, even in&nbsp;Tadasana, nor do they independently support movement. Activation of the feet begins in the legs as we run lines of energy from the top of our femur bones down through our feet. This creates a &ldquo;rebounding effect.&rdquo; Imagine the feeling of being heavier when riding up in an elevator, or lighter when riding down. The pressure of the elevator floor up against your feet not only makes you feel heavier, it has the effect of causing the muscles in your legs to engage more strongly. Similarly, when you intentionally root down from the tops of your thighbones down into your feet, the muscles in your calves and thighs engage. This not only creates the upward pull on the arches of&nbsp;pada bandha&nbsp;(primarily from the stirrup-like effect of activating the&nbsp;tibialis posterior&nbsp;and&nbsp;peroneus longusmuscles) but creates expansion through the joints and a sense of being more firmly grounded yet resilient in your feet while longer and lighter up through your body.</p>\r\n\r\n<p><span style="color:rgb(136, 136, 136); font-family:univers65bold !important">Teaching Pada Bandha</span></p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Bring the class to standing with their feet together at the front of their mat.</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Ask them to look down at their feet and lift and spread their toes wide apart.</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Keeping the toes lifted, guide your students to feel the inner edges of the balls of their feet (about an inch in from the space between the big toe and the fourth toe) and to press that point more firmly down into the floor.</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Now ask students to repeatedly release the toes down and lift them up while keeping the inner edges of the balls of their feet rooting down, noticing how, with the toes lifted, the inner ankles and ankles automatically lift.</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Encourage the class to try to keep their inner arches and ankles lifted and to feel how this creates a sense of lifting the center of each foot like a pyramid, awakening&nbsp;pada bandha. The challenge arises in trying to maintain this awakening of the feet while allowing the toes to release softly down and spread into the floor.</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;With&nbsp;pada bandha&nbsp;active, draw their attention to the rebounding effect, feeling the stronger activation of their leg muscles, awakening of their inner thighs, and lengthening up through their entire body.</p>\r\n	feet-pada-bandha	2013-02-11	2013-06-30 22:34:33.720365	2013-06-30 22:34:33.720365
18	Doing Yoga	Most people are first drawn into the practice to reduce stress, develop flexibility, heal a physical or emotional injury, explore new social connections, or pursue physical fitness. But once in the practice, connecting body-breath-mind, something starts to happen. Students begin to experience a clearer self-awareness, a sense of being more fully alive; they feel better, more in balance, more conscious, clearer. The yearning that we have as human beings for a happy, wakeful, meaningful life and a sense of connection with something greater than our individual selves starts to become a powerful motivation for practicing over the long run of one’s life.	<p>Most people are first drawn into the practice to reduce stress, develop flexibility, heal a physical or emotional injury, explore new social connections, or pursue physical fitness. But once in the practice, connecting body-breath-mind, something starts to happen. Students begin to experience a clearer self-awareness, a sense of being more fully alive; they feel better, more in balance, more conscious, clearer. The yearning that we have as human beings for a happy, wakeful, meaningful life and a sense of connection with something greater than our individual selves starts to become a powerful motivation for practicing over the long run of one&rsquo;s life.</p>\r\n\r\n<p>When used as a tool for self-transformation and a path of spiritual being, yoga starts the moment a student first pays attention to what he or she is doing in the practice. If a student is unsteady, falling, in pain, or distracted by discomfort, the tendency will be to go back into his or her analytical or agitated mind.&nbsp;Sthira&nbsp;and&nbsp;sukham&mdash;steadiness and ease&mdash;give the asanas their transformative foundation. Being steady does not mean being perfectly still in a pose that you hold for a very long time. Indeed, a &ldquo;pose&rdquo; is static, something a model does for a camera.&nbsp;Asanas, by contrast, are alive, in each moment a unique expression of the human being doing them. Opening one&rsquo;s self to a feeling of inner peace amid the relative intensity of the asana practice&mdash;being calm and soft while strong and stable&mdash;takes the practice to a deeper level.&nbsp;</p>\r\n\r\n<p>Even when staying with an asana for a long time and cultivating steadiness and ease, there is always movement: the heart is beating, breath and&nbsp;prana&nbsp;are flowing. An expanded view of asana practice thus takes in a practice of movement within and between what are often described as separate asanas, movement in which one is just as present, just as steady in body-breath-mind, just as at ease. The breath itself starts to become as though a mantra in the movement meditation that is asana practice. In this way the practice is that of mindful meditation, in which one is fully present in the moment.</p>\r\n\r\n<p>This experiential process&mdash;not the religious worship of a deity or insistence on precise form in held poses&mdash;is what makes asana practice itself a spiritual practice. And it is precisely here, in creating a space that encourages mindfulness, that the yoga teacher becomes a spiritual facilitator. In guiding yoga classes that encourage self-reflective awareness, each asana, each moment within and between the asanas, every breath, every sensation, and every thought and feeling become windows into the nature of the mind, consciousness, and spirit. The practice becomes a process offering insight into the &ldquo;stickiness and delusions of the mind,&rdquo; which, Stephen Levine writes, &ldquo;are seen more clearly when viewed from the heart.&rdquo;</p>\r\n\r\n<p>This is where doing yoga asanas becomes a practice of self-transformation and healing, and a profound sense of conscious awakening and connection begins to emerge.</p>\r\n	doing-yoga	2013-02-11	2013-06-30 22:35:07.708489	2013-06-30 22:35:07.708489
19	The Path of the Teacher	Teaching yoga is an extension of practicing yoga. Whether you are just stepping onto the teaching path or have spent many years there maturing into a mentor teacher, as you practice so you discover anew the essence of yoga as a tool for self-transformation. Like in the practice, in teaching there are unlimited opportunities for seeing more clearly, feeling more fully, and living more happily. Teaching is also an extension of your larger life, for how you live is expressed in your teaching. Committing to this path will deepen your personal practice and bring yoga more into every aspect of your life. Doing this consciously—making a considered and deliberate decision to teach yoga rather than casually assuming the role of a teacher—will make every part of your teaching practice a more natural expression of who you are as a person while allowing you to sustain yourself more simply in the teaching profession.	<p>Teaching yoga is an extension of practicing yoga. Whether you are just stepping onto the teaching path or have spent many years there maturing into a mentor teacher, as you practice so you discover anew the essence of yoga as a tool for self-transformation. Like in the practice, in teaching there are unlimited opportunities for seeing more clearly, feeling more fully, and living more happily. Teaching is also an extension of your larger life, for how you live is expressed in your teaching. Committing to this path will deepen your personal practice and bring yoga more into every aspect of your life. Doing this consciously&mdash;making a considered and deliberate decision to teach yoga rather than casually assuming the role of a teacher&mdash;will make every part of your teaching practice a more natural expression of who you are as a person while allowing you to sustain yourself more simply in the teaching profession.</p>\r\n\r\n<p>Your students will always be your best teachers. Listen to them, to what they say, and to what they don&rsquo;t say. Opening yourself with patience and compassion to how every student offers unique insights into the practice of doing and guiding yoga will help keep you grounded in the realities of your students. Your most challenging student may be your most relevant teacher. Honor, respect, and tap into these insights; they are the most essential foundation for being the best possible teacher.</p>\r\n\r\n<p>Stay with your personal practice. Many yoga teachers become so consumed by teaching that their own practice fades. Not only is your practice a vital part of a balanced and healthy lifestyle, it is a bottomless well of experience for exploring and clarifying most of the questions that will arise in your teaching. Keep going back to that source. Beware of the common tendency among teachers to think you have done a practice by demonstrating asanas in the classes that you teach; it is not the same as when you are wholly focused in doing a yoga practice. Remembering Pattabhi Jois&rsquo;s oft-quoted statement that yoga is ninety-nine percent practice and one percent theory, do the practice, and the theory!</p>\r\n\r\n<p>Everything in life has a rhythm. As you explore along the path of teaching, take time to pause and reflect on how you are feeling amid the shifting rhythms of your experience. Notice the changing terrain, whether it is new places, different students, or the evolution of your thinking and personal experience of the practice. Like pausing when empty of breath and sensing more clarity, occasionally take a break from teaching to gain deeper insight into how you are approaching the craft. Be as clear as you can in your motivation to teach. Allow the inevitable challenges that arise in teaching to be raw material for your personal development, always opening yourself to refining your teaching just as you help students to refine their practice of yoga.</p>\r\n\r\n<p>Keep breathing!</p>\r\n	path-teacher	2013-02-11	2013-06-30 22:35:43.556614	2013-06-30 22:35:43.556614
20	Teaching Warrior Poses	Virabhadra—the fierce spiritual warrior. When Shiva’s consort Shakti was killed by the chief of the gods, Daksha, Shiva tore out his hair in grief and anger, creating the fierce warrior Virabhadra from his locks. With a thousand arms, three burning eyes, and fiery hair, Virabhadra wore a garland of skulls and carried many terrifying weapons. Bowing at Shiva’s feet and asking his will, Virabhadra was directed by Shiva to lead his army against Daksha to avenge Shakti’s death, which he did with immediate success.	<p><em>Virabhadra&mdash;the fierce spiritual warrior</em><em>.&nbsp;</em>When&nbsp;Shiva&rsquo;s&nbsp;consort Shakti was killed by the chief of the gods,Daksha, Shiva&nbsp;tore out his hair in grief and anger, creating the fierce warrior&nbsp;Virabhadra&nbsp;from his locks. With a thousand arms, three burning eyes, and fiery hair,&nbsp;Virabhadra&nbsp;wore a garland of skulls and carried many terrifying weapons. Bowing at&nbsp;Shiva&rsquo;s&nbsp;feet and asking his will,&nbsp;Virabhadra&nbsp;was directed by&nbsp;Shiva&nbsp;to lead his army against&nbsp;Daksha&nbsp;to avenge&nbsp;Shakti&rsquo;s&nbsp;death, which he did with immediate success.</p>\r\n\r\n<p>Like Shiva,&nbsp;Virabhadra&rsquo;s&nbsp;aim in destruction is not revenge but to destroy the real enemy, which is the ego standing in the way of humility. Approaching the asanas named for&nbsp;Virabhadra&mdash;Virabhadrasana I, II, and III<em>&mdash;</em>we can encourage students to cultivate the mind of the spiritual warrior, aware of all sides, unattached to attainment, centered in one&rsquo;s being.</p>\r\n\r\n<p>Staying focused in the practice, holding on in the midst of fear and intensity, the spirit of&nbsp;Virabhadra&nbsp;helps students discover the strength and humility to explore challenges in their practice and life with greater courage and determination.</p>\r\n	teaching-warrior-poses	2013-02-11	2013-06-30 22:36:25.895934	2013-06-30 22:36:25.895934
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('posts_id_seq', 20, true);


--
-- Data for Name: readings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY readings (id, title, image, weight, content, created_at, updated_at) FROM stdin;
1	Rumi	YS107_Utt_Parsva.jpg	0	<p>A strange passion is moving in my head. <br />\r\nMy heart has become a bird which searches in the sky. <br />\r\nEvery part of me goes in different directions. Is it really so that the one I love is everywhere?</p>\r\n	2013-06-28 21:32:18.179441	2013-06-29 21:03:43.492344
\.


--
-- Name: readings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('readings_id_seq', 1, true);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY roles (id, name, resource_id, resource_type, created_at, updated_at) FROM stdin;
1	admin	\N	\N	2013-06-26 22:36:39.576768	2013-06-26 22:36:39.576768
2	user	\N	\N	2013-06-26 22:36:39.583557	2013-06-26 22:36:39.583557
3	silver	\N	\N	2013-06-26 22:36:39.585617	2013-06-26 22:36:39.585617
4	gold	\N	\N	2013-06-26 22:36:39.58733	2013-06-26 22:36:39.58733
5	platinum	\N	\N	2013-06-26 22:36:39.58901	2013-06-26 22:36:39.58901
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_seq', 5, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20130621031227
20130621031228
20130621031230
20130621031233
20130621033013
20130622024050
20130622024240
20130622024500
20130622024826
20130622025238
20130622054001
20130623001939
20130623001942
20130623001943
20130628023838
20130628054447
20130628073218
20130628200521
20130628161838
20130628212407
20130628233936
20130629054914
20130629220238
20130629235933
20130630002714
20130630211357
\.


--
-- Data for Name: slideshows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY slideshows (id, title, image, content, weight, created_at, updated_at, image_tmp) FROM stdin;
3	Surya Namaskara C (Sun Salutation C)	Pose01_1_0.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_c/Pose01_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_c/Pose02_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_c/Pose03_1_0 (1).jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_c/Pose04_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_c/Pose05_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_c/Pose06_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_c/Pose07_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_c/Pose08_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_c/Pose09_6.jpg" /></li>\r\n</ul>\r\n</div>	20	2013-06-30 00:43:49.157291	2013-06-30 02:02:20.879507	20130629-2043-94404-4536/Pose01_1_0.jpg
1	Surya Namaskara B (Sun Salutation B)	Pose01_1_0.jpg	<div class="flexslider">\r\n<ul>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_b/Pose01_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_b/Pose02_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_b/Pose03_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_b/Pose04_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_b/Pose06_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_b/Pose08_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_b/Pose09_6.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_b/Pose12_2.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_b/Pose18_0.jpg" /></li>\r\n</ul>\r\n</div>\r\n	10	2013-06-28 20:30:06.911555	2013-06-30 00:46:18.965512	20130629-2027-94404-4825/Pose01_1_0.jpg
7	Utthita Hasta Padangusthasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt1/Pose02.jpg" /></li>\r\n</ul>\r\n</div>	60	2013-06-30 01:35:53.51786	2013-06-30 02:05:24.603392	20130629-2135-94404-6627/Pose01.jpg
8	Uttanasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt2/Pose01.jpg" /></li>\r\n</ul>\r\n</div>	70	2013-06-30 01:37:48.547907	2013-06-30 02:05:33.490917	20130629-2137-94404-5431/Pose01.jpg
9	Uttanasana Ardha	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt3/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt3/Pose02.jpg" /></li>\r\n</ul>\r\n</div>	80	2013-06-30 01:40:07.41568	2013-06-30 02:05:42.360026	20130629-2140-94404-6554/Pose01.jpg
5	Virabhadrasana II	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/virabhadrasanaii/Pose01.jpg" /></li>\r\n</ul>\r\n</div>	40	2013-06-30 01:31:51.391095	2013-06-30 02:05:08.590041	20130629-2131-94404-3477/Pose01.jpg
11	Utkatasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utka1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utka1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utka1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>	100	2013-06-30 01:44:45.416435	2013-06-30 02:06:00.7468	20130629-2144-94404-7046/Pose01.jpg
4	Virabhadrasana I	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/virabhadrasanai/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	30	2013-06-30 01:30:46.491797	2013-06-30 03:04:51.421962	20130629-2130-94404-4322/Pose01.jpg
6	Virabhadrasana III	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/virabhadrasanaii/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/virabhadrasanaii/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/virabhadrasanaii/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/virabhadrasanaii/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/virabhadrasanaii/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/virabhadrasanaii/Pose06.jpg" /></li>\r\n</ul>\r\n</div>	50	2013-06-30 01:32:45.272365	2013-06-30 02:05:16.33984	20130629-2132-94404-7417/Pose01.jpg
10	Parivritta Utkatasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari1/Pose04.jpg" /></li>\r\n</ul>\r\n</div>	90	2013-06-30 01:42:37.379351	2013-06-30 02:05:50.706874	20130629-2142-94404-2069/Pose01.jpg
14	Tadasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tad1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tad1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tad1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	130	2013-06-30 01:52:35.607149	2013-06-30 02:09:56.184403	20130629-2152-94404-6314/Pose01.jpg
2	Surya Namaskara A (Sun Salutation A)	Pose01_1_0.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose01_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose02_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose03_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose04_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose06_1_0.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose07_3.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose08_1.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose09_1.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose09_6.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose10_1.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sun_salutation_a/Pose11_0.jpg" /></li>\r\n</ul>\r\n</div>	0	2013-06-30 00:42:19.339565	2013-06-30 02:02:12.934594	20130629-2042-94404-8843/Pose01_1_0.jpg
12	Urdhva Hastasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>	110	2013-06-30 01:46:48.719233	2013-06-30 02:06:10.225005	20130629-2146-94404-7054/Pose01.jpg
13	Utthita Trikonasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose06.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose07.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose08.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose09.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt4/Pose10.jpg" /></li>\r\n</ul>\r\n</div>	120	2013-06-30 01:50:03.513731	2013-06-30 02:06:19.061075	20130629-2150-94404-0121/Pose01.jpg
16	Parivrtta Trikonasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari2/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari2/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari2/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari2/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari2/Pose05.jpg" /></li>\r\n</ul>\r\n</div>	150	2013-06-30 02:22:57.237016	2013-06-30 02:22:57.271437	20130629-2222-94404-1984/Pose01.jpg
17	Parivrtta Ardha Chandrasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari3/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari3/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari3/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari3/Pose04.jpg" /></li>\r\n</ul>\r\n</div>	160	2013-06-30 02:27:04.406994	2013-06-30 03:05:36.90153	\N
15	Eka Pada Adho Mukha Vrksasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/eka1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/eka1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/eka1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>	140	2013-06-30 02:10:43.048695	2013-06-30 02:24:40.39988	\N
21	Prasarita Padottanasana B	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras3/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras3/Pose02.jpg" /></li>\r\n</ul>\r\n</div>	200	2013-06-30 02:36:10.949229	2013-06-30 02:52:54.966431	\N
23	Parivrtta Parsvakonasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari5/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari5/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari5/Pose03.jpg" /></li>\r\n</ul>\r\n</div>	220	2013-06-30 02:41:32.850669	2013-06-30 03:05:58.459904	\N
28	Ardha Chandrasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ard1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ard1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ard1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ard1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ard1/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ard1/Pose06.jpg" /></li>\r\n</ul>\r\n</div>\r\n	270	2013-06-30 02:59:11.603809	2013-06-30 02:59:11.636728	\N
26	Padahastasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pada1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pada1/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	250	2013-06-30 02:51:41.372159	2013-06-30 02:51:41.403968	\N
25	Parsvakonasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars2/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars2/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars2/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars2/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars2/Pose05.jpg" /></li>\r\n</ul>\r\n</div>\r\n	240	2013-06-30 02:49:20.502549	2013-06-30 02:52:17.076588	\N
24	Parsvottanasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars1/Pose05.jpg" /></li>\r\n</ul>\r\n</div>	230	2013-06-30 02:46:43.507663	2013-06-30 02:52:27.99751	\N
22	Prasarita Padottanasana A	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras4/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras4/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras4/Pose03.jpg" /></li>\r\n</ul>\r\n</div>	210	2013-06-30 02:38:19.696502	2013-06-30 02:52:45.77114	\N
20	Prasarita Padottanasana C	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras2/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras2/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras2/Pose03.jpg" /></li>\r\n</ul>\r\n</div>	190	2013-06-30 02:34:23.816653	2013-06-30 02:53:04.169298	\N
19	Prasarita Padottanasana D	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pras1/Pose02.jpg" /></li>\r\n</ul>\r\n</div>	180	2013-06-30 02:31:21.461859	2013-06-30 02:54:04.960603	\N
18	Parivritta Prasarita Padottanasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari4/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari4/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari4/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari4/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari4/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pari4/Pose06.jpg" /></li>\r\n</ul>\r\n</div>	170	2013-06-30 02:29:15.733742	2013-06-30 02:54:12.813997	\N
27	Padanguthasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pada2/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pada2/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	260	2013-06-30 02:56:45.992671	2013-06-30 02:56:46.02714	\N
29	Garudasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/gar1/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	280	2013-06-30 03:00:39.692899	2013-06-30 03:00:39.783889	\N
30	Crescent	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/cre1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/cre1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/cre1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/cre1/Pose04.jpg" /></li>\r\n</ul>\r\n</div>\r\n	290	2013-06-30 03:02:36.987728	2013-06-30 03:02:37.070917	\N
31	Ardha Baddha Padmottanasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ard2/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ard2/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ard2/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	300	2013-06-30 03:04:10.753065	2013-06-30 03:04:10.786115	\N
32	Vasisthasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vas1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vas1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vas1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vas1/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vas1/Pose06.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vas1/Pose07.jpg" /></li>\r\n</ul>\r\n</div>\r\n	310	2013-06-30 03:29:54.649073	2013-06-30 03:29:54.685602	\N
33	Urdhva Kukkatasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd2/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd2/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd2/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd2/Pose04.jpg" /></li>\r\n</ul>\r\n</div>\r\n	320	2013-06-30 03:32:17.009592	2013-06-30 03:32:17.044513	\N
34	Tittibhasana B	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tit1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tit1/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	330	2013-06-30 03:34:15.595859	2013-06-30 03:34:15.628465	\N
49	Ustrasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ust1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ust1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ust1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ust1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ust1/Pose05.jpg" /></li>\r\n</ul>\r\n</div>\r\n	480	2013-06-30 04:08:51.244988	2013-06-30 04:08:51.278606	\N
35	Tittibhasana A	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tit2/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tit2/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tit2/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	340	2013-06-30 03:36:49.20334	2013-06-30 03:36:49.235286	\N
36	Sirsasana II	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir1/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir1/Pose06.jpg" /></li>\r\n</ul>\r\n</div>\r\n	350	2013-06-30 03:40:09.991477	2013-06-30 03:40:10.023954	\N
37	Pincha Mayurasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pin1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pin1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pin1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pin1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pin1/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pin1/Pose06.jpg" /></li>\r\n</ul>\r\n</div>\r\n	360	2013-06-30 03:42:21.042376	2013-06-30 03:42:21.073185	\N
38	Parsva Bakasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars3/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars3/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars3/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars3/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars3/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars3/Pose06.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars3/Pose07.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pars3/Pose08.jpg" /></li>\r\n</ul>\r\n</div>\r\n	370	2013-06-30 03:45:00.232673	2013-06-30 03:45:00.267471	\N
39	Galavasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/gal1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/gal1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/gal1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/gal1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/gal1/Pose05.jpg" /></li>\r\n</ul>\r\n</div>\r\n	380	2013-06-30 03:47:09.671199	2013-06-30 03:47:09.707398	\N
40	Eka Pada Sirsasana B	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/eka2/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	390	2013-06-30 03:48:49.344823	2013-06-30 03:48:49.375255	\N
41	Eka Pada Sirsasana A	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/eka3/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	400	2013-06-30 03:50:04.053639	2013-06-30 03:50:04.082681	\N
42	Dwi Pada Sirsasana B	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/dwi1/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	410	2013-06-30 03:51:36.777396	2013-06-30 03:51:36.81152	\N
43	Dwi Pada Sirsasana A	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/dwi2/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	420	2013-06-30 03:53:11.927635	2013-06-30 03:53:11.963028	\N
44	Bhujapidasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bhu1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bhu1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bhu1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	430	2013-06-30 03:54:45.831747	2013-06-30 03:54:45.86389	\N
45	Bakasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bak1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bak1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bak1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bak1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bak1/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bak1/Pose06.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bak1/Pose07.jpg" /></li>\r\n</ul>\r\n</div>\r\n	440	2013-06-30 03:57:16.865483	2013-06-30 03:57:16.895236	\N
46	Adho Mukha Vrksasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/adh1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/adh1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/adh1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/adh1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/adh1/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/adh1/Pose06.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/adh1/Pose07.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/adh1/Pose08.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/adh1/Pose09.jpg" /></li>\r\n</ul>\r\n</div>\r\n	450	2013-06-30 04:00:02.913033	2013-06-30 04:00:02.945545	\N
47	Astavakrasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose06.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose07.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose08.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose09.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose10.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose11.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose12.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/ast1/Pose13.jpg" /></li>\r\n</ul>\r\n</div>\r\n	460	2013-06-30 04:03:52.159632	2013-06-30 04:03:52.19082	\N
48	Viparita Dandasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vip1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vip1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vip1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	470	2013-06-30 04:06:31.725378	2013-06-30 04:06:31.758256	\N
50	Urdhva Dhanurasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd3/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd3/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd3/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd3/Pose04.jpg" /></li>\r\n</ul>\r\n</div>\r\n	490	2013-06-30 04:11:15.069609	2013-06-30 04:11:15.149717	\N
51	Supta Virasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sup1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sup1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sup1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	500	2013-06-30 04:13:26.683355	2013-06-30 04:13:26.715845	\N
52	Setu Bhanda Sarvangasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/set1/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	510	2013-06-30 04:15:07.488562	2013-06-30 04:15:07.519406	\N
53	Salabhasana C	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	520	2013-06-30 04:17:10.240131	2013-06-30 04:17:10.272306	\N
54	Salabhasana B	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal2/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	530	2013-06-30 04:18:26.128891	2013-06-30 04:18:26.163636	\N
55	Salabhasana A	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal3/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	540	2013-06-30 04:20:37.716038	2013-06-30 04:20:37.751292	\N
56	Dhanurasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/dal1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/dal1/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	550	2013-06-30 04:23:04.289939	2013-06-30 04:23:04.32227	\N
57	Bhujapidasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bhu1/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	560	2013-06-30 04:26:12.723583	2013-06-30 04:26:12.7583	\N
58	Bhekasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bhe1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bhe1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bhe1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	570	2013-06-30 04:28:23.881337	2013-06-30 04:28:23.915093	\N
59	Uttana Padmasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt5/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt5/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt5/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/utt5/Pose04.jpg" /></li>\r\n</ul>\r\n</div>\r\n	580	2013-06-30 04:32:24.907895	2013-06-30 04:32:24.941809	\N
60	Urdhva Padmasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd4/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/urd4/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	590	2013-06-30 04:34:36.873592	2013-06-30 04:34:36.906751	\N
61	Tolasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tol1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/tol1/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	600	2013-06-30 04:37:00.192092	2013-06-30 04:37:00.222642	\N
62	Setu Bandhasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/set2/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/set2/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	610	2013-06-30 04:39:07.715888	2013-06-30 04:39:07.749747	\N
63	Pindasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pin2/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	620	2013-06-30 04:40:42.371218	2013-06-30 04:40:42.459094	\N
64	Padmasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pad1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pad1/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	630	2013-06-30 04:42:34.952725	2013-06-30 04:42:34.984324	\N
65	Matsyasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/mat1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/mat1/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	640	2013-06-30 04:44:21.254484	2013-06-30 04:44:21.286096	\N
66	Karnapidasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/kar1/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	650	2013-06-30 04:45:38.737785	2013-06-30 04:45:38.768551	\N
67	Halasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/hal1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/hal1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/hal1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	660	2013-06-30 04:47:45.598682	2013-06-30 04:47:45.632245	\N
68	Baddha Padmasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bad1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bad1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/bad1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	670	2013-06-30 04:49:28.367285	2013-06-30 04:49:28.452074	\N
69	Yogic Cycle	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/yog1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/yog1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/yog1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/yog1/Pose04.jpg" /></li>\r\n</ul>\r\n</div>\r\n	680	2013-06-30 04:51:54.718401	2013-06-30 04:51:54.754106	\N
70	Pelvic Tilt	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pel1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/pel1/Pose02.jpg" /></li>\r\n</ul>\r\n</div>\r\n	690	2013-06-30 04:54:02.343725	2013-06-30 04:54:02.377418	\N
71	Lolasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/lol1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/lol1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/lol1/Pose03.jpg" /></li>\r\n</ul>\r\n</div>\r\n	700	2013-06-30 04:55:43.896435	2013-06-30 04:55:43.927964	\N
72	Jathara Parivartanasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/jat1/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/jat1/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/jat1/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/jat1/Pose04.jpg" /></li>\r\n</ul>\r\n</div>\r\n	710	2013-06-30 04:57:24.968499	2013-06-30 04:57:25.003005	\N
73	Viparita Karani	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/vip2/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	720	2013-06-30 04:59:07.507294	2013-06-30 04:59:07.539108	\N
74	Sirsasana I	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir2/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir2/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir2/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir2/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir2/Pose05.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir2/Pose06.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir2/Pose07.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sir2/Pose08.jpg" /></li>\r\n</ul>\r\n</div>\r\n	730	2013-06-30 05:01:30.880584	2013-06-30 05:01:30.973153	\N
75	Savasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sav1/Pose01.jpg" /></li>\r\n</ul>\r\n</div>\r\n	740	2013-06-30 05:02:47.676023	2013-06-30 05:02:47.710125	\N
76	Salamba Sarvangasana	Pose01.jpg	<div class="flexslider">\r\n<ul class="slides">\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal4/Pose01.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal4/Pose02.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal4/Pose03.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal4/Pose04.jpg" /></li>\r\n\t<li><img src="http://dg6lv62o2y57c.cloudfront.net/uploads/images/sal4/Pose05.jpg" /></li>\r\n</ul>\r\n</div>\r\n	750	2013-06-30 05:04:33.410388	2013-06-30 05:04:33.442092	\N
\.


--
-- Name: slideshows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('slideshows_id_seq', 76, true);


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY taggings (id, tag_id, taggable_id, taggable_type, tagger_id, tagger_type, context, created_at) FROM stdin;
1	1	1	Video	\N	\N	tags	2013-06-28 06:07:55.279568
2	2	1	Audio	\N	\N	tags	2013-06-28 07:57:49.894912
3	2	1	Audio	\N	\N	audio_tags	2013-06-28 08:04:04.701652
4	1	1	Video	\N	\N	video_tags	2013-06-28 08:09:50.051697
6	4	1	Slideshow	\N	\N	slideshow_tags	2013-06-28 20:30:44.561638
7	5	1	Reading	\N	\N	reading_tags	2013-06-28 21:32:18.205182
8	6	5	Video	\N	\N	video_tags	2013-06-29 21:46:11.59534
9	6	7	Video	\N	\N	video_tags	2013-06-29 21:59:34.379045
10	6	8	Video	\N	\N	video_tags	2013-06-29 22:06:50.193526
11	6	9	Video	\N	\N	video_tags	2013-06-29 22:07:39.690679
12	6	10	Video	\N	\N	video_tags	2013-06-29 22:08:42.390316
13	6	11	Video	\N	\N	video_tags	2013-06-29 22:10:42.563253
14	6	12	Video	\N	\N	video_tags	2013-06-29 22:11:30.236588
15	6	13	Video	\N	\N	video_tags	2013-06-29 22:12:23.417232
16	6	14	Video	\N	\N	video_tags	2013-06-29 22:15:29.83155
17	7	14	Video	\N	\N	video_tags	2013-06-29 22:15:29.833706
18	6	15	Video	\N	\N	video_tags	2013-06-29 22:16:20.825725
19	6	16	Video	\N	\N	video_tags	2013-06-29 22:17:10.46842
20	6	17	Video	\N	\N	video_tags	2013-06-29 22:18:29.164201
21	6	18	Video	\N	\N	video_tags	2013-06-29 22:19:07.252007
22	6	19	Video	\N	\N	video_tags	2013-06-29 22:19:58.05471
23	6	20	Video	\N	\N	video_tags	2013-06-29 22:21:40.528073
24	6	21	Video	\N	\N	video_tags	2013-06-29 22:22:20.965612
25	6	22	Video	\N	\N	video_tags	2013-06-29 22:23:02.483718
26	6	23	Video	\N	\N	video_tags	2013-06-29 22:59:08.660617
27	6	24	Video	\N	\N	video_tags	2013-06-29 23:00:01.184428
28	8	24	Video	\N	\N	video_tags	2013-06-29 23:00:01.186795
29	6	25	Video	\N	\N	video_tags	2013-06-29 23:00:54.247805
30	8	25	Video	\N	\N	video_tags	2013-06-29 23:00:54.250282
31	8	26	Video	\N	\N	video_tags	2013-06-29 23:02:42.848412
32	6	27	Video	\N	\N	video_tags	2013-06-29 23:03:35.832756
33	8	27	Video	\N	\N	video_tags	2013-06-29 23:03:35.835165
34	6	28	Video	\N	\N	video_tags	2013-06-29 23:04:18.009651
35	8	28	Video	\N	\N	video_tags	2013-06-29 23:04:18.011999
36	7	29	Video	\N	\N	video_tags	2013-06-29 23:05:16.318619
37	6	30	Video	\N	\N	video_tags	2013-06-29 23:06:06.106871
38	7	30	Video	\N	\N	video_tags	2013-06-29 23:06:06.109389
39	7	31	Video	\N	\N	video_tags	2013-06-29 23:06:41.278294
40	7	32	Video	\N	\N	video_tags	2013-06-29 23:07:45.919671
41	6	33	Video	\N	\N	video_tags	2013-06-29 23:08:17.951247
42	7	33	Video	\N	\N	video_tags	2013-06-29 23:08:17.953666
43	7	34	Video	\N	\N	video_tags	2013-06-29 23:08:52.499643
44	7	35	Video	\N	\N	video_tags	2013-06-29 23:09:36.757066
45	7	36	Video	\N	\N	video_tags	2013-06-29 23:10:12.601752
46	7	37	Video	\N	\N	video_tags	2013-06-29 23:11:05.141461
47	7	38	Video	\N	\N	video_tags	2013-06-29 23:11:46.4539
48	7	39	Video	\N	\N	video_tags	2013-06-29 23:12:22.887644
49	9	40	Video	\N	\N	video_tags	2013-06-29 23:13:00.055329
50	9	41	Video	\N	\N	video_tags	2013-06-29 23:14:13.423604
51	9	42	Video	\N	\N	video_tags	2013-06-29 23:14:46.117279
52	8	42	Video	\N	\N	video_tags	2013-06-29 23:14:46.119751
53	9	43	Video	\N	\N	video_tags	2013-06-29 23:15:16.68697
54	9	44	Video	\N	\N	video_tags	2013-06-29 23:15:57.415254
55	9	45	Video	\N	\N	video_tags	2013-06-29 23:16:28.420611
56	8	45	Video	\N	\N	video_tags	2013-06-29 23:16:28.423046
57	9	46	Video	\N	\N	video_tags	2013-06-29 23:17:06.506858
58	10	46	Video	\N	\N	video_tags	2013-06-29 23:17:06.509333
59	9	47	Video	\N	\N	video_tags	2013-06-29 23:17:51.28702
60	10	47	Video	\N	\N	video_tags	2013-06-29 23:17:51.289562
61	9	48	Video	\N	\N	video_tags	2013-06-29 23:18:32.257103
62	9	49	Video	\N	\N	video_tags	2013-06-29 23:19:05.61529
63	8	49	Video	\N	\N	video_tags	2013-06-29 23:19:05.6175
64	9	50	Video	\N	\N	video_tags	2013-06-29 23:19:56.813417
65	9	51	Video	\N	\N	video_tags	2013-06-29 23:20:40.580392
66	11	51	Video	\N	\N	video_tags	2013-06-29 23:20:40.582568
67	9	52	Video	\N	\N	video_tags	2013-06-29 23:21:22.712987
68	11	52	Video	\N	\N	video_tags	2013-06-29 23:21:22.715493
69	11	53	Video	\N	\N	video_tags	2013-06-29 23:22:22.024285
70	11	54	Video	\N	\N	video_tags	2013-06-29 23:22:52.737644
71	11	55	Video	\N	\N	video_tags	2013-06-29 23:23:25.051349
72	11	56	Video	\N	\N	video_tags	2013-06-29 23:24:16.831994
73	9	57	Video	\N	\N	video_tags	2013-06-29 23:24:52.514281
74	1	59	Video	\N	\N	video_tags	2013-06-29 23:26:12.582074
75	1	60	Video	\N	\N	video_tags	2013-06-29 23:26:48.916802
76	8	60	Video	\N	\N	video_tags	2013-06-29 23:26:48.920131
77	1	61	Video	\N	\N	video_tags	2013-06-29 23:27:22.92221
78	1	62	Video	\N	\N	video_tags	2013-06-29 23:28:11.916039
79	1	63	Video	\N	\N	video_tags	2013-06-29 23:28:43.649983
80	1	64	Video	\N	\N	video_tags	2013-06-29 23:29:18.348922
81	1	65	Video	\N	\N	video_tags	2013-06-29 23:30:12.714606
82	1	66	Video	\N	\N	video_tags	2013-06-29 23:30:44.234667
83	1	67	Video	\N	\N	video_tags	2013-06-29 23:31:14.334586
84	1	68	Video	\N	\N	video_tags	2013-06-29 23:32:03.608178
85	1	69	Video	\N	\N	video_tags	2013-06-29 23:32:51.07578
86	12	69	Video	\N	\N	video_tags	2013-06-29 23:32:51.078223
87	12	70	Video	\N	\N	video_tags	2013-06-29 23:33:26.966247
88	12	71	Video	\N	\N	video_tags	2013-06-29 23:34:13.705665
89	12	72	Video	\N	\N	video_tags	2013-06-29 23:34:49.097176
90	6	73	Video	\N	\N	video_tags	2013-06-29 23:35:28.299279
91	7	73	Video	\N	\N	video_tags	2013-06-29 23:35:28.301903
97	7	77	Video	\N	\N	video_tags	2013-06-29 23:41:26.398326
98	2	2	Audio	\N	\N	audio_tags	2013-06-30 00:02:49.131025
99	14	3	Audio	\N	\N	audio_tags	2013-06-30 00:04:51.562442
100	14	4	Audio	\N	\N	audio_tags	2013-06-30 00:06:41.040365
101	4	2	Slideshow	\N	\N	slideshow_tags	2013-06-30 00:42:19.411882
102	4	3	Slideshow	\N	\N	slideshow_tags	2013-06-30 00:43:49.164201
103	15	4	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:30:46.502583
104	15	5	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:31:51.396729
105	15	6	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:32:45.278579
106	15	7	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:35:53.524661
107	15	8	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:37:48.554739
108	15	9	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:40:07.421663
109	15	10	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:42:37.385474
110	15	11	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:44:45.422108
111	15	12	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:46:48.725605
112	15	13	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:50:03.520416
113	15	14	Slideshow	\N	\N	slideshow_tags	2013-06-30 01:52:35.614426
114	15	15	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:10:43.054943
115	15	16	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:22:57.242885
116	15	17	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:27:04.412769
117	15	18	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:29:15.741178
118	15	19	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:31:21.467985
119	15	20	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:34:23.823508
120	15	21	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:36:10.954969
121	15	22	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:38:19.703605
122	15	23	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:41:32.857586
123	15	24	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:46:43.515247
124	15	25	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:49:20.508343
125	15	26	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:51:41.379287
126	15	27	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:56:45.999763
127	15	28	Slideshow	\N	\N	slideshow_tags	2013-06-30 02:59:11.610266
128	15	29	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:00:39.699257
129	15	30	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:02:36.994682
130	15	31	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:04:10.758833
131	16	32	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:29:54.657076
132	16	33	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:32:17.016938
133	16	34	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:34:15.603711
134	16	35	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:36:49.210021
135	16	36	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:40:09.997544
136	16	37	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:42:21.048416
137	16	38	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:45:00.238755
138	16	39	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:47:09.678606
139	16	40	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:48:49.351396
140	16	41	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:50:04.059375
141	16	42	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:51:36.782901
142	16	43	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:53:11.933221
143	16	44	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:54:45.837932
144	16	45	Slideshow	\N	\N	slideshow_tags	2013-06-30 03:57:16.871181
145	16	46	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:00:02.919047
146	16	47	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:03:52.166221
147	17	48	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:06:31.732704
148	17	49	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:08:51.25176
149	17	50	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:11:15.07578
150	17	51	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:13:26.689335
151	17	52	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:15:07.494496
152	17	53	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:17:10.246844
153	17	54	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:18:26.136057
154	17	55	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:20:37.723162
155	17	56	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:23:04.296566
156	17	57	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:26:12.729816
157	17	58	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:28:23.887476
158	18	59	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:32:24.916123
159	18	60	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:34:36.879781
160	18	61	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:37:00.198423
161	18	62	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:39:07.722029
162	18	63	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:40:42.378613
163	18	64	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:42:34.959055
164	18	65	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:44:21.261195
165	18	66	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:45:38.743574
166	18	67	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:47:45.605851
167	18	68	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:49:28.374544
168	19	69	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:51:54.727118
169	19	70	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:54:02.350446
170	19	71	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:55:43.903826
171	19	72	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:57:24.974529
172	10	73	Slideshow	\N	\N	slideshow_tags	2013-06-30 04:59:07.512942
173	10	74	Slideshow	\N	\N	slideshow_tags	2013-06-30 05:01:30.889078
174	10	75	Slideshow	\N	\N	slideshow_tags	2013-06-30 05:02:47.683402
175	10	76	Slideshow	\N	\N	slideshow_tags	2013-06-30 05:04:33.417316
176	20	5	Audio	\N	\N	audio_tags	2013-06-30 05:28:11.327312
177	20	6	Audio	\N	\N	audio_tags	2013-06-30 05:28:54.619429
178	20	7	Audio	\N	\N	audio_tags	2013-06-30 05:29:14.062385
179	20	8	Audio	\N	\N	audio_tags	2013-06-30 05:29:36.868072
180	20	9	Audio	\N	\N	audio_tags	2013-06-30 05:30:04.821256
181	20	10	Audio	\N	\N	audio_tags	2013-06-30 05:30:31.918662
182	20	11	Audio	\N	\N	audio_tags	2013-06-30 05:30:51.658462
183	20	12	Audio	\N	\N	audio_tags	2013-06-30 05:31:12.998926
184	20	13	Audio	\N	\N	audio_tags	2013-06-30 05:31:35.774524
185	20	14	Audio	\N	\N	audio_tags	2013-06-30 05:31:55.447071
186	20	15	Audio	\N	\N	audio_tags	2013-06-30 05:32:11.380047
187	20	16	Audio	\N	\N	audio_tags	2013-06-30 05:32:29.246543
188	20	17	Audio	\N	\N	audio_tags	2013-06-30 05:32:47.801758
189	20	18	Audio	\N	\N	audio_tags	2013-06-30 05:33:07.648151
190	20	19	Audio	\N	\N	audio_tags	2013-06-30 05:33:26.089827
191	21	1	Post	\N	\N	post_tags	2013-06-30 21:58:19.728033
192	21	2	Post	\N	\N	post_tags	2013-06-30 22:12:47.992166
193	21	3	Post	\N	\N	post_tags	2013-06-30 22:21:41.990607
194	21	4	Post	\N	\N	post_tags	2013-06-30 22:23:45.413389
195	21	5	Post	\N	\N	post_tags	2013-06-30 22:24:30.57919
196	21	6	Post	\N	\N	post_tags	2013-06-30 22:25:11.421965
197	21	7	Post	\N	\N	post_tags	2013-06-30 22:25:50.834668
198	21	8	Post	\N	\N	post_tags	2013-06-30 22:26:28.070609
199	21	9	Post	\N	\N	post_tags	2013-06-30 22:27:08.718585
200	21	10	Post	\N	\N	post_tags	2013-06-30 22:27:43.130335
\.


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('taggings_id_seq', 200, true);


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tags (id, name) FROM stdin;
1	Standing Poses
2	History and Philosophy
3	Surya Namaskara
4	Sun Salutations
5	Prose and Poetry
6	Seated Forward Bends and Hip Openers
7	Backbends
8	Twists
9	Arm Support and Balancing
10	Inversions
11	Core Strengthening and Integration
12	Flowing Sequences
13	More Postures
14	Teaching Yoga
15	Standing Asanas
16	Arm Balances
17	Back Bends
18	Finishing Asanas
19	Core Integration
20	Guided Practice
21	Archtypes and Mythology
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tags_id_seq', 21, true);


--
-- Data for Name: testimonials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY testimonials (id, title, summary, content, weight, created_at, updated_at) FROM stdin;
1	Amy Moreland, RYT200	As both a student and a teacher of yoga, this thought passes through my mind on a regular basis: I am so glad I did my teacher training with Mark Stephens! My understanding of anatomy, sequencing, modifications, exploration, prenatal yoga, working with injuries and the history of yoga is beyond what I ever thought I could glean from a teacher training. My own practice has become deeper, more rewarding and just plain feels better. My confidence as a teacher is ten-fold what I expected it would be this early in my teaching experience.	<p>As both a student and a teacher of yoga, this thought passes through my mind on a regular basis: I am so glad I did my teacher training with Mark Stephens! My understanding of anatomy, sequencing, modifications, exploration, prenatal yoga, working with injuries and the history of yoga is beyond what I ever thought I could glean from a teacher training. My own practice has become deeper, more rewarding and just plain feels better. My confidence as a teacher is ten-fold what I expected it would be this early in my teaching experience. I can see bodies in a way I couldn&#39;t before, I can assess more readily what might benefit one student versus another AND I can offer those options to students all within the same class.</p>\r\n\r\n<p>When I think of my training with Mark I feel as though I opted for an experience that would be more challenging, more focused on anatomy in the beginning and, in the end, would leave me phenomenally more prepared to teach than if I had decided to go down another training path. What I didn&#39;t realize I was opting for was an experience that would change my life as a student and a person, and that I would meet amazing people I would connect with and look forward to seeing every weekend and miss until I saw them again at workshops. I&#39;m incredibly grateful for both the expected and the unexpected!</p>\r\n	0	2013-06-29 05:51:47.224268	2013-06-29 05:51:47.224268
2	Lori Metroka, P.T., RYT 200	I first became familiar with Mark Stephens through taking his yoga classes in studios around my local neighborhood.  As my own personal yoga practice grew, along with being a healthcare provider, I knew I had to become a yoga instructor.  I researched local yoga teacher training programs and none compared to Mark's.  If you're looking for a training program that comes with an extremely knowledgeable teacher, hands on training, prepares you to be out on your own and is affordable, I highly recommend Mark's yoga teacher training.		10	2013-06-29 05:52:31.999651	2013-07-01 02:15:15.899919
3	Lisa Tilch, RYT 200	The yoga teacher training I did with Mark Stephens was an amazing overall experience.  The course followed an arch that gave a clear and comprehensive assessment of yoga.  Mark gave us the tools to understand the foundations of yoga and the encouragement to explore more deeply our individual interests.  That summer, myself and the other students became each other’s unique support group that trickles over even today.  Mark's passion, not just for yoga, but for teaching its meaning and potential to eager students, was a contagious and powerful experience.		20	2013-07-01 02:15:01.328712	2013-07-01 02:15:24.627837
4	Valmarie Levine, RYT 200	Mark Stephens' yoga teacher training program was a life changing experience. Mark skillfully offers a full spectrum program that full prepares the aspirant to begin teaching or advanced study.  Not only did my personal practice flower; my spiritual journey boomed.  I offer gratitude to my teacher, Mark, and encourage any seeker to explore this YTT program as a safe and sustainable entry point.		30	2013-07-01 02:15:50.543408	2013-07-01 02:15:50.543408
5	Shannon Phillips, RYT 200	I enrolled in Mark Stephens' 200-hour teacher training program just 8 months after my initial interest in yoga. I did not realize how much knowledge I would gain and how much of this knowledge I would transfer to my own practice as well as to the practice of teaching others. This teacher training experience was truly a gift - a once in a lifetime opportunity that I thank myself for participating in on a daily basis!		50	2013-07-01 02:17:02.421293	2013-07-01 02:17:02.421293
6	Lynda Lewit, RN, MPH, RYT 200	I had been teaching yoga for 5 years before taking the yoga teacher training with Mark Stevens. I liked the program because it was holistic in that it covered yoga philosophy, types of yoga, correct ways to teach and do asanas as well as covering anatomy and common issues found in yoga classes.  The students had an opportunity to teach and feedback was given. Mark Stephens was professional and supportive. I now have a better understanding of yoga and that helps my personal practice as well as teaching yoga.		60	2013-07-01 02:17:25.841953	2013-07-01 02:17:25.841953
21	Tom Miller, P.T., M.A.	Mark Stephens' yoga teacher training was amazing. He has what seems like an encycolpedic knowledge of yoga philosophy, history, anatomy, methodology, technique and practice, yet he shares it with a humility that supports what he often says: there is no end to what you can learn as a yoga teacher, so there's no such things as mastery, and therefore no such thing as a master. This speaks volumes about Mark's commitment to learning and to guiding his students in their learning.		200	2013-07-01 02:28:02.445771	2013-07-01 02:28:02.445771
22	Emily Perry, L.Ac., MTOM, RYT 200	Yoga teacher training with Mark Stephens not only deepened my personal yoga practice, but it revealed the wisdom and richness of yoga in a unique way. The biggest compliments I get on my teaching comes from the heart of the training: intelligent, progressive sequencing, safe alignment, and knowledgeable assists. This training taught me to lovingly assist students in exploring their yoga practice with safety, awareness, and creativity.		210	2013-07-01 02:28:25.315982	2013-07-01 02:28:25.315982
23	Jillian Glikbarg, E-RYT 500	Mark Stephens’ Yoga Teacher Training provided a thorough foundation for me as a teacher and a practitioner to deepen my understanding and experience not only in asana specifics, but in the multi-faceted traditions and philosophy that we call Yoga. Being able to learn so much from one well regarded and respected person as opposed to a faculty of teachers helped me grow quickly as a teacher and a student. I am forever grateful to my Teacher and highly recommend his training.		220	2013-07-01 02:28:47.515573	2013-07-01 02:28:47.515573
24	Doron Hanoch, E-RYT 500	Mark Stephens’ teacher training gave me an excellent foundation and tools for taking my teachings into actual practice, covering all the fields that are so important for a teacher to know. Mark is an exceptional teacher who incorporates seamlessly the beauty of tradition with the wisdom of our times. He is passionate about what he teaches and it shows in every aspect of his teachings.  His detailed explanation of poses and alignment is blended seamlessly into the practice of flow.		230	2013-07-01 02:29:10.3855	2013-07-01 02:29:10.3855
25	Henry Cleveland, RYT 200	Mark Stephens literally wrote the book on yoga teacher training. I practiced with him for four years before enrolling in his 200-hour training program. This training enriched my own practice and enabled me to begin teaching public classes in several locations in Santa Cruz County.		240	2013-07-01 02:29:30.072156	2013-07-01 02:29:30.072156
7	Aisha Khan	Mark Stephens' Yoga teacher training program is a very special offering – a gem created by the alchemy of years of dedication to the complete yogic path.  In essence Mark gives students a loom, a basic pattern and possibilities to weave their own teaching style.  	<p><span style="font-size:small"><span style="font-family:calibri; font-size:15px !important">Mark Stephens&#39; Yoga teacher training program is a very special offering &ndash; a gem created by the alchemy of years of dedication to the complete yogic path.&nbsp;</span></span></p>\r\n\r\n<p><span style="font-size:small"><span style="font-family:calibri; font-size:15px !important">In essence Mark gives students a loom, a basic pattern&nbsp;and possibilities to weave their own teaching style.&nbsp;&nbsp;</span></span></p>\r\n\r\n<p><span style="font-size:small"><span style="font-family:calibri; font-size:15px !important">An excellent foundation of yoga&rsquo;s history, philosophy and science form the loom. Then Mark weaves in the primary threads of the yogic path; asana styles, pranayama, and meditation. These threads are enhanced with ones vital to teaching such as anatomy, planning and sequencing as well as the often overlooked&nbsp;subtleties of space and voice. He also addresses contemporary yoga arenas like prenatal classes and teaching underserved communities.&nbsp; Every thread is coated with integrity, &nbsp;authenticity, safety and sustainability. The end result is a nuanced illustration of the complex yet subtle fabric that is the art of teaching yoga.&nbsp;</span></span></p>\r\n\r\n<p><span style="font-size:small"><span style="font-family:calibri; font-size:15px !important">In deftly passing on his artists skills Mark ensures his students leave not only confident but competent to create their own beautiful teaching tapestries and help their students create their personal yoga art.&nbsp;</span></span></p>\r\n\r\n<p><span style="font-size:small"><span style="font-family:calibri; font-size:15px !important"><span style="font-family:univers45light !important">I am deeply grateful to have had the opportunity to study under Mark and receive such gifts.</span></span></span></p>\r\n	80	2013-07-01 02:18:05.13642	2013-07-01 02:18:05.13642
8	Dawn Castello, RYT 200	I graduated from Mark Stephens’ Yoga Teacher Training in 2006.  It was an excellent experience that gave me a true balance of essentials, combining philosophy, community, anatomy and asanas.  I gained the skills I need to sustain a strong personal practice, and have felt confident as a teacher.  The yoga Mark taught me flows into all aspects of my life, career and family. 		40	2013-07-01 02:22:55.1214	2013-07-01 02:22:55.1214
9	Nimmi Kovvali, RYT 200	I enrolled in Mark Stephens’ y teacher training program in the Fall of 2008 with the intent to further my own knowledge of yoga and not necessarily to teach.  I was not confident that I would be able to teach others when my own practice was not advanced (that is to say I couldn't do complex pretzelie asanas).  		70	2013-07-01 02:23:25.773279	2013-07-01 02:23:25.773279
10	Ariela Najman, RYT 200	When I first moved to Santa Cruz, California, I was looking for a yoga teacher training mainly to learn more about the practice and to deepen my own. I never realized how much my life would change throughout the process. I cannot express enough gratitude for the wealth of knowledge shared and the strong connections made with inspiring and beautiful yogis and yoginis. Mark Stephens has been an incredible teacher and mentor. His support and guidance has helped lead me down the blissful path I am on today.		90	2013-07-01 02:23:51.27358	2013-07-01 02:23:51.27358
11	Ioana Badea	Mark Stephens is a renowned teacher of teachers who shares his craft and acquired professional wisdom with passion and a lighthearted attitude. He has a deep knowledge of yoga philosophy and a rich understanding of body mechanics and anatomy. Going through his teacher training program was a “tour de force” that enabled me to get a solid foundation of yoga, apply Mark’s teaching hands-on, and interact with like-minded friends.		100	2013-07-01 02:24:26.007424	2013-07-01 02:24:26.007424
12	Jennifer Lung, RYT200	After attending several of Mark Stephens' yoga classes, it was apparent to me that Mark was a deep reservoir of yoga asana knowledge. As a teacher, I wanted to gain deeper insight into the asanas and I signed up for his YTT in the summer of 2009. To my pleasant surprise, not only did Mark share with abandon his wealth of asana knowledge, we also dug deeply in other important teaching topics from hands-on adjustments, the importance of sequencing , understanding anatomy, and even to yoga philosophy.		110	2013-07-01 02:24:44.628787	2013-07-01 02:24:44.628787
13	Jenn Russo, M.S., RYT 500	Mark Stephens shares his wisdom and knowledge to the Yoga community through his teachings, his studio, his teacher training programs, and more recently his books.  Mark continues to inspire me as a teacher and an author with his amazing gift of being thorough, insightful and intuitive in his teachings. Yoga students and teachers will benefit greatly from participating in his Teacher Training programs. I had taught Yoga for 8 years before I took Mark's training.		120	2013-07-01 02:25:06.809528	2013-07-01 02:25:06.809528
14	Jenna Jeantet, RYT 200	As I dove deeply into yoga in the summer of 2008, I decided I would take Mark Stephens’ teacher training as a way to further my understanding and embodiment of the practice. Little did I know, the training that summer would exceed my expectations; it took me further than just a solid foundation of understanding. It also created the desire to continue with my studies, and take my practice off of my mat and further into the big picture of my life.		130	2013-07-01 02:25:28.594609	2013-07-01 02:25:28.594609
15	Minyoung Kim, RYT200	In choosing a Teacher Training Program, I wanted to find a program that was comprehensive, clearly organized, and one that would challenge me while giving me the space to explore and grow as a teacher and practitioner. Not only did Mark's program fulfill my expectations, it vastly exceeded them.		140	2013-07-01 02:25:50.638437	2013-07-01 02:25:50.638437
16	Wei Martin, RYT 200	Mark Stephens' passion for yoga really comes through in his teaching. His enthusiasm for sharing his wealth of knowledge with each and every one of his students is what makes his yoga teacher training so outstanding.  One of the most valuable components of the training was Mark's knowledge regarding the importance of creating a sensible sequence. Mark's wisdom, compassion, generosity and sense of humor also contributed to making his teacher training so rewarding and memorable for me. I am forever grateful for Mark's influence in my own yoga and teaching practices.		150	2013-07-01 02:26:11.433203	2013-07-01 02:26:11.433203
17	Erika Abrahamian, RYT 200	Mark Stephens’ yoga teacher training provided for me what I've come to recognize as the indispensable trinity of anatomical knowledge, yogic philosophy and hands on experience. The training helped me tremendously with finding my own personal voice and approach as a teacher, in addition to teaching me how to safely guide my students (and myself) in and out of postures.		160	2013-07-01 02:26:32.950105	2013-07-01 02:26:32.950105
18	Catherine Rose, M.D., RYT200	Mark Stephens' teacher training beautifully blends his wealth of experiential and factual knowledge with the wisdom of his many years of practice. The result is a challenging and deeply informative training which he infuses with lightheartedness and fun!		170	2013-07-01 02:26:58.887945	2013-07-01 02:26:58.887945
19	Michelle Sioson Hyman, RYT200	Mark Stephens is an extremely knowledgeable and compassionate teacher. I chose his teacher training because of his philosophy of sustainability and his focus on sthira sukam asanam (steadiness, ease, presence of mind). The amount of knowledge of yoga anatomy, history, asana alignment and sequencing that I gained through the training was astounding.  I left speaking a new language, living a new culture. Once I completed my certification, I was hired by a local yoga studio just one month later.		180	2013-07-01 02:27:17.988448	2013-07-01 02:27:17.988448
20	Todd LaBerge, E–RYT 500	The teacher training experience offered by Mark provides such a well-rounded and thorough approach to truly teaching yoga that I highly recommend it to all who want to learn more about yoga regardless of teaching aspirations. Many teacher training programs turn out sufficient yoga class leaders, but Mark's program crafts you into a true teacher blessed with the knowledge to both begin a new path, and to also blossom down the road.		190	2013-07-01 02:27:37.739083	2013-07-01 02:27:37.739083
\.


--
-- Name: testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('testimonials_id_seq', 25, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, name, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, customer_id, last_4_digits) FROM stdin;
1	elliot.weaver@gmail.com	$2a$10$FCzuyxA0UgmsgWJ7ZjgQSe1nm8hbABWpG7KpApXT3x5OXWi4n/WgO	\N	\N	\N	0	\N	\N	\N	\N	2013-06-26 22:36:39.708046	2013-06-26 22:36:39.708046	Elliot Weaver	\N	\N	\N	\N	\N	\N
2	user2@example.com	$2a$10$JBJxpth/eXd1sl0Ynf5RRuH72Nj./NSYiAX13QtjZzFOOVT/Cb4L.	\N	\N	\N	0	\N	\N	\N	\N	2013-06-26 22:36:39.785298	2013-06-26 22:36:39.785298	Silver User	\N	\N	\N	\N	\N	\N
3	user3@example.com	$2a$10$tgw7xDArGktfbnYK9ZcyDe2l.J9bgjFF1D8vZAmN7yJOr24iwvMOu	\N	\N	\N	0	\N	\N	\N	\N	2013-06-26 22:36:39.848866	2013-06-26 22:36:39.848866	Gold User	\N	\N	\N	\N	\N	\N
4	user4@example.com	$2a$10$vnC8yokCv/.6s5E3ATfPfO5ML4KheWcJqypzqXdPoTO0cp8aDnW3q	\N	\N	\N	0	\N	\N	\N	\N	2013-06-26 22:36:39.911907	2013-06-26 22:36:39.911907	Platinum User	\N	\N	\N	\N	\N	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 4, true);


--
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users_roles (user_id, role_id) FROM stdin;
1	1
2	3
3	4
4	5
\.


--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY videos (id, title, description, video, image, created_at, updated_at, weight, image_tmp) FROM stdin;
7	Lotus Pose (Padmasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/102_LotusPose.mp4	DSC05254.JPG	2013-06-29 21:53:54.348011	2013-06-29 21:59:43.189657	50	\N
17	Seated Wrapped Forward Fold or Pose of Marichy A (Marichyasana A)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/91_PoseOfMarichyA.mp4	YS50_Marichyasana_A.jpg	2013-06-29 22:18:29.157623	2013-06-29 22:18:29.269312	150	20130629-1818-93095-8788/YS50_Marichyasana_A.jpg
8	Half Lotus Seated Forward Fold (Ardha Baddha Padma Paschimottanasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/101_HalfLotusForwardFold.mp4	YS151_Ardha_Baddha_Padma_Pasch.jpg	2013-06-29 22:06:50.174389	2013-06-29 22:06:50.311266	60	20130629-1806-93095-8390/YS151_Ardha_Baddha_Padma_Pasch.jpg
9	Cow Face Pose (Gomukhasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/100_GoMuKasana.mp4	YS37_Gomukhasana.jpg	2013-06-29 22:07:39.684284	2013-06-29 22:07:39.897755	70	20130629-1807-93095-0743/YS37_Gomukhasana.jpg
10	Heron Pose (Krounchasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/99_Heron.mp4	YS44_Krounchana.jpg	2013-06-29 22:08:42.383751	2013-06-29 22:08:42.514567	80	20130629-1808-93095-5459/YS44_Krounchana.jpg
5	Bound Lotus Pose (Baddha Padamasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/103_BoundLotusPose.mp4	YS35_Baddha_Padmasana.jpg	2013-06-29 21:44:36.739454	2013-06-29 22:08:55.447197	40	20130629-1805-93095-2940/YS35_Baddha_Padmasana.jpg
11	Three Limb Facing One Foot Forward Fold (Tiriang Mukha Eka Pada Paschimottanasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/98_ThreeLimbsFacingOneFootWestStretching.mp4	YS89_Tiriang_Mukha.jpg	2013-06-29 22:10:42.556232	2013-06-29 22:10:42.656286	90	20130629-1810-93095-6019/YS89_Tiriang_Mukha.jpg
12	Hero Pose (Virasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/97_HeroPose.mp4	YS115_Virasana.jpg	2013-06-29 22:11:30.230674	2013-06-29 22:11:30.375939	100	20130629-1811-93095-8582/YS115_Virasana.jpg
13	Cobbler or Bound Angle Pose (Baddha Konasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/95_BoundAnglePose.mp4	YS14_Baddha_Konasana.jpg	2013-06-29 22:12:23.410942	2013-06-29 22:12:23.536656	110	20130629-1812-93095-4030/YS14_Baddha_Konasana.jpg
14	Yogic Splits or Pose of Hanuman (Hanumanasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/94_Hanumanasana.mp4	YS39_Hanumanasana_0.jpg	2013-06-29 22:15:29.820214	2013-06-29 22:15:29.92583	120	20130629-1815-93095-9134/YS39_Hanumanasana_0.jpg
15	Turtle Pose (Kurmasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/93_TurtlePose.mp4	YS46_Kurmasana.jpg	2013-06-29 22:16:20.819368	2013-06-29 22:16:20.897298	130	20130629-1816-93095-7759/YS46_Kurmasana.jpg
18	Head to Knee Pose (Janu Sirsasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/90_KneeToHeadForwardFold.mp4	YS40_Janu_Sirsasana.jpg	2013-06-29 22:19:07.245559	2013-06-29 22:19:07.339318	160	20130629-1819-93095-6612/YS40_Janu_Sirsasana.jpg
16	Wide Leg Forward Fold (Upa Vista Konasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/92_WideAngledForwardFold.mp4	YS93_Upa_Vista_Konasana.jpg	2013-06-29 22:17:10.462188	2013-06-29 22:17:49.589992	140	20130629-1817-93095-9477/YS93_Upa_Vista_Konasana.jpg
1	Extended Side Angle Pose (Utthita Parsvakonasana)	Lets test this out	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/22_ExtendedSideAngle.mp4	YS107_Utt_Parsva.jpg	2013-06-28 02:43:41.487042	2013-06-29 21:10:49.409722	0	\N
2	Revolved Extended Side Angle Pose (Parivrtta Parsvakonasana)		http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/25_RevolvedExtendedSideAngle.mp4	YS62_Parv_Parsva.jpg	2013-06-28 05:32:45.893038	2013-06-29 21:11:59.404935	10	\N
3	Fire Log or Double Pigeon Pose (Agnistambhasana)		http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/106_FireLogPose.mp4	YS3-Agnistambhasana.jpg	2013-06-28 05:39:25.529455	2013-06-29 21:13:46.895737	20	\N
4	The Title		http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/104_ShootingBow.mp4	YS10_Arkana_Dhanurasana.jpg	2013-06-28 05:50:36.185823	2013-06-29 21:17:12.22731	30	\N
19	Seated Forward Bend or West Stretching Pose (Paschimottanasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/89_WestStretchingPose.mp4	P24_Paschimo.jpg	2013-06-29 22:19:58.048693	2013-06-29 22:19:58.329244	170	20130629-1819-93095-2005/P24_Paschimo.jpg
20	Staff Pose (Dandasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/88_StaffPose.mp4	YS25_Dandasana.jpg	2013-06-29 22:21:40.522292	2013-06-29 22:21:40.698637	180	20130629-1821-93095-8292/YS25_Dandasana.jpg
21	Happy Baby Pose (Ananda Balasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/87_HappyBabyPose.mp4	YS138_Ananda_Balasana.jpg	2013-06-29 22:22:20.959391	2013-06-29 22:22:21.110653	190	20130629-1822-93095-1904/YS138_Ananda_Balasana.jpg
22	Reclined Big Toe Pose (Supta Padangusthasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/86_ReclinedBigToePose.mp4	YS86_Supta_Padangusthasana_A.jpg	2013-06-29 22:23:02.477775	2013-06-29 22:23:02.587246	200	20130629-1823-93095-6310/YS86_Supta_Padangusthasana_A.jpg
23	Knees to Chest Pose (Apanasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/84_KneeToChest.mp4	YS133_Apanasana.jpg	2013-06-29 22:59:08.6	2013-06-29 22:59:08.761517	210	20130629-1859-93095-4793/YS133_Apanasana.jpg
24	Revolved Head to Knee Pose (Parivrtta Janu Sirsasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/82_RevolvedoHeadToKneePose.mp4	YS61_Parivrtta_Janu_Sirsasana.jpg	2013-06-29 23:00:01.175729	2013-06-29 23:00:01.302187	220	20130629-1900-93095-3083/YS61_Parivrtta_Janu_Sirsasana.jpg
25	Revolved Head to Knee Pose (Parivrtta Janu Sirsasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/82_RevolvedoHeadToKneePose.mp4	YS61_Parivrtta_Janu_Sirsasana.jpg	2013-06-29 23:00:54.241055	2013-06-29 23:00:54.361617	230	20130629-1900-93095-8727/YS61_Parivrtta_Janu_Sirsasana.jpg
26	Reclined Twist (Supta Parivartanasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/81_SuptaParVarTenasana.mp4	YS134_Supta_Parivartanasana.jpg	2013-06-29 23:02:42.84119	2013-06-29 23:02:42.915221	240	20130629-1902-93095-0107/YS134_Supta_Parivartanasana.jpg
27	Simple Noose Pose (Bharadvajrasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/80_Bhardvajrasana.mp4	YS18_-_Bharadvajrasana_B.jpg	2013-06-29 23:03:35.825819	2013-06-29 23:03:35.918133	250	20130629-1903-93095-4651/YS18_-_Bharadvajrasana_B.jpg
28	Pose of Marichy C (Marichyasana C)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/79_MarichisPose.mp4	YS51_Marichyasana_C.jpg	2013-06-29 23:04:18.003394	2013-06-29 23:04:18.141004	260	20130629-1904-93095-4705/YS51_Marichyasana_C.jpg
29	Full Bridge (Setu Bhandasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/76_FullBridge.mp4	DSC05251SETUBANDHASANA.jpg	2013-06-29 23:05:16.311618	2013-06-29 23:05:16.351623	270	20130629-1905-93095-8213/DSC05251SETUBANDHASANA.jpg
30	One Foot King Pigeon Pose (Eka Pada Raj Kapotasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/71_OneFootKingPigeonPose.mp4	YS32_Eka_Pada_Raj_Kap_II.jpg	2013-06-29 23:06:06.100623	2013-06-29 23:06:06.335922	280	20130629-1906-93095-8743/YS32_Eka_Pada_Raj_Kap_II.jpg
31	Upward Facing Bow or Wheel Pose (Urdhva Dhanurasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/68_UpwardFacingBoatPose.mp4	YS94_Urdhva_Dhanurasana.jpg	2013-06-29 23:06:41.271859	2013-06-29 23:06:41.434027	290	20130629-1906-93095-7063/YS94_Urdhva_Dhanurasana.jpg
32	Bridge Pose (Setu Bandha Sarvanghasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/67_SupportedBridgePose.mp4	YS83_Setu_Bandha_Sarvan.jpg	2013-06-29 23:07:45.9135	2013-06-29 23:07:46.012433	300	20130629-1907-93095-3590/YS83_Setu_Bandha_Sarvan.jpg
33	Hero Pose (Virasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/66_HeroPose.mp4	YS115_Virasana.jpg	2013-06-29 23:08:17.944483	2013-06-29 23:08:18.093737	310	20130629-1908-93095-2420/YS115_Virasana.jpg
34	Little Thunderbolt Pose (Laghuvajrasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/64_LittleThunderBoltPose.mp4	YS47_Laguvajrasana.jpg	2013-06-29 23:08:52.493881	2013-06-29 23:08:52.669833	320	20130629-1908-93095-4124/YS47_Laguvajrasana.jpg
35	Camel Pose (Ustrasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/63_CamelPose.mp4	YS100_Ustrasana_0.jpg	2013-06-29 23:09:36.751065	2013-06-29 23:09:36.932567	330	20130629-1909-93095-5964/YS100_Ustrasana_0.jpg
36	Camel Pose (Ustrasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/63_CamelPose.mp4	YS100_Ustrasana_0.jpg	2013-06-29 23:10:12.595478	2013-06-29 23:10:12.820088	340	20130629-1910-93095-3987/YS100_Ustrasana_0.jpg
37	Bow Pose (Dhanurasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/62_BowPose.mp4	YS26_Dhanurasana_0.jpg	2013-06-29 23:11:05.134735	2013-06-29 23:11:05.28729	350	20130629-1911-93095-2387/YS26_Dhanurasana_0.jpg
38	Cobra Pose (Bhujanghasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/59_CobraPose.mp4	YS20_Bhujangasana_Malia.jpg	2013-06-29 23:11:46.447801	2013-06-29 23:11:46.560296	360	20130629-1911-93095-1401/YS20_Bhujangasana_Malia.jpg
39	Locust Pose ABC (Salabhasana ABC)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/57_LocustPoseABC.mp4	YS76A_Salabhasana_A.jpg	2013-06-29 23:12:22.881641	2013-06-29 23:12:22.961169	370	20130629-1912-93095-2078/YS76A_Salabhasana_A.jpg
40	Upward Rooster Pose (Urdhva Kukkutasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/55_UpwardRoosterPose.mp4	YS96_Urd_Kuk_0.jpg	2013-06-29 23:13:00.047895	2013-06-29 23:13:00.148813	380	20130629-1913-93095-2249/YS96_Urd_Kuk_0.jpg
41	Side Arm Balance (Vasisthasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/54_SideArmBalance.mp4	YS109_Vasis.jpg	2013-06-29 23:14:13.417184	2013-06-29 23:14:13.570489	390	20130629-1914-93095-6564/YS109_Vasis.jpg
42	Flying Lizard Pose (Uttana Prasithasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/53_FlyingLizard.mp4	YS103_Utt_Prasithasana.jpg	2013-06-29 23:14:46.109992	2013-06-29 23:14:46.332993	400	20130629-1914-93095-5250/YS103_Utt_Prasithasana.jpg
43	Flying Crow Pose (Galavasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/52_FlyingCrow.mp4	YS34_Galavasana.jpg	2013-06-29 23:15:16.680303	2013-06-29 23:15:16.818332	410	20130629-1915-93095-1912/YS34_Galavasana.jpg
44	One Foot Pose of Koundinya I (Eka Pada Koundinyasana I)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/51_OneFootPose.mp4	YS29_Eka_Pada_Kond_I.jpg	2013-06-29 23:15:57.409075	2013-06-29 23:15:57.536739	420	20130629-1915-93095-5825/YS29_Eka_Pada_Kond_I.jpg
45	Eight Crooks Pose (Astavakrasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/50_ACruxPose.mp4	YS13_Astavakra_0.jpg	2013-06-29 23:16:28.414247	2013-06-29 23:16:28.584519	430	20130629-1916-93095-0700/YS13_Astavakra_0.jpg
47	Handstand (Adho Mukha Vrksasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/48_DownwardTree.mp4	YS2_Adho_Mukha_Vrk.jpg	2013-06-29 23:17:51.280788	2013-06-29 23:17:51.376693	450	20130629-1917-93095-8587/YS2_Adho_Mukha_Vrk.jpg
48	Arm Squeezing Pose (Bhujapidasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/46_ArmSqueezingPose.mp4	YS21_Bhujapi.jpg	2013-06-29 23:18:32.251495	2013-06-29 23:18:32.444159	460	20130629-1918-93095-2981/YS21_Bhujapi.jpg
49	Side Crane (Parsva Bakasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/44_SideCrane.mp4	YS64_Parsva_Baka.jpg	2013-06-29 23:19:05.608982	2013-06-29 23:19:05.849358	470	20130629-1919-93095-6414/YS64_Parsva_Baka.jpg
50	Crane Pose (Bakasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/43_Crane.mp4	YS15_Bakasana.jpg	2013-06-29 23:19:56.807668	2013-06-29 23:19:56.989319	480	20130629-1919-93095-3271/YS15_Bakasana.jpg
51	Dangling Pose (Lolasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/41_DanglingEarring.mp4	YS48_Lolasana.jpg	2013-06-29 23:20:40.571555	2013-06-29 23:20:40.732978	490	20130629-1920-93095-0290/YS48_Lolasana.jpg
46	Forearm Balance or Feathered Peacock Pose (Pincha Mayurasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/49_ForearmBalance.mp4	YS68_Pincha_Mayurasana_1.jpg	2013-06-29 23:17:06.498381	2013-06-29 23:20:41.277464	440	20130629-1917-93095-2851/YS68_Pincha_Mayurasana_1.jpg
52	Scales Pose (Tolasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/40_ScalesPose.mp4	YS91_Tolasana.jpg	2013-06-29 23:21:22.706878	2013-06-29 23:21:22.882833	500	20130629-1921-93095-8367/YS91_Tolasana.jpg
53	Boat Pose (Navasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/39_Full_Half_Boat.mp4	YS54_Navasana.jpg	2013-06-29 23:22:22.018773	2013-06-29 23:22:22.149918	510	20130629-1922-93095-6445/YS54_Navasana.jpg
54	Pelvic Tilts	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/38_PelvicTilts.mp4	YS136_Pelvic_Tilts.jpg	2013-06-29 23:22:52.731769	2013-06-29 23:22:52.904379	520	20130629-1922-93095-8256/YS136_Pelvic_Tilts.jpg
55	Yogic Bicycles	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/37_Yogic_Bicycles.mp4	YS118_Yogic_Bicycles.jpg	2013-06-29 23:23:25.045301	2013-06-29 23:23:25.138539	530	20130629-1923-93095-4894/YS118_Yogic_Bicycles.jpg
56	Active Revolving (Jathara Parivartanasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/36_RevolvingTwist.mp4	YS41_Jathara_Parivar.jpg	2013-06-29 23:24:16.824839	2013-06-29 23:24:16.971595	540	20130629-1924-93095-2545/YS41_Jathara_Parivar.jpg
57	Upward Rooster (Urdhva Kukkutasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/55_UpwardRoosterPose.mp4	YS96_Urd_Kuk_0.jpg	2013-06-29 23:24:52.507742	2013-06-29 23:24:52.611173	550	20130629-1924-93095-4496/YS96_Urd_Kuk_0.jpg
58	Half Bound Lotus Standing Forward Fold (Ardha Baddha Padmottanasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/34_HalfDownLotusForwardFold.mp4	YS6_Ardha_Baddha_Padma.jpg	2013-06-29 23:25:23.950896	2013-06-29 23:25:24.074564	560	20130629-1925-93095-3801/YS6_Ardha_Baddha_Padma.jpg
60	Hand to Big Toe and Foot Poses (Padgunsthasana & Padahastasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/32_ParagunParahas.mp4	YS56_Padangusthasana.jpg	2013-06-29 23:26:48.910215	2013-06-29 23:26:49.076518	580	20130629-1926-93095-1675/YS56_Padangusthasana.jpg
62	Revolved Half Moon Pose (Parivrtta Ardha Chandrasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/30_RevolvedHalfMoon.mp4	YS59_Parv_Ardha_Chan.jpg	2013-06-29 23:28:11.909518	2013-06-29 23:31:11.496225	600	20130629-1928-93095-9841/YS59_Parv_Ardha_Chan.jpg
61	Eagle Pose (Garudasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/31_Eagle1.mp4	YS36_Garudasana.jpg	2013-06-29 23:27:22.915487	2013-06-29 23:31:41.437548	590	20130629-1927-93095-8860/YS36_Garudasana.jpg
59	Revolved Hand to Foot Pose (Parivrtta Hasta Padagunsthasana	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/33_RevolvedExtendedHandToBigToe.mp4	YS60_Parv_Utt_Hast_Pad.jpg	2013-06-29 23:26:12.576135	2013-06-29 23:26:12.750093	570	20130629-1926-93095-7976/YS60_Parv_Utt_Hast_Pad.jpg
64	Revolved Triangle (Parivrtta Trikonasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/28_RevolvedTrialngle.mp4	YS63_Parv_Triko.jpg	2013-06-29 23:29:18.342958	2013-06-29 23:29:18.492297	620	20130629-1929-93095-4915/YS63_Parv_Triko.jpg
77	Bow Pose - Dhanurasana	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/62_BowPose.mp4	YS26_Dhanurasana.jpg	2013-06-29 23:41:26.377621	2013-06-29 23:41:26.529899	750	20130629-1941-93954-9025/YS26_Dhanurasana.jpg
66	Wide Leg Forward Folds (Prasarita Padottanasana ABCD)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/26_SpreadLegForwardVariationSeries.mp4	YS73_Pras_Pada_D.jpg	2013-06-29 23:30:44.228123	2013-06-29 23:30:44.386186	640	20130629-1930-93095-7882/YS73_Pras_Pada_D.jpg
67	Half Moon Pose (Ardha Chandrasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/24_HalfMoon.mp4	YS7_Ardha_Chandra.jpg	2013-06-29 23:31:14.328823	2013-06-29 23:31:15.429305	650	20130629-1931-93095-8288/YS7_Ardha_Chandra.jpg
63	Warrior III Pose (Virabhadrasana III)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/29_Warrior3.mp4	YS114_Vira3.jpg	2013-06-29 23:28:43.644379	2013-06-29 23:31:56.45598	610	20130629-1928-93095-0426/YS114_Vira3.jpg
68	Triangle Pose (Utthita Trikonasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/23_ExtendedTrianglePose.mp4	YS108_Utt_Triko.jpg	2013-06-29 23:32:03.602249	2013-06-29 23:32:03.753435	660	20130629-1932-93095-1168/YS108_Utt_Triko.jpg
69	Eight Point Crescent Moon Pose (Ashta Chandrasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/17_APointCrescentPose.mp4	YS11_Ashta_Chandra.jpg	2013-06-29 23:32:51.067953	2013-06-29 23:32:51.226083	670	20130629-1932-93095-5681/YS11_Ashta_Chandra.jpg
70	Low Lunge to Plank Pose	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/6_LowLungeToPlank.mp4	YS67_Phalakasana.JPG	2013-06-29 23:33:26.960293	2013-06-29 23:33:27.064562	680	20130629-1933-93095-9258/YS67_Phalakasana.JPG
65	Intense Side Stretch (Parsvottanasana)	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/27_IntenseSideStretch.mp4	YS65_Parsvo.jpg	2013-06-29 23:30:12.708514	2013-06-29 23:33:56.494621	630	20130629-1930-93095-4565/YS65_Parsvo.jpg
71	Standing Forward Fold to Half Standing Forward Fold	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/4_StandingForwardFoldToHalfFold.mp4	YS9_Ardha_Utt.jpg	2013-06-29 23:34:13.69987	2013-06-29 23:34:13.817658	690	20130629-1934-93095-3717/YS9_Ardha_Utt.jpg
72	Arms Overhead to Standing Forward Fold	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/3_ArmsOverheadToStandingForwardFold.mp4	YS95_Urd_Hast.jpg	2013-06-29 23:34:49.090708	2013-06-29 23:34:49.192383	700	20130629-1934-93095-8769/YS95_Urd_Hast.jpg
73	Hanumanasana	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/94_Hanumanasana.mp4	YS39_Hanumanasana_0.jpg	2013-06-29 23:35:28.292821	2013-06-29 23:35:28.395809	710	20130629-1935-93095-3209/YS39_Hanumanasana_0.jpg
78	Mountain to Upward Hand Pose	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/54_SideArmBalance.mp4	YS88_Tadasana.jpg	2013-06-29 23:42:54.09135	2013-06-29 23:42:54.181245	760	20130629-1942-93954-6006/YS88_Tadasana.jpg
76	Brief Arm Balance Demonstration	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/42_MarkAdvancedPoses.mp4	YS13_Astavakra.jpg	2013-06-29 23:38:05.387443	2013-06-29 23:40:25.119376	740	20130629-1938-93095-5546/YS13_Astavakra.jpg
80	Forearm Balance	\N	http://hillarysfiles.s3.amazonaws.com/OutsideProjects/MSYoga/49_ForearmBalance.mp4	YS68_Pincha_Mayurasana_1.jpg	2013-06-29 23:44:13.433216	2013-06-29 23:50:11.69229	780	20130629-1944-93954-6774/YS68_Pincha_Mayurasana_1.jpg
\.


--
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('videos_id_seq', 80, true);


--
-- Data for Name: workshops; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY workshops (id, title, summary, content, date, created_at, updated_at) FROM stdin;
1	Summer Yoga Retreat at Okanagan Lake Kelowna, British Columbia	Stunning Okanagan Lake spans 110 Km from north to south. Nestled in the verdent Okanagan valley, this gorgeous region is rich with organic farms, vineyards and pastoral landscapes. The lake is weloming and refreshng in the hot Canadian summer months, with endless hiden coves and isolated beaches.	<p>Stunning Okanagan Lake spans 110 Km from north to south. Nestled in the verdent Okanagan valley, this gorgeous region is rich with organic farms, vineyards and pastoral landscapes. The lake is weloming and refreshng in the hot Canadian summer months, with endless hiden coves and isolated beaches.&nbsp;</p>\r\n\r\n<p>For over 15 years, South Okanagan Yoga Academy (SOYA) has offered workshops and trainings in this ideal setting for diving more deeply into one&#39;s yoga practice. This annual SOYA-sponsored retreat draws together yoga students and teachers from across North America for a deep yoga immersion, each year led by a different teacher trainer - most recently Erich Schiffmann in 2009, Rod Stryker in 2010, Dharma Mitra in 2011,&nbsp;Ganga White &amp; Tracey Rich in 2012, and now Mark Stephens in 2013.</p>\r\n\r\n<p>The main retreat is June 14-16, with a bonus day through June 17 for additional training on sequencing.</p>\r\n\r\n<h4>Daily Schedule</h4>\r\n\r\n<p>Friday June 14, 2013</p>\r\n\r\n<ul>\r\n\t<li>4pm&nbsp; Friday Early Evening Asana Practice</li>\r\n\t<li>5:30 pm Dinner</li>\r\n\t<li>7pm &nbsp;Opening Circle and&nbsp;After Dinner Discussion: What Is Yoga?</li>\r\n</ul>\r\n\r\n<p><span style="color:rgb(136, 136, 136); font-family:univers65bold !important">Saturday June 15, 2013</span></p>\r\n\r\n<ul>\r\n\t<li>7am Meditation &amp; Pranayama</li>\r\n\t<li>8am &nbsp;Very Light Breakfast</li>\r\n\t<li>9am Morning Asana Practice</li>\r\n\t<li>12:15 pm Lunch</li>\r\n\t<li>2:00 &ndash; 5:00 pm Afternoon Workshop on the Sun Salutations</li>\r\n\t<li>5:30 pm Dinner</li>\r\n\t<li>7 pm Early Evening Restorative Yoga</li>\r\n\t<li>8:15 to 9:15pm Kirtan</li>\r\n</ul>\r\n\r\n<p><span style="color:rgb(136, 136, 136); font-family:univers65bold !important">&nbsp;Sunday June 16, 2013</span></p>\r\n\r\n<ul>\r\n\t<li>7am Meditation &amp; Pranayama</li>\r\n\t<li>8am Very Light Breakfast</li>\r\n\t<li>9am Morning Asana Practice</li>\r\n\t<li>11am Closing Circle (Sustaining one&#39;s practice)</li>\r\n\t<li>12:15 Lunch</li>\r\n</ul>\r\n\r\n<p><strong>Sunday June 16 &amp; Monday June 17 (additional program!)</strong></p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Philosophy &amp; Principles of Sequencing</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Sequencing Within and Between Asana Families</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Sequencing Cues</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Asana Classes including Morning Classes, Evening Restorative, and Relax Deeply Class</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;&nbsp;Meditation &amp; Pranayama</p>\r\n\r\n<p>&bull; &nbsp; &nbsp;Mini Kirtan</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp;Taking the Seat of the Teacher</p>\r\n\r\n<p><em><span style="color:rgb(136, 136, 136); font-family:univers65bold !important">For more information or to pre-register, please contact SOYA directly by following this link<a href="http://www.soyayoga.com/south-okanagan-yoga-academy-annual-retreat.html" style="color: rgb(55, 147, 155); text-decoration: none; -webkit-transition: all 0.3s ease-out; transition: all 0.3s ease-out; padding: 0px;" target="_blank">:&nbsp;</a><a href="http://www.soyayoga.com/south-okanagan-yoga-academy-annual-retreat.html" style="color: rgb(55, 147, 155); text-decoration: none; -webkit-transition: all 0.3s ease-out; transition: all 0.3s ease-out; padding: 0px;">SOYA 2013 Retreat</a></span></em></p>\r\n	2013-06-14	2013-06-28 23:48:40.157853	2013-06-28 23:48:40.157853
2	The Inter-Relations of Core, Arm Balances & Inversions	A strong and supple core – not to be confused with the superficial “six-pack abs” – is the source of grounded levity and ease of action of much of the asana practice. It is at the energetic core of arm balances and lends to greater stability in inversions.	<h3>THIS WEEKEND!<br />\r\nSaturday, June 29th, 12:30-3:30</h3>\r\n\r\n<p>A strong and supple core &ndash; not to be confused with the superficial &ldquo;six-pack abs&rdquo; &ndash; is the source of grounded levity and ease of action of much of the asana practice. It is at the energetic core of arm balances and lends to greater stability in inversions.</p>\r\n\r\n<p>This workshop provides a detailed breakdown of seven core strengthening and opening practices and the application of an awakened core to up to fifteen arm balances and inversion poses. For intermediate to advanced students.</p>\r\n\r\n<p><strong>Price: $45&nbsp;</strong></p>\r\n\r\n<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="paypal"><input name="cmd" type="hidden" value="_s-xclick" />&nbsp;<input name="hosted_button_id" type="hidden" value="QJHJ3RUDDQLP2" />\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td><input name="on0" type="hidden" value="REGISTER NOW!" />REGISTER NOW!</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><select name="os0"><option value="Early Bird Price">Early Bird Price $45.00 USD</option><option value="Regular Price">Regular Price $55.00 USD</option><option value="Register Early for Two!">Register Early for Two! $85.00 USD</option></select></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<input name="currency_code" type="hidden" value="USD" />&nbsp;<input alt="PayPal - The safer, easier way to pay online!" name="submit" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif" type="image" />&nbsp;<img alt="" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" style="height:1px; width:1px" /><br />\r\n&nbsp;</form>\r\n	2013-06-29	2013-07-01 02:53:51.387598	2013-07-01 02:54:15.390381
3	Summer 2013 Yoga Teacher Training and In-Depth Studies	7-Weekend/100-Hour Intensive\r\nJuly 13 - August 25 Saturdays & Sundays, 12:30-6:30pm \r\nThis foundational training is the first step toward 200-hour and 500-hour yoga teacher certification leading to Yoga Alliance RYT200 and RYT500 registration.	<h3>7-Weekend/100-Hour Intensive<br />\r\nJuly 13 - August 25<br />\r\nSaturdays &amp; Sundays, 12:30-6:30pm&nbsp;</h3>\r\n\r\n<p>This foundational training is the first step toward 200-hour and 500-hour yoga teacher certification leading to Yoga Alliance RYT200 and RYT500 registration.</p>\r\n\r\n<p><strong>Please click on the Yoga Teacher Training tab for details!</strong></p>\r\n	2013-07-13	2013-07-01 02:55:40.204688	2013-07-01 02:55:40.204688
4	Transformational Yoga Sequencing	Sunday, July 28-Friday, August 2\r\nKripalu Center for Living\r\nLennox, MA\r\nThe question of yoga sequencing is one each teacher faces when designing yoga classes to be safe, sustainable, and transformational. Why this posture first, then that one? How might the asanas be best ordered? What are the functional and energetic relationships among postures, and how do those relationships change when postures are arranged differently? What are the effects of pranayama practices at different points in a class?	<h3>Sunday, July 28-Friday, August 2<br />\r\nKripalu Center for Living<br />\r\nLennox, MA</h3>\r\n\r\n<p>The question of yoga sequencing is one each teacher faces when designing yoga classes to be&nbsp;safe, sustainable, and transformational. Why this posture first, then that one? How might the asanas be best ordered? What are the functional and energetic relationships among postures, and how do those relationships change when postures are arranged differently? What are the effects of pranayama practices at different points in a class?</p>\r\n\r\n<p><strong>This yoga teacher training workshop considers:</strong></p>\r\n\r\n<ul>\r\n\t<li>The ancient insights into yoga sequencing</li>\r\n\t<li>Five essential principles of sequencing yoga classes</li>\r\n\t<li>The arc structure of yoga classes</li>\r\n\t<li>How best to structure your yoga classes</li>\r\n</ul>\r\n\r\n<p>We will look closely at the interrelations of asanas within and between asana families to appreciate how they affect one another during the course of a class. Working in small groups, you design a variety of classes for different students, conditions, and intentions, and work as one large collaborative group to refine these class designs.&nbsp;</p>\r\n\r\n<p>Recommended reading: Mark Stephens,&nbsp;<em>Yoga Sequencing: Designing Transformative Yoga Classes</em>&nbsp;(North Atlantic Books, 2012). Please read chapters 1&ndash;3 to get the most out of this workshop.&nbsp;</p>\r\n\r\n<p><a href="http://kripalu.org/presenter/V0007924/mark_stephens" target="_blank">For information and registration, please visit the Kripalu website</a>&nbsp;or call&nbsp;<span style="color:black; font-family:akzidenz-grotesk std light">1-</span><span style="font-family:akzidenz-grotesk std light">800-741-7353.</span></p>\r\n	2013-07-28	2013-07-01 02:57:06.340506	2013-07-01 02:57:06.340506
5	Hands-On Adjustments	Part I: September 7-8, 12:30-5:30 - Topics: Philosophy & Principles, Standing Poses, Core Work, Arm Balances and Backbends.\r\nPart II: September 13–14, 12:30-5:30 -  Topics: Seated & Supine Hip Openers, Twists and Forward Bends, Inversions, and In-the-Flow sequences such as Surya Namaskara and Dancing Warrior variations.	<p><strong>Part I: September 7&ndash;8, 12:30-5:30</strong></p>\r\n\r\n<p> Topics: Principles, Standing Poses, Core Work, Arm Balances and Backbends.</p>\r\n\r\n<p><strong>Part II: September 13&ndash;14, 12:30-5:30</strong><br />\r\n Topics: Seated &amp; Supine Hip Openers, Twists and Forward Bends, Inversions, and In-the-Flow sequences such as Surya Namaskara and Dancing Warrior variations.</p>\r\n\r\n<p>Skillful, sensitive, appropriate touch and verbal cues have the potential power to transport your students to a more conscious awareness and self-refinement in their yoga practice. But before we touch and speak we must first see and understand the unique qualities present in an individual student&#39;s practice.</p>\r\n\r\n<p>In this workshop, you will further develop your observation skills; learn and practice effective hands-on adjustments that both address common misalignments and encourage inner guidance in a variety of poses; enhance your skill in linking clear verbal cues with adjustments; and build confidence in the practice of giving and receiving as you learn to better help your students find joy and ease amidst the challenge of their practice.</p>\r\n\r\n<p><strong>To Register:</strong>&nbsp;$95 for Part I if registered by August 31, $110 thereafter. Pre-register for Part I &amp; II (20 Hours) by August 31 for $175.</p>\r\n\r\n<form action="https://www.paypal.com/cgi-bin/webscr" method="post"><input name="cmd" type="hidden" value="_s-xclick" />&nbsp;<input name="hosted_button_id" type="hidden" value="KEURUTBCKWMBY" />\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td><input name="on0" type="hidden" value="Sessions" />Pre-register here using PayPal:</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><select name="os0"><option value="Part I">Part I $95.00 USD</option><option value="Part I and II">Part I and II $175.00 USD</option></select></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<input name="currency_code" type="hidden" value="USD" />&nbsp;<input alt="PayPal - The safer, easier way to pay online!" name="submit" src="https://www.paypalobjects.com/en_US/i/btn/btn_paynowCC_LG.gif" type="image" />&nbsp;<img alt="" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" style="height:1px; width:1px" /><br />\r\n&nbsp;</form>\r\n	2013-09-07	2013-07-01 02:57:46.870148	2013-07-01 02:57:46.870148
6	The Art and Science of Sequencing	Part I: Saturday & Sunday, September 28-29, 12:30-5:30\r\n Topics: Principles of Sequencing, Standing Poses, Core Work, Arm Balances and Backbends.\r\nPart II: Saturday & Sunday, October 12-13, 12:30-5:30\r\n Topics: Seated and Supine Hip Openers, Twists and Forward Bends, Inversions, and In-the-Flow sequences such as Surya Namaskara and Dancing Warrior variations.	<p><big><strong>This is a Two-Part Workshop</strong></big></p>\r\n\r\n<p><strong><span style="font-size:16px">Part I: Saturday &amp; Sunday, September 28&ndash;29, 12:30-5:30</span></strong><br />\r\n Topics: Principles of Sequencing, Standing Poses, Core Work, Arm Balances and Backbends.</p>\r\n\r\n<p><strong><span style="font-size:16px">Part II:&nbsp;Saturday &amp; Sunday, October 12&ndash;13, 12:30-5:30</span></strong><br />\r\n Topics: Seated and Supine Hip Openers, Twists and Forward Bends, Inversions, and In-the-Flow sequences such as Surya Namaskara and Dancing Warrior variations.</p>\r\n\r\n<p><span style="font-size:14px"><em>Why this pose before that pose? How are they related? Why that particular sequence? What is your intention in teaching it, and does that sequence support your intention?</em></span></p>\r\n\r\n<p>In this workshop, we will explore the basic elements of planning specific sequences and entire classes. We will look closely at the interelations among poses and how to best structure a class to make is safe for students to move as deeply as possible. We will draw from and deepen our understanding of functional anatomy and bio-mechanics as sources of insight into how the body works in the asana practice.&nbsp; You will leave the workshop better informed on how to creatively fashion sequences of poses that fit with your own teaching style and the needs and interests of your students.</p>\r\n\r\n<p><strong>To Register:</strong>&nbsp;$95 for Part I if registered by September 21, $110 thereafter. Pre-register for Part I &amp; II (20 Hours) by September 21 for $175.</p>\r\n\r\n<p>Note: If you are currently registered in the 200-hour or 500-hour teacher training your tuition covers this workshop.</p>\r\n\r\n<form action="https://www.paypal.com/cgi-bin/webscr" method="post"><input name="cmd" type="hidden" value="_s-xclick" />&nbsp;<input name="hosted_button_id" type="hidden" value="KEURUTBCKWMBY" />\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td><input name="on0" type="hidden" value="Sessions" />Sequencing Workshop Pre-Registration - Parts 1 and/or 1 and 2</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><select name="os0"><option value="Part I">Part I $95.00 USD</option><option value="Part I and II">Part I and II $175.00 USD</option></select></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<input name="currency_code" type="hidden" value="USD" />&nbsp;<input alt="PayPal - The safer, easier way to pay online!" name="submit" src="https://www.paypal.com/en_US/i/btn/btn_paynowCC_LG.gif" type="image" />&nbsp;<img alt="" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" style="height:1px; width:1px" /><br />\r\n&nbsp;</form>\r\n	2013-09-28	2013-07-01 02:58:23.841828	2013-07-01 02:58:23.841828
7	Teaching Pre-Natal Yoga	Part One: Nov. 30-Dec.1, 12:30-5:30\r\nPart Two: Dec. 14-15, 12:30-5:30\r\nYoga can be a wonderful practice when pregnant, a source of continued health, balanced energy and more subtle bodily awareness as body and baby change day-to-day. It's also great preparation for giving birth and reintegrating the body when in the glowing presence a newborn baby. Whether you're pregnant or a teacher with either pregnant students or new moms, it's essential to practice or teach in a way that is informed by knowing what to do and not do during each trimester, after your baby is born, when lactating and under a variety of maternal conditions.	<h2><strong>Mark Stephens &amp; Michelle Soison</strong></h2>\r\n\r\n<p><strong>This is a Two-Part Workshop </strong></p>\r\n\r\n<h3><strong>Part One: Nov. 30-Dec. 1, 12:30-5:30</strong></h3>\r\n\r\n<h3><strong>Part Two: Dec. 14-14, 12:30-5:30</strong></h3>\r\n\r\n<p>Yoga can be a wonderful practice when pregnant, a source of continued health, balanced energy and more subtle bodily awareness as body and baby change day-to-day. It&#39;s also great preparation for giving birth and reintegrating the body when in the glowing presence a newborn baby. Whether you&#39;re pregnant or a teacher with either pregnant students or new moms, it&#39;s essential to practice or teach in a way that is informed by knowing what to do and not do during each trimester, after your baby is born, when lactating and under a variety of maternal conditions.</p>\r\n\r\n<p><strong>This 20-hour two-weekend workshop is designed to give you a basic foundation for safely practicing and teaching pre/post natal yoga.</strong></p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Topics include:</h3>\r\n\r\n<ul>\r\n\t<li>Basic maternal anatomy and physiology;&nbsp;</li>\r\n\t<li>Guidelines for asanas (postures) specific to each trimester and various pre- and post-natal conditions;</li>\r\n\t<li>Adaptations and contraindications for a variety of asana and pranayama (breathing) techniques;</li>\r\n\t<li>What to expect and how to support emotional changes;Creative use of yoga props and hands-on adjustments to ensure safety and support;&nbsp;</li>\r\n\t<li>Pelvic floor exercises designed to ease delivery and recovery;</li>\r\n\t<li>&nbsp;Breathing and relaxation techniques designed to create more comfort during pregnancy, labor and early mothering.</li>\r\n</ul>\r\n\r\n<p><strong>Maternal Anatomy &amp; Physiology</strong> <br />\r\nHow is the female pelvis structured to accommodate reproduction? What are the essential features of the pelvis? How do the muscles in the pelvis function before, during and after pregnancy? What is the special place of the perineum in pregnancy, when is it at risk and how can that risk be reduced? How are the lower pelvic organs related and how does their interrelation effect pregnancy and delivery? What about the role of the abdominal muscles and diaphragm?</p>\r\n\r\n<p><strong>Guidelines for Asanas</strong> <br />\r\nWhat yoga poses - and other forms of exercise - are beneficial or possibly risky during pregnancy and in the early postpartum period (and during extended periods of lactation)? What poses are indicated and contra-indicated in each trimester? How do these prescriptions vary depending on the unique woman and specific conditions such as age, number of pregnancies and other factors?</p>\r\n\r\n<p><strong>Adaptive Yoga</strong><br />\r\n Just as every body is different, so is every woman&#39;s experience of pregnancy. While there are a lot of common experiences, it&#39;s important to acknowledge and support the unique ways that women feel when pregnant and with their new baby. While some women remain very physically active all the way until their due date, others might be on bed rest. In yoga practice, these differences mean creatively adapting poses and breathing techniques to each woman&#39;s needs.</p>\r\n\r\n<p><strong>Emotional Changes</strong> <br />\r\nPregnancy and childbirth can be among the most emotionally intense times in one&#39;s life. It&#39;s important to be attentive to shifts in feeling and to honoring those feelings as part of the larger process of change that is happening. Yoga teachers can create a supportive space for pregnant and postpartum students that makes it easier for students to relax and find the most joy along their path.</p>\r\n\r\n<p><strong> Hands-On Adjustments</strong><br />\r\n Skillful, sensitive, appropriate touch and verbal cues can guide and support your pregnant students to a more conscious awareness and self-refinement in their pre/post-natal yoga practice. But before we touch and speak we must first see and understand the unique qualities present in an individual student&#39;s practice. This requires keen observation skills and an understanding of hands-on cues that both address common risks and encourage deeper inner guidance in a variety of poses.</p>\r\n\r\n<p><strong>Pelvic Floor Exercises</strong> <br />\r\nIn traditional Hatha yoga, we have a practice called &quot;mula bandha&quot; that tones the lower pelvic muscles and stimulates the awakening of uplifting energy at the root of the spine. We can usefully build on mula bandha techniques to explore a variety of other pelvic floor exercises that have many benefits, including a stronger and more flexible set of perineal muscles, more subtle awareness of the lower pelvic organs and their surrounding support structure, much great ease in the delivery process and reduction of a variety of physical risks that often naturally arise in pregnancy.</p>\r\n\r\n<p><strong>Breathing, Relaxation &amp; Delivery</strong> <br />\r\nConscious breathing - pranayama - is at the heart of yoga. The ancient methods of pranayama offer many benefits during and after pregnancy, including more balanced energy (higher or lower as the need arises), deeper relaxation, less anxiety and more nuanced awareness of what;&#39;s happening in your body throughout pregnancy, delivery and and beyond.</p>\r\n\r\n<p><strong>Price: $175 Early Bird Discounted Price (if registered by Nov. 22nd, $195 thereafter).</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<form action="https://www.paypal.com/cgi-bin/webscr" method="post"><input name="cmd" type="hidden" value="_s-xclick" />&nbsp;<input name="hosted_button_id" type="hidden" value="TE2ND448RWJ5N" />\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td><input name="on0" type="hidden" value="Types" />Pre-Register for Part I or Parts I &amp; II here via PayPal:</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><select name="os0"><option value="Part I">Part I $95.00 USD</option><option value="Part I and II">Part I and II $175.00 USD</option></select></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<input name="currency_code" type="hidden" value="USD" />&nbsp;<input alt="PayPal - The safer, easier way to pay online!" name="submit" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" type="image" />&nbsp;<img alt="" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" style="height:1px; width:1px" /><br />\r\n&nbsp;</form>\r\n	2013-11-30	2013-07-01 02:59:12.83988	2013-07-01 02:59:12.83988
8	New Years Yoga Retreat at Haramara	Immerse yourself in a week-long tropical yoga retreat at Haramara Resort just outside the picturesque town of Sayulita, Mexico. With tranquil beaches, energizing surf and magnificent sunsets, Haramara is an ideal setting for renewal and transformation. Surrounded by lush jungle just 30 miles north of Puerto Vallarta International Airport on Mexico's Central Pacific Coast, Haramara's sub-tropical climate is perfect for the natural flow of your yoga practice. The daily schedule offers lots of options, including two yoga classes, asana and pranayama workshops, guided meditation practices, and an array of both on-site and off-site activities and excursions.	<p><span style="line-height:1.6em">Immerse yourself in a week-long tropical yoga retreat at Haramara Resort just outside the picturesque town of Sayulita, Mexico. With tranquil beaches, energizing surf and magnificent sunsets, Haramara is an ideal setting for renewal and transformation. Surrounded by lush jungle just 30 miles north of Puerto Vallarta International Airport on Mexico&#39;s Central Pacific Coast, Haramara&#39;s sub-tropical climate is perfect for the natural flow of your yoga practice. The daily schedule offers lots of options, including two yoga classes, asana and pranayama workshops, guided meditation practices, and an array of both on-site and off-site activities and excursions.</span></p>\r\n\r\n<p><strong>Yoga Practice:</strong>&nbsp;Daily classes and workshops are designed for new and beginning to advanced students and teachers. With the support of teacher Mark and his assistants, classes are taught to accommodate different levels of ability and interest. Morning classes start with Sun Salutations and standing poses to warm, awaken, strengthen and open the&nbsp;body, then flow into backbends, core refinement, twists, hip openers, forward bends, and inversions. Arm balances are sprinkled into the classes for anyone interested. All aspects of the yoga practice can be further explored in mid-day workshops on focused topics. All classes emphasize proper alignment, energetic actions, use of props, and modifications to make the practice accessible, while also offering plenty of space for more advanced exploration of asanas. Morning classes are by design more energizing while afternoonclasses are pretty purely relaxing and restorative &ndash; the perfect complement to an afternoon of napping, surfing, or playing at the beach or in the jungle.</p>\r\n\r\n<p><strong>The Daily Flow:&nbsp;</strong>Participate as You Please! Sunrise Meditation &amp; Pranayama, Light Breakfast, Morning Yoga Class, Lunch, Mid-Day Workshops &amp; Activities: Refining Your Sun Salutations, Basics of Postural Alignment, Arm Balances, Intermediate Pranayama, Partner Yoga, Standing On Your Head OR... Get a massage, Hang Out on the Beach ,Read &amp; Nap, Go Surfing or Snorkeling, Jungle Eco-Tours, Zip Wire in the Jungle, Canopy, Explore the Town of Sayulita, Whale Watching, Boat Excursions, Horseback Riding, Visit with Friends, Afternoon Restorative Yoga Class, Dinner, Evening Meditation, Evening Conversation, Yoga Nidra...</p>\r\n\r\n<p><strong>Accommodations:</strong>&nbsp;Spacious cabanas are sprinkled along the paths leading from the Yoga Pavillion down to the beach. Choose between private accommodation in a single or double occupancy cabana, or join a limited number of folks in the all-women&#39;s La Grande Cabana. Private bathrooms, hot open air showers, comfortable beds, awe-inspiring panoramic views, candles and lanterns make the cabanas as charming and serene as can be.</p>\r\n\r\n<p><strong>Food &amp; Dining:</strong>&nbsp;The food at Haramara is amazing. Local and international chefs prepare exquisite meals using local organic produce and seafood caught fresh daily. If you are vegan or have other special food interests, including an ayurvedic diet, the kitchen staff will happily prepare your meals accordingly. The food is clean, healthy, delicious and beautifully presented. The dining pavillion is a beautiful ridge-top cabana ov erlooking the jungle and sea. Sharing food and conversation is one of the highlights of any Haramara retreat. Getting to Haramara: Haramara is located about 45 minutes from Puerto Vallarta&nbsp;International Airport and about a mile outside the quaint&nbsp;seaside town of Sayulita. After booking your flight into P.V.,&nbsp;give us your flight itinerary so we can arrange your local shuttle to take you directly from the airport arrival area to Haramara. There is no need for a car unless you want to explore the larger region of Nayarit.</p>\r\n\r\n<p><strong>Registration Fees &amp; Policies</strong>:&nbsp;$1250 per person in women&#39;s group cabana, $1475 per person triple occupancy, $1725 per person double occupancy, $2850 per person single occupancy. Fee includes: Lodging for 8 days and 7 nights, all meals, taxes, all yoga and yoga-related activities. Not included: airfare, gratuities, airport shuttle, spa services and private excursions. Space is limited; you can reserve space now for $500 per person. Full payment is due upon registration. If you cancel before November 1, 2013, we will refund all but $250 of your deposit. If you must cancel after November 1 and we cannot fill your spot, no monies are refunded due to our contract with Haramara, and&nbsp; you will reveive a credit for going to Haramara at a future date.</p>\r\n\r\n<p>NOTE: This retreat sells out every year (since 2005). Casitas are available on a first-come, first-served reservations basis. Please feel free to call for more information: 831-331-3955.</p>\r\n\r\n<p><strong>Option #1: Pay online via PayPal</strong></p>\r\n\r\n<form action="https://www.paypal.com/cgi-bin/webscr" method="post"><input name="cmd" type="hidden" value="_s-xclick" />&nbsp;<input name="hosted_button_id" type="hidden" value="U7RZE2266SGDL" />\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td><input name="on0" type="hidden" value="Early Bird Discount Registration Ends June 30th" />Early Bird Discount Registration Ends June 30th</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><select name="os0"><option value="Women's Group Casita">Women&#39;s Group Casita $1,150.00 USD</option><option value="Triple Occupancy">Triple Occupancy $1,375.00 USD</option><option value="Double Occupancy">Double Occupancy $1,625.00 USD</option><option value="Single Occupancy">Single Occupancy $2,750.00 USD</option><option value="Deposit Only">Deposit Only $500.00 USD</option></select></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<input name="currency_code" type="hidden" value="USD" />&nbsp;<input alt="PayPal - The safer, easier way to pay online!" name="submit" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" type="image" />&nbsp;<img alt="" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" style="height:1px; width:1px" /></form>\r\n\r\n<p><strong>Option #2: Pay by check payable to Mark Stephens to:</strong>&nbsp; Mark Stephens c/o Santa Cruz Yoga 402 Ingalls St., #11 Santa Cruz, CA 95060</p>\r\n\r\n<div style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: normal;">&nbsp;</div>\r\n	2013-12-28	2013-07-01 03:00:27.781339	2013-07-01 03:00:27.781339
\.


--
-- Name: workshops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('workshops_id_seq', 8, true);


--
-- Name: admin_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT admin_notes_pkey PRIMARY KEY (id);


--
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: audios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY audios
    ADD CONSTRAINT audios_pkey PRIMARY KEY (id);


--
-- Name: authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- Name: ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- Name: envelopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY envelopes
    ADD CONSTRAINT envelopes_pkey PRIMARY KEY (id);


--
-- Name: fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fields
    ADD CONSTRAINT fields_pkey PRIMARY KEY (id);


--
-- Name: images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: readings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY readings
    ADD CONSTRAINT readings_pkey PRIMARY KEY (id);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: slideshows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY slideshows
    ADD CONSTRAINT slideshows_pkey PRIMARY KEY (id);


--
-- Name: taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY testimonials
    ADD CONSTRAINT testimonials_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- Name: workshops_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY workshops
    ADD CONSTRAINT workshops_pkey PRIMARY KEY (id);


--
-- Name: idx_ckeditor_assetable; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_ckeditor_assetable ON ckeditor_assets USING btree (assetable_type, assetable_id);


--
-- Name: idx_ckeditor_assetable_type; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_ckeditor_assetable_type ON ckeditor_assets USING btree (assetable_type, type, assetable_id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_admin_notes_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_admin_notes_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- Name: index_cards_on_author_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_cards_on_author_id ON cards USING btree (author_id);


--
-- Name: index_fields_on_card_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_fields_on_card_id ON fields USING btree (card_id);


--
-- Name: index_images_on_card_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_images_on_card_id ON images USING btree (card_id);


--
-- Name: index_roles_on_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_roles_on_name ON roles USING btree (name);


--
-- Name: index_roles_on_name_and_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_roles_on_name_and_resource_type_and_resource_id ON roles USING btree (name, resource_type, resource_id);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_taggings_on_tag_id ON taggings USING btree (tag_id);


--
-- Name: index_taggings_on_taggable_id_and_taggable_type_and_context; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_users_roles_on_user_id_and_role_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_users_roles_on_user_id_and_role_id ON users_roles USING btree (user_id, role_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: elliot
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM elliot;
GRANT ALL ON SCHEMA public TO elliot;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

