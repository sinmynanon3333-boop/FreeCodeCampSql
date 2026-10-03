--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: for_join; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.for_join (
    name character varying(30) NOT NULL,
    for_join_id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.for_join OWNER TO freecodecamp;

--
-- Name: for_join_for_join_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.for_join_for_join_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.for_join_for_join_id_seq OWNER TO freecodecamp;

--
-- Name: for_join_for_join_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.for_join_for_join_id_seq OWNED BY public.for_join.for_join_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    galaxy_type text NOT NULL,
    size_light_year integer NOT NULL,
    description text NOT NULL
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
    name character varying(30),
    is_spherical boolean NOT NULL,
    distance_from_itplanet numeric(10,2) NOT NULL,
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
    name character varying(30),
    has_life boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    planet_types character varying(30) NOT NULL,
    planet_id integer NOT NULL,
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
    name character varying(30),
    age_light_year integer NOT NULL,
    size_milloin_km integer NOT NULL,
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
-- Name: for_join for_join_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.for_join ALTER COLUMN for_join_id SET DEFAULT nextval('public.for_join_for_join_id_seq'::regclass);


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
-- Data for Name: for_join; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.for_join VALUES ('Starlight', 1, 'A faint glow produced by distant stars across the night sky.');
INSERT INTO public.for_join VALUES ('Nebula', 2, 'A vast cloud of gas and dust where new stars can form.');
INSERT INTO public.for_join VALUES ('Cosmic Dust', 3, 'Tiny particles floating through space between stars and planets.');
INSERT INTO public.for_join VALUES ('Solar Wind', 4, 'A stream of charged particles continuously released by a star.');
INSERT INTO public.for_join VALUES ('Dark Matter', 5, 'An invisible form of matter believed to influence the motion of galaxies.');
INSERT INTO public.for_join VALUES ('Asteroid Belt', 6, 'A region containing thousands of rocky objects orbiting a star.');
INSERT INTO public.for_join VALUES ('Supernova', 7, 'A powerful stellar explosion that can briefly outshine an entire galaxy.');
INSERT INTO public.for_join VALUES ('Black Hole', 8, 'A region of space with gravity so strong that even light cannot escape.');
INSERT INTO public.for_join VALUES ('Comet', 9, 'An icy object that develops a glowing tail when it approaches a star.');
INSERT INTO public.for_join VALUES ('Exoplanet', 10, 'A planet that orbits a star outside our Solar System.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkey way', 'barred spiral galaxy', 100000, 'A central band of stars, gas, and dust cuts across its middle.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral galaxy', 220000, 'A large spiral galaxy and the nearest major galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'spiral galaxy', 60000, 'A spiral galaxy located in the Local Group of galaxies.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'spiral galaxy', 76000, 'A famous spiral galaxy with a prominent companion galaxy.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'spiral galaxy', 50000, 'A galaxy known for its bright central bulge and dark dust lane.');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'spiral galaxy', 170000, 'A large face-on spiral galaxy with numerous bright star-forming regions.');
INSERT INTO public.galaxy VALUES (7, 'Black Eye', 'spiral galaxy', 52000, 'A galaxy recognized for its distinctive dark band of dust around its bright center.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 384400.00, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 9376.00, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 23463.00, 4);
INSERT INTO public.moon VALUES (4, 'Io', true, 421700.00, 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, 671034.00, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 1070412.00, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 1882709.00, 5);
INSERT INTO public.moon VALUES (8, 'Titan', true, 1221870.00, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', true, 527040.00, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', true, 237948.00, 6);
INSERT INTO public.moon VALUES (11, 'Tethys', true, 294619.00, 6);
INSERT INTO public.moon VALUES (12, 'Dione', true, 377396.00, 6);
INSERT INTO public.moon VALUES (13, 'Iapetus', true, 3560820.00, 6);
INSERT INTO public.moon VALUES (14, 'Mimas', true, 185520.00, 6);
INSERT INTO public.moon VALUES (15, 'Miranda', true, 129900.00, 6);
INSERT INTO public.moon VALUES (16, 'Ariel', true, 190900.00, 6);
INSERT INTO public.moon VALUES (17, 'Umbriel', true, 266000.00, 6);
INSERT INTO public.moon VALUES (18, 'Titania', true, 436300.00, 6);
INSERT INTO public.moon VALUES (19, 'Oberon', true, 583500.00, 6);
INSERT INTO public.moon VALUES (20, 'Triton', true, 354800.00, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', true, 0, 'Terrestrial', 1, 1);
INSERT INTO public.planet VALUES ('Mercury', false, 77, 'Terrestrial', 2, 1);
INSERT INTO public.planet VALUES ('Venus', false, 41, 'Terrestrial', 3, 1);
INSERT INTO public.planet VALUES ('Mars', false, 78, 'Terrestrial', 4, 1);
INSERT INTO public.planet VALUES ('Jupiter', false, 628, 'Gas Giant', 5, 1);
INSERT INTO public.planet VALUES ('Saturn', false, 1275, 'Gas Giant', 6, 1);
INSERT INTO public.planet VALUES ('Proxima b', false, 4, 'Terrestrial', 7, 6);
INSERT INTO public.planet VALUES ('Kepler-22b', false, 600, 'Super Earth', 8, 7);
INSERT INTO public.planet VALUES ('Gliese 581c', false, 20, 'Super Earth', 9, 8);
INSERT INTO public.planet VALUES ('TRAPPIST-1e', false, 39, 'Terrestrial', 10, 9);
INSERT INTO public.planet VALUES ('Kepler-452b', false, 1400, 'Super Earth', 11, 10);
INSERT INTO public.planet VALUES ('HD 209458 b', false, 159, 'Gas Giant', 12, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 1, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 9, 2, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 642, 1400, 1);
INSERT INTO public.star VALUES (4, 'Vega', 25, 3, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 860, 116, 2);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 4, 0, 2);
INSERT INTO public.star VALUES (7, 'Antares', 550, 883, 3);
INSERT INTO public.star VALUES (8, 'Aldebaran', 65, 61, 4);
INSERT INTO public.star VALUES (9, 'Polaris', 433, 48, 5);
INSERT INTO public.star VALUES (10, 'Spica', 250, 7, 6);
INSERT INTO public.star VALUES (11, 'Deneb', 2615, 203, 7);
INSERT INTO public.star VALUES (12, 'Arcturus', 37, 35, 1);


--
-- Name: for_join_for_join_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.for_join_for_join_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: for_join for_join_for_join_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.for_join
    ADD CONSTRAINT for_join_for_join_id_key UNIQUE (for_join_id);


--
-- Name: for_join for_join_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.for_join
    ADD CONSTRAINT for_join_pkey PRIMARY KEY (for_join_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

