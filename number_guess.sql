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
-- Name: details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.details (
    username character varying(20) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.details OWNER TO freecodecamp;

--
-- Data for Name: details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.details VALUES ('user_1730517517706', 0, 0);
INSERT INTO public.details VALUES ('user_1730517517705', 0, 0);
INSERT INTO public.details VALUES ('user_1730517801146', 0, 0);
INSERT INTO public.details VALUES ('user_1730517801145', 0, 0);
INSERT INTO public.details VALUES ('user_1730519912495', 0, 0);
INSERT INTO public.details VALUES ('user_1730519912494', 0, 0);
INSERT INTO public.details VALUES ('Gandhi', 0, 0);
INSERT INTO public.details VALUES ('user_1730521469582', 0, 0);
INSERT INTO public.details VALUES ('user_1730521469581', 0, 0);
INSERT INTO public.details VALUES ('user_1730521539743', 0, 0);
INSERT INTO public.details VALUES ('user_1730521539742', 0, 0);
INSERT INTO public.details VALUES ('user_1730521664282', 0, 0);
INSERT INTO public.details VALUES ('user_1730521664281', 0, 0);
INSERT INTO public.details VALUES ('user_1730521759940', 0, 0);
INSERT INTO public.details VALUES ('user_1730521759939', 0, 0);
INSERT INTO public.details VALUES ('Sakal', 0, 0);
INSERT INTO public.details VALUES ('Saurav', 1, 8);
INSERT INTO public.details VALUES ('user_1730522762930', 2, 708);
INSERT INTO public.details VALUES ('user_1730522762931', 5, 112);
INSERT INTO public.details VALUES ('user_1730522843717', 2, 713);
INSERT INTO public.details VALUES ('user_1730522843718', 5, 252);
INSERT INTO public.details VALUES ('Dhirender', 1, 11);
INSERT INTO public.details VALUES ('user_1730522894350', 2, 854);
INSERT INTO public.details VALUES ('user_1730522894351', 5, 57);
INSERT INTO public.details VALUES ('user_1730522953974', 2, 62);
INSERT INTO public.details VALUES ('user_1730522953975', 5, 18);


--
-- Name: details details_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT details_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

