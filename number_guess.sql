--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 33, 46);
INSERT INTO public.games VALUES (2, 33, 373);
INSERT INTO public.games VALUES (3, 34, 596);
INSERT INTO public.games VALUES (4, 34, 458);
INSERT INTO public.games VALUES (5, 33, 811);
INSERT INTO public.games VALUES (6, 33, 552);
INSERT INTO public.games VALUES (7, 33, 233);
INSERT INTO public.games VALUES (8, 15, 3);
INSERT INTO public.games VALUES (9, 35, 794);
INSERT INTO public.games VALUES (10, 35, 349);
INSERT INTO public.games VALUES (11, 36, 931);
INSERT INTO public.games VALUES (12, 36, 168);
INSERT INTO public.games VALUES (13, 35, 266);
INSERT INTO public.games VALUES (14, 35, 259);
INSERT INTO public.games VALUES (15, 35, 643);
INSERT INTO public.games VALUES (16, 37, 812);
INSERT INTO public.games VALUES (17, 37, 344);
INSERT INTO public.games VALUES (18, 38, 356);
INSERT INTO public.games VALUES (19, 38, 683);
INSERT INTO public.games VALUES (20, 37, 459);
INSERT INTO public.games VALUES (21, 37, 966);
INSERT INTO public.games VALUES (22, 37, 695);
INSERT INTO public.games VALUES (23, 15, 4);
INSERT INTO public.games VALUES (24, 39, 382);
INSERT INTO public.games VALUES (25, 39, 447);
INSERT INTO public.games VALUES (26, 40, 785);
INSERT INTO public.games VALUES (27, 40, 786);
INSERT INTO public.games VALUES (28, 39, 164);
INSERT INTO public.games VALUES (29, 39, 828);
INSERT INTO public.games VALUES (30, 39, 626);
INSERT INTO public.games VALUES (31, 41, 437);
INSERT INTO public.games VALUES (32, 41, 141);
INSERT INTO public.games VALUES (33, 42, 941);
INSERT INTO public.games VALUES (34, 42, 324);
INSERT INTO public.games VALUES (35, 41, 416);
INSERT INTO public.games VALUES (36, 41, 384);
INSERT INTO public.games VALUES (37, 41, 131);
INSERT INTO public.games VALUES (38, 43, 868);
INSERT INTO public.games VALUES (39, 43, 945);
INSERT INTO public.games VALUES (40, 44, 731);
INSERT INTO public.games VALUES (41, 44, 634);
INSERT INTO public.games VALUES (42, 43, 330);
INSERT INTO public.games VALUES (43, 43, 584);
INSERT INTO public.games VALUES (44, 43, 507);
INSERT INTO public.games VALUES (45, 15, 1);
INSERT INTO public.games VALUES (46, 45, 718);
INSERT INTO public.games VALUES (47, 45, 240);
INSERT INTO public.games VALUES (48, 46, 287);
INSERT INTO public.games VALUES (49, 46, 606);
INSERT INTO public.games VALUES (50, 45, 618);
INSERT INTO public.games VALUES (51, 45, 736);
INSERT INTO public.games VALUES (52, 45, 82);
INSERT INTO public.games VALUES (53, 47, 779);
INSERT INTO public.games VALUES (54, 47, 325);
INSERT INTO public.games VALUES (55, 48, 356);
INSERT INTO public.games VALUES (56, 48, 120);
INSERT INTO public.games VALUES (57, 47, 762);
INSERT INTO public.games VALUES (58, 47, 701);
INSERT INTO public.games VALUES (59, 47, 11);
INSERT INTO public.games VALUES (60, 49, 195);
INSERT INTO public.games VALUES (61, 49, 870);
INSERT INTO public.games VALUES (62, 50, 656);
INSERT INTO public.games VALUES (63, 50, 32);
INSERT INTO public.games VALUES (64, 49, 885);
INSERT INTO public.games VALUES (65, 49, 706);
INSERT INTO public.games VALUES (66, 49, 656);
INSERT INTO public.games VALUES (67, 51, 503);
INSERT INTO public.games VALUES (68, 51, 66);
INSERT INTO public.games VALUES (69, 52, 529);
INSERT INTO public.games VALUES (70, 52, 983);
INSERT INTO public.games VALUES (71, 51, 357);
INSERT INTO public.games VALUES (72, 51, 569);
INSERT INTO public.games VALUES (73, 51, 541);
INSERT INTO public.games VALUES (74, 53, 701);
INSERT INTO public.games VALUES (75, 53, 761);
INSERT INTO public.games VALUES (76, 54, 714);
INSERT INTO public.games VALUES (77, 54, 696);
INSERT INTO public.games VALUES (78, 53, 632);
INSERT INTO public.games VALUES (79, 53, 23);
INSERT INTO public.games VALUES (80, 53, 275);
INSERT INTO public.games VALUES (81, 55, 803);
INSERT INTO public.games VALUES (82, 55, 103);
INSERT INTO public.games VALUES (83, 56, 322);
INSERT INTO public.games VALUES (84, 56, 78);
INSERT INTO public.games VALUES (85, 55, 96);
INSERT INTO public.games VALUES (86, 55, 449);
INSERT INTO public.games VALUES (87, 55, 253);
INSERT INTO public.games VALUES (88, 57, 47);
INSERT INTO public.games VALUES (89, 57, 267);
INSERT INTO public.games VALUES (90, 58, 21);
INSERT INTO public.games VALUES (91, 58, 593);
INSERT INTO public.games VALUES (92, 57, 553);
INSERT INTO public.games VALUES (93, 57, 791);
INSERT INTO public.games VALUES (94, 57, 379);
INSERT INTO public.games VALUES (95, 59, 46);
INSERT INTO public.games VALUES (96, 59, 501);
INSERT INTO public.games VALUES (97, 60, 829);
INSERT INTO public.games VALUES (98, 60, 10);
INSERT INTO public.games VALUES (99, 59, 620);
INSERT INTO public.games VALUES (100, 59, 143);
INSERT INTO public.games VALUES (101, 59, 176);
INSERT INTO public.games VALUES (102, 61, 134);
INSERT INTO public.games VALUES (103, 61, 270);
INSERT INTO public.games VALUES (104, 62, 205);
INSERT INTO public.games VALUES (105, 62, 507);
INSERT INTO public.games VALUES (106, 61, 543);
INSERT INTO public.games VALUES (107, 61, 298);
INSERT INTO public.games VALUES (108, 61, 6);
INSERT INTO public.games VALUES (109, 63, 382);
INSERT INTO public.games VALUES (110, 63, 437);
INSERT INTO public.games VALUES (111, 64, 944);
INSERT INTO public.games VALUES (112, 64, 929);
INSERT INTO public.games VALUES (113, 63, 185);
INSERT INTO public.games VALUES (114, 63, 147);
INSERT INTO public.games VALUES (115, 63, 437);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1714425706326');
INSERT INTO public.users VALUES (3, 'user_1714425706325');
INSERT INTO public.users VALUES (8, 'user_1714425870199');
INSERT INTO public.users VALUES (10, 'user_1714425870198');
INSERT INTO public.users VALUES (15, 'Newton');
INSERT INTO public.users VALUES (16, 'user_1714428080509');
INSERT INTO public.users VALUES (18, 'user_1714428080508');
INSERT INTO public.users VALUES (23, 'user_1714428497001');
INSERT INTO public.users VALUES (25, 'user_1714428497000');
INSERT INTO public.users VALUES (31, 'user_1714429527253');
INSERT INTO public.users VALUES (32, 'user_1714429527252');
INSERT INTO public.users VALUES (33, 'user_1714430171935');
INSERT INTO public.users VALUES (34, 'user_1714430171934');
INSERT INTO public.users VALUES (35, 'user_1714430362294');
INSERT INTO public.users VALUES (36, 'user_1714430362293');
INSERT INTO public.users VALUES (37, 'user_1714430645590');
INSERT INTO public.users VALUES (38, 'user_1714430645589');
INSERT INTO public.users VALUES (39, 'user_1714431627914');
INSERT INTO public.users VALUES (40, 'user_1714431627913');
INSERT INTO public.users VALUES (41, 'user_1714431757924');
INSERT INTO public.users VALUES (42, 'user_1714431757923');
INSERT INTO public.users VALUES (43, 'user_1714431825291');
INSERT INTO public.users VALUES (44, 'user_1714431825290');
INSERT INTO public.users VALUES (45, 'user_1714431948656');
INSERT INTO public.users VALUES (46, 'user_1714431948655');
INSERT INTO public.users VALUES (47, 'user_1714431996297');
INSERT INTO public.users VALUES (48, 'user_1714431996296');
INSERT INTO public.users VALUES (49, 'user_1714432410682');
INSERT INTO public.users VALUES (50, 'user_1714432410681');
INSERT INTO public.users VALUES (51, 'user_1714432714904');
INSERT INTO public.users VALUES (52, 'user_1714432714903');
INSERT INTO public.users VALUES (53, 'user_1714432805924');
INSERT INTO public.users VALUES (54, 'user_1714432805923');
INSERT INTO public.users VALUES (55, 'user_1714432970428');
INSERT INTO public.users VALUES (56, 'user_1714432970427');
INSERT INTO public.users VALUES (57, 'user_1714433033461');
INSERT INTO public.users VALUES (58, 'user_1714433033460');
INSERT INTO public.users VALUES (59, 'user_1714433111898');
INSERT INTO public.users VALUES (60, 'user_1714433111897');
INSERT INTO public.users VALUES (61, 'user_1714433240476');
INSERT INTO public.users VALUES (62, 'user_1714433240475');
INSERT INTO public.users VALUES (63, 'user_1714433456226');
INSERT INTO public.users VALUES (64, 'user_1714433456225');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 115, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 64, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

