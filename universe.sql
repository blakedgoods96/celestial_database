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
    name character varying(40) NOT NULL,
    no_of_stars integer,
    swag_noswag boolean,
    gimme_some_sugar text
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
    name character varying(40) NOT NULL,
    distance_from_planet_km integer NOT NULL,
    color text,
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
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    life boolean,
    abundant_resource text
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
-- Name: space_junk; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_junk (
    space_junk_id integer NOT NULL,
    name character varying(40) NOT NULL,
    elons boolean
);


ALTER TABLE public.space_junk OWNER TO freecodecamp;

--
-- Name: space_junk_junk_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_junk_junk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_junk_junk_id_seq OWNER TO freecodecamp;

--
-- Name: space_junk_junk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_junk_junk_id_seq OWNED BY public.space_junk.space_junk_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    no_of_planets integer,
    burning_since numeric NOT NULL,
    distance_from_nearest_galaxy_km integer NOT NULL,
    shining_or_shooting boolean NOT NULL,
    galaxy_id integer,
    name character varying(40) NOT NULL
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
-- Name: space_junk space_junk_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_junk ALTER COLUMN space_junk_id SET DEFAULT nextval('public.space_junk_junk_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'hooplah!', 69, true, 'im a frog');
INSERT INTO public.galaxy VALUES (2, 'sandy cheeks', 1000, true, 'IM DIRTY DAN');
INSERT INTO public.galaxy VALUES (3, 'chum bucket', 1, false, 'karen speaking');
INSERT INTO public.galaxy VALUES (4, 'krusty krab', 420000000, true, 'secret recipe');
INSERT INTO public.galaxy VALUES (5, 'salty spitoon', 666, true, 'Caution: Wet Floor');
INSERT INTO public.galaxy VALUES (6, 'weenie hut jrs', 0, false, 'may i take your hat sir?');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'hella', 4, 'fuscia', 12);
INSERT INTO public.moon VALUES (2, 'good', 66, 'beige', 4);
INSERT INTO public.moon VALUES (3, 'brother', 348, 'yellow', 5);
INSERT INTO public.moon VALUES (4, 'hulk hogan', 48391, 'red', 1);
INSERT INTO public.moon VALUES (5, 'spiritbox', 558, 'IRIDESCENT', 11);
INSERT INTO public.moon VALUES (6, 'woo!', 6167, 'purple', 2);
INSERT INTO public.moon VALUES (7, 'paddys', 445, 'green', 10);
INSERT INTO public.moon VALUES (8, 'the nifty', 8, 'black', 1);
INSERT INTO public.moon VALUES (9, 'beercade', 341111, 'beer', 7);
INSERT INTO public.moon VALUES (10, 'elbow room', 89685, 'taupe', 7);
INSERT INTO public.moon VALUES (11, 'the down under', 7, 'gold', 6);
INSERT INTO public.moon VALUES (12, 'the homey inn', 666, 'champagne', 9);
INSERT INTO public.moon VALUES (13, 'winking owl', 8675309, 'white', 1);
INSERT INTO public.moon VALUES (14, 'paddy mcgowns', 1000, 'irish colors', 6);
INSERT INTO public.moon VALUES (15, 'the watering hole', 8999, 'blackwater', 3);
INSERT INTO public.moon VALUES (16, 'rudys', 1, 'rouge', 8);
INSERT INTO public.moon VALUES (17, 'pablos', 554454, 'rainbow', 12);
INSERT INTO public.moon VALUES (18, 'varsity', 74, 'victory', 8);
INSERT INTO public.moon VALUES (19, 'the garage', 9966, 'brown', 3);
INSERT INTO public.moon VALUES (20, 'speilbound', 24, 'red and gold', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'europa', 8, false, 'poop');
INSERT INTO public.planet VALUES (2, 'pluto', 10, false, 'the best music');
INSERT INTO public.planet VALUES (3, 'frank', 7, false, 'rum ham');
INSERT INTO public.planet VALUES (4, 'dee', 1, true, 'feathers');
INSERT INTO public.planet VALUES (5, 'dennis', 9, false, 'narcisism');
INSERT INTO public.planet VALUES (6, 'mac', 1, true, 'karate');
INSERT INTO public.planet VALUES (7, 'charlie', 7, true, 'heiroglyphics');
INSERT INTO public.planet VALUES (8, 'lawyer', 11, false, 'profit');
INSERT INTO public.planet VALUES (9, 'cricket', 1, true, 'fleas');
INSERT INTO public.planet VALUES (10, 'artemis', 9, true, 'a good time');
INSERT INTO public.planet VALUES (11, 'lance', 11, false, 'pump');
INSERT INTO public.planet VALUES (12, 'shadynasty', 1, true, 'love');


--
-- Data for Name: space_junk; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_junk VALUES (1, 'shuttle', true);
INSERT INTO public.space_junk VALUES (2, 'fuselage', true);
INSERT INTO public.space_junk VALUES (3, 'mars', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, 1, 2, true, 1, 'Stephanie');
INSERT INTO public.star VALUES (7, 20, 2010, 2500, false, 5, 'Onika');
INSERT INTO public.star VALUES (8, 100, 1996, 500000000, true, 4, 'Beyonce');
INSERT INTO public.star VALUES (9, 2019, 2020, 40, false, 6, 'Megan');
INSERT INTO public.star VALUES (10, 123456789, 2002, 44, true, 1, 'Hayley');
INSERT INTO public.star VALUES (11, 1, 2021, 500, false, 5, 'Courtney');


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
-- Name: space_junk_junk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_junk_junk_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: galaxy galaxy_gimme_some_sugar_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_gimme_some_sugar_key UNIQUE (gimme_some_sugar);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_color_key UNIQUE (color);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star order_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT order_unique UNIQUE (burning_since);


--
-- Name: planet planet_abundant_resource_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_abundant_resource_key UNIQUE (abundant_resource);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_junk space_junk_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_junk
    ADD CONSTRAINT space_junk_name_key UNIQUE (name);


--
-- Name: space_junk space_junk_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_junk
    ADD CONSTRAINT space_junk_pkey PRIMARY KEY (space_junk_id);


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

