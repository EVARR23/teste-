PGDMP         8                {            IPP-CONSULTORIA    15.0    15.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    24784    IPP-CONSULTORIA    DATABASE     ?   CREATE DATABASE "IPP-CONSULTORIA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE "IPP-CONSULTORIA";
                postgres    false            L           1247    24786    enum_usuario_role    TYPE     ^   CREATE TYPE public.enum_usuario_role AS ENUM (
    'admin',
    'manager',
    'developer'
);
 $   DROP TYPE public.enum_usuario_role;
       public          postgres    false            O           1247    24794    enum_usuario_status    TYPE     Q   CREATE TYPE public.enum_usuario_status AS ENUM (
    'active',
    'archived'
);
 &   DROP TYPE public.enum_usuario_status;
       public          postgres    false            ?            1259    24845    localizacao_id_seq    SEQUENCE     {   CREATE SEQUENCE public.localizacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.localizacao_id_seq;
       public          postgres    false            ?            1259    24846    localizacao    TABLE     ?   CREATE TABLE public.localizacao (
    id integer DEFAULT nextval('public.localizacao_id_seq'::regclass) NOT NULL,
    name character varying NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.localizacao;
       public         heap    postgres    false    218            ?            1259    24836    produto_id_seq    SEQUENCE     w   CREATE SEQUENCE public.produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public          postgres    false            ?            1259    24837    produto    TABLE     J  CREATE TABLE public.produto (
    id integer DEFAULT nextval('public.produto_id_seq'::regclass) NOT NULL,
    name character varying NOT NULL,
    codigo character varying NOT NULL,
    codigo_barras character varying NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.produto;
       public         heap    postgres    false    216            ?            1259    24854    produto_localizacao_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.produto_localizacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.produto_localizacao_id_seq;
       public          postgres    false            ?            1259    24893    produto_localizacao    TABLE     X  CREATE TABLE public.produto_localizacao (
    id integer DEFAULT nextval('public.produto_localizacao_id_seq'::regclass) NOT NULL,
    id_localizacao integer NOT NULL,
    id_produto integer NOT NULL,
    quantidade double precision NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL
);
 '   DROP TABLE public.produto_localizacao;
       public         heap    postgres    false    220            ?            1259    24799    usuario_id_seq    SEQUENCE     w   CREATE SEQUENCE public.usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false            ?            1259    24800    usuario    TABLE     ?  CREATE TABLE public.usuario (
    id integer DEFAULT nextval('public.usuario_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255) NOT NULL,
    password_hash character varying(255),
    role public.enum_usuario_role NOT NULL,
    status public.enum_usuario_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false    214    844    847                      0    24846    localizacao 
   TABLE DATA           G   COPY public.localizacao (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    219   ?                 0    24837    produto 
   TABLE DATA           Z   COPY public.produto (id, name, codigo, codigo_barras, created_at, updated_at) FROM stdin;
    public          postgres    false    217   ?                 0    24893    produto_localizacao 
   TABLE DATA           q   COPY public.produto_localizacao (id, id_localizacao, id_produto, quantidade, updated_at, created_at) FROM stdin;
    public          postgres    false    221   #!                 0    24800    usuario 
   TABLE DATA           g   COPY public.usuario (id, name, email, password_hash, role, status, created_at, updated_at) FROM stdin;
    public          postgres    false    215   d!       $           0    0    localizacao_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.localizacao_id_seq', 1, true);
          public          postgres    false    218            %           0    0    produto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produto_id_seq', 50, true);
          public          postgres    false    216            &           0    0    produto_localizacao_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.produto_localizacao_id_seq', 1, true);
          public          postgres    false    220            '           0    0    usuario_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuario_id_seq', 1, false);
          public          postgres    false    214            ?           2606    24852    localizacao localizacao_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.localizacao
    ADD CONSTRAINT localizacao_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.localizacao DROP CONSTRAINT localizacao_pkey;
       public            postgres    false    219            ?           2606    24897 ,   produto_localizacao produto_localizacao_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.produto_localizacao
    ADD CONSTRAINT produto_localizacao_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.produto_localizacao DROP CONSTRAINT produto_localizacao_pkey;
       public            postgres    false    221            ?           2606    24843    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            postgres    false    217                       2606    24809    usuario users_email_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT users_email_key UNIQUE (email);
 A   ALTER TABLE ONLY public.usuario DROP CONSTRAINT users_email_key;
       public            postgres    false    215            ?           2606    24807    usuario users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT users_pkey;
       public            postgres    false    215               ?   x?3?N-*JTH?W??KNL?/R?4202?50?5?P04?2??22Գ44?50?#????? "?         6  x????n? @??W?H??Q??So?k/[?M?C?m??EkYD?IK0???9????txz}y????@"͵??8??)ҕ?Jكr??W(??J?_?ߵ$q?????????.LY;^??g??xt?i[p'?NΏqt̖??̲a?7??0°Y?$???WNr???! ]??]i?????@???j???YDT??4M????C1?D?)C?15?t?q?f?C?ZֶٛS?Dۮ=CO(ѕ	??1!Z:?fV([8??????]??o}??a?=?????fc
I?*?\?????6 ?ʟ{??Y??N??         1   x?3?4?4"N##c]#]C#+#+=#]c<R\1z\\\ ?:?            x?????? ? ?     