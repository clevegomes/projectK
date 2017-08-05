--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: cart_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cart_products (
    id integer NOT NULL,
    product_id integer NOT NULL,
    customer_id integer NOT NULL,
    quantity integer NOT NULL,
    price double precision NOT NULL,
    currency_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE cart_products OWNER TO postgres;

--
-- Name: cart_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cart_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cart_products_id_seq OWNER TO postgres;

--
-- Name: cart_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cart_products_id_seq OWNED BY cart_products.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE categories (
    id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    categories_image character varying(255) NOT NULL,
    "category description" text NOT NULL,
    category_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: currency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE currency (
    id integer NOT NULL,
    currency_name character varying(255) NOT NULL,
    currency_symbol character varying(255) NOT NULL,
    exchange_rate_usd double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE currency OWNER TO postgres;

--
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
-- Name: currency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE currency_id_seq OWNED BY currency.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customers (
    id integer NOT NULL,
    user_id integer NOT NULL,
    billing_address text NOT NULL,
    shipping_address text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE locations (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    iso_code character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE locations OWNER TO postgres;

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE locations_id_seq OWNER TO postgres;

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE locations_id_seq OWNED BY locations.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE migrations_id_seq OWNED BY migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE password_resets OWNER TO postgres;

--
-- Name: product_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product_categories (
    id integer NOT NULL,
    product_id integer NOT NULL,
    category_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE product_categories OWNER TO postgres;

--
-- Name: product_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_categories_id_seq OWNER TO postgres;

--
-- Name: product_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_categories_id_seq OWNED BY product_categories.id;


--
-- Name: product_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product_comments (
    id integer NOT NULL,
    product_id integer NOT NULL,
    verified boolean NOT NULL,
    parent_message_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE product_comments OWNER TO postgres;

--
-- Name: product_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_comments_id_seq OWNER TO postgres;

--
-- Name: product_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_comments_id_seq OWNED BY product_comments.id;


--
-- Name: product_owners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product_owners (
    id integer NOT NULL,
    user_id integer NOT NULL,
    currency_id integer NOT NULL,
    rating double precision NOT NULL,
    active boolean NOT NULL,
    documents_verified boolean NOT NULL,
    national_document_name character varying(255) NOT NULL,
    nationality_document_url character varying(255) NOT NULL,
    "off-line" boolean NOT NULL,
    service_limit integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE product_owners OWNER TO postgres;

--
-- Name: product_owners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_owners_id_seq OWNER TO postgres;

--
-- Name: product_owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_owners_id_seq OWNED BY product_owners.id;


--
-- Name: product_reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product_reviews (
    id integer NOT NULL,
    product_id integer NOT NULL,
    customer_id integer NOT NULL,
    description text NOT NULL,
    quality character varying(255) NOT NULL,
    verified boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT product_reviews_quality_check CHECK (((quality)::text = ANY ((ARRAY['0'::character varying, '1'::character varying, '2'::character varying, '3'::character varying])::text[])))
);


ALTER TABLE product_reviews OWNER TO postgres;

--
-- Name: product_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_reviews_id_seq OWNER TO postgres;

--
-- Name: product_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_reviews_id_seq OWNED BY product_reviews.id;


--
-- Name: product_samples; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product_samples (
    id integer NOT NULL,
    product_id integer NOT NULL,
    description text NOT NULL,
    sample_file_name character varying(255) NOT NULL,
    sample_file_url character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE product_samples OWNER TO postgres;

--
-- Name: product_samples_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_samples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_samples_id_seq OWNER TO postgres;

--
-- Name: product_samples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_samples_id_seq OWNED BY product_samples.id;


--
-- Name: product_standards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product_standards (
    id integer NOT NULL,
    product_id integer NOT NULL,
    min_size double precision NOT NULL,
    max_size double precision NOT NULL,
    format character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE product_standards OWNER TO postgres;

--
-- Name: product_standards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_standards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_standards_id_seq OWNER TO postgres;

--
-- Name: product_standards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_standards_id_seq OWNED BY product_standards.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE products (
    id integer NOT NULL,
    user_id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    description text NOT NULL,
    verified_date timestamp(0) without time zone NOT NULL,
    likes integer NOT NULL,
    seen integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: purchase_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE purchase_orders (
    id integer NOT NULL,
    transaction_id character varying(255) NOT NULL,
    customer_id integer NOT NULL,
    seller_id integer NOT NULL,
    product_id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    price double precision NOT NULL,
    active boolean NOT NULL,
    currency_id integer NOT NULL,
    expected_completion_date timestamp(0) without time zone NOT NULL,
    status character varying(255) NOT NULL,
    replacement_order_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT purchase_orders_status_check CHECK (((status)::text = ANY ((ARRAY['1'::character varying, '2'::character varying, '3'::character varying])::text[])))
);


ALTER TABLE purchase_orders OWNER TO postgres;

--
-- Name: purchase_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE purchase_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE purchase_orders_id_seq OWNER TO postgres;

--
-- Name: purchase_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE purchase_orders_id_seq OWNED BY purchase_orders.id;


--
-- Name: purchase_transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE purchase_transactions (
    id integer NOT NULL,
    purchase_id integer NOT NULL,
    message text NOT NULL,
    sample_file_url character varying(255) NOT NULL,
    sample_file_name character varying(255) NOT NULL,
    from_user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE purchase_transactions OWNER TO postgres;

--
-- Name: purchase_transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE purchase_transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE purchase_transactions_id_seq OWNER TO postgres;

--
-- Name: purchase_transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE purchase_transactions_id_seq OWNED BY purchase_transactions.id;


--
-- Name: service_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE service_preferences (
    id integer NOT NULL,
    category_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE service_preferences OWNER TO postgres;

--
-- Name: service_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE service_preferences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE service_preferences_id_seq OWNER TO postgres;

--
-- Name: service_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE service_preferences_id_seq OWNED BY service_preferences.id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE subscriptions (
    id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255)
);


ALTER TABLE subscriptions OWNER TO postgres;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subscriptions_id_seq OWNER TO postgres;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE subscriptions_id_seq OWNED BY subscriptions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    languages json NOT NULL,
    interests json NOT NULL,
    mobile_number character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    current_sign_in_at timestamp(0) without time zone NOT NULL,
    last_sign_in_at timestamp(0) without time zone NOT NULL,
    current_sign_in_ip inet NOT NULL,
    last_sign_in_ip inet NOT NULL,
    confirmation_token character varying(255) NOT NULL,
    confirmed_at timestamp(0) without time zone NOT NULL,
    confirmation_sent_at timestamp(0) without time zone NOT NULL,
    profile_image character varying(255),
    country_id integer NOT NULL,
    nationality_id integer NOT NULL,
    total_exprience double precision NOT NULL,
    active boolean NOT NULL,
    completion_status character varying(255) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT users_completion_status_check CHECK (((completion_status)::text = ANY ((ARRAY['1'::character varying, '2'::character varying, '3'::character varying])::text[])))
);


ALTER TABLE users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cart_products ALTER COLUMN id SET DEFAULT nextval('cart_products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY currency ALTER COLUMN id SET DEFAULT nextval('currency_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY locations ALTER COLUMN id SET DEFAULT nextval('locations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY migrations ALTER COLUMN id SET DEFAULT nextval('migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_categories ALTER COLUMN id SET DEFAULT nextval('product_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_comments ALTER COLUMN id SET DEFAULT nextval('product_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_owners ALTER COLUMN id SET DEFAULT nextval('product_owners_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_reviews ALTER COLUMN id SET DEFAULT nextval('product_reviews_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_samples ALTER COLUMN id SET DEFAULT nextval('product_samples_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_standards ALTER COLUMN id SET DEFAULT nextval('product_standards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY purchase_orders ALTER COLUMN id SET DEFAULT nextval('purchase_orders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY purchase_transactions ALTER COLUMN id SET DEFAULT nextval('purchase_transactions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service_preferences ALTER COLUMN id SET DEFAULT nextval('service_preferences_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subscriptions ALTER COLUMN id SET DEFAULT nextval('subscriptions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: cart_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cart_products (id, product_id, customer_id, quantity, price, currency_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: cart_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cart_products_id_seq', 1, false);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY categories (id, category_name, categories_image, "category description", category_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categories_id_seq', 1, false);


--
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY currency (id, currency_name, currency_symbol, exchange_rate_usd, created_at, updated_at) FROM stdin;
\.


--
-- Name: currency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('currency_id_seq', 1, false);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers (id, user_id, billing_address, shipping_address, created_at, updated_at) FROM stdin;
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 1, false);


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY locations (id, name, iso_code, created_at, updated_at) FROM stdin;
\.


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('locations_id_seq', 1, false);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2017_07_10_192405_create_locations_table	1
4	2017_07_10_192652_create_currency_table	1
5	2017_07_10_193059_create_customers_table	1
6	2017_07_10_193412_create_service_preferences_table	1
7	2017_07_10_193619_create_service_product_owners_table	1
8	2017_07_10_194258_create_service_purchase_orders_table	1
9	2017_07_10_195213_create_purchase_transactions_table	1
10	2017_07_10_195643_create_product_reviews_table	1
11	2017_07_10_195952_create_cart_products_table	1
12	2017_07_10_200228_create_products_table	1
13	2017_07_10_200500_create_product_standards_table	1
14	2017_07_10_200717_create_product_samples_table	1
15	2017_07_10_200929_create_product_comments_table	1
16	2017_07_10_201137_create_product_categories_table	1
17	2017_07_10_201321_create_categories_table	1
18	2017_07_26_184927_create_subscriptions_table	2
\.


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('migrations_id_seq', 18, true);


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_categories (id, product_id, category_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_categories_id_seq', 1, false);


--
-- Data for Name: product_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_comments (id, product_id, verified, parent_message_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: product_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_comments_id_seq', 1, false);


--
-- Data for Name: product_owners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_owners (id, user_id, currency_id, rating, active, documents_verified, national_document_name, nationality_document_url, "off-line", service_limit, created_at, updated_at) FROM stdin;
\.


--
-- Name: product_owners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_owners_id_seq', 1, false);


--
-- Data for Name: product_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_reviews (id, product_id, customer_id, description, quality, verified, created_at, updated_at) FROM stdin;
\.


--
-- Name: product_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_reviews_id_seq', 1, false);


--
-- Data for Name: product_samples; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_samples (id, product_id, description, sample_file_name, sample_file_url, created_at, updated_at) FROM stdin;
\.


--
-- Name: product_samples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_samples_id_seq', 1, false);


--
-- Data for Name: product_standards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_standards (id, product_id, min_size, max_size, format, created_at, updated_at) FROM stdin;
\.


--
-- Name: product_standards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_standards_id_seq', 1, false);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY products (id, user_id, product_name, description, verified_date, likes, seen, created_at, updated_at) FROM stdin;
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('products_id_seq', 1, false);


--
-- Data for Name: purchase_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY purchase_orders (id, transaction_id, customer_id, seller_id, product_id, product_name, price, active, currency_id, expected_completion_date, status, replacement_order_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: purchase_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('purchase_orders_id_seq', 1, false);


--
-- Data for Name: purchase_transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY purchase_transactions (id, purchase_id, message, sample_file_url, sample_file_name, from_user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: purchase_transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('purchase_transactions_id_seq', 1, false);


--
-- Data for Name: service_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY service_preferences (id, category_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: service_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('service_preferences_id_seq', 1, false);


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY subscriptions (id, created_at, updated_at, email, first_name, last_name) FROM stdin;
1	2017-07-28 17:56:42	2017-07-28 17:56:42	gomescleve@gmail.com	\N	\N
2	2017-07-28 19:04:26	2017-07-28 19:04:26	samuel1@kroble.com	\N	\N
3	2017-07-28 19:33:52	2017-07-28 19:33:52	anand_tomar@yahoo.com	\N	\N
4	2017-07-28 20:33:10	2017-07-28 20:33:10	futurecasa@gmail.com	\N	\N
5	2017-07-28 20:35:17	2017-07-28 20:35:17	roshan2@kroble.com	\N	\N
6	2017-07-28 21:39:13	2017-07-28 21:39:13	jarina8169@gmail.com	\N	\N
7	2017-07-29 00:23:03	2017-07-29 00:23:03	xyzbooter@yahoo.com	\N	\N
8	2017-07-29 01:13:37	2017-07-29 01:13:37	jermmy28@yahoo.com	\N	\N
9	2017-07-29 07:04:05	2017-07-29 07:04:05	dejidot@gmail.com	\N	\N
10	2017-07-29 08:41:05	2017-07-29 08:41:05	roshan3@kroble.com	\N	\N
11	2017-07-29 09:20:07	2017-07-29 09:20:07	roshan4@kroble.com	\N	\N
12	2017-07-29 09:29:20	2017-07-29 09:29:20	test@test.com	\N	\N
13	2017-07-29 09:44:28	2017-07-29 09:44:28	angeld1023@yahoo.com	\N	\N
14	2017-07-29 16:29:30	2017-07-29 16:29:30	dishawndrea@gmail.com	\N	\N
15	2017-07-29 19:45:13	2017-07-29 19:45:13	zoezell@yahoo.co.uk	\N	\N
16	2017-07-29 20:24:34	2017-07-29 20:24:34	sdewitt84@gmail.com	\N	\N
17	2017-07-30 03:44:31	2017-07-30 03:44:31	aramisoffical@gmail.com	\N	\N
18	2017-07-30 08:46:16	2017-07-30 08:46:16	defcon119@gmail.com	\N	\N
19	2017-07-30 19:03:19	2017-07-30 19:03:19	cascnurse2007@gmail.com	\N	\N
20	2017-07-30 19:09:18	2017-07-30 19:09:18	jaymemaness@gmail.com	\N	\N
21	2017-07-31 02:37:10	2017-07-31 02:37:10	yifanhu05@gmail.com	\N	\N
22	2017-07-31 11:37:18	2017-07-31 11:37:18	mihirnrajani@gmail.com	\N	\N
23	2017-07-31 12:36:26	2017-07-31 12:36:26	edu.omkar@gmail.com	\N	\N
24	2017-07-31 12:52:31	2017-07-31 12:52:31	anka.lang@gmx.de	\N	\N
25	2017-07-31 13:27:50	2017-07-31 13:27:50	kevin.shah50@gmail.com	\N	\N
26	2017-07-31 15:41:56	2017-07-31 15:41:56	marinak@gmail.com	\N	\N
27	2017-07-31 17:01:18	2017-07-31 17:01:18	devynmcnichol@gmail.com	\N	\N
28	2017-07-31 18:22:28	2017-07-31 18:22:28	sacreisha@yahoo.com	\N	\N
29	2017-07-31 18:22:54	2017-07-31 18:22:54	rano1396@gmail.com	\N	\N
30	2017-07-31 18:58:10	2017-07-31 18:58:10	bharat.ananthu@gmail.com	\N	\N
31	2017-07-31 19:13:00	2017-07-31 19:13:00	pritish@infigentsolution.com	\N	\N
32	2017-07-31 19:13:28	2017-07-31 19:13:28	sean7744@gmail.com	\N	\N
33	2017-07-31 19:14:43	2017-07-31 19:14:43	mshakeer@yahoo.com	\N	\N
34	2017-07-31 19:21:39	2017-07-31 19:21:39	sandeept281@gmail.com	\N	\N
35	2017-07-31 19:28:43	2017-07-31 19:28:43	varshney.vibhor@gmail.com	\N	\N
36	2017-07-31 19:42:30	2017-07-31 19:42:30	satyanarayana.kupi@gmail.com	\N	\N
37	2017-07-31 20:11:41	2017-07-31 20:11:41	hallezoe@sbcglobal.net	\N	\N
38	2017-07-31 20:25:12	2017-07-31 20:25:12	minismurf_97@yahoo.com	\N	\N
39	2017-07-31 20:43:57	2017-07-31 20:43:57	dane@danesanders.com	\N	\N
40	2017-07-31 23:23:07	2017-07-31 23:23:07	roshan5@kroble.com	\N	\N
41	2017-07-31 23:46:36	2017-07-31 23:46:36	ked153@yahoo.com	\N	\N
42	2017-08-01 00:25:46	2017-08-01 00:25:46	mnsmjo@yahoo.com	\N	\N
43	2017-08-01 00:43:46	2017-08-01 00:43:46	becka.citron@gmail.com	\N	\N
44	2017-08-01 01:52:03	2017-08-01 01:52:03	themarcuseffect@gmail.com	\N	\N
45	2017-08-01 02:41:05	2017-08-01 02:41:05	daniel.labasan@yahoo.com	\N	\N
46	2017-08-01 02:45:02	2017-08-01 02:45:02	andrea@pier70partners.com	\N	\N
47	2017-08-01 03:13:04	2017-08-01 03:13:04	jeff@themidwaysf.com	\N	\N
48	2017-08-01 03:24:01	2017-08-01 03:24:01	nilloallan@gmail.com	\N	\N
49	2017-08-01 04:00:11	2017-08-01 04:00:11	ayolachll@gmail.com	\N	\N
50	2017-08-01 04:39:13	2017-08-01 04:39:13	vbhvtl@gmail.com	\N	\N
51	2017-08-01 05:00:31	2017-08-01 05:00:31	hitendra.softwareengg@gmail.com	\N	\N
52	2017-08-01 05:46:08	2017-08-01 05:46:08	kuchtohtha@gmail.com	\N	\N
53	2017-08-01 06:36:39	2017-08-01 06:36:39	carlicasteel@gmail.com	\N	\N
54	2017-08-01 06:54:52	2017-08-01 06:54:52	mallari.janlester@gmail.com	\N	\N
55	2017-08-01 07:26:33	2017-08-01 07:26:33	istevejobs@outlook.com	\N	\N
56	2017-08-01 07:58:14	2017-08-01 07:58:14	gaurangdaol@gmail.com	\N	\N
57	2017-08-01 08:18:10	2017-08-01 08:18:10	karanamkiran@gmail.com	\N	\N
58	2017-08-01 08:21:00	2017-08-01 08:21:00	shubhams311@gmail.com	\N	\N
59	2017-08-01 08:21:52	2017-08-01 08:21:52	rramesh2@gmail.com	\N	\N
60	2017-08-01 08:37:04	2017-08-01 08:37:04	ronakkbkakkad@gmail.com	\N	\N
61	2017-08-01 08:39:50	2017-08-01 08:39:50	kckckrishnacahtanya7@gmail.com	\N	\N
62	2017-08-01 08:51:57	2017-08-01 08:51:57	kingreply007@gmail.com	\N	\N
63	2017-08-01 08:52:52	2017-08-01 08:52:52	ennalooku@gmail.com	\N	\N
64	2017-08-01 08:55:23	2017-08-01 08:55:23	moin4upak@yahoo.com	\N	\N
65	2017-08-01 09:00:08	2017-08-01 09:00:08	srirampro@gmail.com	\N	\N
66	2017-08-01 09:16:02	2017-08-01 09:16:02	swapniljadhav6090@gmail.com	\N	\N
67	2017-08-01 09:33:15	2017-08-01 09:33:15	shubh2110@gmail.com	\N	\N
68	2017-08-01 09:34:05	2017-08-01 09:34:05	jaehong.chon@gmail.com	\N	\N
69	2017-08-01 09:46:22	2017-08-01 09:46:22	rajhrm86@gmail.com	\N	\N
70	2017-08-01 09:47:28	2017-08-01 09:47:28	hardik.vinzava@gmail.com	\N	\N
71	2017-08-01 09:57:29	2017-08-01 09:57:29	ellie_oneill2003@yahoo.co.uk	\N	\N
72	2017-08-01 09:57:29	2017-08-01 09:57:29	sreeharsha97@gmail.com	\N	\N
73	2017-08-01 10:00:45	2017-08-01 10:00:45	bluetorindia@gmail.com	\N	\N
74	2017-08-01 10:01:07	2017-08-01 10:01:07	sexy@fmail.com	\N	\N
75	2017-08-01 10:07:28	2017-08-01 10:07:28	mail2sundarg@gmail.com	\N	\N
76	2017-08-01 10:10:40	2017-08-01 10:10:40	rbnkoirala@gmail.com	\N	\N
77	2017-08-01 10:17:20	2017-08-01 10:17:20	amy06542@gmail.com	\N	\N
78	2017-08-01 10:20:14	2017-08-01 10:20:14	rohanyogi85@yahoo.in	\N	\N
79	2017-08-01 10:26:24	2017-08-01 10:26:24	puttu.santosh09@gmail.com	\N	\N
80	2017-08-01 10:27:05	2017-08-01 10:27:05	sizzlinghari@gmail.com	\N	\N
81	2017-08-01 10:27:44	2017-08-01 10:27:44	eckhart3@yahoo.com	\N	\N
82	2017-08-01 10:29:43	2017-08-01 10:29:43	jsanthosh52@gmail.com	\N	\N
83	2017-08-01 10:36:22	2017-08-01 10:36:22	vedantpatil@gmail.com	\N	\N
84	2017-08-01 10:37:53	2017-08-01 10:37:53	seyadian@gmail.com	\N	\N
85	2017-08-01 10:42:57	2017-08-01 10:42:57	andrew.francsico89@gmail.com	\N	\N
86	2017-08-01 10:48:38	2017-08-01 10:48:38	abhi230681@gmail.com	\N	\N
87	2017-08-01 10:52:00	2017-08-01 10:52:00	daljeets44@gmail.com	\N	\N
88	2017-08-01 10:53:01	2017-08-01 10:53:01	divyawave7@gmail.com	\N	\N
89	2017-08-01 10:53:19	2017-08-01 10:53:19	ramsone@gmail.com	\N	\N
90	2017-08-01 10:54:29	2017-08-01 10:54:29	mach.neha@gmail.com	\N	\N
91	2017-08-01 11:01:27	2017-08-01 11:01:27	contact.adeshkumar@gmail.com	\N	\N
92	2017-08-01 11:03:05	2017-08-01 11:03:05	a@com.com	\N	\N
93	2017-08-01 11:06:33	2017-08-01 11:06:33	dksharp.iitd@gmail.com	\N	\N
94	2017-08-01 11:09:27	2017-08-01 11:09:27	earteza@gmail.com	\N	\N
95	2017-08-01 11:10:34	2017-08-01 11:10:34	prasunsrivastava32@gmail.com	\N	\N
96	2017-08-01 11:15:30	2017-08-01 11:15:30	k8125991@gmail.com	\N	\N
97	2017-08-01 11:21:43	2017-08-01 11:21:43	mikeevalle.ph@gmail.com	\N	\N
98	2017-08-01 11:21:46	2017-08-01 11:21:46	anup@ethnicfashionista.com	\N	\N
99	2017-08-01 11:27:22	2017-08-01 11:27:22	test@test.vom	\N	\N
100	2017-08-01 11:35:32	2017-08-01 11:35:32	dammaramesh@gmail.com	\N	\N
101	2017-08-01 11:36:10	2017-08-01 11:36:10	ramneet.kalra@gmail.com	\N	\N
102	2017-08-01 11:39:01	2017-08-01 11:39:01	mmjones28@gmail.com	\N	\N
103	2017-08-01 11:39:10	2017-08-01 11:39:10	russ.m010066@gmail.com	\N	\N
104	2017-08-01 11:42:45	2017-08-01 11:42:45	casazami@optonline.net	\N	\N
105	2017-08-01 11:48:05	2017-08-01 11:48:05	sanjayortiz@gmail.com	\N	\N
106	2017-08-01 11:49:16	2017-08-01 11:49:16	cencall@gmail.com	\N	\N
107	2017-08-01 12:10:36	2017-08-01 12:10:36	timir@antimtechnologies.com	\N	\N
108	2017-08-01 12:17:11	2017-08-01 12:17:11	vssbose@gmail.com	\N	\N
109	2017-08-01 12:24:58	2017-08-01 12:24:58	asianflyer@icloud.com	\N	\N
110	2017-08-01 12:32:23	2017-08-01 12:32:23	jackie_1290@yahoo.co.in	\N	\N
111	2017-08-01 12:32:49	2017-08-01 12:32:49	navneel.kumar.fj@ieee.org	\N	\N
112	2017-08-01 12:39:00	2017-08-01 12:39:00	anushku4@gmail.com	\N	\N
113	2017-08-01 12:44:45	2017-08-01 12:44:45	ajeyreddy@gmail.com	\N	\N
114	2017-08-01 12:51:50	2017-08-01 12:51:50	anadi583@gmail.com	\N	\N
115	2017-08-01 13:11:54	2017-08-01 13:11:54	pradeepgokul.1@gmail.com	\N	\N
116	2017-08-01 13:20:55	2017-08-01 13:20:55	mohan.of.raj@gmail.com	\N	\N
117	2017-08-01 13:32:33	2017-08-01 13:32:33	grv.agarwal1@gmail.com	\N	\N
118	2017-08-01 13:34:01	2017-08-01 13:34:01	jainking2010@gmail.com	\N	\N
119	2017-08-01 13:34:50	2017-08-01 13:34:50	anand.saroj5@gmail.com	\N	\N
120	2017-08-01 13:47:22	2017-08-01 13:47:22	getkenny@live.com	\N	\N
121	2017-08-01 13:55:21	2017-08-01 13:55:21	itseasy21@gmail.com	\N	\N
122	2017-08-01 14:12:22	2017-08-01 14:12:22	kiran.grafix@gmail.com	\N	\N
123	2017-08-01 14:14:05	2017-08-01 14:14:05	test@gmail.com	\N	\N
124	2017-08-01 14:28:36	2017-08-01 14:28:36	jeevan93@gmail.com	\N	\N
125	2017-08-01 14:46:26	2017-08-01 14:46:26	rexlor@gmail.com	\N	\N
126	2017-08-01 15:01:33	2017-08-01 15:01:33	harshittmishra@gmail.com	\N	\N
127	2017-08-01 16:06:33	2017-08-01 16:06:33	atul.hbg@gmail.com	\N	\N
128	2017-08-01 16:09:35	2017-08-01 16:09:35	ruelbermudez@gmail.com	\N	\N
129	2017-08-01 16:15:46	2017-08-01 16:15:46	raval_himanshu@live.in	\N	\N
130	2017-08-01 16:31:49	2017-08-01 16:31:49	ujwal2426@gmail.com	\N	\N
131	2017-08-01 16:31:54	2017-08-01 16:31:54	shaikhatik0786@gmail.com	\N	\N
132	2017-08-01 16:33:36	2017-08-01 16:33:36	hemantjha.css@gmail.com	\N	\N
133	2017-08-01 16:41:30	2017-08-01 16:41:30	ujwal2479@gmail.com	\N	\N
134	2017-08-01 17:15:43	2017-08-01 17:15:43	agamkhurana@gmail.com	\N	\N
135	2017-08-01 17:20:46	2017-08-01 17:20:46	esther@mccarthystudios.net	\N	\N
136	2017-08-01 17:35:34	2017-08-01 17:35:34	sathyaventhan@gmail.com	\N	\N
137	2017-08-01 17:40:00	2017-08-01 17:40:00	markangelpenaranda@gmail.com	\N	\N
138	2017-08-01 18:06:45	2017-08-01 18:06:45	venumohanbabu@gmail.com	\N	\N
139	2017-08-01 18:06:58	2017-08-01 18:06:58	ritesh2005@gmail.com	\N	\N
140	2017-08-01 18:12:18	2017-08-01 18:12:18	durgap34@gmail.com	\N	\N
141	2017-08-01 18:32:08	2017-08-01 18:32:08	cnitinonly@gmail.com	\N	\N
142	2017-08-01 18:34:11	2017-08-01 18:34:11	rakeshpanj@gmail.com	\N	\N
143	2017-08-01 18:41:21	2017-08-01 18:41:21	mon@bigideasph.com	\N	\N
144	2017-08-01 18:46:03	2017-08-01 18:46:03	sahu.jitendra.jitu@gmail.com	\N	\N
145	2017-08-01 19:08:29	2017-08-01 19:08:29	email.bharatacharya@gmail.com	\N	\N
146	2017-08-01 19:14:00	2017-08-01 19:14:00	pankajjena@gmail.com	\N	\N
147	2017-08-01 19:19:02	2017-08-01 19:19:02	garestgrp@gmail.com	\N	\N
148	2017-08-01 19:30:59	2017-08-01 19:30:59	misscallreply@gmail.com	\N	\N
149	2017-08-01 19:42:14	2017-08-01 19:42:14	rahul.delhi971@gmail.com	\N	\N
150	2017-08-01 19:52:57	2017-08-01 19:52:57	jahgracilla@gmail.com	\N	\N
151	2017-08-01 20:14:19	2017-08-01 20:14:19	justtesst@gmail.com	\N	\N
152	2017-08-01 20:20:01	2017-08-01 20:20:01	roshan6@kroble.com	\N	\N
153	2017-08-01 20:37:02	2017-08-01 20:37:02	sanjib.dash1984@gmail.com	\N	\N
154	2017-08-01 20:48:18	2017-08-01 20:48:18	guptayash0270@gmail.com	\N	\N
155	2017-08-01 20:55:17	2017-08-01 20:55:17	sandeep@isbtech.in	\N	\N
156	2017-08-01 21:01:07	2017-08-01 21:01:07	ashutosh@w3dev.in	\N	\N
157	2017-08-01 21:10:33	2017-08-01 21:10:33	kranthi218@gmail.com	\N	\N
158	2017-08-01 21:16:17	2017-08-01 21:16:17	san11793@gmail.com	\N	\N
159	2017-08-01 21:33:01	2017-08-01 21:33:01	parkar.abdullah93@gmail.com	\N	\N
160	2017-08-01 21:40:52	2017-08-01 21:40:52	joanna.aquino@gmail.com	\N	\N
161	2017-08-01 22:13:42	2017-08-01 22:13:42	hazra.subhranshu@gmail.com	\N	\N
162	2017-08-01 23:27:46	2017-08-01 23:27:46	jeff_1158@yahoo.com	\N	\N
163	2017-08-02 00:03:28	2017-08-02 00:03:28	dasda@adad.com	\N	\N
164	2017-08-02 00:20:34	2017-08-02 00:20:34	urooj.alam1@gmail.com	\N	\N
165	2017-08-02 00:48:57	2017-08-02 00:48:57	howabouthenna@gmail.com	\N	\N
166	2017-08-02 02:16:46	2017-08-02 02:16:46	vineetvk01@gmail.com	\N	\N
167	2017-08-02 02:19:10	2017-08-02 02:19:10	ramalai13@gmail.com	\N	\N
168	2017-08-02 02:53:19	2017-08-02 02:53:19	anurag@himalayanmonks.com	\N	\N
169	2017-08-02 03:10:07	2017-08-02 03:10:07	siddharth@gradbee.co	\N	\N
170	2017-08-02 03:10:11	2017-08-02 03:10:11	siddharth@gradbee.com	\N	\N
171	2017-08-02 03:15:29	2017-08-02 03:15:29	santosh.sp2012@gmail.com	\N	\N
172	2017-08-02 03:22:57	2017-08-02 03:22:57	bhaskaryasam@gmail.com	\N	\N
173	2017-08-02 03:26:38	2017-08-02 03:26:38	tr042801@gmail.com	\N	\N
174	2017-08-02 03:39:44	2017-08-02 03:39:44	smajumdar1993@gmail.com	\N	\N
175	2017-08-02 03:40:00	2017-08-02 03:40:00	chatterjee.jo2@gmail.com	\N	\N
176	2017-08-02 04:14:18	2017-08-02 04:14:18	gyana.nk@gmail.com	\N	\N
177	2017-08-02 04:49:38	2017-08-02 04:49:38	goyal.ankit.049@gmail.com	\N	\N
178	2017-08-02 04:50:26	2017-08-02 04:50:26	craigperales@gmail.com	\N	\N
179	2017-08-02 05:38:18	2017-08-02 05:38:18	bijay.upadhyay@hotmail.com	\N	\N
180	2017-08-02 06:19:16	2017-08-02 06:19:16	dkkjd@kjkj.com	\N	\N
181	2017-08-02 09:50:41	2017-08-02 09:50:41	gabrielle.manasan@gmail.com	\N	\N
182	2017-08-02 10:11:49	2017-08-02 10:11:49	delefant@gmail.com	\N	\N
183	2017-08-02 11:19:48	2017-08-02 11:19:48	akshay.very@gmail.com	\N	\N
184	2017-08-02 11:20:15	2017-08-02 11:20:15	Hari.007@gmail.com	\N	\N
185	2017-08-02 12:13:40	2017-08-02 12:13:40	jstaylor100@gmail.com	\N	\N
186	2017-08-02 13:13:07	2017-08-02 13:13:07	kssachleben@yahoo.com	\N	\N
187	2017-08-02 13:26:20	2017-08-02 13:26:20	mercierch@hotmail.fr	\N	\N
188	2017-08-02 13:58:15	2017-08-02 13:58:15	vickrambodke@gmail.com	\N	\N
189	2017-08-02 14:09:43	2017-08-02 14:09:43	einstein.aaron@gmail.com	\N	\N
190	2017-08-02 14:36:36	2017-08-02 14:36:36	cpansaddle@gmail.com	\N	\N
191	2017-08-02 16:36:16	2017-08-02 16:36:16	satyahly@juno.com	\N	\N
192	2017-08-02 17:08:40	2017-08-02 17:08:40	ammelvin@gmail.com	\N	\N
193	2017-08-02 17:23:46	2017-08-02 17:23:46	test@gfgfgfg.com	\N	\N
194	2017-08-02 17:24:11	2017-08-02 17:24:11	dsdsdsd@sdsd.com	\N	\N
195	2017-08-02 19:07:03	2017-08-02 19:07:03	chwald@yahoo.com	\N	\N
196	2017-08-02 19:56:52	2017-08-02 19:56:52	annaharris04@yahoo.com	\N	\N
197	2017-08-02 22:07:55	2017-08-02 22:07:55	christen.cordell@yahoo.com	\N	\N
198	2017-08-02 23:01:16	2017-08-02 23:01:16	nick.agnetto@areionglobal.com	\N	\N
199	2017-08-03 01:28:58	2017-08-03 01:28:58	yuanyi_sg@yahoo.com	\N	\N
200	2017-08-03 02:00:33	2017-08-03 02:00:33	pkim@feelisusa.com	\N	\N
201	2017-08-03 02:07:52	2017-08-03 02:07:52	tracy@stapfenergy.com	\N	\N
202	2017-08-03 03:40:48	2017-08-03 03:40:48	domirussi@yahoo.com	\N	\N
203	2017-08-03 04:14:39	2017-08-03 04:14:39	hello@gmail.com	\N	\N
204	2017-08-03 08:16:02	2017-08-03 08:16:02	hausofwestdesign@gmail.com	\N	\N
205	2017-08-03 08:24:13	2017-08-03 08:24:13	braincrash.nxs@gmail.com	\N	\N
206	2017-08-03 08:29:26	2017-08-03 08:29:26	abbas.a.kazmi@gmail.com	\N	\N
207	2017-08-03 09:49:25	2017-08-03 09:49:25	brentzsandor@gmail.com	\N	\N
208	2017-08-03 09:53:20	2017-08-03 09:53:20	arunofficieuse@gmail.com	\N	\N
209	2017-08-03 12:22:19	2017-08-03 12:22:19	alex+kroble@onboot.org	\N	\N
210	2017-08-03 13:38:07	2017-08-03 13:38:07	marymelvin26@gmail.com	\N	\N
211	2017-08-03 13:46:35	2017-08-03 13:46:35	shravanis@gmail.com	\N	\N
212	2017-08-03 13:47:18	2017-08-03 13:47:18	mariannaferro@gmail.com	\N	\N
213	2017-08-03 14:04:27	2017-08-03 14:04:27	raresblaga@yahoo.com	\N	\N
214	2017-08-03 14:25:58	2017-08-03 14:25:58	debbenes@yahoo.com	\N	\N
215	2017-08-03 14:46:24	2017-08-03 14:46:24	guptadharmanshu@gmail.com	\N	\N
216	2017-08-03 15:01:06	2017-08-03 15:01:06	tradermyen@gmail.com	\N	\N
217	2017-08-03 15:35:31	2017-08-03 15:35:31	mta_abercrombie@bellsouth.net	\N	\N
218	2017-08-03 16:50:05	2017-08-03 16:50:05	j.kleiman90@gmail.com	\N	\N
219	2017-08-03 17:28:22	2017-08-03 17:28:22	rongrant@gmail.com	\N	\N
220	2017-08-03 19:39:09	2017-08-03 19:39:09	vivaledoux2@yahoo.com	\N	\N
221	2017-08-03 20:12:55	2017-08-03 20:12:55	egarcia.contact@gmail.com	\N	\N
222	2017-08-03 20:43:08	2017-08-03 20:43:08	npirani85@gmail.com	\N	\N
223	2017-08-03 21:04:16	2017-08-03 21:04:16	sarahraupp@yahoo.com	\N	\N
224	2017-08-03 23:33:00	2017-08-03 23:33:00	poubcool@hotmail.fr	\N	\N
225	2017-08-04 01:36:21	2017-08-04 01:36:21	kr_dale@yahoo.com	\N	\N
226	2017-08-04 02:09:04	2017-08-04 02:09:04	jeff@sportsflagsandproducts.com	\N	\N
227	2017-08-04 02:30:09	2017-08-04 02:30:09	jjjlevitch@gmail.com	\N	\N
228	2017-08-04 04:16:37	2017-08-04 04:16:37	roddy.j.alvarado@gmail.com	\N	\N
229	2017-08-04 13:05:46	2017-08-04 13:05:46	kristireaves@gmail.com	\N	\N
230	2017-08-04 13:50:21	2017-08-04 13:50:21	kendp05@gmail.com	\N	\N
231	2017-08-04 15:12:18	2017-08-04 15:12:18	johnbragg55@gmail.com	\N	\N
232	2017-08-04 15:13:01	2017-08-04 15:13:01	erinieleenwhite@gmail.com	\N	\N
233	2017-08-04 15:23:53	2017-08-04 15:23:53	j.h.berger@t-online.de	\N	\N
234	2017-08-04 21:51:35	2017-08-04 21:51:35	sherry0501@gmail.com	\N	\N
235	2017-08-04 22:07:34	2017-08-04 22:07:34	sdyer@mindspring.com	\N	\N
236	2017-08-04 22:40:04	2017-08-04 22:40:04	conniegar@windstream.net	\N	\N
237	2017-08-04 22:45:46	2017-08-04 22:45:46	thefractitioner@gmail.com	\N	\N
238	2017-08-05 00:42:01	2017-08-05 00:42:01	kas1025@gmail.com	\N	\N
239	2017-08-05 03:58:14	2017-08-05 03:58:14	nihar.sahoo@vispl.co.in	\N	\N
240	2017-08-05 08:53:55	2017-08-05 08:53:55	michaelgasser17@gmail.com	\N	\N
241	2017-08-05 11:08:10	2017-08-05 11:08:10	henrydocam@yahoo.com	\N	\N
242	2017-08-05 12:33:12	2017-08-05 12:33:12	erika@finelinenandbath.com	\N	\N
\.


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('subscriptions_id_seq', 242, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, first_name, last_name, languages, interests, mobile_number, email, password, remember_token, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, profile_image, country_id, nationality_id, total_exprience, active, completion_status, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Name: cart_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cart_products
    ADD CONSTRAINT cart_products_pkey PRIMARY KEY (id);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: currency_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (id);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (id);


--
-- Name: product_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_comments
    ADD CONSTRAINT product_comments_pkey PRIMARY KEY (id);


--
-- Name: product_owners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_owners
    ADD CONSTRAINT product_owners_pkey PRIMARY KEY (id);


--
-- Name: product_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_reviews
    ADD CONSTRAINT product_reviews_pkey PRIMARY KEY (id);


--
-- Name: product_samples_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_samples
    ADD CONSTRAINT product_samples_pkey PRIMARY KEY (id);


--
-- Name: product_standards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_standards
    ADD CONSTRAINT product_standards_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: purchase_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY purchase_orders
    ADD CONSTRAINT purchase_orders_pkey PRIMARY KEY (id);


--
-- Name: purchase_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY purchase_transactions
    ADD CONSTRAINT purchase_transactions_pkey PRIMARY KEY (id);


--
-- Name: service_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service_preferences
    ADD CONSTRAINT service_preferences_pkey PRIMARY KEY (id);


--
-- Name: subscriptions_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subscriptions
    ADD CONSTRAINT subscriptions_email_unique UNIQUE (email);


--
-- Name: subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON password_resets USING btree (email);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

