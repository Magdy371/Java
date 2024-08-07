PGDMP      .                |           universe    16.3    16.3 %    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    universe    DATABASE     �   CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE universe;
                postgres    false            �            1259    16399    galaxy    TABLE     f   CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(20)
);
    DROP TABLE public.galaxy;
       public         heap    postgres    false            �            1259    16398    galaxy_galaxy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.galaxy_galaxy_id_seq;
       public          postgres    false    216            �           0    0    galaxy_galaxy_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;
          public          postgres    false    215            �            1259    16434    moon    TABLE     w   CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_name character varying(20),
    planet_id integer
);
    DROP TABLE public.moon;
       public         heap    postgres    false            �            1259    16433    moon_moon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.moon_moon_id_seq;
       public          postgres    false    222            �           0    0    moon_moon_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;
          public          postgres    false    221            �            1259    16420    planet    TABLE     {   CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(20),
    star_id integer
);
    DROP TABLE public.planet;
       public         heap    postgres    false            �            1259    16419    planet_planet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.planet_planet_id_seq;
       public          postgres    false    220            �           0    0    planet_planet_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;
          public          postgres    false    219            �            1259    16404    star    TABLE     �   CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(20) NOT NULL,
    galaxy_id integer
);
    DROP TABLE public.star;
       public         heap    postgres    false            �            1259    16403    star_star_id_seq    SEQUENCE     �   CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.star_star_id_seq;
       public          postgres    false    218            �           0    0    star_star_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;
          public          postgres    false    217            )           2604    16402    galaxy galaxy_id    DEFAULT     t   ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);
 ?   ALTER TABLE public.galaxy ALTER COLUMN galaxy_id DROP DEFAULT;
       public          postgres    false    215    216    216            ,           2604    16437    moon moon_id    DEFAULT     l   ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);
 ;   ALTER TABLE public.moon ALTER COLUMN moon_id DROP DEFAULT;
       public          postgres    false    221    222    222            +           2604    16423    planet planet_id    DEFAULT     t   ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);
 ?   ALTER TABLE public.planet ALTER COLUMN planet_id DROP DEFAULT;
       public          postgres    false    219    220    220            *           2604    16407    star star_id    DEFAULT     l   ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);
 ;   ALTER TABLE public.star ALTER COLUMN star_id DROP DEFAULT;
       public          postgres    false    217    218    218            �          0    16399    galaxy 
   TABLE DATA           8   COPY public.galaxy (galaxy_id, galaxy_name) FROM stdin;
    public          postgres    false    216   @'       �          0    16434    moon 
   TABLE DATA           =   COPY public.moon (moon_id, moon_name, planet_id) FROM stdin;
    public          postgres    false    222   �'       �          0    16420    planet 
   TABLE DATA           A   COPY public.planet (planet_id, planet_name, star_id) FROM stdin;
    public          postgres    false    220   �'       �          0    16404    star 
   TABLE DATA           =   COPY public.star (star_id, star_name, galaxy_id) FROM stdin;
    public          postgres    false    218   �'       �           0    0    galaxy_galaxy_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 3, true);
          public          postgres    false    215            �           0    0    moon_moon_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.moon_moon_id_seq', 3, true);
          public          postgres    false    221            �           0    0    planet_planet_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.planet_planet_id_seq', 3, true);
          public          postgres    false    219            �           0    0    star_star_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.star_star_id_seq', 3, true);
          public          postgres    false    217            .           2606    16413    galaxy galaxy_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);
 <   ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_pkey;
       public            postgres    false    216            6           2606    16441    moon moon_moon_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (moon_name);
 A   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_moon_name_key;
       public            postgres    false    222            8           2606    16439    moon moon_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);
 8   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_pkey;
       public            postgres    false    222            4           2606    16425    planet planet_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);
 <   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_pkey;
       public            postgres    false    220            0           2606    16427    star star_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);
 8   ALTER TABLE ONLY public.star DROP CONSTRAINT star_pkey;
       public            postgres    false    218            2           2606    16409    star star_star_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);
 A   ALTER TABLE ONLY public.star DROP CONSTRAINT star_star_name_key;
       public            postgres    false    218            ;           2606    16442    moon moon_planet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);
 B   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_planet_id_fkey;
       public          postgres    false    222    4660    220            :           2606    16428    planet planet_star_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);
 D   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_star_id_fkey;
       public          postgres    false    218    4656    220            9           2606    16414    star star_galaxy_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
 B   ALTER TABLE ONLY public.star DROP CONSTRAINT star_galaxy_id_fkey;
       public          postgres    false    218    4654    216            �   2   x�3�LI,ʎOO,I�2�,�HUH���/N�S��K�2��楀81z\\\ {��      �   )   x�3�,�����4�2�,�O-�4�2	�%rs��qqq ���      �   0   x�3�,��--*�4�2�,K�I�/J�4�2�L��K�MJs��qqq ��      �   /   x�3�,I�+.-J�4�2�sR�K8���9sJs3�J�9��b���� �:     