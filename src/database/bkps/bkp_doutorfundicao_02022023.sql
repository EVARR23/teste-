PGDMP     ,                    {            DOUTOR-FUNDICAO    15.0    15.0      *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    24632    DOUTOR-FUNDICAO    DATABASE     ?   CREATE DATABASE "DOUTOR-FUNDICAO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE "DOUTOR-FUNDICAO";
                postgres    false            N           1247    24658    enum_users_role    TYPE     \   CREATE TYPE public.enum_users_role AS ENUM (
    'admin',
    'manager',
    'developer'
);
 "   DROP TYPE public.enum_users_role;
       public          postgres    false            Q           1247    24666    enum_users_status    TYPE     O   CREATE TYPE public.enum_users_status AS ENUM (
    'active',
    'archived'
);
 $   DROP TYPE public.enum_users_status;
       public          postgres    false            ?            1259    24681    caracterizacao_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.caracterizacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.caracterizacao_id_seq;
       public          postgres    false            ?            1259    24638    caracterizacaos    TABLE     z  CREATE TABLE public.caracterizacaos (
    id integer DEFAULT nextval('public.caracterizacao_id_seq'::regclass) NOT NULL,
    codigo character varying NOT NULL,
    name character varying NOT NULL,
    tipo character varying NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    id_subclassificacao integer NOT NULL
);
 #   DROP TABLE public.caracterizacaos;
       public         heap    postgres    false    220            ?            1259    24683    classificacao_id_seq    SEQUENCE     }   CREATE SEQUENCE public.classificacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.classificacao_id_seq;
       public          postgres    false            ?            1259    24633    classificacaos    TABLE     )  CREATE TABLE public.classificacaos (
    id integer DEFAULT nextval('public.classificacao_id_seq'::regclass) NOT NULL,
    codigo character varying NOT NULL,
    name character varying NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL
);
 "   DROP TABLE public.classificacaos;
       public         heap    postgres    false    221            ?            1259    24687    patrocinador_id_seq    SEQUENCE     |   CREATE SEQUENCE public.patrocinador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.patrocinador_id_seq;
       public          postgres    false            ?            1259    24645    patrocinadors    TABLE     6  CREATE TABLE public.patrocinadors (
    id integer DEFAULT nextval('public.patrocinador_id_seq'::regclass) NOT NULL,
    descricao character varying(200) NOT NULL,
    imagem character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 !   DROP TABLE public.patrocinadors;
       public         heap    postgres    false    222            ?            1259    24689    subclassificacao_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.subclassificacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.subclassificacao_id_seq;
       public          postgres    false            ?            1259    24650    subclassificacaos    TABLE     /  CREATE TABLE public.subclassificacaos (
    id integer DEFAULT nextval('public.subclassificacao_id_seq'::regclass) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    id_classificacao integer NOT NULL,
    name character varying NOT NULL
);
 %   DROP TABLE public.subclassificacaos;
       public         heap    postgres    false    223            ?            1259    24656    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false            ?            1259    24671    users    TABLE     ?  CREATE TABLE public.users (
    id integer DEFAULT nextval('public.users_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255) NOT NULL,
    password_hash character varying(255),
    role public.enum_users_role NOT NULL,
    status public.enum_users_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    218    849    846                      0    24638    caracterizacaos 
   TABLE DATA           n   COPY public.caracterizacaos (id, codigo, name, tipo, created_at, updated_at, id_subclassificacao) FROM stdin;
    public          postgres    false    215   )&                 0    24633    classificacaos 
   TABLE DATA           R   COPY public.classificacaos (id, codigo, name, updated_at, created_at) FROM stdin;
    public          postgres    false    214   A'                  0    24645    patrocinadors 
   TABLE DATA           V   COPY public.patrocinadors (id, descricao, imagem, created_at, updated_at) FROM stdin;
    public          postgres    false    216   ?'       !          0    24650    subclassificacaos 
   TABLE DATA           _   COPY public.subclassificacaos (id, created_at, updated_at, id_classificacao, name) FROM stdin;
    public          postgres    false    217   ?'       #          0    24671    users 
   TABLE DATA           e   COPY public.users (id, name, email, password_hash, role, status, created_at, updated_at) FROM stdin;
    public          postgres    false    219   ?(       .           0    0    caracterizacao_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.caracterizacao_id_seq', 5, true);
          public          postgres    false    220            /           0    0    classificacao_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.classificacao_id_seq', 2, true);
          public          postgres    false    221            0           0    0    patrocinador_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.patrocinador_id_seq', 2, true);
          public          postgres    false    222            1           0    0    subclassificacao_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.subclassificacao_id_seq', 3, true);
          public          postgres    false    223            2           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    218            ?           2606    24644 #   caracterizacaos caracterizacao_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.caracterizacaos
    ADD CONSTRAINT caracterizacao_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.caracterizacaos DROP CONSTRAINT caracterizacao_pkey;
       public            postgres    false    215            ?           2606    24637 !   classificacaos classificacao_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.classificacaos
    ADD CONSTRAINT classificacao_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.classificacaos DROP CONSTRAINT classificacao_pkey;
       public            postgres    false    214            ?           2606    24649    patrocinadors patrocinador_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.patrocinadors
    ADD CONSTRAINT patrocinador_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.patrocinadors DROP CONSTRAINT patrocinador_pkey;
       public            postgres    false    216            ?           2606    24654 '   subclassificacaos subclassificacao_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.subclassificacaos
    ADD CONSTRAINT subclassificacao_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.subclassificacaos DROP CONSTRAINT subclassificacao_pkey;
       public            postgres    false    217            ?           2606    24680    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    219            ?           2606    24678    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219                 x?m?MN?0???)|?N??0?@$Vl<????$S\??$?? ??iZ?s?????N??(JH??u?=8:?;pA:??"x#͝??H??r?ё?q??R(dC8????a???.?q???ǝ?FtNѬ,?+?#_2<c!)?????&??ضe??{?7??????jD???R??LE???_???0&????XBd?L??xH"?V??wT?2?ry\???N3?A'??sf5(_,????????ފ???p!?O"M?_??j         S   x?3?t440?t?H.J-N>?*/93?X!?T!81'??M-9?0'39??????X??H??X????????P??(d?G?+F??? "x?          .   x?3?, ?id`d?k`D
??VF?V?fz??@!c<R\1z\\\ (?!      !   ?   x?}PAN?0<7???U???{???^d?IJܠ??a%?<!??"@Z???hfd[?ֺ]kw?????l??;?)???8sy#??????<?J???.1ÑJ???G????o?/??)рi@i?M??w{????o?:?!?W???-&????R?q?fk^3N*??R
?Ig@??Y,?|?X?b1 ???+>g?????
H?)?:7??1?|?lnD      #   ?   x?3?t-KTJM?/=?<?X!(??(3?4??3?,3'#U/3)9?!#?$713G/9??S?(Q??B%?0????=0?1?2?=??44??(5??9?4?³??????Y?*??Ȼ"??35߰?(?31%73?31?$?,?????X???????M??́B?x??b???? vP4?     