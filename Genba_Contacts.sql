PGDMP     &                    |            Genba_Contacts    14.6    14.6 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18171    Genba_Contacts    DATABASE     m   CREATE DATABASE "Genba_Contacts" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
     DROP DATABASE "Genba_Contacts";
                postgres    false            �            1259    18177    contacts_id_seq    SEQUENCE     x   CREATE SEQUENCE public.contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contacts_id_seq;
       public          postgres    false            �            1259    18172    contacts    TABLE     �   CREATE TABLE public.contacts (
    id integer DEFAULT nextval('public.contacts_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    phone character varying(50) NOT NULL
);
    DROP TABLE public.contacts;
       public         heap    postgres    false    210            �          0    18172    contacts 
   TABLE DATA           3   COPY public.contacts (id, name, phone) FROM stdin;
    public          postgres    false    209   �       �           0    0    contacts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);
          public          postgres    false    210            ^           2606    18176    contacts contacts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
       public            postgres    false    209            �      x������ � �     