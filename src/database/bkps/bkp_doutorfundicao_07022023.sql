PGDMP         !                {            DOUTOR-FUNDICAO    15.0    15.0 *    >           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            @           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            A           1262    24632    DOUTOR-FUNDICAO    DATABASE     ?   CREATE DATABASE "DOUTOR-FUNDICAO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE "DOUTOR-FUNDICAO";
                postgres    false            j           1247    24658    enum_usuario_role    TYPE     ^   CREATE TYPE public.enum_usuario_role AS ENUM (
    'admin',
    'manager',
    'developer'
);
 $   DROP TYPE public.enum_usuario_role;
       public          postgres    false            g           1247    24666    enum_usuario_status    TYPE     Q   CREATE TYPE public.enum_usuario_status AS ENUM (
    'active',
    'archived'
);
 &   DROP TYPE public.enum_usuario_status;
       public          postgres    false            ?            1259    24681    caracterizacao_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.caracterizacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.caracterizacao_id_seq;
       public          postgres    false            ?            1259    24638    caracterizacao    TABLE     y  CREATE TABLE public.caracterizacao (
    id integer DEFAULT nextval('public.caracterizacao_id_seq'::regclass) NOT NULL,
    codigo character varying NOT NULL,
    name character varying NOT NULL,
    tipo character varying NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    id_subclassificacao integer NOT NULL
);
 "   DROP TABLE public.caracterizacao;
       public         heap    postgres    false    220            ?            1259    24705    caracterizacao_imagem_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.caracterizacao_imagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.caracterizacao_imagem_id_seq;
       public          postgres    false            ?            1259    24709    caracterizacao_imagem    TABLE     ?  CREATE TABLE public.caracterizacao_imagem (
    id integer DEFAULT nextval('public.caracterizacao_imagem_id_seq'::regclass) NOT NULL,
    size integer,
    filename character varying(255),
    type character varying(255),
    folder character varying(255),
    path character varying(255),
    updated_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    id_caracterizacao integer NOT NULL
);
 )   DROP TABLE public.caracterizacao_imagem;
       public         heap    postgres    false    224            ?            1259    24683    classificacao_id_seq    SEQUENCE     }   CREATE SEQUENCE public.classificacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.classificacao_id_seq;
       public          postgres    false            ?            1259    24633    classificacao    TABLE     (  CREATE TABLE public.classificacao (
    id integer DEFAULT nextval('public.classificacao_id_seq'::regclass) NOT NULL,
    codigo character varying NOT NULL,
    name character varying NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL
);
 !   DROP TABLE public.classificacao;
       public         heap    postgres    false    221            ?            1259    24687    patrocinador_id_seq    SEQUENCE     |   CREATE SEQUENCE public.patrocinador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.patrocinador_id_seq;
       public          postgres    false            ?            1259    24645    patrocinador    TABLE     5  CREATE TABLE public.patrocinador (
    id integer DEFAULT nextval('public.patrocinador_id_seq'::regclass) NOT NULL,
    descricao character varying(200) NOT NULL,
    imagem character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
     DROP TABLE public.patrocinador;
       public         heap    postgres    false    222            ?            1259    24742    patrocionador_imagem_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.patrocionador_imagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.patrocionador_imagem_id_seq;
       public          postgres    false            ?            1259    24775    patrocinador_imagem    TABLE     ?  CREATE TABLE public.patrocinador_imagem (
    id integer DEFAULT nextval('public.patrocionador_imagem_id_seq'::regclass) NOT NULL,
    size integer,
    filename character varying,
    type character varying,
    folder character varying,
    path character varying,
    updated_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    id_patrocionador integer NOT NULL,
    name character varying NOT NULL
);
 '   DROP TABLE public.patrocinador_imagem;
       public         heap    postgres    false    226            ?            1259    24689    subclassificacao_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.subclassificacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.subclassificacao_id_seq;
       public          postgres    false            ?            1259    24650    subclassificacao    TABLE     .  CREATE TABLE public.subclassificacao (
    id integer DEFAULT nextval('public.subclassificacao_id_seq'::regclass) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    id_classificacao integer NOT NULL,
    name character varying NOT NULL
);
 $   DROP TABLE public.subclassificacao;
       public         heap    postgres    false    223            ?            1259    24656    usuario_id_seq    SEQUENCE     w   CREATE SEQUENCE public.usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false            ?            1259    24671    usuario    TABLE     ?  CREATE TABLE public.usuario (
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
       public         heap    postgres    false    218    871    874            /          0    24638    caracterizacao 
   TABLE DATA           m   COPY public.caracterizacao (id, codigo, name, tipo, created_at, updated_at, id_subclassificacao) FROM stdin;
    public          postgres    false    215   ?4       9          0    24709    caracterizacao_imagem 
   TABLE DATA           ?   COPY public.caracterizacao_imagem (id, size, filename, type, folder, path, updated_at, created_at, id_caracterizacao) FROM stdin;
    public          postgres    false    225   ?5       .          0    24633    classificacao 
   TABLE DATA           Q   COPY public.classificacao (id, codigo, name, updated_at, created_at) FROM stdin;
    public          postgres    false    214   ?6       0          0    24645    patrocinador 
   TABLE DATA           U   COPY public.patrocinador (id, descricao, imagem, created_at, updated_at) FROM stdin;
    public          postgres    false    216   7       ;          0    24775    patrocinador_imagem 
   TABLE DATA           ?   COPY public.patrocinador_imagem (id, size, filename, type, folder, path, updated_at, created_at, id_patrocionador, name) FROM stdin;
    public          postgres    false    227   D7       1          0    24650    subclassificacao 
   TABLE DATA           ^   COPY public.subclassificacao (id, created_at, updated_at, id_classificacao, name) FROM stdin;
    public          postgres    false    217   a7       3          0    24671    usuario 
   TABLE DATA           g   COPY public.usuario (id, name, email, password_hash, role, status, created_at, updated_at) FROM stdin;
    public          postgres    false    219   D8       B           0    0    caracterizacao_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.caracterizacao_id_seq', 5, true);
          public          postgres    false    220            C           0    0    caracterizacao_imagem_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.caracterizacao_imagem_id_seq', 11, true);
          public          postgres    false    224            D           0    0    classificacao_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.classificacao_id_seq', 2, true);
          public          postgres    false    221            E           0    0    patrocinador_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.patrocinador_id_seq', 2, true);
          public          postgres    false    222            F           0    0    patrocionador_imagem_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.patrocionador_imagem_id_seq', 1, false);
          public          postgres    false    226            G           0    0    subclassificacao_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.subclassificacao_id_seq', 3, true);
          public          postgres    false    223            H           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);
          public          postgres    false    218            ?           2606    24644 "   caracterizacao caracterizacao_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.caracterizacao
    ADD CONSTRAINT caracterizacao_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.caracterizacao DROP CONSTRAINT caracterizacao_pkey;
       public            postgres    false    215            ?           2606    24637     classificacao classificacao_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.classificacao
    ADD CONSTRAINT classificacao_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.classificacao DROP CONSTRAINT classificacao_pkey;
       public            postgres    false    214            ?           2606    24779 .   patrocinador_imagem imagem_patrocionadors_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.patrocinador_imagem
    ADD CONSTRAINT imagem_patrocionadors_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.patrocinador_imagem DROP CONSTRAINT imagem_patrocionadors_pkey;
       public            postgres    false    227            ?           2606    24713 "   caracterizacao_imagem imagens_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.caracterizacao_imagem
    ADD CONSTRAINT imagens_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.caracterizacao_imagem DROP CONSTRAINT imagens_pkey;
       public            postgres    false    225            ?           2606    24649    patrocinador patrocinador_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.patrocinador
    ADD CONSTRAINT patrocinador_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.patrocinador DROP CONSTRAINT patrocinador_pkey;
       public            postgres    false    216            ?           2606    24654 &   subclassificacao subclassificacao_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.subclassificacao
    ADD CONSTRAINT subclassificacao_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.subclassificacao DROP CONSTRAINT subclassificacao_pkey;
       public            postgres    false    217            ?           2606    24680    usuario users_email_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT users_email_key UNIQUE (email);
 A   ALTER TABLE ONLY public.usuario DROP CONSTRAINT users_email_key;
       public            postgres    false    219            ?           2606    24678    usuario users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT users_pkey;
       public            postgres    false    219            /     x?m?MN?0???)|?N??0?@$Vl<????$S\??$?? ??iZ?s?????N??(JH??u?=8:?;pA:??"x#͝??H??r?ё?q??R(dC8????a???.?q???ǝ?FtNѬ,?+?#_2<c!)?????&??ضe??{?7??????jD???R??LE???_???0&????XBd?L??xH"?V??wT?2?ry\???N3?A'??sf5(_,????????ފ???p!?O"M?_??j      9   ?   x???Aj?0E??)?vlɮl??P??	?1?fl?4s????@If ??B??V,?m
?P ??@鉄?=d81??c?c??J????.i??ow1?y?????sk?mP??:??????TEK%?c?۹?~bԭV?%??ꖬ%??H??E?1????ǩ??r?z?6[?`?D?Z????;?H?$???~??z?}??D???m??Qr? m???      .   S   x?3?t440?t?H.J-N>?*/93?X!?T!81'??M-9?0'39??????X??H??X????????P??(d?G?+F??? "x?      0   .   x?3?, ?id`d?k`D
??VF?V?fz??@!c<R\1z\\\ (?!      ;      x?????? ? ?      1   ?   x?}PAN?0<7???U???{???^d?IJܠ??a%?<!??"@Z???hfd[?ֺ]kw?????l??;?)???8sy#??????<?J???.1ÑJ???G????o?/??)рi@i?M??w{????o?:?!?W???-&????R?q?fk^3N*??R
?Ig@??Y,?|?X?b1 ???+>g?????
H?)?:7??1?|?lnD      3   ?   x?3?t-KTJM?/=?<?X!(??(3?4??3?,3'#U/3)9?!#?$713G/9??S?(Q??B%?0????=0?1?2?=??44??(5??9?4?³??????Y?*??Ȼ"??35߰?(?31%73?31?$?,?????X???????M??́B?x??b???? vP4?     