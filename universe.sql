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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(60) NOT NULL,
    mass_kilograms character varying(60),
    diameter_meters character varying(60),
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_in_lightyears_millions integer,
    number_of_stars_billions integer,
    galaxy_type character varying(60)
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
    name character varying(60) NOT NULL,
    mass_kilograms character varying(60),
    radius_meters character varying(60),
    has_atmosphere boolean,
    description text,
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
    name character varying(60) NOT NULL,
    mass_kilograms character varying(60),
    radius_meters character varying(60),
    distance_from_star character varying(60),
    has_atmosphere boolean,
    star_id integer
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
    name character varying(100) NOT NULL,
    mass_kilograms character varying(60),
    radius_meter character varying(60),
    age_years numeric,
    temperature_kelvin numeric,
    galaxy_id integer
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', '4.31 × 10^6', '44.47 × 10^6', 1);
INSERT INTO public.black_hole VALUES (2, 'Messier 87*', '6.5 × 10^9', '2.69 × 10^11', 6);
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', '15', '48.8 × 10^6', 2);
INSERT INTO public.black_hole VALUES (4, 'V404 Cygni', '12', '33.5 × 10^6', 2);
INSERT INTO public.black_hole VALUES (5, 'SS 433', '20', '55 × 10^6', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 100, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 253700, 1000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000, 40, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 13000000, 100, 'Elliptical');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 28000000, 800, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 53490000, 200, 'Elliptical');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', '7.349 × 10^22', '1.737 × 10^6', false, 'Moon revolving around Earth', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', '1.0659 × 10^16', '11.2667 × 10^3', false, 'Moon revolving around Mars', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', '1.4762 × 10^15', '6.2 × 10^3', false, 'Moon revolving around Mars', 4);
INSERT INTO public.moon VALUES (4, 'Europa', '4.7998 × 10^22', '1.561 × 10^6', true, 'Moon revolving around Jupiter', 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', '1.4819 × 10^23', '2.634 × 10^6', true, 'Moon revolving around Jupiter', 5);
INSERT INTO public.moon VALUES (6, 'Io', '8.9319 × 10^22', '1.8216 × 10^6', true, 'Moon revolving around Jupiter', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', '1.075938 × 10^23', '2.4103 × 10^6', true, 'Moon revolving around Jupiter', 5);
INSERT INTO public.moon VALUES (8, 'Titan', '1.3452 × 10^23', '2.575 × 10^6', true, 'Moon revolving around Uranus', 6);
INSERT INTO public.moon VALUES (9, 'Titania', '3.526 × 10^21', '7.86 × 10^5', false, 'Moon revolving around Uranus', 6);
INSERT INTO public.moon VALUES (10, 'Oberon', '3.014 × 10^21', '7.61 × 10^5', false, 'Moon revolving around Uranus', 6);
INSERT INTO public.moon VALUES (11, 'Miranda', '6.59 × 10^19', '2.023 × 10^5', false, 'Moon revolving around Uranus', 6);
INSERT INTO public.moon VALUES (12, 'Proxima Centauri B Moon', 'Unknown', 'Unknown', false, 'Moon revolving around Proxima Centauri B', 7);
INSERT INTO public.moon VALUES (13, 'Alpha Centauri A d Moon', 'Unknown', 'Unknown', false, 'Moon revolving around Alpha Centauri A d', 8);
INSERT INTO public.moon VALUES (14, 'Alpha Centauri B b Moon', 'Unknown', 'Unknown', false, 'Moon revolving around Alpha Centauri B b', 9);
INSERT INTO public.moon VALUES (15, 'Barnard''s Star b Moon', 'Unknown', 'Unknown', false, 'Moon revolving around Barnard''s Star b', 10);
INSERT INTO public.moon VALUES (16, 'Barnard''s Star c Moon', 'Unknown', 'Unknown', false, 'Moon revolving around Barnard''s Star c', 11);
INSERT INTO public.moon VALUES (17, 'Sirius b Moon', 'Unknown', 'Unknown', false, 'Moon revolving around Sirius b', 12);
INSERT INTO public.moon VALUES (18, 'Amalthea', '2.08 × 10^18', '83.5 × 10^3', false, 'Moon revolving around Jupiter', 5);
INSERT INTO public.moon VALUES (19, 'Himalia', '4.01 × 10^18', '85.0 × 10^3', false, 'Moon revolving around Jupiter', 5);
INSERT INTO public.moon VALUES (20, 'Elara', '8.7 × 10^17', '43.0 × 10^3', false, 'Moon revolving around Jupiter', 5);
INSERT INTO public.moon VALUES (21, 'Miranda', '6.59 × 10^19', '2.023 × 10^5', false, 'Moon revolving around Uranus', 6);
INSERT INTO public.moon VALUES (22, 'Ariel', '1.35 × 10^21', '5.24 × 10^5', false, 'Moon revolving around Uranus', 6);
INSERT INTO public.moon VALUES (23, 'Umbriel', '1.27 × 10^21', '5.19 × 10^5', false, 'Moon revolving around Uranus', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', '3.285 × 10^23', '2.439 × 10^6', '5.79 × 10^7', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', '4.867 × 10^24', '6.052 × 10^6', '1.082 × 10^8', true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', '5.972 × 10^24', '6.371 × 10^6', '1.496 × 10^8', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', '6.39 × 10^23', '3.389 × 10^6', '2.279 × 10^8', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', '1.898 × 10^27', '6.991 × 10^7', '7.785 × 10^8', true, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', '8.681 × 10^25', '2.536 × 10^7', '2.871 × 10^9', true, 1);
INSERT INTO public.planet VALUES (7, 'Proxima Centauri B', '≥1.07 × 10^24', 'Unknown', '7.264 × 10^6', true, 2);
INSERT INTO public.planet VALUES (8, 'Alpha Centauri A d', 'Unknown', 'Unknown', 'Unknown', true, 3);
INSERT INTO public.planet VALUES (9, 'Alpha Centauri B b', 'Unknown', 'Unknown', 'Unknown', true, 4);
INSERT INTO public.planet VALUES (10, 'Barnard''s Star b', 'Unknown', 'Unknown', 'Unknown', true, 5);
INSERT INTO public.planet VALUES (11, 'Barnard''s Star c', 'Unknown', 'Unknown', 'Unknown', true, 5);
INSERT INTO public.planet VALUES (12, 'Sirius b', 'Unknown', 'Unknown', 'Unknown', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', '1.989 × 10^30', '6.957 × 10^8', 4.6, 5778, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', '2.45 × 10^29', '2.14 × 10^6', 4.85, 3042, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', '2.19 × 10^30', '1.22 × 10^9', 6.4, 5790, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', '1.86 × 10^30', '8.53 × 10^8', 6.4, 5260, 1);
INSERT INTO public.star VALUES (5, 'Barnards Star', '3.89 × 10^29', '7.25 × 10^8', 7.9, 3134, 1);
INSERT INTO public.star VALUES (6, 'Sirius', '2.02 × 10^30', '1.711 × 10^9', 2.6, 9940, 2);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole unique_black_hole_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_black_hole_id UNIQUE (black_hole_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

