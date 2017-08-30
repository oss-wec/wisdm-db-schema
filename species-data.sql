--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: species; Type: TABLE; Schema: public; Owner: mitchellgritts
--

CREATE TABLE species (
    id integer NOT NULL,
    common_name text NOT NULL,
    species_name text,
    alpha_code text,
    genus text,
    species text,
    gbif_key integer,
    t_phylum text,
    t_class text,
    t_order text,
    t_family text,
    "grouping" text,
    ndow_code integer,
    attributes jsonb,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE species OWNER TO mitchellgritts;

--
-- Name: species_id_seq; Type: SEQUENCE; Schema: public; Owner: mitchellgritts
--

CREATE SEQUENCE species_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE species_id_seq OWNER TO mitchellgritts;

--
-- Name: species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mitchellgritts
--

ALTER SEQUENCE species_id_seq OWNED BY species.id;


--
-- Name: species id; Type: DEFAULT; Schema: public; Owner: mitchellgritts
--

ALTER TABLE ONLY species ALTER COLUMN id SET DEFAULT nextval('species_id_seq'::regclass);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: mitchellgritts
--

COPY species (id, common_name, species_name, alpha_code, genus, species, gbif_key, t_phylum, t_class, t_order, t_family, grouping, ndow_code, attributes, created_at, updated_at) FROM stdin;
1	threadfin shad	Dorosoma petenense	\N	Dorosoma	petenense	2413553	Chordata	Actinopterygii	Clupeiformes	Clupeidae	misc_fish	357	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
2	American gizzard shad	Dorosoma cepedianum	\N	Dorosoma	cepedianum	2413541	Chordata	Actinopterygii	Clupeiformes	Clupeidae	misc_fish	1274	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
3	bridgelip sucker	Catostomus columbianus	\N	Catostomus	columbianus	2359027	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	197	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
4	chiselmouth	Acrocheilus alutaceus	\N	Acrocheilus	alutaceus	2367726	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	4	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
5	chub (unknown)	Gila sp.	\N	Gila	sp.	2360060	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	469	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
6	common carp	Cyprinus carpio	\N	Cyprinus	carpio	4286975	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	315	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
7	desert sucker	Catostomus clarkii	\N	Catostomus	clarkii	2359050	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	194	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
8	fathead minnow	Pimephales promelas	\N	Pimephales	promelas	2367742	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	812	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
9	golden shiner	Notemigonus crysoleucas	\N	Notemigonus	crysoleucas	2363714	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	688	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
10	goldfish	Carassius auratus	\N	Carassius	auratus	4286942	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	165	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
11	Lahontan redside	Richardsonius egregius	\N	Richardsonius	egregius	2362394	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	997	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
12	Lahontan speckled dace	Rhinichthys osculus robustus	\N	Rhinichthys	osculus	4287011	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	986	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
13	largescale sucker	Catostomus macrocheilus	\N	Catostomus	macrocheilus	2359034	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	199	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
14	Little Colorado spinedace	Lepidomeda vittata	\N	Lepidomeda	vittata	2361905	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	564	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
15	mountain sucker	Catostomus platyrhynchus	\N	Catostomus	platyrhynchus	2359047	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	200	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
16	northern pikeminnow	Ptychocheilus oregonensis	\N	Ptychocheilus	oregonensis	5205686	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	879	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
17	red shiner	Cyprinella lutrensis	\N	Cyprinella	lutrensis	5207666	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	309	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
18	redside shiner	Richardsonius balteatus	\N	Richardsonius	balteatus	2362399	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	996	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
19	roundtail chub	Gila robusta	\N	Gila	robusta	2360128	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	464	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
20	Sacramento blackfish	Orthodon microlepidotus	\N	Orthodon	microlepidotus	5205970	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	731	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
21	speckled dace	Rhinichthys osculus	\N	Rhinichthys	osculus	2359791	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	980	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
22	speckled dace (unknown)	Rhinichthys sp.	\N	Rhinichthys	sp.	2359788	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	993	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
23	sucker (unknown)	Catostomus sp.	\N	Catostomus	sp.	2359013	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	201	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
24	Tahoe sucker	Catostomus tahoensis	\N	Catostomus	tahoensis	2359045	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	203	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
25	tui chub	Gila bicolor	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	447	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
26	Utah chub	Gila atraria	\N	Gila	atraria	2360064	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	446	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
27	Virgin River roundtail chub	Gila robusta seminuda	\N	Gila	robusta	4286909	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	466	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
28	Snake River speckled dace	Rhinichthys osculus ssp. ?	\N	Rhinichthys	osculus	2359791	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	1270	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
29	Colorado River speckled dace	Rhinichthys osculus yarrowi	\N	Rhinichthys	osculus	2359791	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	1271	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
30	Gila chub	Gila intermedia	\N	Gila	intermedia	2360136	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	1275	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
31	headwater chub	Gila nigra	\N	Gila	nigra	2360137	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	1276	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
32	bluehead sucker	Catostomus discobolus	\N	Catostomus	discobolus	4286866	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	1283	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
33	Moapa speckled dace	Rhinichthys osculus moapae	\N	Rhinichthys	osculus	6167273	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	983	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
34	Ash Meadows speckled dace	Rhinichthys osculus nevadensis	\N	Rhinichthys	osculus	6167271	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	984	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
35	Wall Canyon sucker	Catostomus sp. 1	\N	Catostomus	sp.	2359013	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	202	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
36	Independence Valley tui chub	Gila bicolor isolata	\N	Gila	bicolor	6167052	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	450	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
37	Monitor Valley speckled dace	Rhinichthys osculus ssp. 5	\N	Rhinichthys	osculus	2359791	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	989	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
38	Little Fish Lake Valley tui chub	Gila bicolor ssp. 6	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	457	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
39	Railroad Valley tui chub	Gila bicolor ssp. 7	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	458	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
40	cui-ui	Chasmistes cujus	\N	Chasmistes	cujus	2359093	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	223	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
41	Charnock Springs tui chub	Gila bicolor ssp. 10	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	453	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
42	Warner sucker	Catostomus warnerensis	\N	Catostomus	warnerensis	2359059	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	204	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
454	dickcissel	Spiza americana	\N	Spiza	americana	2490363	Chordata	Aves	Passeriformes	Cardinalidae	passerine	1077	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
43	Clover Valley speckled dace	Rhinichthys osculus oligoporus	\N	Rhinichthys	osculus	6167276	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	985	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
44	Big Smoky Valley speckled dace	Rhinichthys osculus lariversi	\N	Rhinichthys	osculus	6167268	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	981	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
45	Virgin River chub (Muddy River pop.)	Gila seminuda pop. 2	\N	Gila	seminuda	2360105	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	468	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
46	Virgin River spinedace	Lepidomeda mollispinis mollispinis	\N	Lepidomeda	mollispinis	6166781	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	562	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
47	White River speckled dace	Rhinichthys osculus ssp. 7	\N	Rhinichthys	osculus	2359791	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	991	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
48	longnose dace	Rhinichthys cataractae	\N	Rhinichthys	cataractae	2359811	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	979	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
49	White River spinedace	Lepidomeda albivallis	\N	Lepidomeda	albivallis	2361898	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	559	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
50	Pahranagat roundtail chub	Gila robusta jordani	\N	Gila	robusta	4286914	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	465	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
51	Big Smoky Valley tui chub	Gila bicolor ssp. 8	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	459	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
52	desert dace	Eremichthys acros	\N	Eremichthys	acros	2362069	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	393	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
53	woundfin	Plagopterus argentissimus	\N	Plagopterus	argentissimus	2366711	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	830	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
54	Cowhead Lake tui chub	Gila bicolor vaccaceps	\N	Gila	bicolor	6167051	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	461	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
55	White River desert sucker	Catostomus clarkii intermedius	\N	Catostomus	clarkii	2359050	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	195	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
56	Virgin River chub	Gila seminuda	\N	Gila	seminuda	2360105	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	467	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
57	Meadow Valley speckled dace	Rhinichthys osculus ssp. 11	\N	Rhinichthys	osculus	2359791	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	988	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
58	Fish Creek Springs tui chub	Gila bicolor euchila	\N	Gila	bicolor	6167050	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	448	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
59	bonytail chub	Gila elegans	\N	Gila	elegans	2360109	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	463	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
60	Moapa dace	Moapa coriacea	\N	Moapa	coriacea	2362734	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	639	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
61	Lahontan Lake tui chub	Gila bicolor pectinifer	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	452	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
62	Pahranagat speckled dace	Rhinichthys osculus velifer	\N	Rhinichthys	osculus	6167272	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	992	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
63	Hot Creek Valley tui chub	Gila bicolor ssp. 5	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	456	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
64	Big Spring spinedace	Lepidomeda mollispinis pratensis	\N	Lepidomeda	mollispinis	6166782	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	563	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
65	Newark Valley tui chub	Gila bicolor newarkensis	\N	Gila	bicolor	6167049	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	451	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
66	Utah sucker	Catostomus ardens	\N	Catostomus	ardens	2359038	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	193	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
67	Alvord chub	Gila alvordensis	\N	Gila	alvordensis	2360125	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	445	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
68	Dixie Valley tui chub	Gila bicolor ssp. 9	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	460	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
69	flannelmouth sucker	Catostomus latipinnis	\N	Catostomus	latipinnis	2359036	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	198	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
70	northern leatherside chub	Lepidomeda copei	\N	Lepidomeda	copei	2361899	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	560	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
71	relict dace	Relictus solitarius	\N	Relictus	solitarius	2365826	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	978	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
72	Meadow Valley Wash desert sucker	Catostomus clarkii ssp. 2	\N	Catostomus	clarkii	2359050	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	196	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
73	razorback sucker	Xyrauchen texanus	\N	Xyrauchen	texanus	2359095	Chordata	Actinopterygii	Cypriniformes	Catostomidae	ostariophysian	1241	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
74	Sheldon tui chub	Gila bicolor eurysoma	\N	Gila	bicolor	6167047	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	449	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
75	Duckwater Creek tui chub	Gila bicolor ssp. 3	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	454	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
76	Independence Valley speckled dace	Rhinichthys osculus lethoporus	\N	Rhinichthys	osculus	6167275	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	982	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
77	Oasis Valley speckled dace	Rhinichthys osculus ssp. 6	\N	Rhinichthys	osculus	2359791	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	990	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
78	Diamond Valley speckled dace	Rhinichthys osculus ssp. 10	\N	Rhinichthys	osculus	2359791	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	987	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
79	Fish Lake Valley tui chub	Gila bicolor ssp. 4	\N	Gila	bicolor	2360085	Chordata	Actinopterygii	Cypriniformes	Cyprinidae	ostariophysian	455	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
80	Amargosa pupfish	Cyprinodon nevadensis	\N	Cyprinodon	nevadensis	4284433	Chordata	Actinopterygii	Cyprinodontiformes	Cyprinodontidae	cyprinodontiformes	312	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
81	guppy	Poecilia reticulata	\N	Poecilia	reticulata	2350050	Chordata	Actinopterygii	Cyprinodontiformes	Poeciliidae	cyprinodontiformes	857	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
82	molly (unknown)	Poecilia sp.	\N	Poecilia	sp.	2347767	Chordata	Actinopterygii	Cyprinodontiformes	Poeciliidae	cyprinodontiformes	858	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
83	poolfish (unknown)	Empetrichthys sp.	\N	Empetrichthys	sp.	2347667	Chordata	Actinopterygii	Cyprinodontiformes	Goodeidae	cyprinodontiformes	376	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
689	snowy owl	Nyctea scandiaca	\N	Nyctea	scandiaca	2497581	Chordata	Aves	Strigiformes	Strigidae	owls	694	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
84	sailfin molly	Poecilia latipinna	\N	Poecilia	latipinna	5203752	Chordata	Actinopterygii	Cyprinodontiformes	Poeciliidae	cyprinodontiformes	855	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
85	shortfin molly	Poecilia mexicana	\N	Poecilia	mexicana	8400492	Chordata	Actinopterygii	Cyprinodontiformes	Poeciliidae	cyprinodontiformes	856	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
86	springfish	Crenichthys baileyi	\N	Crenichthys	baileyi	4284447	Chordata	Actinopterygii	Cyprinodontiformes	Goodeidae	cyprinodontiformes	282	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
87	western mosquitofish	Gambusia affinis	\N	Gambusia	affinis	2350580	Chordata	Actinopterygii	Cyprinodontiformes	Poeciliidae	cyprinodontiformes	436	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
88	Gila topminnow	Poeciliopsis occidentalis	\N	Poeciliopsis	occidentalis	2350470	Chordata	Actinopterygii	Cyprinodontiformes	Poeciliidae	cyprinodontiformes	1280	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
89	Sonoran topminnow	Poeciliopsis sonoriensis	\N	Poeciliopsis	sonoriensis	2350481	Chordata	Actinopterygii	Cyprinodontiformes	Poeciliidae	cyprinodontiformes	1289	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
90	Hiko White River springfish	Crenichthys baileyi grandis	\N	Crenichthys	baileyi	6165511	Chordata	Actinopterygii	Cyprinodontiformes	Goodeidae	cyprinodontiformes	285	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
91	Moapa White River springfish	Crenichthys baileyi moapae	\N	Crenichthys	baileyi	6165509	Chordata	Actinopterygii	Cyprinodontiformes	Goodeidae	cyprinodontiformes	286	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
92	Preston White River springfish	Crenichthys baileyi albivallis	\N	Crenichthys	baileyi	6165510	Chordata	Actinopterygii	Cyprinodontiformes	Goodeidae	cyprinodontiformes	283	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
93	Warm Springs Amargosa pupfish	Cyprinodon nevadensis pectoralis	\N	Cyprinodon	nevadensis	6165253	Chordata	Actinopterygii	Cyprinodontiformes	Cyprinodontidae	cyprinodontiformes	314	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
94	Ash Meadows Amargosa pupfish	Cyprinodon nevadensis mionectes	\N	Cyprinodon	nevadensis	6165250	Chordata	Actinopterygii	Cyprinodontiformes	Cyprinodontidae	cyprinodontiformes	313	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
95	Moorman White River springfish	Crenichthys baileyi thermophilus	\N	Crenichthys	baileyi	6165512	Chordata	Actinopterygii	Cyprinodontiformes	Goodeidae	cyprinodontiformes	287	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
96	White River springfish	Crenichthys baileyi baileyi	\N	Crenichthys	baileyi	7193295	Chordata	Actinopterygii	Cyprinodontiformes	Goodeidae	cyprinodontiformes	284	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
97	Pahrump poolfish	Empetrichthys latos latos	\N	Empetrichthys	latos	7193294	Chordata	Actinopterygii	Cyprinodontiformes	Goodeidae	cyprinodontiformes	375	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
98	Devils Hole pupfish	Cyprinodon diabolis	\N	Cyprinodon	diabolis	2347934	Chordata	Actinopterygii	Cyprinodontiformes	Cyprinodontidae	cyprinodontiformes	311	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
99	Railroad Valley springfish	Crenichthys nevadae	\N	Crenichthys	nevadae	2347713	Chordata	Actinopterygii	Cyprinodontiformes	Goodeidae	cyprinodontiformes	288	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
100	northern pike	Esox lucius	\N	Esox	lucius	2346633	Chordata	Actinopterygii	Esociformes	Esocidae	misc_fish	397	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
101	black crappie	Pomoxis nigromaculatus	\N	Pomoxis	nigromaculatus	2394526	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	862	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
102	blue tilapia	Oreochromis aureus	\N	Oreochromis	aureus	2372367	Chordata	Actinopterygii	Perciformes	Cichlidae	perciformes	719	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
103	bluegill	Lepomis macrochirus	\N	Lepomis	macrochirus	2394503	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	571	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
104	convict cichlid	Cichlasoma nigrofasciatum	\N	Cichlasoma	nigrofasciatum	2370026	Chordata	Actinopterygii	Perciformes	Cichlidae	perciformes	239	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
105	crappie (unknown)	Pomoxis sp.	\N	Pomoxis	sp.	2394525	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	863	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
106	green sunfish	Lepomis cyanellus	\N	Lepomis	cyanellus	2394494	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	569	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
107	largemouth bass	Micropterus salmoides	\N	Micropterus	salmoides	2391100	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	630	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
108	pumpkinseed	Lepomis gibbosus	\N	Lepomis	gibbosus	2394486	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	570	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
109	redear sunfish	Lepomis microlophus	\N	Lepomis	microlophus	2394501	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	572	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
110	Sacramento perch	Archoplites interruptus	\N	Archoplites	interruptus	2394479	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	62	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
111	smallmouth bass	Micropterus dolomieu	\N	Micropterus	dolomieu	5211250	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	628	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
112	spotted bass	Micropterus punctulatus	\N	Micropterus	punctulatus	5211245	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	629	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
113	striped bass	Morone saxatilis	\N	Morone	saxatilis	2394612	Chordata	Actinopterygii	Perciformes	Moronidae	perciformes	644	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
114	sunfish (unknown)	Lepomis sp.	\N	Lepomis	sp.	2394482	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	573	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
115	tilapia (unknown)	Tilapia sp.	\N	Tilapia	sp.	2370578	Chordata	Actinopterygii	Perciformes	Cichlidae	perciformes	1151	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
116	walleye	Sander vitreus	\N	Sander	vitreus	2382172	Chordata	Actinopterygii	Perciformes	Percidae	perciformes	1013	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
117	white bass	Morone chrysops	\N	Morone	chrysops	2394598	Chordata	Actinopterygii	Perciformes	Moronidae	perciformes	643	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
118	white crappie	Pomoxis annularis	\N	Pomoxis	annularis	2394534	Chordata	Actinopterygii	Perciformes	Centrarchidae	perciformes	861	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
119	yellow perch	Perca flavescens	\N	Perca	flavescens	2382004	Chordata	Actinopterygii	Perciformes	Percidae	perciformes	761	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
120	brook trout	Salvelinus fontinalis	\N	Salvelinus	fontinalis	9216340	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	1010	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
121	brown trout	Salmo trutta	\N	Salmo	trutta	8215487	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	1002	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
122	bull trout	Salvelinus confluentus	\N	Salvelinus	confluentus	2351244	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	1008	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
123	coho salmon	Oncorhynchus kisutch	\N	Oncorhynchus	kisutch	5204034	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	704	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
124	cutthroat trout	Oncorhynchus clarkii	\N	Oncorhynchus	clarkii	5711980	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	700	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
125	dolly varden	Salvelinus malma	\N	Salvelinus	malma	4284020	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	1011	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
126	lake trout	Salvelinus namaycush	\N	Salvelinus	namaycush	2351327	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	1012	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
127	rainbow trout	Oncorhynchus mykiss	\N	Oncorhynchus	mykiss	5204019	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	705	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
128	sockeye salmon	Oncorhynchus nerka	\N	Oncorhynchus	nerka	5204039	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	709	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
129	Lahontan cutthroat trout	Oncorhynchus clarkii henshawi	\N	Oncorhynchus	clarkii	5711984	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	702	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
130	inland redband trout	Oncorhynchus mykiss newberrii	\N	Oncorhynchus	mykiss	5204019	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	706	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
131	Yellowstone cutthroat trout	Oncorhynchus clarkii bouvieri	\N	Oncorhynchus	clarkii	5711990	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	701	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
132	bull trout  (Jarbidge River pop.)	Salvelinus confluentus pop. 4	\N	Salvelinus	confluentus	2351244	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	1009	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
133	Bonneville cutthroat trout	Oncorhynchus clarkii utah	\N	Oncorhynchus	clarkii	5711989	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	703	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
134	Warner Valley redband trout	Oncorhynchus mykiss pop. 4	\N	Oncorhynchus	mykiss	5204019	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	707	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
135	mountain whitefish	Prosopium williamsoni	\N	Prosopium	williamsoni	2351530	Chordata	Actinopterygii	Salmoniformes	Salmonidae	salmonid	874	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
136	black sculpin	Cottus baileyi	\N	Cottus	baileyi	2334175	Chordata	Actinopterygii	Scorpaeniformes	Cottidae	misc_fish	274	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
137	mottled sculpin	Cottus bairdi	\N	Cottus	bairdi	2334131	Chordata	Actinopterygii	Scorpaeniformes	Cottidae	misc_fish	275	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
138	Paiute sculpin	Cottus beldingii	\N	Cottus	beldingii	2334123	Chordata	Actinopterygii	Scorpaeniformes	Cottidae	misc_fish	276	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
139	sculpin (unknown)	Cottus sp.	\N	Cottus	sp.	2334066	Chordata	Actinopterygii	Scorpaeniformes	Cottidae	misc_fish	278	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
140	shorthead sculpin	Cottus confusus	\N	Cottus	confusus	2334156	Chordata	Actinopterygii	Scorpaeniformes	Cottidae	misc_fish	277	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
141	White River sculpin	Cottus sp. 3	\N	Cottus	sp.	2334066	Chordata	Actinopterygii	Scorpaeniformes	Cottidae	misc_fish	279	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
142	black bullhead	Ameiurus melas	\N	Ameiurus	melas	2340977	Chordata	Actinopterygii	Siluriformes	Ictaluridae	ostariophysian	21	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
143	brown bullhead	Ameiurus nebulosus	\N	Ameiurus	nebulosus	2340989	Chordata	Actinopterygii	Siluriformes	Ictaluridae	ostariophysian	23	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
144	bullhead (unknown)	Ameiurus sp.	\N	Ameiurus	sp.	2340965	Chordata	Actinopterygii	Siluriformes	Ictaluridae	ostariophysian	24	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
145	channel catfish	Ictalurus punctatus	\N	Ictalurus	punctatus	5202520	Chordata	Actinopterygii	Siluriformes	Ictaluridae	ostariophysian	509	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
146	hypostomus (unknown)	Hypostomus sp.	\N	Hypostomus	sp.	2339615	Chordata	Actinopterygii	Siluriformes	Loricariidae	ostariophysian	506	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
147	suckermouth catfish	Hypostomus plecostomus	\N	Hypostomus	plecostomus	5202178	Chordata	Actinopterygii	Siluriformes	Loricariidae	ostariophysian	505	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
148	white catfish	Ameiurus catus	\N	Ameiurus	catus	2340972	Chordata	Actinopterygii	Siluriformes	Ictaluridae	ostariophysian	20	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
149	yellow bullhead	Ameiurus natalis	\N	Ameiurus	natalis	2340969	Chordata	Actinopterygii	Siluriformes	Ictaluridae	ostariophysian	22	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
150	boreal toad	Anaxyrus boreas boreas	\N	Anaxyrus	boreas	7193814	Chordata	Amphibia	Anura	Bufonidae	amphibian	112	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
151	bullfrog	Lithobates catesbeianus	\N	Lithobates	catesbeianus	2427091	Chordata	Amphibia	Anura	Ranidae	amphibian	963	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
152	California toad	Anaxyrus boreas halophilus	\N	Anaxyrus	boreas	6169916	Chordata	Amphibia	Anura	Bufonidae	amphibian	113	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
153	Dixie Hot Springs toad	Anaxyrus sp. 1	\N	Anaxyrus	sp.	2422857	Chordata	Amphibia	Anura	Bufonidae	amphibian	119	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
154	Fish Lake Valley toad	Anaxyrus sp. 2	\N	Anaxyrus	sp.	2422857	Chordata	Amphibia	Anura	Bufonidae	amphibian	120	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
155	frog (unknown)	Rana sp.	\N	Rana	sp.	2422253	Chordata	Amphibia	Anura	Ranidae	amphibian	970	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
156	Great Basin spadefoot	Spea intermontana	\N	Spea	intermontana	2429791	Chordata	Amphibia	Anura	Scaphiopodidae	amphibian	1058	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
157	Las Vegas leopard frog	Rana fisheri	\N	Rana	fisheri	2427130	Chordata	Amphibia	Anura	Ranidae	amphibian	964	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
158	mountain yellow-legged frog	Rana muscosa	\N	Rana	muscosa	2426791	Chordata	Amphibia	Anura	Ranidae	amphibian	966	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
159	Pacific chorus frog	Pseudacris regilla	\N	Pseudacris	regilla	2428132	Chordata	Amphibia	Anura	Hylidae	amphibian	877	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
160	red-legged frog	Rana aurora	\N	Rana	aurora	2426808	Chordata	Amphibia	Anura	Ranidae	amphibian	962	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
161	red-spotted toad	Anaxyrus punctatus	\N	Anaxyrus	punctatus	2422890	Chordata	Amphibia	Anura	Bufonidae	amphibian	117	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
162	spotted frog	Rana pretiosa	\N	Rana	pretiosa	2426776	Chordata	Amphibia	Anura	Ranidae	amphibian	969	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
163	toad (unknown)	Anaxyrus sp.	\N	Anaxyrus	sp.	2422857	Chordata	Amphibia	Anura	Bufonidae	amphibian	118	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
164	western toad	Anaxyrus boreas	\N	Anaxyrus	boreas	2422924	Chordata	Amphibia	Anura	Bufonidae	amphibian	111	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
165	Woodhouses toad	Anaxyrus woodhousii	\N	Anaxyrus	woodhousii	2422865	Chordata	Amphibia	Anura	Bufonidae	amphibian	121	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
166	Sierra chorus frog	Pseudacris sierra	\N	Pseudacris	sierra	2428151	Chordata	Amphibia	Anura	Hylidae	amphibian	1292	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
167	Great Plains toad	Anaxyrus cognatus	\N	Anaxyrus	cognatus	2422882	Chordata	Amphibia	Anura	Bufonidae	amphibian	114	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
168	northern leopard frog	Lithobates pipiens	\N	Lithobates	pipiens	2427185	Chordata	Amphibia	Anura	Ranidae	amphibian	968	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
169	Arizona (southwestern) toad	Anaxyrus microscaphus	\N	Anaxyrus	microscaphus	2422911	Chordata	Amphibia	Anura	Bufonidae	amphibian	115	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
170	relict leopard frog	Lithobates onca	\N	Lithobates	onca	2427106	Chordata	Amphibia	Anura	Ranidae	amphibian	967	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
171	Amargosa toad	Anaxyrus nelsoni	\N	Anaxyrus	nelsoni	2422858	Chordata	Amphibia	Anura	Bufonidae	amphibian	116	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
172	Columbia spotted frog	Rana luteiventris pop. 3	\N	Rana	luteiventris	2426785	Chordata	Amphibia	Anura	Ranidae	amphibian	965	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
173	Sierra Nevada yellow-legged frog	Rana sierrae	\N	Rana	sierrae	2426754	Chordata	Amphibia	Anura	Ranidae	amphibian	1266	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
174	tiger salamander	Ambystoma tigrinum	\N	Ambystoma	tigrinum	2431993	Chordata	Amphibia	Caudata	Ambystomatidae	amphibian	19	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
175	black-shoulder kite	Elanus leucurus caerul	\N	Elanus	leucurus	2480367	Chordata	Aves	Accipitriformes	Accipitridae	raptor	368	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
176	broad-winged hawk	Buteo platypterus	\N	Buteo	platypterus	2480538	Chordata	Aves	Accipitriformes	Accipitridae	raptor	127	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
177	buteo (unknown)	Buteo sp.	\N	Buteo	sp.	2480517	Chordata	Aves	Accipitriformes	Accipitridae	raptor	129	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
178	California condor	Gymnogyps californianus	\N	Gymnogyps	californianus	2481920	Chordata	Aves	Accipitriformes	Cathartidae	raptor	482	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
179	common black-hawk	Buteogallus anthracinus	\N	Buteogallus	anthracinus	2480651	Chordata	Aves	Accipitriformes	Accipitridae	raptor	131	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
180	Coopers hawk	Accipiter cooperii	\N	Accipiter	cooperii	2480621	Chordata	Aves	Accipitriformes	Accipitridae	raptor	1	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
181	Harlans hawk	Buteo jamaicensis harlani	\N	Buteo	jamaicensis	6178054	Chordata	Aves	Accipitriformes	Accipitridae	raptor	124	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
182	Harriss hawk	Parabuteo unicinctus	\N	Parabuteo	unicinctus	2480410	Chordata	Aves	Accipitriformes	Accipitridae	raptor	746	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
183	Mississippi kite	Ictinia mississippiensis	\N	Ictinia	mississippiensis	2480719	Chordata	Aves	Accipitriformes	Accipitridae	raptor	517	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
184	northern harrier	Circus cyaneus	\N	Circus	cyaneus	2480487	Chordata	Aves	Accipitriformes	Accipitridae	raptor	241	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
185	osprey	Pandion haliaetus	\N	Pandion	haliaetus	2480726	Chordata	Aves	Accipitriformes	Pandionidae	raptor	745	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
186	red-shouldered hawk	Buteo lineatus	\N	Buteo	lineatus	2480529	Chordata	Aves	Accipitriformes	Accipitridae	raptor	126	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
187	red-tailed hawk	Buteo jamaicensis	\N	Buteo	jamaicensis	2480542	Chordata	Aves	Accipitriformes	Accipitridae	raptor	123	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
188	rough-legged hawk	Buteo lagopus	\N	Buteo	lagopus	2480524	Chordata	Aves	Accipitriformes	Accipitridae	raptor	125	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
189	sharp-shinned hawk	Accipiter striatus	\N	Accipiter	striatus	2480612	Chordata	Aves	Accipitriformes	Accipitridae	raptor	3	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
190	turkey vulture	Cathartes aura	\N	Cathartes	aura	2481930	Chordata	Aves	Accipitriformes	Cathartidae	raptor	181	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
191	white-tailed kite	Elanus leucurus	\N	Elanus	leucurus	2480367	Chordata	Aves	Accipitriformes	Accipitridae	raptor	367	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
192	zone-tailed hawk	Buteo albonotatus	\N	Buteo	albonotatus	2480541	Chordata	Aves	Accipitriformes	Accipitridae	raptor	122	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
193	accipiter (unknown)	Accipiter sp.	\N	Accipiter	sp.	2480577	Chordata	Aves	Accipitriformes	Accipitridae	raptor	1291	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
194	Swainsons hawk	Buteo swainsoni	\N	Buteo	swainsoni	2480562	Chordata	Aves	Accipitriformes	Accipitridae	raptor	130	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
195	golden eagle	Aquila chrysaetos	\N	Aquila	chrysaetos	2480506	Chordata	Aves	Accipitriformes	Accipitridae	raptor	60	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
196	ferruginous hawk	Buteo regalis	\N	Buteo	regalis	2480566	Chordata	Aves	Accipitriformes	Accipitridae	raptor	128	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
197	northern goshawk	Accipiter gentilis	\N	Accipiter	gentilis	2480589	Chordata	Aves	Accipitriformes	Accipitridae	raptor	2	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
198	bald eagle	Haliaeetus leucocephalus	\N	Haliaeetus	leucocephalus	2480446	Chordata	Aves	Accipitriformes	Accipitridae	raptor	487	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
199	American black duck	Anas rubripes	\N	Anas	rubripes	2498077	Chordata	Aves	Anseriformes	Anatidae	waterfowl	39	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
200	American wigeon	Anas americana	\N	Anas	americana	2498154	Chordata	Aves	Anseriformes	Anatidae	waterfowl	32	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
201	Barrows goldeneye	Bucephala islandica	\N	Bucephala	islandica	2498325	Chordata	Aves	Anseriformes	Anatidae	waterfowl	110	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
202	black scoter	Melanitta nigra	\N	Melanitta	nigra	2498247	Chordata	Aves	Anseriformes	Anatidae	waterfowl	610	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
203	black-bellied whistling-duck	Dendrocygna autumnalis	\N	Dendrocygna	autumnalis	2498393	Chordata	Aves	Anseriformes	Anatidae	waterfowl	319	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
204	blue-winged teal	Anas discors	\N	Anas	discors	2498073	Chordata	Aves	Anseriformes	Anatidae	waterfowl	36	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
205	brant	Branta bernicla	\N	Branta	bernicla	5232446	Chordata	Aves	Anseriformes	Anatidae	waterfowl	104	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
206	bufflehead	Bucephala albeola	\N	Bucephala	albeola	2498329	Chordata	Aves	Anseriformes	Anatidae	waterfowl	108	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
207	Canada goose	Branta canadensis	\N	Branta	canadensis	5232437	Chordata	Aves	Anseriformes	Anatidae	waterfowl	105	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
208	canvasback	Aythya valisineria	\N	Aythya	valisineria	2498256	Chordata	Aves	Anseriformes	Anatidae	waterfowl	83	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
209	cinnamon teal	Anas cyanoptera	\N	Anas	cyanoptera	2498139	Chordata	Aves	Anseriformes	Anatidae	waterfowl	35	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
210	common goldeneye	Bucephala clangula	\N	Bucephala	clangula	2498326	Chordata	Aves	Anseriformes	Anatidae	waterfowl	109	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
211	common merganser	Mergus merganser	\N	Mergus	merganser	2498370	Chordata	Aves	Anseriformes	Anatidae	waterfowl	619	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
212	Eurasian wigeon	Anas penelope	\N	Anas	penelope	2498111	Chordata	Aves	Anseriformes	Anatidae	waterfowl	37	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
213	fulvous whistling-duck	Dendrocygna bicolor	\N	Dendrocygna	bicolor	2498402	Chordata	Aves	Anseriformes	Anatidae	waterfowl	320	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
214	gadwall	Anas strepera	\N	Anas	strepera	2498151	Chordata	Aves	Anseriformes	Anatidae	waterfowl	41	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
215	graylag goose	Anser anser	\N	Anser	anser	2498036	Chordata	Aves	Anseriformes	Anatidae	waterfowl	47	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
216	greater scaup	Aythya marila	\N	Aythya	marila	2498265	Chordata	Aves	Anseriformes	Anatidae	waterfowl	82	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
217	greater white-fronted goose	Anser albifrons	\N	Anser	albifrons	2498017	Chordata	Aves	Anseriformes	Anatidae	waterfowl	46	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
218	green-winged teal	Anas crecca	\N	Anas	crecca	8214667	Chordata	Aves	Anseriformes	Anatidae	waterfowl	34	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
219	harlequin duck	Histrionicus histrionicus	\N	Histrionicus	histrionicus	2498224	Chordata	Aves	Anseriformes	Anatidae	waterfowl	500	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
220	hooded merganser	Lophodytes cucullatus	\N	Lophodytes	cucullatus	2498408	Chordata	Aves	Anseriformes	Anatidae	waterfowl	591	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
221	lesser scaup	Aythya affinis	\N	Aythya	affinis	2498257	Chordata	Aves	Anseriformes	Anatidae	waterfowl	79	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
222	long-tailed duck	Clangula hyemalis	\N	Clangula	hyemalis	2498273	Chordata	Aves	Anseriformes	Anatidae	waterfowl	244	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
223	mallard	Anas platyrhynchos	\N	Anas	platyrhynchos	2498132	Chordata	Aves	Anseriformes	Anatidae	waterfowl	38	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
224	Mandarin duck	Aix galericulata	\N	Aix	galericulata	2498388	Chordata	Aves	Anseriformes	Anatidae	waterfowl	15	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
225	northern pintail	Anas acuta	\N	Anas	acuta	2498112	Chordata	Aves	Anseriformes	Anatidae	waterfowl	31	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
226	northern shoveler	Anas clypeata	\N	Anas	clypeata	2498089	Chordata	Aves	Anseriformes	Anatidae	waterfowl	33	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
227	red-breasted merganser	Mergus serrator	\N	Mergus	serrator	2498375	Chordata	Aves	Anseriformes	Anatidae	waterfowl	620	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
228	redhead	Aythya americana	\N	Aythya	americana	2498263	Chordata	Aves	Anseriformes	Anatidae	waterfowl	80	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
229	ring-necked duck	Aythya collaris	\N	Aythya	collaris	2498264	Chordata	Aves	Anseriformes	Anatidae	waterfowl	81	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
230	Rosss goose	Chen rossii	\N	Chen	rossii	2498160	Chordata	Aves	Anseriformes	Anatidae	waterfowl	227	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
231	ruddy duck	Oxyura jamaicensis	\N	Oxyura	jamaicensis	2498305	Chordata	Aves	Anseriformes	Anatidae	waterfowl	741	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
232	ruddy shelduck	Tadorna tadorna	\N	Tadorna	tadorna	2498009	Chordata	Aves	Anseriformes	Anatidae	waterfowl	1124	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
233	snow goose	Chen caerulescens	\N	Chen	caerulescens	2498165	Chordata	Aves	Anseriformes	Anatidae	waterfowl	226	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
234	surf scoter	Melanitta perspicillata	\N	Melanitta	perspicillata	2498246	Chordata	Aves	Anseriformes	Anatidae	waterfowl	611	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
235	teal (unknown)	Anas sp.	\N	Anas	sp.	2498056	Chordata	Aves	Anseriformes	Anatidae	waterfowl	40	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
236	tundra swan	Cygnus columbianus	\N	Cygnus	columbianus	2498338	Chordata	Aves	Anseriformes	Anatidae	waterfowl	306	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
237	white-winged scoter	Melanitta fusca	\N	Melanitta	fusca	2498238	Chordata	Aves	Anseriformes	Anatidae	waterfowl	609	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
238	wood duck	Aix sponsa	\N	Aix	sponsa	2498387	Chordata	Aves	Anseriformes	Anatidae	waterfowl	16	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
239	trumpeter swan	Cygnus buccinator	\N	Cygnus	buccinator	2498345	Chordata	Aves	Anseriformes	Anatidae	waterfowl	305	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
240	Allens hummingbird	Selasphorus sasin	\N	Selasphorus	sasin	2476852	Chordata	Aves	Apodiformes	Trochilidae	hummingbird	1034	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
241	Annas hummingbird	Calypte anna	\N	Calypte	anna	2476674	Chordata	Aves	Apodiformes	Trochilidae	hummingbird	156	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
242	black swift	Cypseloides niger	\N	Cypseloides	niger	2477282	Chordata	Aves	Apodiformes	Apodidae	hummingbird	316	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
243	black-chinned hummingbird	Archilochus alexandri	\N	Archilochus	alexandri	5228513	Chordata	Aves	Apodiformes	Trochilidae	hummingbird	61	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
244	broad-billed hummingbird	Cynanthus latirostris	\N	Cynanthus	latirostris	5228542	Chordata	Aves	Apodiformes	Trochilidae	hummingbird	307	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
245	broad-tailed hummingbird	Selasphorus platycercus	\N	Selasphorus	platycercus	2476844	Chordata	Aves	Apodiformes	Trochilidae	hummingbird	1031	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
246	calliope hummingbird	Stellula calliope	\N	Stellula	calliope	2476137	Chordata	Aves	Apodiformes	Trochilidae	hummingbird	1092	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
247	chimney swift	Chaetura pelagica	\N	Chaetura	pelagica	4409023	Chordata	Aves	Apodiformes	Apodidae	hummingbird	215	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
248	Costas hummingbird	Calypte costae	\N	Calypte	costae	2476675	Chordata	Aves	Apodiformes	Trochilidae	hummingbird	157	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
249	magnificent hummingbird	Eugenes fulgens	\N	Eugenes	fulgens	2476108	Chordata	Aves	Apodiformes	Trochilidae	hummingbird	400	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
250	rufous hummingbird	Selasphorus rufus	\N	Selasphorus	rufus	2476855	Chordata	Aves	Apodiformes	Trochilidae	hummingbird	1033	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
251	Vauxs swift	Chaetura vauxi	\N	Chaetura	vauxi	5228612	Chordata	Aves	Apodiformes	Apodidae	hummingbird	216	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
252	white-throated swift	Aeronautes saxatalis	\N	Aeronautes	saxatalis	2477108	Chordata	Aves	Apodiformes	Apodidae	hummingbird	10	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
253	Chuck-wills-widow	Caprimulgus carolinensis	\N	Caprimulgus	carolinensis	2496909	Chordata	Aves	Caprimulgiformes	Caprimulgidae	owls	163	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
254	common nighthawk	Chordeiles minor	\N	Chordeiles	minor	2497035	Chordata	Aves	Caprimulgiformes	Caprimulgidae	owls	236	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
255	common poorwill	Phalaenoptilus nuttallii	\N	Phalaenoptilus	nuttallii	2497062	Chordata	Aves	Caprimulgiformes	Caprimulgidae	owls	780	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
256	lesser nighthawk	Chordeiles acutipennis	\N	Chordeiles	acutipennis	2497052	Chordata	Aves	Caprimulgiformes	Caprimulgidae	owls	235	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
257	nighthawk (unknown)	Chordeiles sp.	\N	Chordeiles	sp.	2497027	Chordata	Aves	Caprimulgiformes	Caprimulgidae	owls	237	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
258	whip-poor-will	Caprimulgus vociferus	\N	Caprimulgus	vociferus	2496870	Chordata	Aves	Caprimulgiformes	Caprimulgidae	owls	164	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
259	American avocet	Recurvirostra americana	\N	Recurvirostra	americana	2480258	Chordata	Aves	Charadriiformes	Recurvirostridae	shorebird	973	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
260	American golden-plover	Pluvialis dominica	\N	Pluvialis	dominica	2480328	Chordata	Aves	Charadriiformes	Charadriidae	shorebird	845	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
261	American herring gull	Larus smithsonianus	\N	Larus	smithsonianus	4848480	Chordata	Aves	Charadriiformes	Laridae	shorebird	551	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
262	ancient murrelet	Synthliboramphus antiquus	\N	Synthliboramphus	antiquus	2481350	Chordata	Aves	Charadriiformes	Alcidae	shorebird	1118	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
263	Arctic tern	Sterna paradisaea	\N	Sterna	paradisaea	5229230	Chordata	Aves	Charadriiformes	Laridae	shorebird	1100	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
264	Bairds sandpiper	Calidris bairdii	\N	Calidris	bairdii	2481770	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	142	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
265	black skimmer	Rynchops niger	\N	Rynchops	niger	2481209	Chordata	Aves	Charadriiformes	Laridae	shorebird	1001	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
266	black-bellied plover	Pluvialis squatarola	\N	Pluvialis	squatarola	2480327	Chordata	Aves	Charadriiformes	Charadriidae	shorebird	847	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
267	black-legged kittiwake	Rissa tridactyla	\N	Rissa	tridactyla	2481205	Chordata	Aves	Charadriiformes	Laridae	shorebird	1000	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
268	black-necked stilt	Himantopus mexicanus	\N	Himantopus	mexicanus	5229128	Chordata	Aves	Charadriiformes	Recurvirostridae	shorebird	498	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
269	Bonapartes gull	Larus philadelphia	\N	Larus	philadelphia	2481169	Chordata	Aves	Charadriiformes	Laridae	shorebird	549	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
270	buff-breasted sandpiper	Tryngites subruficollis	\N	Tryngites	subruficollis	2481773	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	1169	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
271	California gull	Larus californicus	\N	Larus	californicus	2481146	Chordata	Aves	Charadriiformes	Laridae	shorebird	541	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
272	Caspian tern	Sterna caspia	\N	Sterna	caspia	5229221	Chordata	Aves	Charadriiformes	Laridae	shorebird	1097	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
273	common snipe	Gallinago gallinago	\N	Gallinago	gallinago	2481819	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	433	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
274	common tern	Sterna hirundo	\N	Sterna	hirundo	5229227	Chordata	Aves	Charadriiformes	Laridae	shorebird	1099	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
275	curlew sandpiper	Calidris ferruginea	\N	Calidris	ferruginea	2481741	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	144	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
276	dunlin	Calidris alpina	\N	Calidris	alpina	2481759	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	141	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
277	Forsters tern	Sterna forsteri	\N	Sterna	forsteri	5229247	Chordata	Aves	Charadriiformes	Laridae	shorebird	1098	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
278	Franklins gull	Larus pipixcan	\N	Larus	pipixcan	2481177	Chordata	Aves	Charadriiformes	Laridae	shorebird	550	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
279	glaucous gull	Larus hyperboreus	\N	Larus	hyperboreus	2481127	Chordata	Aves	Charadriiformes	Laridae	shorebird	546	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
280	glaucous-winged gull	Larus glaucescens	\N	Larus	glaucescens	2481196	Chordata	Aves	Charadriiformes	Laridae	shorebird	544	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
281	greater yellowlegs	Tringa melanoleuca	\N	Tringa	melanoleuca	2481720	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	1162	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
282	Heermanns gull	Larus heermanni	\N	Larus	heermanni	2481130	Chordata	Aves	Charadriiformes	Laridae	shorebird	545	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
283	herring gull	Larus argentatus	\N	Larus	argentatus	2481139	Chordata	Aves	Charadriiformes	Laridae	shorebird	539	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
284	Hudsonian godwit	Limosa haemastica	\N	Limosa	haemastica	2481680	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	586	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
285	killdeer	Charadrius vociferus	\N	Charadrius	vociferus	2480320	Chordata	Aves	Charadriiformes	Charadriidae	shorebird	220	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
286	laughing gull	Larus atricilla	\N	Larus	atricilla	2481192	Chordata	Aves	Charadriiformes	Laridae	shorebird	540	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
287	least sandpiper	Calidris minutilla	\N	Calidris	minutilla	2481745	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	148	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
288	least tern	Sterna antillarum	\N	Sterna	antillarum	5229235	Chordata	Aves	Charadriiformes	Laridae	shorebird	1096	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
289	lesser yellowlegs	Tringa flavipes	\N	Tringa	flavipes	2481721	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	1161	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
290	long-billed dowitcher	Limnodromus scolopaceus	\N	Limnodromus	scolopaceus	2481670	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	584	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
291	long-tailed jaeger	Stercorarius longicaudus	\N	Stercorarius	longicaudus	2481613	Chordata	Aves	Charadriiformes	Stercorariidae	shorebird	1093	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
292	marbled godwit	Limosa fedoa	\N	Limosa	fedoa	2481684	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	585	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
293	mew gull	Larus canus	\N	Larus	canus	7982160	Chordata	Aves	Charadriiformes	Laridae	shorebird	542	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
294	mountain plover	Charadrius montanus	\N	Charadrius	montanus	2480292	Chordata	Aves	Charadriiformes	Charadriidae	shorebird	218	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
295	Pacific golden-plover	Pluvialis fulva	\N	Pluvialis	fulva	2480331	Chordata	Aves	Charadriiformes	Charadriidae	shorebird	846	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
296	parasitic jaeger	Stercorarius parasiticus	\N	Stercorarius	parasiticus	2481621	Chordata	Aves	Charadriiformes	Stercorariidae	shorebird	1094	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
297	pectoral sandpiper	Calidris melanotos	\N	Calidris	melanotos	2481744	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	147	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
298	pomarine jaeger	Stercorarius pomarinus	\N	Stercorarius	pomarinus	2481609	Chordata	Aves	Charadriiformes	Stercorariidae	shorebird	1095	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
299	red knot	Calidris canutus	\N	Calidris	canutus	2481765	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	143	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
300	red phalarope	Phalaropus fulicaria	\N	Phalaropus	fulicaria	5229390	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	781	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
301	red-legged kittiwake	Rissa brevirostris	\N	Rissa	brevirostris	2481204	Chordata	Aves	Charadriiformes	Laridae	shorebird	999	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
302	red-necked phalarope	Phalaropus lobatus	\N	Phalaropus	lobatus	5739290	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	782	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
303	red-necked stint	Calidris ruficollis	\N	Calidris	ruficollis	2481746	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	150	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
304	ring-billed gull	Larus delawarensis	\N	Larus	delawarensis	2481134	Chordata	Aves	Charadriiformes	Laridae	shorebird	543	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
305	ruddy turnstone	Arenaria interpres	\N	Arenaria	interpres	2481776	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	65	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
306	ruff	Philomachus pugnax	\N	Philomachus	pugnax	5229387	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	787	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
307	Sabines gull	Xema sabini	\N	Xema	sabini	2481221	Chordata	Aves	Charadriiformes	Laridae	shorebird	1240	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
308	sanderling	Calidris alba	\N	Calidris	alba	2481748	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	140	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
309	semipalmated plover	Charadrius semipalmatus	\N	Charadrius	semipalmatus	2480295	Chordata	Aves	Charadriiformes	Charadriidae	shorebird	219	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
310	semipalmated sandpiper	Calidris pusilla	\N	Calidris	pusilla	2481764	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	149	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
311	sharp-tailed sandpiper	Calidris acuminata	\N	Calidris	acuminata	2481769	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	139	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
312	short-billed dowitcher	Limnodromus griseus	\N	Limnodromus	griseus	2481672	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	583	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
313	solitary sandpiper	Tringa solitaria	\N	Tringa	solitaria	2481710	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	1164	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
314	spotted redshank	Tringa erythropus	\N	Tringa	erythropus	2481725	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	1160	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
315	spotted sandpiper	Actitis macularia	\N	Actitis	macularia	2481798	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	6	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
316	stilt sandpiper	Calidris himantopus	\N	Calidris	himantopus	5229400	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	145	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
317	Thayers gull	Larus thayeri	\N	Larus	thayeri	2481159	Chordata	Aves	Charadriiformes	Laridae	shorebird	552	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
318	upland sandpiper	Bartramia longicauda	\N	Bartramia	longicauda	2481705	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	86	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
319	western gull	Larus occidentalis	\N	Larus	occidentalis	2481149	Chordata	Aves	Charadriiformes	Laridae	shorebird	548	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
320	western sandpiper	Calidris mauri	\N	Calidris	mauri	2481742	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	146	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
321	whimbrel	Numenius phaeopus	\N	Numenius	phaeopus	2481784	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	692	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
322	willet	Tringa semipalmata	\N	Tringa	semipalmata	5789298	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	1163	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
323	Wilsons phalarope	Phalaropus tricolor	\N	Phalaropus	tricolor	5229389	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	783	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
324	Wilsons snipe	Gallinago delicata	\N	Gallinago	delicata	2481817	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	432	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
325	yellow-footed gull	Larus livens	\N	Larus	livens	2481154	Chordata	Aves	Charadriiformes	Laridae	shorebird	547	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
326	phalarope (unknown)	Phalaropus sp.	\N	Phalaropus	sp.	5229388	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	1298	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
327	western snowy plover	Charadrius alexandrinus nivosus	\N	Charadrius	alexandrinus	6178288	Chordata	Aves	Charadriiformes	Charadriidae	shorebird	217	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
328	long-billed curlew	Numenius americanus	\N	Numenius	americanus	2481794	Chordata	Aves	Charadriiformes	Scolopacidae	shorebird	691	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
329	black tern	Chlidonias niger	\N	Chlidonias	niger	2481119	Chordata	Aves	Charadriiformes	Laridae	shorebird	232	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
330	Marabou stork	Leptoptilus crumenifer	\N	Leptoptilus	crumenifer	6101215	Chordata	Aves	Ciconiiformes	Ciconiidae	shorebird	574	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
331	wood stork	Mycteria americana	\N	Mycteria	americana	2481937	Chordata	Aves	Ciconiiformes	Ciconiidae	shorebird	652	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
342	belted kingfisher	Ceryle alcyon	\N	Ceryle	alcyon	2475474	Chordata	Aves	Coraciiformes	Alcedinidae	pico	209	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
343	kookaburra	Dacelo novaeguineae	\N	Dacelo	novaeguineae	2475648	Chordata	Aves	Coraciiformes	Alcedinidae	pico	317	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
347	American kestrel	Falco sparverius	\N	Falco	sparverius	2481022	Chordata	Aves	Falconiformes	Falconidae	raptor	410	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
348	falcon (unknown)	Falco sp.	\N	Falco	sp.	2480996	Chordata	Aves	Falconiformes	Falconidae	raptor	409	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
349	gyrfalcon	Falco rusticolus	\N	Falco	rusticolus	8069880	Chordata	Aves	Falconiformes	Falconidae	raptor	408	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
350	merlin	Falco columbarius	\N	Falco	columbarius	8137614	Chordata	Aves	Falconiformes	Falconidae	raptor	405	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
351	prairie falcon	Falco mexicanus	\N	Falco	mexicanus	2481000	Chordata	Aves	Falconiformes	Falconidae	raptor	406	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
352	peregrine falcon	Falco peregrinus	\N	Falco	peregrinus	2481047	Chordata	Aves	Falconiformes	Falconidae	raptor	407	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
334	dove (unknown)	Zenaida sp.	\N	Zenaida	sp.	2495346	Chordata	Aves	Columbiformes	Columbidae	upland	1247	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
368	Artic loon	Gavia arctica	\N	Gavia	arctica	2481959	Chordata	Aves	Gaviiformes	Gaviidae	waterfowl	438	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
369	loon (unknown)	Gavia sp.	\N	Gavia	sp.	2481954	Chordata	Aves	Gaviiformes	Gaviidae	waterfowl	441	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
370	Pacific Loon	Gavia pacifica	\N	Gavia	pacifica	2481955	Chordata	Aves	Gaviiformes	Gaviidae	waterfowl	440	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
371	red-throated loon	Gavia stellata	\N	Gavia	stellata	2481958	Chordata	Aves	Gaviiformes	Gaviidae	waterfowl	442	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
372	yellow-billed loon	Gavia adamsii	\N	Gavia	adamsii	2481957	Chordata	Aves	Gaviiformes	Gaviidae	waterfowl	437	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
373	common loon	Gavia immer	\N	Gavia	immer	2481962	Chordata	Aves	Gaviiformes	Gaviidae	waterfowl	439	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
374	American coot	Fulica americana	\N	Fulica	americana	2474393	Chordata	Aves	Gruiformes	Rallidae	shorebird	431	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
375	common moorhen	Gallinula chloropus	\N	Gallinula	chloropus	5228199	Chordata	Aves	Gruiformes	Rallidae	shorebird	434	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
376	purple gallinule	Porphyrio martinica	\N	Porphyrio	martinica	5228136	Chordata	Aves	Gruiformes	Rallidae	shorebird	865	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
377	sora	Porzana carolina	\N	Porzana	carolina	2474639	Chordata	Aves	Gruiformes	Rallidae	shorebird	866	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
378	Virginia rail	Rallus limicola	\N	Rallus	limicola	2474825	Chordata	Aves	Gruiformes	Rallidae	shorebird	960	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
379	whooping crane	Grus americana	\N	Grus	americana	2474941	Chordata	Aves	Gruiformes	Gruidae	shorebird	477	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
380	yellow rail	Coturnicops noveboracensis	\N	Coturnicops	noveboracensis	5228183	Chordata	Aves	Gruiformes	Rallidae	shorebird	280	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
381	greater sandhill crane	Grus canadensis tabida	\N	Grus	canadensis	6176784	Chordata	Aves	Gruiformes	Gruidae	shorebird	479	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
382	Ridgeways rail	Rallus obsoletus	\N	Rallus	obsoletus	7449585	Chordata	Aves	Gruiformes	Rallidae	shorebird	961	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
383	Aberts towhee	Pipilo aberti	\N	Pipilo	aberti	2491284	Chordata	Aves	Passeriformes	Emberizidae	passerine	814	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
384	American crow	Corvus brachyrhynchos	\N	Corvus	brachyrhynchos	2482507	Chordata	Aves	Passeriformes	Corvidae	passerine	268	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
385	American dipper	Cinclus mexicanus	\N	Cinclus	mexicanus	5231777	Chordata	Aves	Passeriformes	Cinclidae	passerine	240	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
386	American goldfinch	Spinus tristis	\N	Spinus	tristis	5231640	Chordata	Aves	Passeriformes	Fringillidae	passerine	174	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
387	American pipit	Anthus rubescens	\N	Anthus	rubescens	2490263	Chordata	Aves	Passeriformes	Motacillidae	passerine	49	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
388	American redstart	Setophaga ruticilla	\N	Setophaga	ruticilla	2489985	Chordata	Aves	Passeriformes	Parulidae	passerine	1035	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
389	American robin	Turdus migratorius	\N	Turdus	migratorius	2490765	Chordata	Aves	Passeriformes	Turdidae	passerine	1178	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
390	American tree sparrow	Spizella arborea	\N	Spizella	arborea	2492116	Chordata	Aves	Passeriformes	Emberizidae	passerine	1078	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
391	ash-throated flycatcher	Myiarchus cinerascens	\N	Myiarchus	cinerascens	2483600	Chordata	Aves	Passeriformes	Tyrannidae	passerine	653	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
392	Audubons warbler	Dendroica coronata auduboni	\N	Dendroica	coronata	6172947	Chordata	Aves	Passeriformes	Parulidae	passerine	325	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
393	Baltimore oriole	Icterus galbula	\N	Icterus	galbula	2484340	Chordata	Aves	Passeriformes	Icteridae	passerine	513	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
394	bank swallow	Riparia riparia	\N	Riparia	riparia	2489160	Chordata	Aves	Passeriformes	Hirundinidae	passerine	998	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
395	barn swallow	Hirundo rustica	\N	Hirundo	rustica	5230791	Chordata	Aves	Passeriformes	Hirundinidae	passerine	499	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
396	bay-breasted warbler	Dendroica castanea	\N	Dendroica	castanea	2489903	Chordata	Aves	Passeriformes	Parulidae	passerine	322	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
397	Bells vireo	Vireo bellii	\N	Vireo	bellii	2487441	Chordata	Aves	Passeriformes	Vireonidae	passerine	1214	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
398	Bewicks wren	Thryomanes bewickii	\N	Thryomanes	bewickii	2493843	Chordata	Aves	Passeriformes	Troglodytidae	passerine	1150	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
399	black phoebe	Sayornis nigricans	\N	Sayornis	nigricans	2483612	Chordata	Aves	Passeriformes	Tyrannidae	passerine	1015	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
400	black-and-white warbler	Mniotilta varia	\N	Mniotilta	varia	2489613	Chordata	Aves	Passeriformes	Parulidae	passerine	638	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
401	black-billed magpie	Pica hudsonia	\N	Pica	hudsonia	5229487	Chordata	Aves	Passeriformes	Corvidae	passerine	802	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
402	Blackburnian warbler	Dendroica fusca	\N	Dendroica	fusca	2489913	Chordata	Aves	Passeriformes	Parulidae	passerine	329	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
403	black-capped chickadee	Poecile atricapilla	\N	Poecile	atricapilla	2487805	Chordata	Aves	Passeriformes	Paridae	passerine	852	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
404	black-chinned sparrow	Spizella atrogularis	\N	Spizella	atrogularis	2492104	Chordata	Aves	Passeriformes	Emberizidae	passerine	1079	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
405	black-headed grosbeak	Pheucticus melanocephalus	\N	Pheucticus	melanocephalus	2490487	Chordata	Aves	Passeriformes	Cardinalidae	passerine	786	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
406	blackpoll warbler	Dendroica striata	\N	Dendroica	striata	2489888	Chordata	Aves	Passeriformes	Parulidae	passerine	338	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
407	black-tailed gnatcatcher	Polioptila melanura	\N	Polioptila	melanura	2487586	Chordata	Aves	Passeriformes	Polioptilidae	passerine	860	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
408	black-throated blue warbler	Dendroica caerulescens	\N	Dendroica	caerulescens	2489915	Chordata	Aves	Passeriformes	Parulidae	passerine	321	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
409	black-throated gray warbler	Dendroica nigrescens	\N	Dendroica	nigrescens	2489929	Chordata	Aves	Passeriformes	Parulidae	passerine	332	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
410	black-throated green warbler	Dendroica virens	\N	Dendroica	virens	2489976	Chordata	Aves	Passeriformes	Parulidae	passerine	341	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
411	black-throated sparrow	Amphispiza bilineata	\N	Amphispiza	bilineata	2491757	Chordata	Aves	Passeriformes	Emberizidae	passerine	30	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
412	blue grosbeak	Passerina caerulea	\N	Passerina	caerulea	5230862	Chordata	Aves	Passeriformes	Cardinalidae	passerine	753	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
413	blue jay	Cyanocitta cristata	\N	Cyanocitta	cristata	2482593	Chordata	Aves	Passeriformes	Corvidae	passerine	303	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
414	blue-gray gnatcatcher	Polioptila caerulea	\N	Polioptila	caerulea	2487596	Chordata	Aves	Passeriformes	Polioptilidae	passerine	859	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
415	blue-headed vireo	Vireo solitarius	\N	Vireo	solitarius	2487456	Chordata	Aves	Passeriformes	Vireonidae	passerine	1224	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
416	blue-winged warbler	Vermivora cyanoptera	\N	Vermivora	cyanoptera	6093846	Chordata	Aves	Passeriformes	Parulidae	passerine	1206	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
417	boat-tailed grackle	Quiscalus major	\N	Quiscalus	major	2484133	Chordata	Aves	Passeriformes	Icteridae	passerine	955	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
418	Bohemian waxwing	Bombycilla garrulus	\N	Bombycilla	garrulus	2484605	Chordata	Aves	Passeriformes	Bombycillidae	passerine	93	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
419	brambling	Fringilla montifringilla	\N	Fringilla	montifringilla	2494441	Chordata	Aves	Passeriformes	Fringillidae	passerine	429	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
420	Brewers blackbird	Euphagus cyanocephalus	\N	Euphagus	cyanocephalus	2484183	Chordata	Aves	Passeriformes	Icteridae	passerine	404	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
421	bronzed cowbird	Molothrus aeneus	\N	Molothrus	aeneus	2484404	Chordata	Aves	Passeriformes	Icteridae	passerine	641	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
422	brown creeper	Certhia americana	\N	Certhia	americana	2487613	Chordata	Aves	Passeriformes	Certhiidae	passerine	206	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
423	brown thrasher	Toxostoma rufum	\N	Toxostoma	rufum	5231694	Chordata	Aves	Passeriformes	Mimidae	passerine	1157	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
424	brown-crested flycatcher	Myiarchus tyrannulus	\N	Myiarchus	tyrannulus	2483589	Chordata	Aves	Passeriformes	Tyrannidae	passerine	655	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
425	brown-headed cowbird	Molothrus ater	\N	Molothrus	ater	2484391	Chordata	Aves	Passeriformes	Icteridae	passerine	642	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
426	Bullocks oriole	Icterus bullockii	\N	Icterus	bullockii	5229864	Chordata	Aves	Passeriformes	Icteridae	passerine	511	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
427	bushtit	Psaltriparus minimus	\N	Psaltriparus	minimus	2494988	Chordata	Aves	Passeriformes	Aegithalidae	passerine	876	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
428	cactus wren	Campylorhynchus brunneicapillus	\N	Campylorhynchus	brunneicapillus	5231474	Chordata	Aves	Passeriformes	Troglodytidae	passerine	159	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
429	Canada warbler	Wilsonia canadensis	\N	Wilsonia	canadensis	4408918	Chordata	Aves	Passeriformes	Parulidae	passerine	1234	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
430	canyon towhee	Pipilo fuscus	\N	Pipilo	fuscus	2491244	Chordata	Aves	Passeriformes	Emberizidae	passerine	817	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
431	canyon wren	Catherpes mexicanus	\N	Catherpes	mexicanus	5231430	Chordata	Aves	Passeriformes	Troglodytidae	passerine	187	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
432	Cape May warbler	Dendroica tigrina	\N	Dendroica	tigrina	2489895	Chordata	Aves	Passeriformes	Parulidae	passerine	339	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
433	Cassins finch	Carpodacus cassinii	\N	Carpodacus	cassinii	2494506	Chordata	Aves	Passeriformes	Fringillidae	passerine	176	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
434	Cassins kingbird	Tyrannus vociferans	\N	Tyrannus	vociferans	5229681	Chordata	Aves	Passeriformes	Tyrannidae	passerine	1187	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
435	Cassins sparrow	Aimophila cassinii	\N	Aimophila	cassinii	2491950	Chordata	Aves	Passeriformes	Emberizidae	passerine	13	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
436	Cassins vireo	Vireo cassinii	\N	Vireo	cassinii	2487407	Chordata	Aves	Passeriformes	Vireonidae	passerine	1216	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
437	cedar waxwing	Bombycilla cedrorum	\N	Bombycilla	cedrorum	2484609	Chordata	Aves	Passeriformes	Bombycillidae	passerine	92	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
438	cerulean warbler	Dendroica cerulea	\N	Dendroica	cerulea	2489982	Chordata	Aves	Passeriformes	Parulidae	passerine	323	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
439	chestnut-collared longspur	Calcarius ornatus	\N	Calcarius	ornatus	2491677	Chordata	Aves	Passeriformes	Calcariidae	passerine	137	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
440	chestnut-sided warbler	Dendroica pensylvanica	\N	Dendroica	pensylvanica	2489923	Chordata	Aves	Passeriformes	Parulidae	passerine	335	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
441	chickadee (unknown)	Poecile sp.	\N	Poecile	sp.	2487782	Chordata	Aves	Passeriformes	Paridae	passerine	854	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
442	chipping sparrow	Spizella passerina	\N	Spizella	passerina	2492109	Chordata	Aves	Passeriformes	Emberizidae	passerine	1082	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
443	Clarks nutcracker	Nucifraga columbiana	\N	Nucifraga	columbiana	2482614	Chordata	Aves	Passeriformes	Corvidae	passerine	690	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
444	clay-colored sparrow	Spizella pallida	\N	Spizella	pallida	2492101	Chordata	Aves	Passeriformes	Emberizidae	passerine	1081	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
445	cliff swallow	Petrochelidon pyrrhonota	\N	Petrochelidon	pyrrhonota	2489169	Chordata	Aves	Passeriformes	Hirundinidae	passerine	776	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
446	common grackle	Quiscalus quiscula	\N	Quiscalus	quiscula	2484155	Chordata	Aves	Passeriformes	Icteridae	passerine	957	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
447	common raven	Corvus corax	\N	Corvus	corax	2482492	Chordata	Aves	Passeriformes	Corvidae	passerine	269	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
448	common redpoll	Carduelis flammea	\N	Carduelis	flammea	2494622	Chordata	Aves	Passeriformes	Fringillidae	passerine	169	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
449	common yellowthroat	Geothlypis trichas	\N	Geothlypis	trichas	2489670	Chordata	Aves	Passeriformes	Parulidae	passerine	444	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
450	Connecticut warbler	Oporornis agilis	\N	Oporornis	agilis	2489611	Chordata	Aves	Passeriformes	Parulidae	passerine	714	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
451	cordilleran flycatcher	Empidonax occidentalis	\N	Empidonax	occidentalis	2482805	Chordata	Aves	Passeriformes	Tyrannidae	passerine	382	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
452	curve-billed thrasher	Toxostoma curvirostre	\N	Toxostoma	curvirostre	5231688	Chordata	Aves	Passeriformes	Mimidae	passerine	1155	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
453	dark-eyed junco	Junco hyemalis	\N	Junco	hyemalis	2492010	Chordata	Aves	Passeriformes	Emberizidae	passerine	524	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
455	dusky flycatcher	Empidonax oberholseri	\N	Empidonax	oberholseri	2482803	Chordata	Aves	Passeriformes	Tyrannidae	passerine	381	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
456	dusky-capped flycatcher	Myiarchus tuberculifer	\N	Myiarchus	tuberculifer	2483531	Chordata	Aves	Passeriformes	Tyrannidae	passerine	654	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
457	eastern kingbird	Tyrannus tyrannus	\N	Tyrannus	tyrannus	5229688	Chordata	Aves	Passeriformes	Tyrannidae	passerine	1185	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
458	eastern phoebe	Sayornis phoebe	\N	Sayornis	phoebe	2483606	Chordata	Aves	Passeriformes	Tyrannidae	passerine	1016	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
459	eastern (rufous-sided) towhee	Pipilo erythrophthalmus	\N	Pipilo	erythrophthalmus	2491205	Chordata	Aves	Passeriformes	Emberizidae	passerine	816	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
460	European starling	Sturnus vulgaris	\N	Sturnus	vulgaris	2489105	Chordata	Aves	Passeriformes	Sturnidae	passerine	1105	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
461	evening grosbeak	Coccothraustes vespertinus	\N	Coccothraustes	vespertinus	2494321	Chordata	Aves	Passeriformes	Fringillidae	passerine	245	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
462	field sparrow	Spizella pusilla	\N	Spizella	pusilla	2492096	Chordata	Aves	Passeriformes	Emberizidae	passerine	1083	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
463	finch (unknown)	Carpodacus sp.	\N	Carpodacus	sp.	2494445	Chordata	Aves	Passeriformes	Fringillidae	passerine	179	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
464	flycatcher (unknown)	Empidonax sp.	\N	Empidonax	sp.	2482766	Chordata	Aves	Passeriformes	Tyrannidae	passerine	383	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
465	fox sparrow	Passerella iliaca	\N	Passerella	iliaca	2491872	Chordata	Aves	Passeriformes	Emberizidae	passerine	751	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
466	golden-crowned kinglet	Regulus satrapa	\N	Regulus	satrapa	2484591	Chordata	Aves	Passeriformes	Regulidae	passerine	975	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
467	golden-crowned sparrow	Zonotrichia atricapilla	\N	Zonotrichia	atricapilla	5231138	Chordata	Aves	Passeriformes	Emberizidae	passerine	1250	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
468	golden-winged warbler	Vermivora chrysoptera	\N	Vermivora	chrysoptera	5230811	Chordata	Aves	Passeriformes	Parulidae	passerine	1203	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
469	Graces warbler	Dendroica graciae	\N	Dendroica	graciae	2489918	Chordata	Aves	Passeriformes	Parulidae	passerine	330	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
470	grasshopper sparrow	Ammodramus savannarum	\N	Ammodramus	savannarum	2491123	Chordata	Aves	Passeriformes	Emberizidae	passerine	27	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
471	gray catbird	Dumetella carolinensis	\N	Dumetella	carolinensis	2494936	Chordata	Aves	Passeriformes	Mimidae	passerine	361	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
472	gray flycatcher	Empidonax wrightii	\N	Empidonax	wrightii	2482767	Chordata	Aves	Passeriformes	Tyrannidae	passerine	388	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
473	gray jay	Perisoreus canadensis	\N	Perisoreus	canadensis	2482436	Chordata	Aves	Passeriformes	Corvidae	passerine	764	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
474	gray-cheeked thrush	Catharus minimus	\N	Catharus	minimus	2490826	Chordata	Aves	Passeriformes	Turdidae	passerine	184	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
475	gray-headed junco	Junco hyemalis caniceps	\N	Junco	hyemalis	6173532	Chordata	Aves	Passeriformes	Emberizidae	passerine	525	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
476	greater pewee	Contopus pertinax	\N	Contopus	pertinax	5229730	Chordata	Aves	Passeriformes	Tyrannidae	passerine	265	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
477	great-tailed grackle	Quiscalus mexicanus	\N	Quiscalus	mexicanus	2484142	Chordata	Aves	Passeriformes	Icteridae	passerine	956	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
478	green-tailed towhee	Pipilo chlorurus	\N	Pipilo	chlorurus	2491276	Chordata	Aves	Passeriformes	Emberizidae	passerine	815	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
479	Hammonds flycatcher	Empidonax hammondii	\N	Empidonax	hammondii	2482800	Chordata	Aves	Passeriformes	Tyrannidae	passerine	379	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
480	Harriss sparrow	Zonotrichia querula	\N	Zonotrichia	querula	5231139	Chordata	Aves	Passeriformes	Emberizidae	passerine	1252	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
481	hepatic tanager	Piranga flava	\N	Piranga	flava	2488498	Chordata	Aves	Passeriformes	Cardinalidae	passerine	820	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
482	hermit thrush	Catharus guttatus	\N	Catharus	guttatus	2490810	Chordata	Aves	Passeriformes	Turdidae	passerine	183	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
483	hermit warbler	Dendroica occidentalis	\N	Dendroica	occidentalis	2489887	Chordata	Aves	Passeriformes	Parulidae	passerine	333	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
484	hoary redpoll	Carduelis hornemanni	\N	Carduelis	hornemanni	2494732	Chordata	Aves	Passeriformes	Fringillidae	passerine	170	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
485	hooded oriole	Icterus cucullatus	\N	Icterus	cucullatus	5229882	Chordata	Aves	Passeriformes	Icteridae	passerine	512	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
486	hooded warbler	Wilsonia citrina	\N	Wilsonia	citrina	4408922	Chordata	Aves	Passeriformes	Parulidae	passerine	1235	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
487	horned lark	Eremophila alpestris	\N	Eremophila	alpestris	5230962	Chordata	Aves	Passeriformes	Alaudidae	passerine	394	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
488	house finch	Carpodacus mexicanus	\N	Carpodacus	mexicanus	2494446	Chordata	Aves	Passeriformes	Fringillidae	passerine	177	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
489	house sparrow	Passer domesticus	\N	Passer	domesticus	5231190	Chordata	Aves	Passeriformes	Passeridae	passerine	749	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
490	house wren	Troglodytes aedon	\N	Troglodytes	aedon	5231459	Chordata	Aves	Passeriformes	Troglodytidae	passerine	1166	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
491	Huttons vireo	Vireo huttoni	\N	Vireo	huttoni	2487420	Chordata	Aves	Passeriformes	Vireonidae	passerine	1220	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
492	indigo bunting	Passerina cyanea	\N	Passerina	cyanea	2490327	Chordata	Aves	Passeriformes	Cardinalidae	passerine	755	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
493	junco (unknown)	Junco sp.	\N	Junco	sp.	2492009	Chordata	Aves	Passeriformes	Emberizidae	passerine	528	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
494	Kentucky warbler	Oporornis formosus	\N	Oporornis	formosus	2489606	Chordata	Aves	Passeriformes	Parulidae	passerine	715	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
495	Lapland longspur	Calcarius lapponicus	\N	Calcarius	lapponicus	2491678	Chordata	Aves	Passeriformes	Calcariidae	passerine	135	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
496	lark bunting	Calamospiza melanocorys	\N	Calamospiza	melanocorys	2491893	Chordata	Aves	Passeriformes	Emberizidae	passerine	134	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
497	lark sparrow	Chondestes grammacus	\N	Chondestes	grammacus	2491651	Chordata	Aves	Passeriformes	Emberizidae	passerine	234	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
498	Lawrences goldfinch	Spinus lawrencei	\N	Spinus	lawrencei	5231643	Chordata	Aves	Passeriformes	Fringillidae	passerine	171	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
499	lazuli bunting	Passerina amoena	\N	Passerina	amoena	5230861	Chordata	Aves	Passeriformes	Cardinalidae	passerine	752	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
500	Le Contes sparrow	Ammodramus leconteii	\N	Ammodramus	leconteii	2491080	Chordata	Aves	Passeriformes	Emberizidae	passerine	26	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
501	least flycatcher	Empidonax minimus	\N	Empidonax	minimus	2482791	Chordata	Aves	Passeriformes	Tyrannidae	passerine	380	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
502	lesser goldfinch	Spinus psaltria	\N	Spinus	psaltria	5231647	Chordata	Aves	Passeriformes	Fringillidae	passerine	173	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
503	Lincolns sparrow	Melospiza lincolnii	\N	Melospiza	lincolnii	2492192	Chordata	Aves	Passeriformes	Emberizidae	passerine	616	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
504	MacGillivrays warbler	Oporornis tolmiei	\N	Oporornis	tolmiei	2489608	Chordata	Aves	Passeriformes	Parulidae	passerine	717	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
505	magnolia warbler	Dendroica magnolia	\N	Dendroica	magnolia	2489914	Chordata	Aves	Passeriformes	Parulidae	passerine	331	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
506	marsh wren	Cistothorus palustris	\N	Cistothorus	palustris	2493863	Chordata	Aves	Passeriformes	Troglodytidae	passerine	242	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
507	McCowns longspur	Calcarius mccownii	\N	Calcarius	mccownii	2491685	Chordata	Aves	Passeriformes	Calcariidae	passerine	136	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
508	Mexican jay	Aphelocoma ultramarina	\N	Aphelocoma	ultramarina	2482395	Chordata	Aves	Passeriformes	Corvidae	passerine	57	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
509	mountain bluebird	Sialia currucoides	\N	Sialia	currucoides	2490935	Chordata	Aves	Passeriformes	Turdidae	passerine	1037	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
510	mountain chickadee	Poecile gambeli	\N	Poecile	gambeli	2487825	Chordata	Aves	Passeriformes	Paridae	passerine	853	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
511	mourning warbler	Oporornis philadelphia	\N	Oporornis	philadelphia	2489607	Chordata	Aves	Passeriformes	Parulidae	passerine	716	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
512	Myrtles warbler	Dendroica coronata coronata	\N	Dendroica	coronata	7191634	Chordata	Aves	Passeriformes	Parulidae	passerine	326	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
513	Nashville warbler	Oreothlypis ruficapilla	\N	Oreothlypis	ruficapilla	6093694	Chordata	Aves	Passeriformes	Parulidae	passerine	1207	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
514	northern beardless-tyrannulet	Camptostoma imberbe	\N	Camptostoma	imberbe	2483507	Chordata	Aves	Passeriformes	Tyrannidae	passerine	158	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
515	northern cardinal	Cardinalis cardinalis	\N	Cardinalis	cardinalis	2490384	Chordata	Aves	Passeriformes	Cardinalidae	passerine	167	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
516	northern mockingbird	Mimus polyglottos	\N	Mimus	polyglottos	5231677	Chordata	Aves	Passeriformes	Mimidae	passerine	636	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
517	northern parula	Parula americana	\N	Parula	americana	2489730	Chordata	Aves	Passeriformes	Parulidae	passerine	748	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
518	northern rough-winged swallow	Stelgidopteryx serripennis	\N	Stelgidopteryx	serripennis	2489202	Chordata	Aves	Passeriformes	Hirundinidae	passerine	1091	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
519	northern shrike	Lanius excubitor	\N	Lanius	excubitor	8061978	Chordata	Aves	Passeriformes	Laniidae	passerine	536	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
520	northern waterthrush	Seiurus noveboracensis	\N	Seiurus	noveboracensis	2489585	Chordata	Aves	Passeriformes	Parulidae	passerine	1030	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
521	oak titmouse	Baeolophus inornatus	\N	Baeolophus	inornatus	2487905	Chordata	Aves	Passeriformes	Paridae	passerine	84	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
522	olive-backed pipit	Anthus hodgsoni	\N	Anthus	hodgsoni	2490244	Chordata	Aves	Passeriformes	Motacillidae	passerine	48	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
523	orange-crowned warbler	Oreothlypis celata	\N	Oreothlypis	celata	7342009	Chordata	Aves	Passeriformes	Parulidae	passerine	1202	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
524	orchard oriole	Icterus spurius	\N	Icterus	spurius	5229935	Chordata	Aves	Passeriformes	Icteridae	passerine	516	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
525	Oregon junco	Junco hyemalis cismontanus	\N	Junco	hyemalis	6173545	Chordata	Aves	Passeriformes	Emberizidae	passerine	526	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
526	ovenbird	Seiurus aurocapillus	\N	Seiurus	aurocapillus	2489590	Chordata	Aves	Passeriformes	Parulidae	passerine	1029	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
527	Pacific-slope flycatcher	Empidonax difficilis	\N	Empidonax	difficilis	2482792	Chordata	Aves	Passeriformes	Tyrannidae	passerine	377	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
528	painted bunting	Passerina ciris	\N	Passerina	ciris	5230852	Chordata	Aves	Passeriformes	Cardinalidae	passerine	754	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
529	painted redstart	Myioborus pictus	\N	Myioborus	pictus	2489850	Chordata	Aves	Passeriformes	Parulidae	passerine	656	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
530	palm warbler	Dendroica palmarum	\N	Dendroica	palmarum	2489910	Chordata	Aves	Passeriformes	Parulidae	passerine	334	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
531	Philadelphia vireo	Vireo philadelphicus	\N	Vireo	philadelphicus	2487408	Chordata	Aves	Passeriformes	Vireonidae	passerine	1222	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
532	pied crow	Corvus albus	\N	Corvus	albus	2482519	Chordata	Aves	Passeriformes	Corvidae	passerine	267	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
533	pine grosbeak	Pinicola enucleator	\N	Pinicola	enucleator	2494771	Chordata	Aves	Passeriformes	Fringillidae	passerine	813	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
534	pine siskin	Carduelis pinus	\N	Carduelis	pinus	2494634	Chordata	Aves	Passeriformes	Fringillidae	passerine	172	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
535	pine warbler	Dendroica pinus	\N	Dendroica	pinus	9004486	Chordata	Aves	Passeriformes	Parulidae	passerine	337	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
536	plumbeous vireo	Vireo plumbeous	\N	Vireo	plumbeous	2487429	Chordata	Aves	Passeriformes	Vireonidae	passerine	1223	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
537	prairie warbler	Dendroica discolor	\N	Dendroica	discolor	2489979	Chordata	Aves	Passeriformes	Parulidae	passerine	327	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
538	prothonotary warbler	Protonotaria citrea	\N	Protonotaria	citrea	2489871	Chordata	Aves	Passeriformes	Parulidae	passerine	875	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
539	purple finch	Carpodacus purpureus	\N	Carpodacus	purpureus	2494478	Chordata	Aves	Passeriformes	Fringillidae	passerine	178	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
540	purple martin	Progne subis	\N	Progne	subis	2489129	Chordata	Aves	Passeriformes	Hirundinidae	passerine	871	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
541	pygmy nuthatch	Sitta pygmaea	\N	Sitta	pygmaea	2484907	Chordata	Aves	Passeriformes	Sittidae	passerine	1043	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
542	pyrrhuloxia	Cardinalis sinuatus	\N	Cardinalis	sinuatus	2490405	Chordata	Aves	Passeriformes	Cardinalidae	passerine	168	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
543	red crossbill	Loxia curvirostra	\N	Loxia	curvirostra	2494155	Chordata	Aves	Passeriformes	Fringillidae	passerine	592	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
544	red-breasted nuthatch	Sitta canadensis	\N	Sitta	canadensis	2484879	Chordata	Aves	Passeriformes	Sittidae	passerine	1041	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
545	red-eyed vireo	Vireo olivaceus	\N	Vireo	olivaceus	2487430	Chordata	Aves	Passeriformes	Vireonidae	passerine	1221	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
546	red-faced warbler	Cardellina rubrifrons	\N	Cardellina	rubrifrons	2489634	Chordata	Aves	Passeriformes	Parulidae	passerine	166	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
547	red-winged blackbird	Agelaius phoeniceus	\N	Agelaius	phoeniceus	2484452	Chordata	Aves	Passeriformes	Icteridae	passerine	11	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
548	rock wren	Salpinctes obsoletus	\N	Salpinctes	obsoletus	5231483	Chordata	Aves	Passeriformes	Troglodytidae	passerine	1005	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
549	rose-breasted grosbeak	Pheucticus ludovicianus	\N	Pheucticus	ludovicianus	2490494	Chordata	Aves	Passeriformes	Cardinalidae	passerine	785	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
550	ruby-crowned kinglet	Regulus calendula	\N	Regulus	calendula	2484597	Chordata	Aves	Passeriformes	Regulidae	passerine	974	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
551	rufous-backed robin	Turdus rufopalliatus	\N	Turdus	rufopalliatus	2490741	Chordata	Aves	Passeriformes	Turdidae	passerine	1179	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
552	rufous-crowned sparrow	Aimophila ruficeps	\N	Aimophila	ruficeps	2491961	Chordata	Aves	Passeriformes	Emberizidae	passerine	14	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
553	rusty blackbird	Euphagus carolinus	\N	Euphagus	carolinus	2484184	Chordata	Aves	Passeriformes	Icteridae	passerine	403	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
554	sage sparrow	Amphispiza belli	\N	Amphispiza	belli	2491751	Chordata	Aves	Passeriformes	Emberizidae	passerine	29	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
555	saltmarsh sharp-tailed swallow	Ammodramus caudacutus	\N	Ammodramus	caudacutus	2491082	Chordata	Aves	Passeriformes	Emberizidae	passerine	25	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
556	savannah sparrow	Passerculus sandwichensis	\N	Passerculus	sandwichensis	5231142	Chordata	Aves	Passeriformes	Emberizidae	passerine	750	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
557	Says phoebe	Sayornis saya	\N	Sayornis	saya	2483607	Chordata	Aves	Passeriformes	Tyrannidae	passerine	1017	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
558	scarlet tanager	Piranga olivacea	\N	Piranga	olivacea	2488517	Chordata	Aves	Passeriformes	Cardinalidae	passerine	822	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
559	scissor-tailed flycatcher	Tyrannus forficatus	\N	Tyrannus	forficatus	5229687	Chordata	Aves	Passeriformes	Tyrannidae	passerine	1183	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
560	Scotts oriole	Icterus parisorum	\N	Icterus	parisorum	5229930	Chordata	Aves	Passeriformes	Icteridae	passerine	514	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
561	slate-colored junco	Junco hyemalis hyemalis	\N	Junco	hyemalis	7191958	Chordata	Aves	Passeriformes	Emberizidae	passerine	527	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
562	Smiths longspur	Calcarius pictus	\N	Calcarius	pictus	2491684	Chordata	Aves	Passeriformes	Calcariidae	passerine	138	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
563	snow bunting	Plectrophenax nivalis	\N	Plectrophenax	nivalis	2491719	Chordata	Aves	Passeriformes	Calcariidae	passerine	836	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
564	song sparrow	Melospiza melodia	\N	Melospiza	melodia	2492196	Chordata	Aves	Passeriformes	Emberizidae	passerine	617	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
565	spotted towhee	Pipilo maculatus	\N	Pipilo	maculatus	2491210	Chordata	Aves	Passeriformes	Emberizidae	passerine	818	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
566	Spragues pipit	Anthus spragueii	\N	Anthus	spragueii	2490268	Chordata	Aves	Passeriformes	Motacillidae	passerine	50	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
567	Stellers jay	Cyanocitta stelleri	\N	Cyanocitta	stelleri	2482598	Chordata	Aves	Passeriformes	Corvidae	passerine	304	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
568	streak-backed oriole	Icterus pustulatus	\N	Icterus	pustulatus	5229853	Chordata	Aves	Passeriformes	Icteridae	passerine	515	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
569	sulphur-bellied flycatcher	Myiodynastes luteiventris	\N	Myiodynastes	luteiventris	2483494	Chordata	Aves	Passeriformes	Tyrannidae	passerine	657	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
570	summer tanager	Piranga rubra	\N	Piranga	rubra	2488485	Chordata	Aves	Passeriformes	Cardinalidae	passerine	823	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
571	Swainsons thrush	Catharus ustulatus	\N	Catharus	ustulatus	2490821	Chordata	Aves	Passeriformes	Turdidae	passerine	186	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
572	swamp sparrow	Melospiza georgiana	\N	Melospiza	georgiana	2492235	Chordata	Aves	Passeriformes	Emberizidae	passerine	615	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
573	Tennessee warbler	Oreothlypis peregrina	\N	Oreothlypis	peregrina	6093759	Chordata	Aves	Passeriformes	Parulidae	passerine	1205	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
574	thick-billed kingbird	Tyrannus crassirostris	\N	Tyrannus	crassirostris	5229690	Chordata	Aves	Passeriformes	Tyrannidae	passerine	1182	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
575	thrush (unknown)	Catharus sp.	\N	Catharus	sp.	2490799	Chordata	Aves	Passeriformes	Turdidae	passerine	185	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
576	Townsends solitaire	Myadestes townsendi	\N	Myadestes	townsendi	2490849	Chordata	Aves	Passeriformes	Turdidae	passerine	651	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
577	Townsends warbler	Dendroica townsendi	\N	Dendroica	townsendi	2489882	Chordata	Aves	Passeriformes	Parulidae	passerine	340	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
578	tree swallow	Tachycineta bicolor	\N	Tachycineta	bicolor	2489181	Chordata	Aves	Passeriformes	Hirundinidae	passerine	1120	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
579	tropical kingbird	Tyrannus melancholicus	\N	Tyrannus	melancholicus	5229662	Chordata	Aves	Passeriformes	Tyrannidae	passerine	1184	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
580	varied thrush	Ixoreus naevius	\N	Ixoreus	naevius	2490926	Chordata	Aves	Passeriformes	Turdidae	passerine	520	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
581	veery	Catharus fuscescens	\N	Catharus	fuscescens	2490804	Chordata	Aves	Passeriformes	Turdidae	passerine	182	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
582	verdin	Auriparus flaviceps	\N	Auriparus	flaviceps	2487397	Chordata	Aves	Passeriformes	Remizidae	passerine	78	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
583	vermilion flycatcher	Pyrocephalus rubinus	\N	Pyrocephalus	rubinus	2483647	Chordata	Aves	Passeriformes	Tyrannidae	passerine	953	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
584	violet-green swallow	Tachycineta thalassina	\N	Tachycineta	thalassina	5230754	Chordata	Aves	Passeriformes	Hirundinidae	passerine	1121	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
585	vireo (unknown)	Vireo sp.	\N	Vireo	sp.	2487406	Chordata	Aves	Passeriformes	Vireonidae	passerine	1225	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
586	Virginias warbler	Oreothlypis virginiae	\N	Oreothlypis	virginiae	6093686	Chordata	Aves	Passeriformes	Parulidae	passerine	1208	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
587	warbling vireo	Vireo gilvus	\N	Vireo	gilvus	2487446	Chordata	Aves	Passeriformes	Vireonidae	passerine	1219	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
588	western bluebird	Sialia mexicana	\N	Sialia	mexicana	2490936	Chordata	Aves	Passeriformes	Turdidae	passerine	1038	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
589	western kingbird	Tyrannus verticalis	\N	Tyrannus	verticalis	5229675	Chordata	Aves	Passeriformes	Tyrannidae	passerine	1186	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
590	western meadowlark	Sturnella neglecta	\N	Sturnella	neglecta	2484277	Chordata	Aves	Passeriformes	Icteridae	passerine	1104	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
591	western scrub-jay	Aphelocoma californica	\N	Aphelocoma	californica	2482414	Chordata	Aves	Passeriformes	Corvidae	passerine	56	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
592	western tanager	Piranga ludoviciana	\N	Piranga	ludoviciana	2488484	Chordata	Aves	Passeriformes	Cardinalidae	passerine	821	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
593	western wood-pewee	Contopus sordidulus	\N	Contopus	sordidulus	5229754	Chordata	Aves	Passeriformes	Tyrannidae	passerine	266	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
594	white-breasted nuthatch	Sitta carolinensis	\N	Sitta	carolinensis	2484892	Chordata	Aves	Passeriformes	Sittidae	passerine	1042	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
595	white-crowned sparrow	Zonotrichia leucophrys	\N	Zonotrichia	leucophrys	5231132	Chordata	Aves	Passeriformes	Emberizidae	passerine	1251	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
596	white-throated sparrow	Zonotrichia albicollis	\N	Zonotrichia	albicollis	5231140	Chordata	Aves	Passeriformes	Emberizidae	passerine	1249	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
597	white-winged crossbill	Loxia leucoptera	\N	Loxia	leucoptera	8144830	Chordata	Aves	Passeriformes	Fringillidae	passerine	593	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
598	willow flycatcher	Empidonax traillii	\N	Empidonax	traillii	2482786	Chordata	Aves	Passeriformes	Tyrannidae	passerine	384	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
599	Wilsons warbler	Wilsonia pusilla	\N	Wilsonia	pusilla	4408920	Chordata	Aves	Passeriformes	Parulidae	passerine	1236	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
600	winter wren	Troglodytes troglodytes	\N	Troglodytes	troglodytes	5231438	Chordata	Aves	Passeriformes	Troglodytidae	passerine	1167	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
601	wood thrush	Hylocichla mustelina	\N	Hylocichla	mustelina	2490872	Chordata	Aves	Passeriformes	Turdidae	passerine	504	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
602	worm-eating warbler	Helmitheros vermivorus	\N	Helmitheros	vermivorus	2489603	Chordata	Aves	Passeriformes	Parulidae	passerine	494	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
603	yellow warbler	Dendroica petechia	\N	Dendroica	petechia	2489932	Chordata	Aves	Passeriformes	Parulidae	passerine	336	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
604	yellow-bellied flycatcher	Empidonax flaviventris	\N	Empidonax	flaviventris	2482785	Chordata	Aves	Passeriformes	Tyrannidae	passerine	378	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
605	yellow-green vireo	Vireo flavoviridis	\N	Vireo	flavoviridis	2487426	Chordata	Aves	Passeriformes	Vireonidae	passerine	1218	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
606	yellow-headed blackbird	Xanthocephalus xanthocephalus	\N	Xanthocephalus	xanthocephalus	2484195	Chordata	Aves	Passeriformes	Icteridae	passerine	1238	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
607	yellow-rumped warbler	Dendroica coronata	\N	Dendroica	coronata	2489896	Chordata	Aves	Passeriformes	Parulidae	passerine	324	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
608	yellow-throated vireo	Vireo flavifrons	\N	Vireo	flavifrons	2487453	Chordata	Aves	Passeriformes	Vireonidae	passerine	1217	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
609	yellow-throated warbler	Dendroica dominica	\N	Dendroica	dominica	2489889	Chordata	Aves	Passeriformes	Parulidae	passerine	328	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
610	gnatcatcher (unknown)	Polioptila sp.	\N	Polioptila	sp.	2487581	Chordata	Aves	Passeriformes	Polioptilidae	passerine	1256	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
611	oriole (unknown)	Icterus sp.	\N	Icterus	sp.	2484282	Chordata	Aves	Passeriformes	Icteridae	passerine	1257	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
612	bluebird (unknown)	Sialia sp.	\N	Sialia	sp.	2490934	Chordata	Aves	Passeriformes	Turdidae	passerine	1301	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
613	nuthatch (unknown)	Sitta sp.	\N	Sitta	sp.	2484878	Chordata	Aves	Passeriformes	Sittidae	passerine	1307	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
614	shrike (unknown)	Lanius sp.	\N	Lanius	sp.	2483315	Chordata	Aves	Passeriformes	Laniidae	passerine	1309	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
615	black rosy-finch	Leucosticte atrata	\N	Leucosticte	atrata	2494372	Chordata	Aves	Passeriformes	Fringillidae	passerine	581	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
616	juniper titmouse	Baeolophus ridgwayi	\N	Baeolophus	ridgwayi	2487898	Chordata	Aves	Passeriformes	Paridae	passerine	85	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
617	Bendires thrasher	Toxostoma bendirei	\N	Toxostoma	bendirei	5231697	Chordata	Aves	Passeriformes	Mimidae	passerine	1153	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
618	Brewers sparrow	Spizella breweri	\N	Spizella	breweri	2492099	Chordata	Aves	Passeriformes	Emberizidae	passerine	1080	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
619	tricolored blackbird	Agelaius tricolor	\N	Agelaius	tricolor	2484445	Chordata	Aves	Passeriformes	Icteridae	passerine	12	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
620	pinyon jay	Gymnorhinus cyanocephalus	\N	Gymnorhinus	cyanocephalus	2482615	Chordata	Aves	Passeriformes	Corvidae	passerine	483	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
621	gray vireo	Vireo vicinior	\N	Vireo	vicinior	2487411	Chordata	Aves	Passeriformes	Vireonidae	passerine	1226	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
622	sage thrasher	Oreoscoptes montanus	\N	Oreoscoptes	montanus	2494973	Chordata	Aves	Passeriformes	Mimidae	passerine	730	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
623	olive-sided flycatcher	Contopus cooperi	\N	Contopus	cooperi	9192348	Chordata	Aves	Passeriformes	Tyrannidae	passerine	264	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
624	bobolink	Dolichonyx oryzivorus	\N	Dolichonyx	oryzivorus	2484417	Chordata	Aves	Passeriformes	Icteridae	passerine	356	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
625	vesper sparrow	Pooecetes gramineus	\N	Pooecetes	gramineus	2491728	Chordata	Aves	Passeriformes	Emberizidae	passerine	864	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
626	Lucys warbler	Oreothlypis luciae	\N	Oreothlypis	luciae	6093718	Chordata	Aves	Passeriformes	Parulidae	passerine	1204	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
627	crissal thrasher	Toxostoma crissale	\N	Toxostoma	crissale	5231693	Chordata	Aves	Passeriformes	Mimidae	passerine	1154	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
628	Le Contes thrasher	Toxostoma lecontei	\N	Toxostoma	lecontei	5231703	Chordata	Aves	Passeriformes	Mimidae	passerine	1156	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
629	gray-crowned rosy-finch	Leucosticte tephrocotis	\N	Leucosticte	tephrocotis	2494360	Chordata	Aves	Passeriformes	Fringillidae	passerine	582	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
630	Arizona Bells vireo	Vireo bellii arizonae	\N	Vireo	bellii	6175221	Chordata	Aves	Passeriformes	Vireonidae	passerine	1215	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
631	loggerhead shrike	Lanius ludovicianus	\N	Lanius	ludovicianus	2492870	Chordata	Aves	Passeriformes	Laniidae	passerine	537	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
632	yellow-breasted chat	Icteria virens	\N	Icteria	virens	2489989	Chordata	Aves	Passeriformes	Parulidae	passerine	510	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
633	Great Basin willow flycatcher	Empidonax traillii adastus	\N	Empidonax	traillii	6174857	Chordata	Aves	Passeriformes	Tyrannidae	passerine	385	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
634	phainopepla	Phainopepla nitens	\N	Phainopepla	nitens	2492885	Chordata	Aves	Passeriformes	Ptilogonatidae	passerine	777	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
635	southwestern willow flycatcher	Empidonax traillii extimus	\N	Empidonax	traillii	6174856	Chordata	Aves	Passeriformes	Tyrannidae	passerine	387	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
636	mountain willow flycatcher	Empidonax traillii brewsteri	\N	Empidonax	traillii	6174855	Chordata	Aves	Passeriformes	Tyrannidae	passerine	386	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
654	acorn woodpecker	Melanerpes formicivorus	\N	Melanerpes	formicivorus	2478133	Chordata	Aves	Piciformes	Picidae	pico	606	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
655	black-backed woodpecker	Picoides arcticus	\N	Picoides	arcticus	2477774	Chordata	Aves	Piciformes	Picidae	pico	804	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
656	downy woodpecker	Picoides pubescens	\N	Picoides	pubescens	2477781	Chordata	Aves	Piciformes	Picidae	pico	807	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
657	Gila woodpecker	Melanerpes uropygialis	\N	Melanerpes	uropygialis	2478112	Chordata	Aves	Piciformes	Picidae	pico	608	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
658	gilded flicker	Colaptes chrysoides	\N	Colaptes	chrysoides	2478248	Chordata	Aves	Piciformes	Picidae	pico	249	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
659	hairy woodpecker	Picoides villosus	\N	Picoides	villosus	2477741	Chordata	Aves	Piciformes	Picidae	pico	811	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
660	ladder-backed woodpecker	Picoides scalaris	\N	Picoides	scalaris	2477813	Chordata	Aves	Piciformes	Picidae	pico	808	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
661	northern flicker	Colaptes auratus	\N	Colaptes	auratus	2478259	Chordata	Aves	Piciformes	Picidae	pico	248	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
662	Nuttalls woodpecker	Picoides nuttallii	\N	Picoides	nuttallii	2477733	Chordata	Aves	Piciformes	Picidae	pico	806	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
663	pileated woodpecker	Dryocopus pileatus	\N	Dryocopus	pileatus	5228824	Chordata	Aves	Piciformes	Picidae	pico	359	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
664	red-breasted sapsucker	Sphyrapicus ruber	\N	Sphyrapicus	ruber	2478597	Chordata	Aves	Piciformes	Picidae	pico	1073	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
665	red-headed woodpecker	Melanerpes erythrocephalus	\N	Melanerpes	erythrocephalus	2478130	Chordata	Aves	Piciformes	Picidae	pico	605	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
666	three-toed woodpecker	Picoides tridactylus	\N	Picoides	tridactylus	2477804	Chordata	Aves	Piciformes	Picidae	pico	810	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
667	Williamsons sapsucker	Sphyrapicus thyroideus	\N	Sphyrapicus	thyroideus	2478602	Chordata	Aves	Piciformes	Picidae	pico	1074	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
668	woodpecker (unknown)	Picoides sp.	\N	Picoides	sp.	2477732	Chordata	Aves	Piciformes	Picidae	pico	809	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
669	yellow-bellied sapsucker	Sphyrapicus varius	\N	Sphyrapicus	varius	2478605	Chordata	Aves	Piciformes	Picidae	pico	1075	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
670	sapsucker (unknown)	Sphyrapicus sp.	\N	Sphyrapicus	sp.	2478596	Chordata	Aves	Piciformes	Picidae	pico	1300	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
671	American three-toed woodpecker	Picoides dorsalis	\N	Picoides	dorsalis	2477797	Chordata	Aves	Piciformes	Picidae	pico	805	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
672	white-headed woodpecker	Picoides albolarvatus	\N	Picoides	albolarvatus	2477775	Chordata	Aves	Piciformes	Picidae	pico	803	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
673	red-naped sapsucker	Sphyrapicus nuchalis	\N	Sphyrapicus	nuchalis	2478608	Chordata	Aves	Piciformes	Picidae	pico	1072	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
674	Lewiss woodpecker	Melanerpes lewis	\N	Melanerpes	lewis	2478142	Chordata	Aves	Piciformes	Picidae	pico	607	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
675	Clarks grebe	Aechmophorus clarkii	\N	Aechmophorus	clarkii	2482032	Chordata	Aves	Podicipediformes	Podicipedidae	waterfowl	7	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
676	eared grebe	Podiceps nigricollis	\N	Podiceps	nigricollis	2482065	Chordata	Aves	Podicipediformes	Podicipedidae	waterfowl	850	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
677	horned grebe	Podiceps auritus	\N	Podiceps	auritus	2482059	Chordata	Aves	Podicipediformes	Podicipedidae	waterfowl	848	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
678	least grebe	Tachybaptus dominicus	\N	Tachybaptus	dominicus	2482044	Chordata	Aves	Podicipediformes	Podicipedidae	waterfowl	1119	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
679	pied-billed grebe	Podilymbus podiceps	\N	Podilymbus	podiceps	2482077	Chordata	Aves	Podicipediformes	Podicipedidae	waterfowl	851	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
680	red-necked grebe	Podiceps grisegena	\N	Podiceps	grisegena	2482051	Chordata	Aves	Podicipediformes	Podicipedidae	waterfowl	849	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
681	western grebe	Aechmophorus occidentalis	\N	Aechmophorus	occidentalis	2482033	Chordata	Aves	Podicipediformes	Podicipedidae	waterfowl	8	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
683	barn owl	Tyto alba	\N	Tyto	alba	2497921	Chordata	Aves	Strigiformes	Tytonidae	owls	1188	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
684	elf owl	Micrathene whitneyi	\N	Micrathene	whitneyi	2497430	Chordata	Aves	Strigiformes	Strigidae	owls	621	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
685	great gray owl	Strix nebulosa	\N	Strix	nebulosa	2497522	Chordata	Aves	Strigiformes	Strigidae	owls	1102	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
686	great horned owl	Bubo virginianus	\N	Bubo	virginianus	5959118	Chordata	Aves	Strigiformes	Strigidae	owls	106	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
687	northern pygmy-owl	Glaucidium gnoma	\N	Glaucidium	gnoma	5232153	Chordata	Aves	Strigiformes	Strigidae	owls	470	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
688	northern saw-whet owl	Aegolius acadicus	\N	Aegolius	acadicus	5232207	Chordata	Aves	Strigiformes	Strigidae	owls	9	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
690	western screech-owl	Megascops kennicottii	\N	Megascops	kennicottii	2497341	Chordata	Aves	Strigiformes	Strigidae	owls	604	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
691	short-eared owl	Asio flammeus	\N	Asio	flammeus	2497295	Chordata	Aves	Strigiformes	Strigidae	owls	71	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
692	long-eared owl	Asio otus	\N	Asio	otus	2497306	Chordata	Aves	Strigiformes	Strigidae	owls	72	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
693	California spotted owl	Strix occidentalis occidentalis	\N	Strix	occidentalis	7191276	Chordata	Aves	Strigiformes	Strigidae	owls	1103	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
694	burrowing owl	Athene cunicularia	\N	Athene	cunicularia	2497240	Chordata	Aves	Strigiformes	Strigidae	owls	77	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
695	flammulated owl	Otus flammeolus	\N	Otus	flammeolus	5232325	Chordata	Aves	Strigiformes	Strigidae	owls	733	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
701	Oregon floater	Anodonta oregonensis	\N	Anodonta	oregonensis	2287931	Mollusca	Bivalvia	Unionoida	Unionidae	bivalve	45	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
702	western pearlshell	Margaritifera falcata	\N	Margaritifera	falcata	2287872	Mollusca	Bivalvia	Unionoida	Margaritiferidae	bivalve	598	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
703	western ridged mussel	Gonidea angulata	\N	Gonidea	angulata	2287883	Mollusca	Bivalvia	Unionoida	Unionidae	bivalve	473	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
704	winged floater	Anodonta nuttalliana	\N	Anodonta	nuttalliana	2287929	Mollusca	Bivalvia	Unionoida	Unionidae	bivalve	44	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
705	Woebegone floater	Anodonta dejecta	\N	Anodonta	dejecta	2287937	Mollusca	Bivalvia	Unionoida	Unionidae	bivalve	43	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
706	California floater	Anodonta californiensis	\N	Anodonta	californiensis	2287936	Mollusca	Bivalvia	Unionoida	Unionidae	bivalve	42	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
707	fingernail clam (unknown)	Pisidium sp.	\N	Pisidium	sp.	2286678	Mollusca	Bivalvia	Veneroida	Sphaeriidae	bivalve	825	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
708	Herrington fingernail clam	Sphaerium occidentale	\N	Sphaerium	occidentale	5189019	Mollusca	Bivalvia	Veneroida	Sphaeriidae	bivalve	1070	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
709	quagga mussel	Dreissena bugensis	\N	Dreissena	bugensis	2287073	Mollusca	Bivalvia	Veneroida	Dreissenidae	bivalve	358	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
710	Rocky Mountain fingernail clam	Sphaerium patella	\N	Sphaerium	patella	5189018	Mollusca	Bivalvia	Veneroida	Sphaeriidae	bivalve	1071	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
711	triangular peaclam	Pisidium variabile	\N	Pisidium	variabile	2286689	Mollusca	Bivalvia	Veneroida	Sphaeriidae	bivalve	826	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
712	ubiquitous peaclam	Pisidium casertanum	\N	Pisidium	casertanum	2286685	Mollusca	Bivalvia	Veneroida	Sphaeriidae	bivalve	824	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
713	golden freshwater clam	Corbicula fluminea	\N	Corbicula	fluminea	8190231	Mollusca	Bivalvia	Veneroida	Cyrenidae	bivalve	1273	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
714	alkali fairy shrimp	Branchinecta mackini	\N	Branchinecta	mackini	2235349	Arthropoda	Branchiopoda	Anostraca	Branchinectidae	crustacean	102	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
715	beavertail fairy shrimp	Thamnocephalus platyurus	\N	Thamnocephalus	platyurus	4806113	Arthropoda	Branchiopoda	Anostraca	Thamnocephalidae	crustacean	1132	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
716	Colorado fairy shrimp	Branchinecta coloradensis	\N	Branchinecta	coloradensis	2235373	Arthropoda	Branchiopoda	Anostraca	Branchinectidae	crustacean	98	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
717	Dissimilar fairy shrimp	Branchinecta dissimilis	\N	Branchinecta	dissimilis	2235365	Arthropoda	Branchiopoda	Anostraca	Branchinectidae	crustacean	99	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
718	giant fairy shrimp	Branchinecta gigas	\N	Branchinecta	gigas	2235362	Arthropoda	Branchiopoda	Anostraca	Branchinectidae	crustacean	100	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
719	mountain fairy shrimp	Branchinecta sp. 4	\N	Branchinecta	sp.	9040651	Arthropoda	Branchiopoda	Anostraca	Branchinectidae	crustacean	103	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
720	San Francisco brine shrimp	Artemia franciscana	\N	Artemia	franciscana	5180091	Arthropoda	Branchiopoda	Anostraca	Artemiidae	crustacean	70	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
721	versitile fairy shrimp	Branchinecta lindahli	\N	Branchinecta	lindahli	2235379	Arthropoda	Branchiopoda	Anostraca	Branchinectidae	crustacean	101	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
722	straightbacked clam shrimp	Eocyzicus digueti	\N	Eocyzicus	digueti	2234638	Arthropoda	Branchiopoda	Diplostraca	Cyzicidae	crustacean	389	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
723	bilobed tadpole shrimp	Lepidurus bilobatus	\N	Lepidurus	bilobatus	5180069	Arthropoda	Branchiopoda	Notostraca	Triopsidae	crustacean	565	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
724	lemon tadpole shrimp	Lepidurus lemmoni	\N	Lepidurus	lemmoni	5180072	Arthropoda	Branchiopoda	Notostraca	Triopsidae	crustacean	566	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
725	tadpole shrimp (unknown)	Lepidurus sp.	\N	Lepidurus	sp.	2235049	Arthropoda	Branchiopoda	Notostraca	Triopsidae	crustacean	567	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
726	tadpole shrimp (unknown)	Triops sp.	\N	Triops	sp.	2235057	Arthropoda	Branchiopoda	Notostraca	Triopsidae	crustacean	1165	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
727	cutbow trout	Oncorhynchus mykiss x Oncorhynchus clarkii	\N	Oncorhynchus	mykiss	\N	data	data	data	data	salmonid	708	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
728	tiger trout	Salmo trutta x Salvelinus fontinalis	\N	Salmo	trutta	\N	data	data	data	data	salmonid	1003	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
729	razorback x flannelmouth sucker (hybrid)	Xyrauchen texanus x Catostomus latipinnis	\N	Xyrauchen	texanus	\N	data	data	data	data	ostariophysian	1288	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
730	freshwater snail	Vorticifex solida	\N	Vorticifex	solida	2291012	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	1230	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
731	artemesian rams-horn	Vorticifex effusa	\N	Vorticifex	effusa	2291009	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	1228	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
732	ash gyro	Gyraulus parvus	\N	Gyraulus	parvus	2290996	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	485	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
733	big-eared radix	Radix auricularia	\N	Radix	auricularia	5189888	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	959	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
734	carib fossaria	Fossaria cubensis	\N	Fossaria	cubensis	5189870	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	421	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
912	opossum shrimp	Mysis diluviana	\N	Mysis	diluviana	5864037	Arthropoda	Malacostraca	Mysida	Mysidae	crustacean	1278	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
735	creeping ancylid	Ferrissia rivularis	\N	Ferrissia	rivularis	2291157	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	412	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
736	Dall rams-horn	Vorticifex effusus	\N	Vorticifex	effusus	2291009	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	1229	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
737	desert physa	Physella boucardi	\N	Physella	boucardi	5189793	Mollusca	Gastropoda	Hygrophila	Physidae	gastropod	797	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
738	disc gyro	Gyraulus circumstriatus	\N	Gyraulus	circumstriatus	2290992	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	484	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
739	fine-lined rams-horn	Planorbella occidentalis	\N	Planorbella	occidentalis	5189735	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	831	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
740	Fish Springs marshsnail	Stagnicola pilsbryi	\N	Stagnicola	pilsbryi	5189905	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	1089	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
741	fossaria (unknown)	Fossaria sp.	\N	Fossaria	sp.	3261473	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	425	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
742	glass physa	Physa skinneri	\N	Physa	skinneri	5189774	Mollusca	Gastropoda	Hygrophila	Physidae	gastropod	795	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
743	golden fossaria	Fossaria obrussa	\N	Fossaria	obrussa	5189868	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	423	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
744	Great Basin rams-horn	Helisoma newberryi newberryi	\N	Helisoma	newberryi	5189725	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	492	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
745	gyro (unknown)	Gyraulus sp.	\N	Gyraulus	sp.	2290991	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	486	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
746	lance aplexa	Aplexa elongata	\N	Aplexa	elongata	2291095	Mollusca	Gastropoda	Hygrophila	Physidae	gastropod	58	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
747	limpet (unknown)	Lanx sp.	\N	Lanx	sp.	2291239	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	538	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
748	marsh pondsnail	Stagnicola elodes	\N	Stagnicola	elodes	5189907	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	1086	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
749	marsh rams-horn	Planorbella trivolvis	\N	Planorbella	trivolvis	5189748	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	834	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
750	Mexican rams-horn	Planorbella tenuis	\N	Planorbella	tenuis	5189744	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	833	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
751	mountain marshsnail	Stagnicola montanensis	\N	Stagnicola	montanensis	5189908	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	1088	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
752	prairie fossaria	Fossaria bulimoides	\N	Fossaria	bulimoides	5189885	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	420	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
753	protean physa	Physella virgata	\N	Physella	virgata	5189802	Mollusca	Gastropoda	Hygrophila	Physidae	gastropod	801	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
754	pygmy fossaria	Fossaria parva	\N	Fossaria	parva	5189883	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	424	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
755	rams-horn (unknown)	Helisoma sp.	\N	Helisoma	sp.	5189721	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	493	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
756	rock fossaria	Fossaria modicella	\N	Fossaria	modicella	5189880	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	422	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
757	Rocky Mountain physa	Physella propinqua	\N	Physella	propinqua	5189799	Mollusca	Gastropoda	Hygrophila	Physidae	gastropod	800	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
758	rough rams-horn	Planorbella subcrenata	\N	Planorbella	subcrenata	5189733	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	832	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
759	snail	Parapholyx enfusa	\N	Parapholyx	enfusa	2290960	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	747	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
760	St. Lawrence pondsnail	Stagnicola emarginata	\N	Stagnicola	emarginata	5189899	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	1087	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
761	swamp lymnaea	Lymnaea stagnalis	\N	Lymnaea	stagnalis	2291253	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	594	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
762	tadpole physa	Physella gyrina	\N	Physella	gyrina	5189789	Mollusca	Gastropoda	Hygrophila	Physidae	gastropod	798	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
763	twisted Physa	Physella lordi	\N	Physella	lordi	5189790	Mollusca	Gastropoda	Hygrophila	Physidae	gastropod	799	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
764	two-ridge rams-horn	Helisoma anceps	\N	Helisoma	anceps	5189722	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	491	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
765	umbilicate sprite	Promenetus umbilicatellus	\N	Promenetus	umbilicatellus	2290959	Mollusca	Gastropoda	Hygrophila	Planorbidae	gastropod	872	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
766	wrinkled marshsnail	Stagnicola caperata	\N	Stagnicola	caperata	5189897	Mollusca	Gastropoda	Hygrophila	Lymnaeidae	gastropod	1085	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
767	Badwater snail	Assiminea infima	\N	Assiminea	infima	2301952	Mollusca	Gastropoda	Littorinimorpha	Assimineidae	gastropod	75	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
768	ashy pebblesnail	Fluminicola hindsi	\N	Fluminicola	hindsi	5192433	Mollusca	Gastropoda	Littorinimorpha	Lithoglyphidae	gastropod	414	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
769	assiminea (unknown)	Assiminea sp.	\N	Assiminea	sp.	2301943	Mollusca	Gastropoda	Littorinimorpha	Assimineidae	gastropod	76	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
770	corded pyrg	Pyrgulopsis nevadensis	\N	Pyrgulopsis	nevadensis	8256411	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	929	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
771	deep springs snail	Fontelicella nevadensis	\N	Fontelicella	nevadensis	2300164	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	418	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
772	desert tryonia	Tryonia porrecta	\N	Tryonia	porrecta	8992635	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	1175	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
773	Fish Lake pyrg	Pyrgulopsis ruinosa	\N	Pyrgulopsis	ruinosa	9113754	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	939	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
774	fontecella (unknown)	Fontelicella sp.	\N	Fontelicella	sp.	2300164	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	419	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
775	Owens Valley pyrg	Pyrgulopsis owensensis	\N	Pyrgulopsis	owensensis	2299981	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	932	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
776	springsnail (unknown)	Pyrgulopsis sp.	\N	Pyrgulopsis	sp.	2299969	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	943	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
777	Surprise Valley pyrg	Pyrgulopsis gibba	\N	Pyrgulopsis	gibba	2300008	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	906	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
778	Toquerville pyrg	Pyrgulopsis kolobensis	\N	Pyrgulopsis	kolobensis	2300005	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	913	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
779	northern Soldier Meadow pyrg	Pyrgulopsis militaris	\N	Pyrgulopsis	militaris	9003146	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	924	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
780	Steptoe hydrobe	Eremopyrgus eganensis	\N	Eremopyrgus	eganensis	7725549	Mollusca	Gastropoda	Littorinimorpha	Cochliopidae	gastropod	395	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
781	Elko pyrg	Pyrgulopsis leporina	\N	Pyrgulopsis	leporina	9054535	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	917	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
782	neritiform Steptoe Ranch pyrg	Pyrgulopsis neritella	\N	Pyrgulopsis	neritella	9115593	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	928	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
783	sub-globose Steptoe Ranch pyrg	Pyrgulopsis orbiculata	\N	Pyrgulopsis	orbiculata	8929002	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	931	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
784	northern Steptoe pyrg	Pyrgulopsis serrata	\N	Pyrgulopsis	serrata	8763009	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	942	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
785	Amargosa tryonia	Tryonia variegata	\N	Tryonia	variegata	5192403	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	1177	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
786	elongate-gland pyrg	Pyrgulopsis isolata	\N	Pyrgulopsis	isolata	2300016	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	912	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
787	White River Valley pyrg	Pyrgulopsis sathos	\N	Pyrgulopsis	sathos	9191372	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	941	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
788	Landyes pyrg	Pyrgulopsis landyei	\N	Pyrgulopsis	landyei	9168237	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	914	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
789	Hubbs pyrg	Pyrgulopsis hubbsi	\N	Pyrgulopsis	hubbsi	9152408	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	909	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
790	bifid duct pyrg	Pyrgulopsis peculiaris	\N	Pyrgulopsis	peculiaris	9110250	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	934	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
791	Lake Valley pyrg	Pyrgulopsis sublata	\N	Pyrgulopsis	sublata	8954269	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	945	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
792	minute tryonia	Tryonia ericae	\N	Tryonia	ericae	5192414	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	1173	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
793	Pyramid Lake pebblesnail	Fluminicola dalli	\N	Fluminicola	dalli	5192426	Mollusca	Gastropoda	Littorinimorpha	Lithoglyphidae	gastropod	413	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
794	Fairbanks pyrg	Pyrgulopsis fairbanksensis	\N	Pyrgulopsis	fairbanksensis	2300019	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	904	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
795	southern Soldier Meadow pyrg	Pyrgulopsis umbilicata	\N	Pyrgulopsis	umbilicata	9092893	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	948	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
796	flag pyrg	Pyrgulopsis breviloba	\N	Pyrgulopsis	breviloba	8784607	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	893	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
797	distal-gland pyrg	Pyrgulopsis nanus	\N	Pyrgulopsis	nanus	2300023	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	927	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
798	southern Steptoe pyrg	Pyrgulopsis sulcata	\N	Pyrgulopsis	sulcata	9181021	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	946	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
799	northwest Bonneville pyrg	Pyrgulopsis variegata	\N	Pyrgulopsis	variegata	8906127	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	949	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
800	Antelope Valley pyrg	Pyrgulopsis pellita	\N	Pyrgulopsis	pellita	9157901	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	935	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
801	carinate Duckwater pyrg	Pyrgulopsis carinata	\N	Pyrgulopsis	carinata	8775530	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	896	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
802	Kings River pyrg	Pyrgulopsis imperialis	\N	Pyrgulopsis	imperialis	8837361	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	911	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
803	longitudinal gland pyrg	Pyrgulopsis anguina	\N	Pyrgulopsis	anguina	9056414	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	887	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
804	grated tryonia	Tryonia clathrata	\N	Tryonia	clathrata	5192404	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	1171	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
805	Big Warm Spring pyrg	Pyrgulopsis papillata	\N	Pyrgulopsis	papillata	9047790	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	933	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
806	Ash Meadows pebblesnail	Pyrgulopsis erythropoma	\N	Pyrgulopsis	erythropoma	2300030	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	903	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
807	elongate Mud Meadows pyrg	Pyrgulopsis notidicola	\N	Pyrgulopsis	notidicola	9139724	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	930	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
808	vineyards pyrg	Pyrgulopsis vinyardi	\N	Pyrgulopsis	vinyardi	8962577	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	951	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
809	large gland Carico pyrg	Pyrgulopsis basiglans	\N	Pyrgulopsis	basiglans	8871441	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	891	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
810	small gland Carico pyrg	Pyrgulopsis bifurcata	\N	Pyrgulopsis	bifurcata	8955682	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	892	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
811	Lockes pyrg	Pyrgulopsis lockensis	\N	Pyrgulopsis	lockensis	8795922	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	919	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
812	Butterfield pyrg	Pyrgulopsis lata	\N	Pyrgulopsis	lata	8824535	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	915	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
813	Moapa pebblesnail	Pyrgulopsis avernalis	\N	Pyrgulopsis	avernalis	2300018	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	890	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
814	Virginia Mountains pebblesnail	Fluminicola virginius	\N	Fluminicola	virginius	8954529	Mollusca	Gastropoda	Littorinimorpha	Lithoglyphidae	gastropod	417	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
815	ovate Cain Spring pyrg	Pyrgulopsis pictilis	\N	Pyrgulopsis	pictilis	9131022	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	936	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
816	median-gland Nevada pyrg	Pyrgulopsis pisteri	\N	Pyrgulopsis	pisteri	2299996	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	937	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
817	southeast Nevada pyrg	Pyrgulopsis turbatrix	\N	Pyrgulopsis	turbatrix	7738803	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	947	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
818	sportinggoods tryonia	Tryonia angulata	\N	Tryonia	angulata	5192406	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	1170	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
819	squat Mud Meadows pyrg	Pyrgulopsis limaria	\N	Pyrgulopsis	limaria	8960780	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	918	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
820	Blue Point pyrg	Pyrgulopsis coloradensis	\N	Pyrgulopsis	coloradensis	9122383	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	898	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
821	Camp Valley pyrg	Pyrgulopsis montana	\N	Pyrgulopsis	montana	8808727	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	926	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
822	western Lahontan pyrg	Pyrgulopsis longiglans	\N	Pyrgulopsis	longiglans	9078957	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	920	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
823	Crittenden pyrg	Pyrgulopsis lentiglans	\N	Pyrgulopsis	lentiglans	9175535	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	916	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
824	southern Duckwater pyrg	Pyrgulopsis anatina	\N	Pyrgulopsis	anatina	9147014	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	886	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
825	Point of Rocks tryonia	Tryonia elata	\N	Tryonia	elata	5192408	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	1172	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
826	Sterile Basin pyrg	Pyrgulopsis sterilis	\N	Pyrgulopsis	sterilis	8803861	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	944	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
827	flat-topped Steptoe pyrg	Pyrgulopsis planulata	\N	Pyrgulopsis	planulata	8912595	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	938	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
828	hardy pyrg	Pyrgulopsis marcida	\N	Pyrgulopsis	marcida	9099735	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	921	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
829	Corn Creek pyrg	Pyrgulopsis fausta	\N	Pyrgulopsis	fausta	9213157	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	905	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
830	Cortez Hills (Carlin) pebblesnail	Pyrgulopsis bryantwalkeri	\N	Pyrgulopsis	bryantwalkeri	2300021	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	895	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
831	Pahranagat pebblesnail	Pyrgulopsis merriami	\N	Pyrgulopsis	merriami	2300020	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	922	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
832	Sadas pyrg	Pyrgulopsis sadai	\N	Pyrgulopsis	sadai	8859698	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	940	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
833	Wongs pyrg	Pyrgulopsis wongi	\N	Pyrgulopsis	wongi	2299991	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	952	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
834	upper Thousand Spring pyrg	Pyrgulopsis hovinghi	\N	Pyrgulopsis	hovinghi	8856620	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	908	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
835	Humboldt pyrg	Pyrgulopsis humboldtensis	\N	Pyrgulopsis	humboldtensis	8848608	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	910	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
836	elongate Cain Spring pyrg	Pyrgulopsis augustae	\N	Pyrgulopsis	augustae	9085736	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	888	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
837	Duckwater Warm Springs pyrg	Pyrgulopsis villacampae	\N	Pyrgulopsis	villacampae	9195413	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	950	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
838	Dixie Valley pyrg	Pyrgulopsis dixensis	\N	Pyrgulopsis	dixensis	9006406	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	902	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
839	Monitor tryonia	Tryonia monitorae	\N	Tryonia	monitorae	8942293	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	1174	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
840	turban pebblesnail	Fluminicola turbiniformis	\N	Fluminicola	turbiniformis	5192427	Mollusca	Gastropoda	Littorinimorpha	Lithoglyphidae	gastropod	416	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
841	Twenty-one Mile pyrg	Pyrgulopsis millenaria	\N	Pyrgulopsis	millenaria	9094377	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	925	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
842	Emigrant pyrg	Pyrgulopsis gracilis	\N	Pyrgulopsis	gracilis	8935817	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	907	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
843	Moapa Valley pyrg	Pyrgulopsis carinifera	\N	Pyrgulopsis	carinifera	2299999	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	897	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
844	transverse gland pyrg	Pyrgulopsis cruciglans	\N	Pyrgulopsis	cruciglans	5784298	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	899	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
845	Fly Ranch pyrg	Pyrgulopsis bruesi	\N	Pyrgulopsis	bruesi	8817926	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	894	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
846	Duckwater pyrg	Pyrgulopsis aloba	\N	Pyrgulopsis	aloba	5784297	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	885	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
847	Spring Mountains pyrg	Pyrgulopsis deaconi	\N	Pyrgulopsis	deaconi	8742763	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	901	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
848	Crystal Spring pyrg	Pyrgulopsis crystalis	\N	Pyrgulopsis	crystalis	2300024	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	900	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
849	Oasis Valley pyrg	Pyrgulopsis micrococcus	\N	Pyrgulopsis	micrococcus	2299987	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	923	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
850	Pleasant Valley pyrg	Pyrgulopsis aurata	\N	Pyrgulopsis	aurata	8791117	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	889	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
851	Varners pyrg	Pyrgulopsis varneri	\N	Pyrgulopsis	varneri	8977434	Mollusca	Gastropoda	Littorinimorpha	Hydrobiidae	gastropod	1265	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
852	ambersnail (unknown)	Oxyloma sp.	\N	Oxyloma	sp.	7921295	Mollusca	Gastropoda	Stylommatophora	Succineidae	gastropod	740	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
853	black-footed tightcoil	Pristiloma chersinella	\N	Pristiloma	chersinella	2295349	Mollusca	Gastropoda	Stylommatophora	Zonitidae	gastropod	867	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
854	brown hive	Euconulus fulvus	\N	Euconulus	fulvus	4304721	Mollusca	Gastropoda	Stylommatophora	Helicarionidae	gastropod	398	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
855	carved glyph	Glyphyalinia indentata	\N	Glyphyalinia	indentata	2295378	Mollusca	Gastropoda	Stylommatophora	Zonitidae	gastropod	472	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
856	chrome ambersnail	Catinella rehderi	\N	Catinella	rehderi	5191205	Mollusca	Gastropoda	Stylommatophora	Succineidae	gastropod	189	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
857	crestless column	Pupilla hebes	\N	Pupilla	hebes	5190467	Mollusca	Gastropoda	Stylommatophora	Pupillidae	gastropod	882	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
858	cross vertigo	Vertigo modesta	\N	Vertigo	modesta	9127721	Mollusca	Gastropoda	Stylommatophora	Vertiginidae	gastropod	1212	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
859	cylindrical vertigo	Vertigo binneyana	\N	Vertigo	binneyana	2293993	Mollusca	Gastropoda	Stylommatophora	Vertiginidae	gastropod	1209	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
860	forest disc	Discus whitneyi	\N	Discus	whitneyi	5190494	Mollusca	Gastropoda	Stylommatophora	Discidae	gastropod	355	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
861	Humboldt ambersnail	Oxyloma sillimani	\N	Oxyloma	sillimani	5191187	Mollusca	Gastropoda	Stylommatophora	Succineidae	gastropod	739	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
862	Kyle Canyon mountainsnail	Oreohelix jaegeri	\N	Oreohelix	jaegeri	2293916	Mollusca	Gastropoda	Stylommatophora	Oreohelicidae	gastropod	723	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
863	lehmania (slug)	Lehmania valentianus	\N	Lehmania	valentianus	5190784	Mollusca	Gastropoda	Stylommatophora	Limacidae	gastropod	557	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
864	lyrate mountainsnail	Oreohelix haydeni	\N	Oreohelix	haydeni	2293937	Mollusca	Gastropoda	Stylommatophora	Oreohelicidae	gastropod	721	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
865	meadow slug	Deroceras laeve	\N	Deroceras	laeve	5781358	Mollusca	Gastropoda	Stylommatophora	Limacidae	gastropod	342	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
866	minute gem	Hawaiia minuscula	\N	Hawaiia	minuscula	2295309	Mollusca	Gastropoda	Stylommatophora	Zonitidae	gastropod	489	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
867	mitered vertigo	Vertigo concinnula	\N	Vertigo	concinnula	2293995	Mollusca	Gastropoda	Stylommatophora	Vertiginidae	gastropod	1210	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
868	mottled taildropper	Prophysaon obscurum	\N	Prophysaon	obscurum	2294066	Mollusca	Gastropoda	Stylommatophora	Arionidae	gastropod	873	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
869	mountainsnail (unknown)	Oreohelix sp.	\N	Oreohelix	sp.	2293898	Mollusca	Gastropoda	Stylommatophora	Oreohelicidae	gastropod	726	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
870	multirib vallonia	Vallonia gracilicosta	\N	Vallonia	gracilicosta	2296014	Mollusca	Gastropoda	Stylommatophora	Valloniidae	gastropod	1200	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
871	ninepipes ambersnail	Oxyloma missoula	\N	Oxyloma	missoula	5191194	Mollusca	Gastropoda	Stylommatophora	Succineidae	gastropod	738	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
872	ovate vertigo	Vertigo ovata	\N	Vertigo	ovata	2293979	Mollusca	Gastropoda	Stylommatophora	Vertiginidae	gastropod	1213	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
873	pinhead spot	Punctum conspectum	\N	Punctum	conspectum	4304735	Mollusca	Gastropoda	Stylommatophora	Punctidae	gastropod	880	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
874	quick gloss	Zonitoides arboreus	\N	Zonitoides	arboreus	2295425	Mollusca	Gastropoda	Stylommatophora	Gastrodontidae	gastropod	1248	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
875	riblet ambersnail	Catinella gabbi	\N	Catinella	gabbi	5191207	Mollusca	Gastropoda	Stylommatophora	Succineidae	gastropod	188	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
876	Rocky Mountain column	Pupilla blandi	\N	Pupilla	blandi	5190463	Mollusca	Gastropoda	Stylommatophora	Pupillidae	gastropod	881	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
877	rustic ambersnail	Succinea rusticana	\N	Succinea	rusticana	2297219	Mollusca	Gastropoda	Stylommatophora	Succineidae	gastropod	1110	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
878	Sierra ambersnail	Catinella stretchiana	\N	Catinella	stretchiana	5191206	Mollusca	Gastropoda	Stylommatophora	Succineidae	gastropod	191	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
879	silky vallonia	Vallonia cyclophorella	\N	Vallonia	cyclophorella	2296008	Mollusca	Gastropoda	Stylommatophora	Valloniidae	gastropod	1199	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
880	spruce snail	Microphysula ingersolli	\N	Microphysula	ingersolli	2294169	Mollusca	Gastropoda	Stylommatophora	Thysanophoridae	gastropod	627	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
881	striate disc	Discus shimekki	\N	Discus	shimekki	5190489	Mollusca	Gastropoda	Stylommatophora	Discidae	gastropod	354	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
882	thin pillar	Cochlicopa lubricella	\N	Cochlicopa	lubricella	2295976	Mollusca	Gastropoda	Stylommatophora	Cochlicopidae	gastropod	247	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
883	top-heavy column	Pupilla syngenes	\N	Pupilla	syngenes	5190464	Mollusca	Gastropoda	Stylommatophora	Pupillidae	gastropod	884	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
884	variable vertigo	Vertigo gouldi	\N	Vertigo	gouldi	2293985	Mollusca	Gastropoda	Stylommatophora	Vertiginidae	gastropod	1211	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
885	western glass-snail	Vitrina pellucida	\N	Vitrina	pellucida	2294290	Mollusca	Gastropoda	Stylommatophora	Vitrinidae	gastropod	1227	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
886	widespread column	Pupilla muscorum	\N	Pupilla	muscorum	5190466	Mollusca	Gastropoda	Stylommatophora	Pupillidae	gastropod	883	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
887	slug	Deroceras pachyostracon	\N	Deroceras	pachyostracon	5190776	Mollusca	Gastropoda	Stylommatophora	Limacidae	gastropod	1254	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
888	Goshute mountainsnail	Oreohelix loisae	\N	Oreohelix	loisae	2293898	Mollusca	Gastropoda	Stylommatophora	Oreohelicidae	gastropod	724	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
889	Whitepine mountainsnail	Oreohelix hemphilli	\N	Oreohelix	hemphilli	2293902	Mollusca	Gastropoda	Stylommatophora	Oreohelicidae	gastropod	722	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
890	Schell Creek mountainsnail	Oreohelix nevadensis	\N	Oreohelix	nevadensis	2293926	Mollusca	Gastropoda	Stylommatophora	Oreohelicidae	gastropod	725	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
891	depressed rocky mountainsnail	Oreohelix strigosa depressa	\N	Oreohelix	strigosa	8752532	Mollusca	Gastropoda	Stylommatophora	Oreohelicidae	gastropod	728	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
892	spring mountainsnail	Oreohelix handi	\N	Oreohelix	handi	2293930	Mollusca	Gastropoda	Stylommatophora	Oreohelicidae	gastropod	720	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
893	black juga	Juga nigrina	\N	Juga	nigrina	2301994	Mollusca	Gastropoda	\N	Pleuroceridae	gastropod	523	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
894	glossy valvata	Valvata humeralis	\N	Valvata	humeralis	2298074	Mollusca	Gastropoda	\N	Valvatidae	gastropod	1201	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
895	pleuroceridae (unknown)	Pleuroceridae sp.	\N	Pleuroceridae	sp.	2665	Mollusca	Gastropoda	\N	Pleuroceridae	gastropod	844	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
896	red-rim melania	Melanoides tuberculatus	\N	Melanoides	tuberculatus	4362965	Mollusca	Gastropoda	\N	Thiaridae	gastropod	613	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
897	snail (unknown)	Melanoides sp.	\N	Melanoides	sp.	2300936	Mollusca	Gastropoda	\N	Thiaridae	gastropod	612	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
898	oasis juga	Juga laurae	\N	Juga	laurae	2301987	Mollusca	Gastropoda	\N	Pleuroceridae	gastropod	522	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
899	smooth juga	Juga interioris	\N	Juga	interioris	2301992	Mollusca	Gastropoda	\N	Pleuroceridae	gastropod	521	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
900	cave obligate amphipod	Stygobromus lacicolus	\N	Stygobromus	lacicolus	2217885	Arthropoda	Malacostraca	Amphipoda	Crangonyctidae	crustacean	1107	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
901	amphipod	Hyalella azteca	\N	Hyalella	azteca	2217674	Arthropoda	Malacostraca	Amphipoda	Hyalellidae	crustacean	502	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
902	Herbsts amphipod	Stygobromus herbsti	\N	Stygobromus	herbsti	2217925	Arthropoda	Malacostraca	Amphipoda	Crangonyctidae	crustacean	1106	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
903	Lake Tahoe amphipod	Stygobromus tahoensis	\N	Stygobromus	tahoensis	2217914	Arthropoda	Malacostraca	Amphipoda	Crangonyctidae	crustacean	1109	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
904	Myers amphipod	Stygobromus myersae	\N	Stygobromus	myersae	2217930	Arthropoda	Malacostraca	Amphipoda	Crangonyctidae	crustacean	1108	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
905	scud (freshwater shrimp)	Hyalella sp.	\N	Hyalella	sp.	2217673	Arthropoda	Malacostraca	Amphipoda	Hyalellidae	crustacean	503	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
906	crayfish	Pacifastacus gambelii	\N	Pacifastacus	gambelii	2226988	Arthropoda	Malacostraca	Decapoda	Astacidae	crustacean	742	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
907	crayfish (unknown)	Pacifastacus sp.	\N	Pacifastacus	sp.	2226987	Arthropoda	Malacostraca	Decapoda	Astacidae	crustacean	744	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
908	crayfish (unknown)	Procambarus sp.	\N	Procambarus	sp.	2227127	Arthropoda	Malacostraca	Decapoda	Cambaridae	crustacean	869	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
909	red swamp crayfish	Procambarus clarkii	\N	Procambarus	clarkii	2227300	Arthropoda	Malacostraca	Decapoda	Cambaridae	crustacean	868	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
910	signal crayfish	Pacifastacus leniusculus	\N	Pacifastacus	leniusculus	2226990	Arthropoda	Malacostraca	Decapoda	Astacidae	crustacean	743	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
911	Snake River pilose crayfish	Pacifastacus connectens	\N	Pacifastacus	connectens	2226997	Arthropoda	Malacostraca	Decapoda	Astacidae	crustacean	1282	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
913	American bison	Bos bison	\N	Bos	bison	2441178	Chordata	Mammalia	Artiodactyla	Bovidae	ungulate	95	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
914	collared peccary	Pecari tajacu	\N	Pecari	tajacu	2440995	Chordata	Mammalia	Artiodactyla	Tayassuidae	ungulate	758	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
915	elk	Cervus canadensis	\N	Cervus	canadensis	8930122	Chordata	Mammalia	Artiodactyla	Cervidae	ungulate	207	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
916	moose	Alces alces	\N	Alces	alces	2440940	Chordata	Mammalia	Artiodactyla	Cervidae	ungulate	17	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
917	mountain goat	Oreamnos americanus	\N	Oreamnos	americanus	2441151	Chordata	Mammalia	Artiodactyla	Bovidae	ungulate	718	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
918	mule deer	Odocoileus hemionus	\N	Odocoileus	hemionus	2440974	Chordata	Mammalia	Artiodactyla	Cervidae	ungulate	699	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
919	pronghorn antelope	Antilocapra americana	\N	Antilocapra	americana	2440902	Chordata	Mammalia	Artiodactyla	Antilocapridae	ungulate	51	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
920	wild boar (razorback)	Sus scrofa	\N	Sus	scrofa	7705930	Chordata	Mammalia	Artiodactyla	Suidae	ungulate	1264	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
921	domestic goat	Capra aegagrus	\N	Capra	aegagrus	4409366	Chordata	Mammalia	Artiodactyla	Bovidae	ungulate	1293	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
922	domestic sheep	Ovis aries	\N	Ovis	aries	2441110	Chordata	Mammalia	Artiodactyla	Bovidae	ungulate	1294	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
923	domestic cow	Bos primigenius	\N	Bos	primigenius	2441024	Chordata	Mammalia	Artiodactyla	Bovidae	ungulate	1296	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
924	desert bighorn sheep	Ovis canadensis nelsoni	\N	Ovis	canadensis	4262556	Chordata	Mammalia	Artiodactyla	Bovidae	ungulate	736	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
925	California bighorn sheep	Ovis canadensis californiana	\N	Ovis	canadensis	4262555	Chordata	Mammalia	Artiodactyla	Bovidae	ungulate	734	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
926	Rocky Mountain bighorn sheep	Ovis canadensis canadensis	\N	Ovis	canadensis	4262538	Chordata	Mammalia	Artiodactyla	Bovidae	ungulate	735	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
928	American black bear	Ursus americanus	\N	Ursus	americanus	2433407	Chordata	Mammalia	Carnivora	Ursidae	carnivore	1194	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
930	bobcat	Lynx rufus	\N	Lynx	rufus	2435246	Chordata	Mammalia	Carnivora	Felidae	carnivore	596	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
931	Canada lynx	Lynx canadensis	\N	Lynx	canadensis	2435263	Chordata	Mammalia	Carnivora	Felidae	carnivore	595	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
932	coyote	Canis latrans	\N	Canis	latrans	5219153	Chordata	Mammalia	Carnivora	Canidae	carnivore	161	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
934	gray fox	Urocyon cinereoargenteus	\N	Urocyon	cinereoargenteus	2434566	Chordata	Mammalia	Carnivora	Canidae	carnivore	1189	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
935	gray wolf	Canis lupus	\N	Canis	lupus	5219173	Chordata	Mammalia	Carnivora	Canidae	carnivore	162	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
937	mountain lion	Puma concolor	\N	Puma	concolor	2435099	Chordata	Mammalia	Carnivora	Felidae	carnivore	411	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
940	red fox	Vulpes vulpes	\N	Vulpes	vulpes	5219234	Chordata	Mammalia	Carnivora	Canidae	carnivore	1232	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
945	domestic cat	Felis catus	\N	Felis	catus	2435022	Chordata	Mammalia	Carnivora	Felidae	carnivore	1295	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
947	kit fox	Vulpes macrotis	\N	Vulpes	macrotis	5219311	Chordata	Mammalia	Carnivora	Canidae	carnivore	1231	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
949	Sierra Nevada red fox	Vulpes vulpes necator	\N	Vulpes	vulpes	6164287	Chordata	Mammalia	Carnivora	Canidae	carnivore	1233	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
952	Arizona myotis	Myotis lucifugus occultus	\N	Myotis	lucifugus	8781890	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	663	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
953	free-tailed bat (unknown)	Tadarida sp.	\N	Tadarida	sp.	2433008	Chordata	Mammalia	Chiroptera	Molossidae	bat	1123	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
954	hairy-winged bat	Harpiocephalus harpia	\N	Harpiocephalus	harpia	2432380	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	488	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
955	Mexican long-tongued bat	Choeronycteris mexicana	\N	Choeronycteris	mexicana	2433207	Chordata	Mammalia	Chiroptera	Phyllostomidae	bat	233	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
956	myotis (unknown)	Myotis sp.	\N	Myotis	sp.	2432384	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	664	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
957	pale lump-nosed bat	Corynorhinus townsendii pallescens	\N	Corynorhinus	townsendii	6163672	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	272	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
958	Rafinesques big-eared bat	Corynorhinus rafinesquii	\N	Corynorhinus	rafinesquii	2432491	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	270	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
959	long-eared myotis	Myotis evotis	\N	Myotis	evotis	2432413	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	661	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
960	fringed myotis	Myotis thysanodes	\N	Myotis	thysanodes	2432399	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	665	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
961	little brown myotis	Myotis lucifugus	\N	Myotis	lucifugus	2432406	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	662	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
962	big brown bat	Eptesicus fuscus	\N	Eptesicus	fuscus	2432352	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	390	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
963	California leaf-nosed bat	Macrotus californicus	\N	Macrotus	californicus	2433296	Chordata	Mammalia	Chiroptera	Phyllostomidae	bat	597	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
964	Yuma myotis	Myotis yumanensis	\N	Myotis	yumanensis	2432461	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	668	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
965	Allens big-eared bat	Idionycteris phyllotis	\N	Idionycteris	phyllotis	2432525	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	518	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
966	pallid bat	Antrozous pallidus	\N	Antrozous	pallidus	2432339	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	52	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
967	hoary bat	Lasiurus cinereus	\N	Lasiurus	cinereus	5218544	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	555	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
968	big free-tailed bat	Nyctinomops macrotis	\N	Nyctinomops	macrotis	2433062	Chordata	Mammalia	Chiroptera	Molossidae	bat	696	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
969	long-legged myotis	Myotis volans	\N	Myotis	volans	2432411	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	667	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
970	Brazilian (Mexican) free-tailed bat	Tadarida brasiliensis	\N	Tadarida	brasiliensis	2433011	Chordata	Mammalia	Chiroptera	Molossidae	bat	1122	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
971	western red bat	Lasiurus blossevillii	\N	Lasiurus	blossevillii	5218548	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	554	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
972	Townsends big-eared bat	Corynorhinus townsendii	\N	Corynorhinus	townsendii	2432479	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	271	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
973	western small-footed myotis	Myotis ciliolabrum	\N	Myotis	ciliolabrum	2432456	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	660	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
974	western yellow bat	Lasiurus xanthinus	\N	Lasiurus	xanthinus	5218541	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	556	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
975	western pipistrelle	Parastrellus hesperus	\N	Parastrellus	hesperus	8397398	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	819	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
976	cave myotis	Myotis velifer	\N	Myotis	velifer	2432386	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	666	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
977	western mastiff bat	Eumops perotis	\N	Eumops	perotis	2432993	Chordata	Mammalia	Chiroptera	Molossidae	bat	401	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
978	California myotis	Myotis californicus	\N	Myotis	californicus	2432425	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	659	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
979	silver-haired bat	Lasionycteris noctivagans	\N	Lasionycteris	noctivagans	2432341	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	553	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
980	spotted bat	Euderma maculatum	\N	Euderma	maculatum	2432579	Chordata	Mammalia	Chiroptera	Vespertilionidae	bat	399	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
981	black-tailed jackrabbit	Lepus californicus	\N	Lepus	californicus	2436801	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	579	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
982	cottontail (unknown)	Sylvilagus sp.	\N	Sylvilagus	sp.	2436839	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	1117	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
983	desert cottontail	Sylvilagus audubonii	\N	Sylvilagus	audubonii	2436910	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	1115	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
984	European rabbit	Oryctolagus cuniculus	\N	Oryctolagus	cuniculus	2436940	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	732	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
985	mountain cottontail	Sylvilagus nuttallii	\N	Sylvilagus	nuttallii	2436854	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	1116	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
986	snowshoe hare	Lepus americanus	\N	Lepus	americanus	2436794	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	577	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
987	white-tailed jackrabbit	Lepus townsendii	\N	Lepus	townsendii	2436705	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	580	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
988	jackrabbit (unknown)	Lepus sp.	\N	Lepus	sp.	2436691	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	1299	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
989	American pika	Ochotona princeps	\N	Ochotona	princeps	2436982	Chordata	Mammalia	Lagomorpha	Ochotonidae	lagomorph	698	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
990	pygmy rabbit	Brachylagus idahoensis	\N	Brachylagus	idahoensis	2436688	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	97	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
991	Sierra Nevada snowshoe hare	Lepus americanus tahoensis	\N	Lepus	americanus	8735370	Chordata	Mammalia	Lagomorpha	Leporidae	lagomorph	578	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
992	ass	Equus asinus	\N	Equus	asinus	2440891	Chordata	Mammalia	Perissodactyla	Equidae	ungulate	391	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
993	horse	Equus caballus	\N	Equus	caballus	2440886	Chordata	Mammalia	Perissodactyla	Equidae	ungulate	392	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
994	American beaver	Castor canadensis	\N	Castor	canadensis	2439838	Chordata	Mammalia	Rodentia	Castoridae	rodent	180	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
995	Arizona cotton rat	Sigmodon arizonae	\N	Sigmodon	arizonae	2438148	Chordata	Mammalia	Rodentia	Cricetidae	rodent	1039	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
996	Arizona woodrat	Neotoma devia	\N	Neotoma	devia	2438449	Chordata	Mammalia	Rodentia	Cricetidae	rodent	683	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
997	Beldings ground squirrel	Spermophilus beldingi	\N	Spermophilus	beldingi	2437317	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1060	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
998	big jumping mouse	Zapus princeps oregonus	\N	Zapus	princeps	8735479	Chordata	Mammalia	Rodentia	Dipodidae	rodent	1244	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
999	Bottas pocket gopher	Thomomys bottae	\N	Thomomys	bottae	2439385	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1141	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1000	brown (Norway )rat	Rattus norvegicus	\N	Rattus	norvegicus	2439261	Chordata	Mammalia	Rodentia	Muridae	rodent	971	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1001	bushy-tailed woodrat	Neotoma cinerea	\N	Neotoma	cinerea	2438437	Chordata	Mammalia	Rodentia	Cricetidae	rodent	682	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1002	cactus deermouse	Peromyscus eremicus	\N	Peromyscus	eremicus	2437981	Chordata	Mammalia	Rodentia	Cricetidae	rodent	772	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1003	California ground squirrel	Spermophilus beecheyi	\N	Spermophilus	beecheyi	2437293	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1059	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1004	California kangaroo rat	Dipodomys californicus	\N	Dipodomys	californicus	2439546	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	345	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1005	canyon deermouse	Peromyscus crinitus	\N	Peromyscus	crinitus	2438021	Chordata	Mammalia	Rodentia	Cricetidae	rodent	771	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1006	chipmunk (unknown)	Neotamias sp.	\N	Neotamias	sp.	4828027	Chordata	Mammalia	Rodentia	Sciuridae	rodent	677	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1007	chisel-toothed kangaroo rat	Dipodomys microps	\N	Dipodomys	microps	2439510	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	348	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1008	cliff chipmunk	Neotamias dorsalis	\N	Neotamias	dorsalis	4972385	Chordata	Mammalia	Rodentia	Sciuridae	rodent	671	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1009	Colorado River cotton rat	Sigmodon arizonae plenus	\N	Sigmodon	arizonae	6163540	Chordata	Mammalia	Rodentia	Cricetidae	rodent	1040	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1010	common muskrat	Ondatra zibethicus	\N	Ondatra	zibethicus	5219858	Chordata	Mammalia	Rodentia	Cricetidae	rodent	710	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1011	coypu	Myocastor coypus	\N	Myocastor	coypus	4264680	Chordata	Mammalia	Rodentia	Myocastoridae	rodent	658	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1012	dark kangaroo mouse	Microdipodops megacephalus	\N	Microdipodops	megacephalus	2439502	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	622	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1013	deermouse	Peromyscus crinerea	\N	Peromyscus	crinerea	2437961	Chordata	Mammalia	Rodentia	Cricetidae	rodent	770	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1014	deermouse (unknown)	Peromyscus sp.	\N	Peromyscus	sp.	2437961	Chordata	Mammalia	Rodentia	Cricetidae	rodent	774	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1015	desert woodrat	Neotoma lepida	\N	Neotoma	lepida	2438438	Chordata	Mammalia	Rodentia	Cricetidae	rodent	685	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1016	dusky-footed woodrat	Neotoma fuscipes	\N	Neotoma	fuscipes	2438455	Chordata	Mammalia	Rodentia	Cricetidae	rodent	684	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1017	golden-mantled ground squirrel	Spermophilus lateralis	\N	Spermophilus	lateralis	2437297	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1063	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1018	grasshopper mouse (unknown)	Onychomys sp.	\N	Onychomys	sp.	2438514	Chordata	Mammalia	Rodentia	Cricetidae	rodent	712	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1019	Great Basin pocket mouse	Perognathus parvus	\N	Perognathus	parvus	2439554	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	767	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1020	ground squirrel (unknown)	Spermophilus sp.	\N	Spermophilus	sp.	2437289	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1066	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1021	hoary marmot	Marmota caligata	\N	Marmota	caligata	2437378	Chordata	Mammalia	Rodentia	Sciuridae	rodent	599	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1022	house mouse	Mus musculus	\N	Mus	musculus	7429082	Chordata	Mammalia	Rodentia	Muridae	rodent	646	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1023	kangaroo mouse (unknown)	Microdipodops sp.	\N	Microdipodops	sp.	2439500	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	626	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1024	kangaroo rat (unknown)	Dipodomys sp.	\N	Dipodomys	sp.	2439509	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	351	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1025	least chipmunk	Neotamias minimus	\N	Neotamias	minimus	4828027	Chordata	Mammalia	Rodentia	Sciuridae	rodent	672	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1026	little pocket mouse	Perognathus longimembris	\N	Perognathus	longimembris	2439563	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	766	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1027	lodgepole chipmunk	Neotamias speciosus	\N	Neotamias	speciosus	4972383	Chordata	Mammalia	Rodentia	Sciuridae	rodent	678	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1028	long-eared chipmunk	Neotamias quadrimaculatus	\N	Neotamias	quadrimaculatus	4972373	Chordata	Mammalia	Rodentia	Sciuridae	rodent	675	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1029	long-tailed pocket mouse	Chaetodipus formosus	\N	Chaetodipus	formosus	2439596	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	210	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1030	long-tailed pocket mouse	Perognathus formosus	\N	Perognathus	formosus	2439597	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	765	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1031	long-tailed vole	Microtus longicaudus	\N	Microtus	longicaudus	2438621	Chordata	Mammalia	Rodentia	Cricetidae	rodent	631	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1032	marmot (unknown)	Marmota sp.	\N	Marmota	sp.	2437364	Chordata	Mammalia	Rodentia	Sciuridae	rodent	601	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1033	meadow jumping mouse	Zapus hudsonius	\N	Zapus	hudsonius	2439467	Chordata	Mammalia	Rodentia	Dipodidae	rodent	1242	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1034	Merriams ground squirrel	Spermophilus canus	\N	Spermophilus	canus	2437324	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1061	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1035	Merriams kangaroo rat	Dipodomys merriami	\N	Dipodomys	merriami	2439521	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	347	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1036	montane vole	Microtus montanus	\N	Microtus	montanus	2438609	Chordata	Mammalia	Rodentia	Cricetidae	rodent	632	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1037	North American deermouse	Peromyscus maniculatus	\N	Peromyscus	maniculatus	2437967	Chordata	Mammalia	Rodentia	Cricetidae	rodent	773	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1038	North American porcupine	Erethizon dorsatum	\N	Erethizon	dorsatum	6066824	Chordata	Mammalia	Rodentia	Erethizontidae	rodent	396	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1039	northern grasshopper mouse	Onychomys leucogaster	\N	Onychomys	leucogaster	2438517	Chordata	Mammalia	Rodentia	Cricetidae	rodent	711	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1040	northern pocket gopher	Thomomys talpoides	\N	Thomomys	talpoides	2439383	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1147	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1041	Ords kangaroo rat	Dipodomys ordii	\N	Dipodomys	ordii	2439541	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	349	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1042	Panamint chipmunk	Neotamias panamintinus	\N	Neotamias	panamintinus	4972387	Chordata	Mammalia	Rodentia	Sciuridae	rodent	674	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1043	Panamint kangaroo rat	Dipodomys panamintinus	\N	Dipodomys	panamintinus	2439513	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	350	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1044	pinyon deermouse	Peromyscus truei	\N	Peromyscus	truei	2437985	Chordata	Mammalia	Rodentia	Cricetidae	rodent	775	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1045	Piute ground squirrel	Spermophilus mollis	\N	Spermophilus	mollis	2437328	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1064	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1046	plains harvest mouse	Reithrodontomys montanus	\N	Reithrodontomys	montanus	2437866	Chordata	Mammalia	Rodentia	Cricetidae	rodent	977	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1047	pocket gopher (unknown)	Thomomys sp.	\N	Thomomys	sp.	2439381	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1146	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1048	pocket mouse (unknown)	Chaetodipus sp.	\N	Chaetodipus	sp.	2439576	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	213	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1049	pocket mouse (unknown)	Perognathus sp.	\N	Perognathus	sp.	2439552	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	768	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1050	Richardsons ground squirrel	Spermophilus richardsonii nevadensis	\N	Spermophilus	richardsonii	2437299	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1065	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1051	rock squirrel	Spermophilus variegatus	\N	Spermophilus	variegatus	2437329	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1069	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1052	roof rat	Rattus rattus	\N	Rattus	rattus	2439270	Chordata	Mammalia	Rodentia	Muridae	rodent	972	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1053	round-tailed ground squirrel	Spermophilus tereticaudus	\N	Spermophilus	tereticaudus	2437325	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1067	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1054	southern grasshopper mouse	Onychomys torridus	\N	Onychomys	torridus	2438516	Chordata	Mammalia	Rodentia	Cricetidae	rodent	713	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1055	southern pocket gopher	Thomomys umbrinus	\N	Thomomys	umbrinus	2439382	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1149	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1056	Townsends ground squirrel	Spermophilus townsendii	\N	Spermophilus	townsendii	2437313	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1068	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1057	Townsends pocket gopher	Thomomys townsendii	\N	Thomomys	townsendii	2439388	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1148	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1058	Uinta chipmunk	Neotamias umbrinus	\N	Neotamias	umbrinus	4972376	Chordata	Mammalia	Rodentia	Sciuridae	rodent	679	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1059	Fish Lake Valley pocket gopher	Thomomys bottae lacrymalis	\N	Thomomys	bottae	4264378	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1144	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1060	vole (unknown)	Microtus sp.	\N	Microtus	sp.	2438591	Chordata	Mammalia	Rodentia	Cricetidae	rodent	635	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1061	western gray squirrel	Sciurus griseus	\N	Sciurus	griseus	5219672	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1028	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1062	western harvest mouse	Reithrodontomys megalotis	\N	Reithrodontomys	megalotis	2437874	Chordata	Mammalia	Rodentia	Cricetidae	rodent	976	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1063	white-tailed antelope squirrel	Ammospermophilus leucurus	\N	Ammospermophilus	leucurus	2437570	Chordata	Mammalia	Rodentia	Sciuridae	rodent	28	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1064	white-tailed prairie dog	Cynomys leucurus	\N	Cynomys	leucurus	2437233	Chordata	Mammalia	Rodentia	Sciuridae	rodent	308	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1065	white-throated woodrat	Neotoma albigula	\N	Neotoma	albigula	2438454	Chordata	Mammalia	Rodentia	Cricetidae	rodent	681	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1066	woodrat (unknown)	Neotoma sp.	\N	Neotoma	sp.	2438433	Chordata	Mammalia	Rodentia	Cricetidae	rodent	686	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1067	Wyoming ground squirrel	Spermophilus elegans	\N	Spermophilus	elegans	2437319	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1062	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1068	yellow-bellied marmot	Marmota flaviventris	\N	Marmota	flaviventris	2437369	Chordata	Mammalia	Rodentia	Sciuridae	rodent	600	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1069	yellow-pine chipmunk	Neotamias amoenus	\N	Neotamias	amoenus	4972377	Chordata	Mammalia	Rodentia	Sciuridae	rodent	669	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1070	Hidden Forest cliff chipmunk	Neotamias dorsalis grinnelli	\N	Neotamias	dorsalis	4972385	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1272	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1071	Mexican vole	Microtus mexicanus	\N	Microtus	mexicanus	2438651	Chordata	Mammalia	Rodentia	Cricetidae	rodent	1277	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1072	Chihuahuan grasshopper mouse	Onychormys arenicola	\N	Onychormys	arenicola	2438515	Chordata	Mammalia	Rodentia	Cricetidae	rodent	1279	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1073	rat (unknown)	Rattus sp.	\N	Rattus	sp.	2439223	Chordata	Mammalia	Rodentia	Muridae	rodent	1281	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1074	Yosemite meadow mouse	Microtus montanus yosemite	\N	Microtus	montanus	9058533	Chordata	Mammalia	Rodentia	Cricetidae	rodent	1284	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1075	Smokey Valley pocket gopher	Thomomys bottae fumosus	\N	Thomomys	bottae	4264357	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1285	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1076	Virgin River Valley pocket gopher	Thomomys bottae virgineus	\N	Thomomys	bottae	8974378	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1290	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1077	Pacific jumping mouse	Zapus trinotatus	\N	Zapus	trinotatus	2439471	Chordata	Mammalia	Rodentia	Dipodidae	rodent	1267	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1078	mountain pocket gopher	Thomomys monticola	\N	Thomomys	monticola	2439386	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1145	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1079	spiny pocket mouse	Chaetodipus spinatus	\N	Chaetodipus	spinatus	2439586	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	214	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1080	desert kangaroo rat	Dipodomys deserti	\N	Dipodomys	deserti	2439535	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	346	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1081	desert pocket mouse	Chaetodipus penicillatus	\N	Chaetodipus	penicillatus	2439591	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	211	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1082	northern flying squirrel	Glaucomys sabrinus	\N	Glaucomys	sabrinus	2437331	Chordata	Mammalia	Rodentia	Sciuridae	rodent	471	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1083	Pahranagat Valley montane vole	Microtus montanus fucosus	\N	Microtus	montanus	8908199	Chordata	Mammalia	Rodentia	Cricetidae	rodent	633	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1084	Humboldt yellow-pine chipmunk	Neotamias amoenus celeris	\N	Neotamias	amoenus	4972377	Chordata	Mammalia	Rodentia	Sciuridae	rodent	670	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1085	Ash Meadows montane vole	Microtus montanus nevadensis	\N	Microtus	montanus	9215386	Chordata	Mammalia	Rodentia	Cricetidae	rodent	634	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1086	Sierra Nevada mountain beaver	Aplodontia rufa californica	\N	Aplodontia	rufa	6163524	Chordata	Mammalia	Rodentia	Aplodontiidae	rodent	59	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1087	sagebrush vole	Lemmiscus curtatus	\N	Lemmiscus	curtatus	2438225	Chordata	Mammalia	Rodentia	Cricetidae	rodent	558	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1088	Fletcher dark kangaroo mouse	Microdipodops megacephalus nasutus	\N	Microdipodops	megacephalus	4263163	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	624	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1089	Allens (shadow) chipmunk	Neotamias senex	\N	Neotamias	senex	4972382	Chordata	Mammalia	Rodentia	Sciuridae	rodent	676	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1090	Fish Spring pocket gopher	Thomomys bottae abstrusus	\N	Thomomys	bottae	4264464	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1142	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1091	Douglass squirrel	Tamiasciurus douglasii	\N	Tamiasciurus	douglasii	2437281	Chordata	Mammalia	Rodentia	Sciuridae	rodent	1126	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1092	western jumping mouse	Zapus princeps	\N	Zapus	princeps	2439473	Chordata	Mammalia	Rodentia	Dipodidae	rodent	1243	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1093	Hidden Forest Uinta chipmunk	Neotamias umbrinus nevadensis	\N	Neotamias	umbrinus	4972376	Chordata	Mammalia	Rodentia	Sciuridae	rodent	680	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1094	San Antonio pocket gopher	Thomomys bottae curtatus	\N	Thomomys	bottae	4264456	Chordata	Mammalia	Rodentia	Geomyidae	rodent	1143	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1095	pale kangaroo mouse	Microdipodops pallidus	\N	Microdipodops	pallidus	2439501	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	625	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1096	Palmers chipmunk	Neotamias palmeri	\N	Neotamias	palmeri	4828027	Chordata	Mammalia	Rodentia	Sciuridae	rodent	673	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1097	Desert Valley kangaroo mouse	Microdipodops megacephalus albiventer	\N	Microdipodops	megacephalus	4263161	Chordata	Mammalia	Rodentia	Heteromyidae	rodent	623	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1098	brush mouse	Peromyscus boylii rowleyi	\N	Peromyscus	boylii	8758470	Chordata	Mammalia	Rodentia	Cricetidae	rodent	769	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1099	broad-footed mole	Scapanus latimanus	\N	Scapanus	latimanus	2436194	Chordata	Mammalia	Soricomorpha	Talpidae	shrewform	1018	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1100	cinereus shrew	Sorex cinereus	\N	Sorex	cinereus	2435964	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	1049	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1101	dusky shrew	Sorex monticolus	\N	Sorex	monticolus	2436019	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	1051	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1102	shrew (unknown)	Sorex sp.	\N	Sorex	sp.	2435935	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	1054	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1103	vagrant shrew	Sorex vagrans	\N	Sorex	vagrans	2436042	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	1057	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1104	Inyo shrew	Sorex tenellus	\N	Sorex	tenellus	2435993	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	1055	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1105	Prebles shrew	Sorex preblei	\N	Sorex	preblei	2435996	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	1053	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1106	Crawfords desert shrew	Notiosorex crawfordi	\N	Notiosorex	crawfordi	2435812	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	689	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1107	American water shrew	Sorex palustris	\N	Sorex	palustris	2436006	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	1052	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1108	Merriams shrew	Sorex merriami	\N	Sorex	merriami	2435989	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	1050	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1109	Trowbridges shrew	Sorex trowbridgii	\N	Sorex	trowbridgii	2435936	Chordata	Mammalia	Soricomorpha	Soricidae	shrewform	1056	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1110	ostracod	Candona tahoensis	\N	Candona	tahoensis	4987774	Arthropoda	Ostracoda	Podocopida	Candonidae	crustacean	160	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1111	bullsnake	Pituophis catenifer sayi	\N	Pituophis	catenifer	6162132	Chordata	Reptilia	Squamata	Colubridae	snake	829	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1112	common kingsnake	Lampropeltis getula californiae	\N	Lampropeltis	getula	5224481	Chordata	Reptilia	Squamata	Colubridae	snake	532	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1113	California mountain kingsnake	Lampropeltis zonata	\N	Lampropeltis	zonata	5224449	Chordata	Reptilia	Squamata	Colubridae	snake	535	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1114	Clark spiny lizard	Sceloporus clarkii	\N	Sceloporus	clarkii	2451192	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1019	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1115	coachwhip	Coluber flagellum	\N	Coluber	flagellum	4287637	Chordata	Reptilia	Squamata	Colubridae	snake	255	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1116	coachwhip/racer/whipsnake (unknown)	Masticophis sp.	\N	Masticophis	sp.	2452132	Chordata	Reptilia	Squamata	Colubridae	snake	603	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1117	Colorado River tree lizard	Urosaurus ornatus symmetricus	\N	Urosaurus	ornatus	6159884	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1193	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1118	common gartersnake	Thamnophis sirtalis	\N	Thamnophis	sirtalis	2457522	Chordata	Reptilia	Squamata	Colubridae	snake	1138	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1119	common sagebrush lizard	Sceloporus graciosus	\N	Sceloporus	graciosus	2451223	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1020	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1120	common side-blotched lizard	Uta stansburiana	\N	Uta	stansburiana	2451029	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1197	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1121	desert banded gecko	Coleonyx variegatus variegatus	\N	Coleonyx	variegatus	7061954	Chordata	Reptilia	Squamata	Eublepharidae	lizard	252	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1122	desert glossy snake	Arizona elegans eburnata	\N	Arizona	elegans	5223743	Chordata	Reptilia	Squamata	Colubridae	snake	68	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1123	desert horned lizard	Phrynosoma platyrhinos	\N	Phrynosoma	platyrhinos	5222442	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	791	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1124	desert night lizard	Xantusia vigilis	\N	Xantusia	vigilis	2451726	Chordata	Reptilia	Squamata	Xantusiidae	lizard	1239	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1125	desert spiny lizard	Sceloporus magister	\N	Sceloporus	magister	2451393	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1022	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1126	desert striped whipsnake	Coluber taeniatus taeniatus	\N	Coluber	taeniatus	8908253	Chordata	Reptilia	Squamata	Colubridae	snake	258	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1127	Dumerils boa constrictor	Boa dumerili	\N	Boa	dumerili	2465138	Chordata	Reptilia	Squamata	Boidae	snake	91	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1128	eastern collared lizard	Crotaphytus collaris	\N	Crotaphytus	collaris	9098006	Chordata	Reptilia	Squamata	Crotaphytidae	lizard	301	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1129	eastern fence lizard	Sceloporus undulatus	\N	Sceloporus	undulatus	2451143	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1026	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1130	eastern wormsnake	Carphophis amoenus	\N	Carphophis	amoenus	2457092	Chordata	Reptilia	Squamata	Colubridae	snake	175	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1131	gartersnake (unknown)	Thamnophis sp.	\N	Thamnophis	sp.	2457825	Chordata	Reptilia	Squamata	Colubridae	snake	1140	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1132	Gilberts skink	Plestiodon gilberti	\N	Plestiodon	gilberti	5789627	Chordata	Reptilia	Squamata	Scincidae	lizard	839	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1133	glossy snake	Arizona elegans	\N	Arizona	elegans	5223735	Chordata	Reptilia	Squamata	Colubridae	snake	66	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1134	gophersnake	Pituophis catenifer	\N	Pituophis	catenifer	2453826	Chordata	Reptilia	Squamata	Colubridae	snake	827	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1135	Great Basin collared lizard	Crotaphytus bicinctores	\N	Crotaphytus	bicinctores	2470618	Chordata	Reptilia	Squamata	Crotaphytidae	lizard	300	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1136	Great Basin fence lizard	Sceloporus occidentalis longipes	\N	Sceloporus	occidentalis	6159807	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1024	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1137	Great Basin gophersnake	Pituophis catenifer deserticola	\N	Pituophis	catenifer	6162142	Chordata	Reptilia	Squamata	Colubridae	snake	828	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1138	Great Basin rattlesnake	Crotalus oreganus lutosus	\N	Crotalus	oreganus	6157433	Chordata	Reptilia	Squamata	Viperidae	snake	295	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1139	Great Basin skink	Plestiodon skiltonianus utahensis	\N	Plestiodon	skiltonianus	8721941	Chordata	Reptilia	Squamata	Scincidae	lizard	843	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1140	Great Basin whiptail	Aspidoscelis tigris tigris	\N	Aspidoscelis	tigris	6158623	Chordata	Reptilia	Squamata	Teiidae	lizard	74	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1141	greater short-horned lizard	Phrynosoma hernandesi	\N	Phrynosoma	hernandesi	5222456	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	790	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1142	long-nosed leopard lizard	Gambelia wislizenii	\N	Gambelia	wislizenii	8613410	Chordata	Reptilia	Squamata	Crotaphytidae	lizard	435	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1143	long-nosed snake	Rhinocheilus lecontei	\N	Rhinocheilus	lecontei	2456330	Chordata	Reptilia	Squamata	Colubridae	snake	994	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1144	Mediterranean gecko	Hemidactylus turcicus	\N	Hemidactylus	turcicus	5221528	Chordata	Reptilia	Squamata	Gekkonidae	lizard	497	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1145	Mexican gartersnake	Thamnophis eques	\N	Thamnophis	eques	2457655	Chordata	Reptilia	Squamata	Colubridae	snake	1137	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1146	Mojave Desert sidewinder	Crotalus cerastes cerastes	\N	Crotalus	cerastes	7190312	Chordata	Reptilia	Squamata	Viperidae	snake	291	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1147	Mojave glossy snake	Arizona elegans candida	\N	Arizona	elegans	5223747	Chordata	Reptilia	Squamata	Colubridae	snake	67	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1148	Mojave patch-nosed snake	Salvadora hexalepis mojavensis	\N	Salvadora	hexalepis	5224362	Chordata	Reptilia	Squamata	Colubridae	snake	1007	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1149	Mojave rattlesnake	Crotalus scutulatus	\N	Crotalus	scutulatus	2444480	Chordata	Reptilia	Squamata	Viperidae	snake	296	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1150	Mojave shovel-nosed snake	Chionactis occipitalis occipitalis	\N	Chionactis	occipitalis	7190574	Chordata	Reptilia	Squamata	Colubridae	snake	229	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1151	mountain gartersnake	Thamnophis elegans elegans	\N	Thamnophis	elegans	7061660	Chordata	Reptilia	Squamata	Colubridae	snake	1135	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1152	Nevada shovel-nosed snake	Chionactis occipitalis talpina	\N	Chionactis	occipitalis	6162176	Chordata	Reptilia	Squamata	Colubridae	snake	230	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1153	Nevada side-blotched lizard	Uta stansburiana nevadensis	\N	Uta	stansburiana	6159928	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1198	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1154	North American racer	Coluber constrictor	\N	Coluber	constrictor	6161776	Chordata	Reptilia	Squamata	Colubridae	snake	253	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1155	northern desert nightsnake	Hypsiglena chlorophaea deserticola	\N	Hypsiglena	chlorophaea	8928183	Chordata	Reptilia	Squamata	Colubridae	snake	508	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1156	northern alligator lizard	Elgaria coerulea	\N	Elgaria	coerulea	2468254	Chordata	Reptilia	Squamata	Anguidae	snake	369	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1157	northern desert horned lizard	Phrynosoma platyrhinos platyrhinos	\N	Phrynosoma	platyrhinos	7061473	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	793	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1158	northern Mojave rattlesnake	Crotalus scutulatus scutulatus	\N	Crotalus	scutulatus	7061886	Chordata	Reptilia	Squamata	Viperidae	snake	297	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1159	northern sagebrush lizard	Sceloporus graciosus graciosus	\N	Sceloporus	graciosus	6159848	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1021	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1160	northern zebra-tailed lizard	Callisaurus draconoides myurus	\N	Callisaurus	draconoides	6159934	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	155	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1161	ornate tree lizard	Urosaurus ornatus	\N	Urosaurus	ornatus	8538855	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1192	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1162	Panamint alligator lizard	Elgaria panamintina	\N	Elgaria	panamintina	2468282	Chordata	Reptilia	Squamata	Anguidae	snake	374	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1163	Panamint rattlesnake	Crotalus stephensi	\N	Crotalus	stephensi	7916212	Chordata	Reptilia	Squamata	Viperidae	snake	299	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1164	plateau fence lizard	Sceloporus tristichus	\N	Sceloporus	tristichus	4287358	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1025	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1165	rattlesnake (unknown)	Crotalus sp.	\N	Crotalus	sp.	2444354	Chordata	Reptilia	Squamata	Viperidae	snake	298	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1166	red racer	Coluber flagellum piceus	\N	Coluber	flagellum	8724746	Chordata	Reptilia	Squamata	Colubridae	snake	256	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1167	regal ring-necked snake	Diadophis punctatus regalis	\N	Diadophis	punctatus	6161401	Chordata	Reptilia	Squamata	Colubridae	snake	344	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1168	San Diego alligator lizard	Elgaria multicarinata webbii	\N	Elgaria	multicarinata	6160608	Chordata	Reptilia	Squamata	Anguidae	snake	373	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1169	Skiltons skink	Plestiodon skiltonianus skiltonianus	\N	Plestiodon	skiltonianus	8943208	Chordata	Reptilia	Squamata	Scincidae	lizard	842	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1170	Smiths black-headed snake	Tantilla hobartsmithi	\N	Tantilla	hobartsmithi	2456394	Chordata	Reptilia	Squamata	Colubridae	snake	1127	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1171	Sonoran lyre snake	Trimorphodon biscutatus lambda	\N	Trimorphodon	biscutatus	6161266	Chordata	Reptilia	Squamata	Colubridae	snake	1159	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1172	Sonoran shovel-nosed snake	Chionactis palarostris	\N	Chionactis	palarostris	2457400	Chordata	Reptilia	Squamata	Colubridae	snake	231	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1173	southern alligator lizard	Elgaria multicarinata	\N	Elgaria	multicarinata	2468262	Chordata	Reptilia	Squamata	Anguidae	snake	372	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1174	southern desert horned lizard	Phrynosoma platyrhinos calidiarum	\N	Phrynosoma	platyrhinos	5222446	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	792	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1175	southwestern speckled rattlesnake	Crotalus mitchellii pyrrhus	\N	Crotalus	mitchellii	2444387	Chordata	Reptilia	Squamata	Viperidae	snake	293	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1176	speckled rattlesnake	Crotalus mitchellii	\N	Crotalus	mitchellii	2444383	Chordata	Reptilia	Squamata	Viperidae	snake	292	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1177	spotted leaf-nosed snake	Phyllorhynchus decurtatus	\N	Phyllorhynchus	decurtatus	2452649	Chordata	Reptilia	Squamata	Colubridae	snake	794	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1178	striped whipsnake	Coluber taeniatus	\N	Coluber	taeniatus	8404655	Chordata	Reptilia	Squamata	Colubridae	snake	257	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1179	terrestrial gartersnake	Thamnophis elegans	\N	Thamnophis	elegans	2457545	Chordata	Reptilia	Squamata	Colubridae	snake	1134	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1180	tiger whiptail	Aspidoscelis tigris	\N	Aspidoscelis	tigris	8913064	Chordata	Reptilia	Squamata	Teiidae	lizard	73	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1181	Utah banded gecko	Coleonyx variegatus utahensis	\N	Coleonyx	variegatus	6157717	Chordata	Reptilia	Squamata	Eublepharidae	lizard	251	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1182	Utah mountain kingsnake	Lampropeltis pyromelana infralabialis	\N	Lampropeltis	pyromelana	5224459	Chordata	Reptilia	Squamata	Colubridae	snake	534	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1183	valley gartersnake	Thamnophis sirtalis fitchi	\N	Thamnophis	sirtalis	6161471	Chordata	Reptilia	Squamata	Colubridae	snake	1139	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1184	variable groundsnake	Sonora semiannulata semiannulata	\N	Sonora	semiannulata	4287819	Chordata	Reptilia	Squamata	Colubridae	snake	1048	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1185	wandering gartersnake	Thamnophis elegans vagrans	\N	Thamnophis	elegans	6161479	Chordata	Reptilia	Squamata	Colubridae	snake	1136	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1186	western banded gecko	Coleonyx variegatus	\N	Coleonyx	variegatus	2447244	Chordata	Reptilia	Squamata	Eublepharidae	lizard	250	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1187	western black-headed snake	Tantilla planiceps	\N	Tantilla	planiceps	2456418	Chordata	Reptilia	Squamata	Colubridae	snake	1128	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1188	western diamond-backed rattlesnake	Crotalus atrox	\N	Crotalus	atrox	2444356	Chordata	Reptilia	Squamata	Viperidae	snake	289	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1189	western fence lizard	Sceloporus occidentalis	\N	Sceloporus	occidentalis	2451234	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1023	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1190	western glossy snake	Arizona occidentalis	\N	Arizona	occidentalis	7813748	Chordata	Reptilia	Squamata	Colubridae	snake	69	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1191	western groundsnake	Sonora semiannulata	\N	Sonora	semiannulata	2453084	Chordata	Reptilia	Squamata	Colubridae	snake	1047	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1192	western long-tailed brush lizard	Urosaurus graciosus graciosus	\N	Urosaurus	graciosus	7061470	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1191	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1193	western lyre snake	Trimorphodon biscutatus	\N	Trimorphodon	biscutatus	2455922	Chordata	Reptilia	Squamata	Colubridae	snake	1158	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1194	western patch-nosed snake	Salvadora hexalepis	\N	Salvadora	hexalepis	5224357	Chordata	Reptilia	Squamata	Colubridae	snake	1006	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1195	western rattlesnake	Crotalus oreganus	\N	Crotalus	oreganus	2444446	Chordata	Reptilia	Squamata	Viperidae	snake	294	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1196	western shovel-nosed snake	Chionactis occipitalis	\N	Chionactis	occipitalis	2457404	Chordata	Reptilia	Squamata	Colubridae	snake	228	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1197	western skink	Plestiodon skiltonianus	\N	Plestiodon	skiltonianus	5960558	Chordata	Reptilia	Squamata	Scincidae	lizard	841	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1198	western threadsnake	Leptotyphlops humilis	\N	Leptotyphlops	humilis	2448527	Chordata	Reptilia	Squamata	Leptotyphlopidae	lizard	575	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1199	western yellow-bellied racer	Coluber constrictor mormon	\N	Coluber	constrictor	7492692	Chordata	Reptilia	Squamata	Colubridae	snake	254	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1200	yellow-backed spiny lizard	Sceloporus uniformis	\N	Sceloporus	uniformis	8322819	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1027	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1201	zebra-tailed lizard	Callisaurus draconoides	\N	Callisaurus	draconoides	2451459	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	154	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1202	collard lizard (unknown)	Crotaphytus sp.	\N	Crotaphytus	sp.	2470634	Chordata	Reptilia	Squamata	Crotaphytidae	lizard	1286	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1203	horned lizard (unknown)	Phrynosoma sp.	\N	Phrynosoma	sp.	2451046	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	1287	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1204	northern rubber boa	Charina bottae	\N	Charina	bottae	5225695	Chordata	Reptilia	Squamata	Boidae	snake	221	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1205	ring-necked snake	Diadophis punctatus	\N	Diadophis	punctatus	8763701	Chordata	Reptilia	Squamata	Colubridae	snake	343	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1206	northern desert iguana	Dipsosaurus dorsalis dorsalis	\N	Dipsosaurus	dorsalis	7061486	Chordata	Reptilia	Squamata	Iguanidae	lizard	353	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1207	western red-tailed skink	Plestiodon gilberti rubricaudatus	\N	Plestiodon	gilberti	8717244	Chordata	Reptilia	Squamata	Scincidae	lizard	840	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1208	common chuckwalla	Sauromalus ater	\N	Sauromalus	ater	2459705	Chordata	Reptilia	Squamata	Iguanidae	lizard	1014	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1209	pygmy short-horned lizard	Phrynosoma douglasii	\N	Phrynosoma	douglasii	5222469	Chordata	Reptilia	Squamata	Phrynosomatidae	lizard	789	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1210	Sierra gartersnake	Thamnophis couchii	\N	Thamnophis	couchii	2457544	Chordata	Reptilia	Squamata	Colubridae	snake	1133	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1211	Sierra alligator lizard	Elgaria coerulea palmeri	\N	Elgaria	coerulea	6160593	Chordata	Reptilia	Squamata	Anguidae	snake	370	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1212	banded Gila monster	Heloderma suspectum cinctum	\N	Heloderma	suspectum	6159023	Chordata	Reptilia	Squamata	Helodermatidae	lizard	496	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1213	Sonoran mountain kingsnake	Lampropeltis pyromelana	\N	Lampropeltis	pyromelana	9089978	Chordata	Reptilia	Squamata	Colubridae	snake	533	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1214	Shasta alligator lizard	Elgaria coerulea shastensis	\N	Elgaria	coerulea	6160595	Chordata	Reptilia	Squamata	Anguidae	snake	371	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1215	rosy boa	Lichanura trivirgata	\N	Lichanura	trivirgata	2465153	Chordata	Reptilia	Squamata	Boidae	snake	222	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1216	eastern snapping turtle	Chelydra serpentina serpentina	\N	Chelydra	serpentina	2441905	Chordata	Reptilia	Testudines	Chelydridae	turtle	225	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1217	mud turtle	Kinosternon sonoriense	\N	Kinosternon	sonoriense	2442413	Chordata	Reptilia	Testudines	Kinosternidae	turtle	529	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1218	painted turtle	Chrysemys picta	\N	Chrysemys	picta	2443133	Chordata	Reptilia	Testudines	Emydidae	turtle	238	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1219	redbelly turtle	Pseudemys rubriventris	\N	Pseudemys	rubriventris	9158437	Chordata	Reptilia	Testudines	Emydidae	turtle	878	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1220	snapping turtle	Chelydra serpentina	\N	Chelydra	serpentina	2441905	Chordata	Reptilia	Testudines	Chelydridae	turtle	224	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1221	Sonoran mud turtle	Kinosternon sonoriense sonoriense	\N	Kinosternon	sonoriense	7062186	Chordata	Reptilia	Testudines	Kinosternidae	turtle	530	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1222	spiny softshell	Apalone spinifera	\N	Apalone	spinifera	2442680	Chordata	Reptilia	Testudines	Trionychidae	turtle	53	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1223	Texas spiny softshell	Apalone spinifera emoryi	\N	Apalone	spinifera	6156734	Chordata	Reptilia	Testudines	Trionychidae	turtle	54	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1224	western box turtle	Terrapene ornata	\N	Terrapene	ornata	2443168	Chordata	Reptilia	Testudines	Emydidae	turtle	1130	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1225	western pond turtle	Actinemys marmorata	\N	Actinemys	marmorata	2442896	Chordata	Reptilia	Testudines	Emydidae	turtle	5	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1226	western spiny softshell	Apalone spinifera hartwegi	\N	Apalone	spinifera	6156725	Chordata	Reptilia	Testudines	Trionychidae	turtle	55	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
1227	desert tortoise	Gopherus agassizii	\N	Gopherus	agassizii	2441814	Chordata	Reptilia	Testudines	Testudinidae	turtle	476	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
637	American bittern	Botaurus lentiginosus	\N	Botaurus	lentiginosus	2480911	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	96	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
638	black-crowned night-heron	Nycticorax nycticorax	\N	Nycticorax	nycticorax	2480863	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	695	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
639	brown pelican	Pelecanus occidentalis	\N	Pelecanus	occidentalis	5229158	Chordata	Aves	Pelecaniformes	Pelecanidae	seabird	760	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
640	cattle egret	Bubulcus ibis	\N	Bubulcus	ibis	2480830	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	107	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
641	glossy ibis	Plegadis falcinellus	\N	Plegadis	falcinellus	2480773	Chordata	Aves	Pelecaniformes	Threskiornithidae	seabird	838	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
642	great blue heron	Ardea herodias	\N	Ardea	herodias	2480935	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	64	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
643	great egret	Ardea alba	\N	Ardea	alba	7913436	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	63	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
644	green heron	Butorides virescens	\N	Butorides	virescens	2480819	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	132	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
645	little blue heron	Egretta caerulea	\N	Egretta	caerulea	2480894	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	363	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
646	reddish egret	Egretta rufescens	\N	Egretta	rufescens	2480888	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	364	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
647	roseate spoonbill	Platalea ajaja	\N	Platalea	ajaja	2480803	Chordata	Aves	Pelecaniformes	Threskiornithidae	seabird	835	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
648	snowy egret	Egretta thula	\N	Egretta	thula	2480873	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	365	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
649	tricolored heron	Egretta tricolor	\N	Egretta	tricolor	2480881	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	366	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
650	yellow-crowned night-heron	Nyctanassa violacea	\N	Nyctanassa	violacea	2480953	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	693	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
651	western least bittern	Ixobrychus exilis hesperis	\N	Ixobrychus	exilis	6178091	Chordata	Aves	Pelecaniformes	Ardeidae	seabird	519	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
652	American white pelican	Pelecanus erythrorhynchos	\N	Pelecanus	erythrorhynchos	5229155	Chordata	Aves	Pelecaniformes	Pelecanidae	seabird	759	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
653	white-faced ibis	Plegadis chihi	\N	Plegadis	chihi	2480775	Chordata	Aves	Pelecaniformes	Threskiornithidae	seabird	837	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
682	least storm-petrel	Oceanodroma microsoma	\N	Oceanodroma	microsoma	2481999	Chordata	Aves	Procellariiformes	Hydrobatidae	seabird	697	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
696	blue-footed booby	Sula nebouxii	\N	Sula	nebouxii	2480978	Chordata	Aves	Suliformes	Sulidae	seabird	1113	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
697	brown booby	Sula leucogaster	\N	Sula	leucogaster	2480975	Chordata	Aves	Suliformes	Sulidae	seabird	1112	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
698	double-crested cormorant	Phalacrocorax auritus	\N	Phalacrocorax	auritus	2481875	Chordata	Aves	Suliformes	Phalacrocoracidae	seabird	778	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
699	magnificent frigatebird	Fregata magnificens	\N	Fregata	magnificens	2480189	Chordata	Aves	Suliformes	Fregatidae	seabird	427	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
700	neotropic cormorant	Phalacrocorax brasilianus	\N	Phalacrocorax	brasilianus	2481868	Chordata	Aves	Suliformes	Phalacrocoracidae	seabird	779	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
927	American badger	Taxidea taxus	\N	Taxidea	taxus	2434102	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	1129	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
929	American mink	Neovison vison	\N	Neovison	vison	2433652	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	687	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
933	ermine	Mustela erminea	\N	Mustela	erminea	5219019	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	648	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
936	long-tailed weasel	Mustela frenata	\N	Mustela	frenata	5218919	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	649	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
938	North American river otter	Lontra canadensis	\N	Lontra	canadensis	2433727	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	588	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
939	raccoon	Procyon lotor	\N	Procyon	lotor	5218786	Chordata	Mammalia	Carnivora	Procyonidae	musteloid	870	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
941	ringtail	Bassariscus astutus	\N	Bassariscus	astutus	2433557	Chordata	Mammalia	Carnivora	Procyonidae	musteloid	88	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
942	striped skunk	Mephitis mephitis	\N	Mephitis	mephitis	5219380	Chordata	Mammalia	Carnivora	Mephitidae	musteloid	618	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
943	weasel (unknown)	Mustela sp.	\N	Mustela	sp.	2433922	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	650	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
944	western spotted skunk	Spilogale gracilis	\N	Spilogale	gracilis	2434835	Chordata	Mammalia	Carnivora	Mephitidae	musteloid	1076	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
946	southwestern river otter	Lontra canadensis sonora	\N	Lontra	canadensis	6163978	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	590	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
948	wolverine	Gulo gulo	\N	Gulo	gulo	5219073	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	481	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
950	American marten	Martes americana	\N	Martes	americana	5218864	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	602	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
951	northern river otter	Lontra canadensis pacifica	\N	Lontra	canadensis	6163976	Chordata	Mammalia	Carnivora	Mustelidae	musteloid	589	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
332	band-tailed pigeon	Patagioenas fasciata	\N	Patagioenas	fasciata	2495266	Chordata	Aves	Columbiformes	Columbidae	upland	756	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
333	common ground-dove	Columbina passerina	\N	Columbina	passerina	2495869	Chordata	Aves	Columbiformes	Columbidae	upland	262	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
335	Eurasian collared-dove	Streptopelia decaocto	\N	Streptopelia	decaocto	2495696	Chordata	Aves	Columbiformes	Columbidae	upland	1101	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
336	Inca dove	Columbina inca	\N	Columbina	inca	2495863	Chordata	Aves	Columbiformes	Columbidae	upland	261	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
337	mourning dove	Zenaida macroura	\N	Zenaida	macroura	2495347	Chordata	Aves	Columbiformes	Columbidae	upland	1246	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
338	pigeon (unknown)	Columba sp.	\N	Columba	sp.	2495404	Chordata	Aves	Columbiformes	Columbidae	upland	260	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
339	rock dove	Columba livia	\N	Columba	livia	2495414	Chordata	Aves	Columbiformes	Columbidae	upland	259	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
340	ruddy ground-dove	Columbina talpacoti	\N	Columbina	talpacoti	2495858	Chordata	Aves	Columbiformes	Columbidae	upland	263	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
341	white-winged dove	Zenaida asiatica	\N	Zenaida	asiatica	2495370	Chordata	Aves	Columbiformes	Columbidae	upland	1245	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
344	greater roadrunner	Geococcyx californianus	\N	Geococcyx	californianus	2496459	Chordata	Aves	Cuculiformes	Cuculidae	upland	443	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
345	groove-billed ani	Crotophaga sulcirostris	\N	Crotophaga	sulcirostris	2496211	Chordata	Aves	Cuculiformes	Cuculidae	upland	302	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
346	western yellow-billed cuckoo	Coccyzus americanus occidentalis	\N	Coccyzus	americanus	6170319	Chordata	Aves	Cuculiformes	Cuculidae	upland	246	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
353	dusky grouse	Dendragapus obscurus	\N	Dendragapus	obscurus	2473588	Chordata	Aves	Galliformes	Phasianidae	upland	318	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
354	California quail	Callipepla californica	\N	Callipepla	californica	5228080	Chordata	Aves	Galliformes	Odontophoridae	upland	151	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
355	chukar	Alectoris chukar	\N	Alectoris	chukar	2474029	Chordata	Aves	Galliformes	Phasianidae	upland	18	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
356	common peafowl	Pavo cristatus	\N	Pavo	cristatus	2473603	Chordata	Aves	Galliformes	Phasianidae	upland	757	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
357	Gambels quail	Callipepla gambelii	\N	Callipepla	gambelii	5228072	Chordata	Aves	Galliformes	Odontophoridae	upland	152	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
358	gray partridge	Perdix perdix	\N	Perdix	perdix	2473958	Chordata	Aves	Galliformes	Phasianidae	upland	763	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
359	Himalayan snowcock	Tetraogallus himalayensis	\N	Tetraogallus	himalayensis	2473455	Chordata	Aves	Galliformes	Phasianidae	upland	1131	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
360	ring-necked pheasant	Phasianus colchicus	\N	Phasianus	colchicus	2473744	Chordata	Aves	Galliformes	Phasianidae	upland	784	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
361	ruffed grouse	Bonasa umbellus	\N	Bonasa	umbellus	2473702	Chordata	Aves	Galliformes	Phasianidae	upland	94	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
362	scaled quail	Callipepla squamata	\N	Callipepla	squamata	5228075	Chordata	Aves	Galliformes	Odontophoridae	upland	153	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
363	wild turkey	Meleagris gallopavo	\N	Meleagris	gallopavo	2473551	Chordata	Aves	Galliformes	Phasianidae	upland	614	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
364	sooty grouse	Dendragapus fuliginosus	\N	Dendragapus	fuliginosus	7340146	Chordata	Aves	Galliformes	Phasianidae	upland	1269	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
365	Columbian sharp-tailed grouse	Tympanuchus phasianellus columbianus	\N	Tympanuchus	phasianellus	6180028	Chordata	Aves	Galliformes	Phasianidae	upland	1181	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
366	mountain quail	Oreortyx pictus	\N	Oreortyx	pictus	2474320	Chordata	Aves	Galliformes	Odontophoridae	upland	729	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
367	greater sage-grouse	Centrocercus urophasianus	\N	Centrocercus	urophasianus	5959240	Chordata	Aves	Galliformes	Phasianidae	upland	205	\N	2017-07-27 15:14:23.460209-07	2017-07-27 15:14:23.460209-07
\.


--
-- Name: species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mitchellgritts
--

SELECT pg_catalog.setval('species_id_seq', 1227, true);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: mitchellgritts
--

ALTER TABLE ONLY species
    ADD CONSTRAINT species_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

