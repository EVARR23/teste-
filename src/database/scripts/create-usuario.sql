CREATE TYPE public.enum_usuario_role AS ENUM
    ('admin', 'manager', 'developer');

ALTER TYPE public.enum_usuario_role
    OWNER TO postgres;

CREATE TYPE public.enum_usuario_status AS ENUM
    ('active', 'archived');

ALTER TYPE public.enum_usuario_status
    OWNER TO postgres;

CREATE SEQUENCE IF NOT EXISTS public.usuario_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.usuario_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS public.usuario
(
    id integer NOT NULL DEFAULT nextval('usuario_id_seq'::regclass),
    name character varying(255) COLLATE pg_catalog."default",
    email character varying(255) COLLATE pg_catalog."default" NOT NULL,
    password_hash character varying(255) COLLATE pg_catalog."default",
    role enum_usuario_role NOT NULL,
    status enum_usuario_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (id),
    CONSTRAINT users_email_key UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.usuario
    OWNER to postgres;