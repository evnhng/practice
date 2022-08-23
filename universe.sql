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
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    shape character varying,
    num_stars_bils integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    has_atmosphere boolean,
    dia_in_km numeric(5,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying,
    num_moons integer NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    has_atmosphere boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    dia_in_km integer,
    mass_in_kg integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.type (
    type_id integer NOT NULL,
    type character varying NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.type OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Pinwheel', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Sombrero', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Malin 1', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Condor', 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('The Moon', 1, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Phobos', 2, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Deimos', 3, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 4, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', 5, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 6, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 7, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Leda', 8, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Ersa', 9, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Himalia', 10, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Pandia', 11, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Lysithea', 12, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Elara', 13, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Dia', 14, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Mimas', 15, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 16, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Tethys', 17, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Dione', 18, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Rhea', 19, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', 20, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 21, 6, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 0, 1, 1, false);
INSERT INTO public.planet VALUES ('Venus', 0, 2, 1, true);
INSERT INTO public.planet VALUES ('Earth', 1, 3, 1, true);
INSERT INTO public.planet VALUES ('Mars', 2, 4, 1, true);
INSERT INTO public.planet VALUES ('Jupiter', 80, 5, 1, true);
INSERT INTO public.planet VALUES ('Saturn', 83, 6, 1, true);
INSERT INTO public.planet VALUES ('Uranus', 27, 7, 1, true);
INSERT INTO public.planet VALUES ('Neptune', 14, 8, 1, true);
INSERT INTO public.planet VALUES ('Pluto', 5, 9, 1, true);
INSERT INTO public.planet VALUES ('Ceres', 0, 10, 1, true);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 0, 11, 7, NULL);
INSERT INTO public.planet VALUES ('Proxima Centauri c', 0, 12, 7, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('The Sun', 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Sirius', 2, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Alpha Centauri A', 3, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Vega', 4, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Deneb', 5, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Altair', 6, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Proxima Centauri', 7, 1, NULL, NULL);


--
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.type VALUES (1, 'solid', 'silicate planet');
INSERT INTO public.type VALUES (2, 'gaseous
', 'gas giant');
INSERT INTO public.type VALUES (3, 'cold', 'ice giant');


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
-- Name: type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (type_id);


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
-- Name: type type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_name_key UNIQUE (name);


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

