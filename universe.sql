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
-- Name: cientific; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cientific (
    cientific_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gender text,
    dead boolean,
    alive boolean,
    childs integer,
    couples integer,
    height numeric
);


ALTER TABLE public.cientific OWNER TO freecodecamp;

--
-- Name: cientific_cientific_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cientific_cientific_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cientific_cientific_id_seq OWNER TO freecodecamp;

--
-- Name: cientific_cientific_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cientific_cientific_id_seq OWNED BY public.cientific.cientific_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    type text,
    magnitude numeric,
    diameter_light_years integer,
    has_life boolean,
    has_black_holes boolean,
    black_holes integer,
    name character varying(30) NOT NULL
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
    name character varying(30) NOT NULL,
    type text,
    has_life boolean,
    has_water boolean,
    order_size integer,
    who_cares numeric,
    who_cares_2 integer,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    rotation_period integer,
    has_life boolean,
    has_water boolean,
    inclination numeric,
    moons integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gravity numeric,
    relative_diameter integer,
    has_life boolean,
    has_planets boolean,
    temperature integer,
    type text
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: cientific cientific_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cientific ALTER COLUMN cientific_id SET DEFAULT nextval('public.cientific_cientific_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: cientific; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cientific VALUES (1, 'einstein', 'male', true, false, 1, 1, 1.60);
INSERT INTO public.cientific VALUES (2, 'newton', 'male', true, false, 1, 1, 1.45);
INSERT INTO public.cientific VALUES (3, 'hawking', 'male', true, false, 1, 1, 1.63);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'espiral barrada', NULL, 200000, true, true, 1, 'via lactea');
INSERT INTO public.galaxy VALUES (2, 'espiral', 13.6, 220000, false, false, 1, 'andromeda');
INSERT INTO public.galaxy VALUES (3, 'lenticular', 7.8, NULL, false, true, 1, 'centaurus a');
INSERT INTO public.galaxy VALUES (4, 'espiral barrada', 8.3, NULL, false, NULL, NULL, 'dwingeloo 1');
INSERT INTO public.galaxy VALUES (5, 'irregular', 11.9, 5000, false, true, 1, 'sextans a');
INSERT INTO public.galaxy VALUES (6, 'espiral', 14.5, 210000, false, true, 1, 'andromeda II');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 'natural', false, true, 1, 1.1, 1, 3);
INSERT INTO public.moon VALUES (2, 'fobos', 'natural', false, false, 1, 1.2, 1, 4);
INSERT INTO public.moon VALUES (3, 'deimos', 'natural', false, false, 2, 1.3, 2, 4);
INSERT INTO public.moon VALUES (4, 'ío', 'galileano', false, false, 1, 1.4, 1, 5);
INSERT INTO public.moon VALUES (5, 'europa', 'galileano', false, true, 2, 1.5, 2, 5);
INSERT INTO public.moon VALUES (6, 'ganimedes', 'galileano', false, true, 3, 1.6, 6, 5);
INSERT INTO public.moon VALUES (7, 'calisto', 'galileano', false, true, 4, 1.7, 4, 5);
INSERT INTO public.moon VALUES (8, 'titán', 'natural', false, true, 1, 1.8, 1, 6);
INSERT INTO public.moon VALUES (9, 'rea', 'natural', false, true, 2, 1.9, 2, 6);
INSERT INTO public.moon VALUES (10, 'jápeto', 'natural', false, false, 3, 2.1, 3, 6);
INSERT INTO public.moon VALUES (11, 'dione', 'natural', false, false, 4, 2.1, 4, 6);
INSERT INTO public.moon VALUES (12, 'tetis', 'natural', false, false, 5, 2.2, 5, 6);
INSERT INTO public.moon VALUES (13, 'encélado', 'natural', false, false, 6, 2.3, 6, 6);
INSERT INTO public.moon VALUES (14, 'mimas', 'natural', false, false, 7, 2.4, 7, 6);
INSERT INTO public.moon VALUES (15, 'hiperión', 'natural', false, false, 8, 2.5, 8, 6);
INSERT INTO public.moon VALUES (16, 'febe', 'natural', false, false, 9, 2.6, 9, 6);
INSERT INTO public.moon VALUES (17, 'jano', 'natural', false, false, 10, 2.7, 10, 6);
INSERT INTO public.moon VALUES (18, 'epimeteo', 'natural', false, false, 11, 2.8, 11, 6);
INSERT INTO public.moon VALUES (19, 'titania', 'natural', false, true, 1, 2.9, 1, 7);
INSERT INTO public.moon VALUES (20, 'oberón', 'natural', false, true, 2, 3.1, 2, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercurio', 'rocoso', 58, false, false, 7.0, 0);
INSERT INTO public.planet VALUES (2, 'venus', 'rocoso', 243, false, false, 3.3, 0);
INSERT INTO public.planet VALUES (3, 'tierra', 'rocoso', 1, true, true, 7.1, 1);
INSERT INTO public.planet VALUES (4, 'marte', 'rocoso', 1, false, false, 1.8, 2);
INSERT INTO public.planet VALUES (5, 'jupiter', 'gaseoso', 9, false, false, 1.8, 2);
INSERT INTO public.planet VALUES (6, 'saturno', 'gaseoso', 10, false, false, 2.4, 146);
INSERT INTO public.planet VALUES (7, 'urano', 'helado', 17, false, false, 0.7, 27);
INSERT INTO public.planet VALUES (8, 'nepturno', 'helado', 1, false, false, 1.7, 14);
INSERT INTO public.planet VALUES (9, 'pluton', 'enano', 153, false, false, 17.2, 5);
INSERT INTO public.planet VALUES (10, 'vegeta', 'rocoso', 1, true, true, 7.1, 1);
INSERT INTO public.planet VALUES (11, 'namek', 'rocoso', 1, true, true, 7.1, 1);
INSERT INTO public.planet VALUES (12, 'de los simios', 'rocoso', 1, true, true, 7.1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 27.96, 109, false, true, 5505, 'enana amarilla');
INSERT INTO public.star VALUES (2, 'aldebaran', NULL, NULL, false, false, 4010, 'gigante naranja');
INSERT INTO public.star VALUES (3, 'antares', NULL, NULL, false, true, 3600, 'supergigante roja');
INSERT INTO public.star VALUES (4, 'espigma', NULL, NULL, false, false, 22400, NULL);
INSERT INTO public.star VALUES (5, 'proxima centauri', 5.2, NULL, false, true, 3042, 'enana roja');
INSERT INTO public.star VALUES (6, 'alfa centauri', 6.3, NULL, false, false, 3000, 'enana roja');


--
-- Name: cientific_cientific_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cientific_cientific_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cientific cientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cientific
    ADD CONSTRAINT cientific_name_key UNIQUE (name);


--
-- Name: cientific cientific_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cientific
    ADD CONSTRAINT cientific_pkey PRIMARY KEY (cientific_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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
-- PostgreSQL database dump complete
--

