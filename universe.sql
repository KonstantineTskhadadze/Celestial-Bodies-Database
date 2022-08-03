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
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area numeric,
    planet_id integer NOT NULL
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_id_seq OWNER TO freecodecamp;

--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.country_id_seq OWNED BY public.country.country_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    info text,
    density numeric,
    area integer,
    volume integer,
    active boolean NOT NULL,
    could_destroy_earth boolean
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
    name character varying(20),
    info text,
    density numeric,
    area integer,
    volume integer,
    active boolean NOT NULL,
    could_destroy_earth boolean,
    planet_id integer NOT NULL
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
    name character varying(20),
    info text,
    density numeric,
    area integer,
    volume integer,
    active boolean NOT NULL,
    could_destroy_earth boolean,
    star_id integer NOT NULL
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
    name character varying(20),
    info text,
    density numeric,
    area integer,
    volume integer,
    active boolean NOT NULL,
    could_destroy_earth boolean,
    galaxy_id integer NOT NULL
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
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_id_seq'::regclass);


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
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES (1, 'Georgia', NULL, 3);
INSERT INTO public.country VALUES (2, 'America', NULL, 3);
INSERT INTO public.country VALUES (3, 'Russia', NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'LMC', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', NULL, NULL, NULL, NULL, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (2, 'Moon2', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (3, 'Moon3', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (4, 'Moon4', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (5, 'Moon5', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (6, 'Moon6', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Moon7', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Moon8', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Moon9', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Moon10', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Moon11', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Moon12', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Moon13', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Moon14', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Moon15', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (16, 'Moon16', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Moon17', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (18, 'Moon18', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Moon19', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Moon20', NULL, NULL, NULL, NULL, true, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.planet VALUES (2, 'Venera', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.planet VALUES (7, 'Uran', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, true, NULL, 6);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, false, NULL, 6);
INSERT INTO public.planet VALUES (10, 'X1', NULL, NULL, NULL, NULL, true, NULL, 2);
INSERT INTO public.planet VALUES (11, 'JJ2', NULL, NULL, NULL, NULL, false, NULL, 3);
INSERT INTO public.planet VALUES (12, 'AX3', NULL, NULL, NULL, NULL, true, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Red Dwarf', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.star VALUES (2, 'Blue Dwarf', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.star VALUES (3, 'Green Dwarf', NULL, NULL, NULL, NULL, false, NULL, 2);
INSERT INTO public.star VALUES (4, 'Yellow Dwarf', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.star VALUES (5, 'Purple Dwarf', NULL, NULL, NULL, NULL, false, NULL, 3);
INSERT INTO public.star VALUES (6, 'Sun', NULL, NULL, NULL, NULL, true, NULL, 1);


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.country_id_seq', 3, true);


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
-- Name: country country_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_name_key UNIQUE (name);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star parent_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT parent_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: country planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

