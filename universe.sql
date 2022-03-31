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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    a integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    a integer,
    b numeric,
    c text,
    d boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    a integer,
    b numeric,
    c text,
    d boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    a integer,
    b numeric,
    c text,
    d boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    a integer,
    b numeric,
    c text,
    d boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'a', NULL);
INSERT INTO public.earth VALUES (2, 'b', NULL);
INSERT INTO public.earth VALUES (3, 'c', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 1, 1, 'a', true);
INSERT INTO public.galaxy VALUES (2, 'b', 2, 2, 'b', true);
INSERT INTO public.galaxy VALUES (3, 'd', 3, 3, 'd', true);
INSERT INTO public.galaxy VALUES (4, 'e', 4, 4, 'e', true);
INSERT INTO public.galaxy VALUES (5, 'f', 5, 5, 'f', true);
INSERT INTO public.galaxy VALUES (6, 'g', 6, 6, 'g', true);
INSERT INTO public.galaxy VALUES (7, 'h', 7, 7, 'h', true);
INSERT INTO public.galaxy VALUES (8, 'i', 8, 8, 'i', true);
INSERT INTO public.galaxy VALUES (9, 'j', 9, 9, 'j', true);
INSERT INTO public.galaxy VALUES (10, 'k', 10, 10, 'k', true);
INSERT INTO public.galaxy VALUES (11, 'l', 11, 11, 'k', true);
INSERT INTO public.galaxy VALUES (12, 'm', 12, 12, 'm', true);
INSERT INTO public.galaxy VALUES (13, 'n', 13, 13, 'n', true);
INSERT INTO public.galaxy VALUES (14, 'o', 14, 14, 'o', true);
INSERT INTO public.galaxy VALUES (15, 'p', 15, 15, 'p', true);
INSERT INTO public.galaxy VALUES (16, 'q', 16, 16, 'q', true);
INSERT INTO public.galaxy VALUES (17, 'r', 17, 17, 'r', true);
INSERT INTO public.galaxy VALUES (18, 's', 18, 18, 's', true);
INSERT INTO public.galaxy VALUES (19, 't', 19, 19, 't', true);
INSERT INTO public.galaxy VALUES (20, 'u', 20, 20, 'u', true);
INSERT INTO public.galaxy VALUES (21, 'v', 21, 21, 'v', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'a', 1, 1, 'a', true);
INSERT INTO public.moon VALUES (2, 2, 'b', 2, 2, 'b', true);
INSERT INTO public.moon VALUES (3, 3, 'd', 3, 3, 'd', true);
INSERT INTO public.moon VALUES (4, 4, 'e', 4, 4, 'e', true);
INSERT INTO public.moon VALUES (5, 5, 'f', 5, 5, 'f', true);
INSERT INTO public.moon VALUES (6, 6, 'g', 6, 6, 'g', true);
INSERT INTO public.moon VALUES (7, 7, 'h', 7, 7, 'h', true);
INSERT INTO public.moon VALUES (8, 8, 'i', 8, 8, 'i', true);
INSERT INTO public.moon VALUES (9, 9, 'j', 9, 9, 'j', true);
INSERT INTO public.moon VALUES (10, 10, 'k', 10, 10, 'k', true);
INSERT INTO public.moon VALUES (11, 11, 'l', 11, 11, 'k', true);
INSERT INTO public.moon VALUES (12, 12, 'm', 12, 12, 'm', true);
INSERT INTO public.moon VALUES (13, 13, 'n', 13, 13, 'n', true);
INSERT INTO public.moon VALUES (14, 14, 'o', 14, 14, 'o', true);
INSERT INTO public.moon VALUES (15, 15, 'p', 15, 15, 'p', true);
INSERT INTO public.moon VALUES (16, 16, 'q', 16, 16, 'q', true);
INSERT INTO public.moon VALUES (17, 17, 'r', 17, 17, 'r', true);
INSERT INTO public.moon VALUES (18, 18, 's', 18, 18, 's', true);
INSERT INTO public.moon VALUES (19, 19, 't', 19, 19, 't', true);
INSERT INTO public.moon VALUES (20, 20, 'u', 20, 20, 'u', true);
INSERT INTO public.moon VALUES (21, 21, 'v', 21, 21, 'v', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'a', 1, 1, 'a', true);
INSERT INTO public.planet VALUES (2, 2, 'b', 2, 2, 'b', true);
INSERT INTO public.planet VALUES (3, 3, 'd', 3, 3, 'd', true);
INSERT INTO public.planet VALUES (4, 4, 'e', 4, 4, 'e', true);
INSERT INTO public.planet VALUES (5, 5, 'f', 5, 5, 'f', true);
INSERT INTO public.planet VALUES (6, 6, 'g', 6, 6, 'g', true);
INSERT INTO public.planet VALUES (7, 7, 'h', 7, 7, 'h', true);
INSERT INTO public.planet VALUES (8, 8, 'i', 8, 8, 'i', true);
INSERT INTO public.planet VALUES (9, 9, 'j', 9, 9, 'j', true);
INSERT INTO public.planet VALUES (10, 10, 'k', 10, 10, 'k', true);
INSERT INTO public.planet VALUES (11, 11, 'l', 11, 11, 'k', true);
INSERT INTO public.planet VALUES (12, 12, 'm', 12, 12, 'm', true);
INSERT INTO public.planet VALUES (13, 13, 'n', 13, 13, 'n', true);
INSERT INTO public.planet VALUES (14, 14, 'o', 14, 14, 'o', true);
INSERT INTO public.planet VALUES (15, 15, 'p', 15, 15, 'p', true);
INSERT INTO public.planet VALUES (16, 16, 'q', 16, 16, 'q', true);
INSERT INTO public.planet VALUES (17, 17, 'r', 17, 17, 'r', true);
INSERT INTO public.planet VALUES (18, 18, 's', 18, 18, 's', true);
INSERT INTO public.planet VALUES (19, 19, 't', 19, 19, 't', true);
INSERT INTO public.planet VALUES (20, 20, 'u', 20, 20, 'u', true);
INSERT INTO public.planet VALUES (21, 21, 'v', 21, 21, 'v', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'a', 1, 1, 'a', true);
INSERT INTO public.star VALUES (2, 2, 'b', 2, 2, 'b', true);
INSERT INTO public.star VALUES (3, 3, 'd', 3, 3, 'd', true);
INSERT INTO public.star VALUES (4, 4, 'e', 4, 4, 'e', true);
INSERT INTO public.star VALUES (5, 5, 'f', 5, 5, 'f', true);
INSERT INTO public.star VALUES (6, 6, 'g', 6, 6, 'g', true);
INSERT INTO public.star VALUES (7, 7, 'h', 7, 7, 'h', true);
INSERT INTO public.star VALUES (8, 8, 'i', 8, 8, 'i', true);
INSERT INTO public.star VALUES (9, 9, 'j', 9, 9, 'j', true);
INSERT INTO public.star VALUES (10, 10, 'k', 10, 10, 'k', true);
INSERT INTO public.star VALUES (11, 11, 'l', 11, 11, 'k', true);
INSERT INTO public.star VALUES (12, 12, 'm', 12, 12, 'm', true);
INSERT INTO public.star VALUES (13, 13, 'n', 13, 13, 'n', true);
INSERT INTO public.star VALUES (14, 14, 'o', 14, 14, 'o', true);
INSERT INTO public.star VALUES (15, 15, 'p', 15, 15, 'p', true);
INSERT INTO public.star VALUES (16, 16, 'q', 16, 16, 'q', true);
INSERT INTO public.star VALUES (17, 17, 'r', 17, 17, 'r', true);
INSERT INTO public.star VALUES (18, 18, 's', 18, 18, 's', true);
INSERT INTO public.star VALUES (19, 19, 't', 19, 19, 't', true);
INSERT INTO public.star VALUES (20, 20, 'u', 20, 20, 'u', true);
INSERT INTO public.star VALUES (21, 21, 'v', 21, 21, 'v', true);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 21, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_a_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_a_key UNIQUE (a);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_a_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_a_key UNIQUE (a);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_a_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_a_key UNIQUE (a);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_a_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_a_key UNIQUE (a);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

