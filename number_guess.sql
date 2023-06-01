--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess_db;
--
-- Name: number_guess_db; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess_db OWNER TO freecodecamp;

\connect number_guess_db

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1685574115251', NULL, NULL);
INSERT INTO public.users VALUES (2, 'user_1685574115250', NULL, NULL);
INSERT INTO public.users VALUES (3, 'user_1685575275926', NULL, NULL);
INSERT INTO public.users VALUES (4, 'user_1685575275925', NULL, NULL);
INSERT INTO public.users VALUES (6, 'user_1685576409329', NULL, NULL);
INSERT INTO public.users VALUES (7, 'user_1685576409328', NULL, NULL);
INSERT INTO public.users VALUES (9, 'user_1685577445814', 2, NULL);
INSERT INTO public.users VALUES (26, 'user_1685586846644', 5, 506);
INSERT INTO public.users VALUES (8, 'user_1685577445815', 5, NULL);
INSERT INTO public.users VALUES (11, 'user_1685577459127', 1, NULL);
INSERT INTO public.users VALUES (10, 'user_1685577459128', 5, NULL);
INSERT INTO public.users VALUES (13, 'user_1685577469687', 2, NULL);
INSERT INTO public.users VALUES (29, 'user_1685586860765', 2, 429);
INSERT INTO public.users VALUES (12, 'user_1685577469688', 4, NULL);
INSERT INTO public.users VALUES (15, 'user_1685577481187', 2, NULL);
INSERT INTO public.users VALUES (14, 'user_1685577481188', 4, NULL);
INSERT INTO public.users VALUES (17, 'user_1685577582669', 2, NULL);
INSERT INTO public.users VALUES (28, 'user_1685586860766', 4, 398);
INSERT INTO public.users VALUES (16, 'user_1685577582670', 5, NULL);
INSERT INTO public.users VALUES (19, 'user_1685577596094', 2, NULL);
INSERT INTO public.users VALUES (18, 'user_1685577596095', 5, NULL);
INSERT INTO public.users VALUES (31, 'user_1685586866952', 2, 573);
INSERT INTO public.users VALUES (21, 'user_1685585138053', 2, NULL);
INSERT INTO public.users VALUES (20, 'user_1685585138054', 5, NULL);
INSERT INTO public.users VALUES (30, 'user_1685586866953', 4, 889);
INSERT INTO public.users VALUES (5, 'Amanda', 7, 7);
INSERT INTO public.users VALUES (33, 'user_1685586890975', 2, 843);
INSERT INTO public.users VALUES (23, 'user_1685586684546', 2, 16);
INSERT INTO public.users VALUES (32, 'user_1685586890976', 5, 887);
INSERT INTO public.users VALUES (22, 'user_1685586684547', 5, 938);
INSERT INTO public.users VALUES (25, 'user_1685586824580', 2, 593);
INSERT INTO public.users VALUES (35, 'user_1685586906108', 2, 789);
INSERT INTO public.users VALUES (24, 'user_1685586824581', 5, 430);
INSERT INTO public.users VALUES (34, 'user_1685586906109', 5, 479);
INSERT INTO public.users VALUES (27, 'user_1685586846643', 2, 616);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

