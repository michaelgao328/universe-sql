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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    hrv integer,
    distance integer,
    appmag numeric,
    hassun boolean,
    hasstars boolean,
    one text NOT NULL,
    two text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    one text NOT NULL,
    two text NOT NULL,
    three text,
    four text,
    five text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    one text NOT NULL,
    two text NOT NULL,
    three text,
    four text,
    five text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solarsystem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solarsystem (
    solarsystem_id character varying NOT NULL,
    one text NOT NULL,
    two text NOT NULL,
    three text,
    four text,
    five text,
    name character varying
);


ALTER TABLE public.solarsystem OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    galaxy_id integer DEFAULT 1,
    one text NOT NULL,
    two text NOT NULL,
    three text,
    four text,
    five text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL, NULL, NULL, 'ONE', 'TWO');
INSERT INTO public.galaxy VALUES (2, 'andromeda', NULL, NULL, NULL, NULL, NULL, 'ONE', 'TWO');
INSERT INTO public.galaxy VALUES (3, 'sombrero', NULL, NULL, NULL, NULL, NULL, 'ONE', 'TWO');
INSERT INTO public.galaxy VALUES (4, 'magellanic', NULL, NULL, NULL, NULL, NULL, 'ONE', 'TWO');
INSERT INTO public.galaxy VALUES (5, 'triangulum', NULL, NULL, NULL, NULL, NULL, 'ONE', 'TWO');
INSERT INTO public.galaxy VALUES (6, 'messier', NULL, NULL, NULL, NULL, NULL, 'ONE', 'TWO');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'europa', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'titan', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'FOUR', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'FIVE', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'SIX', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'SEVEN', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'EIGHT', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, ' NINE', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'TEN', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'ELEVEN', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'TWELVE', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'THIRTHE', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'FOURT', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'FIFTE', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'SIXTEE', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'SEVENTEEN', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'EIGHTEEN', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'NINETEEN', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'TWENTY', 'ONE', 'TWO', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'venus', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'saturn', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'FOUR', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'FIVE', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'SIX', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'SEVEN', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'EIGHT', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'NINE', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'TEN', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'ELEVEN', 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'TWELVE', 'ONE', 'TWO', NULL, NULL, NULL);


--
-- Data for Name: solarsystem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solarsystem VALUES ('sun', 'ONE', 'TWO', NULL, NULL, NULL, NULL);
INSERT INTO public.solarsystem VALUES ('inner', 'ONE', 'TWO', NULL, NULL, NULL, NULL);
INSERT INTO public.solarsystem VALUES ('outer', 'ONE', 'TWO', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sirius', 1, 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'vega', 1, 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'arcturus', 1, 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'betelgeuse', 1, 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'persei', 1, 'ONE', 'TWO', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'antares', 1, 'ONE', 'TWO', NULL, NULL, NULL);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solarsystem solarsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_pkey PRIMARY KEY (solarsystem_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uni; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uni UNIQUE (name);


--
-- Name: moon unimoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unimoon UNIQUE (name);


--
-- Name: planet uniplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uniplanet UNIQUE (name);


--
-- Name: solarsystem uniss; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT uniss UNIQUE (solarsystem_id);


--
-- Name: star unistar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unistar UNIQUE (name);


--
-- Name: star fk_star_gid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_gid FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

