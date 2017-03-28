PGDMP         #                u            pblog    9.3.16    9.3.16 ~    c           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            d           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            e           1262    16386    pblog    DATABASE     w   CREATE DATABASE pblog WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE pblog;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            f           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            g           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    11787    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            h           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16420 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         admin    false    6            �            1259    16418    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       admin    false    178    6            i           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       admin    false    177            �            1259    16430    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         admin    false    6            �            1259    16428    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       admin    false    180    6            j           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       admin    false    179            �            1259    16410    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         admin    false    6            �            1259    16408    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       admin    false    6    176            k           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       admin    false    175            �            1259    16440 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         admin    false    6            �            1259    16450    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         admin    false    6            �            1259    16448    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       admin    false    6    184            l           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       admin    false    183            �            1259    16438    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       admin    false    6    182            m           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       admin    false    181            �            1259    16460    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         admin    false    6            �            1259    16458 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       admin    false    6    186            n           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       admin    false    185            �            1259    16514    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         admin    false    6            �            1259    16512    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       admin    false    6    188            o           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       admin    false    187            �            1259    16400    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         admin    false    6            �            1259    16398    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       admin    false    6    174            p           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       admin    false    173            �            1259    16389    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         admin    false    6            �            1259    16387    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       admin    false    172    6            q           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       admin    false    171            �            1259    16536    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         admin    false    6            �            1259    16549    mainsite_newtable    TABLE     _  CREATE TABLE mainsite_newtable (
    id integer NOT NULL,
    bigint_f bigint NOT NULL,
    bool_f boolean NOT NULL,
    date_f date NOT NULL,
    char_f character varying(20) NOT NULL,
    datetime_f timestamp with time zone NOT NULL,
    decimal_f numeric(10,2) NOT NULL,
    float_f double precision,
    int_f integer NOT NULL,
    text_f text
);
 %   DROP TABLE public.mainsite_newtable;
       public         admin    false    6            �            1259    16547    mainsite_newtable_id_seq    SEQUENCE     z   CREATE SEQUENCE mainsite_newtable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.mainsite_newtable_id_seq;
       public       admin    false    191    6            r           0    0    mainsite_newtable_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE mainsite_newtable_id_seq OWNED BY mainsite_newtable.id;
            public       admin    false    190            �            1259    16562    mainsite_post    TABLE     �   CREATE TABLE mainsite_post (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    body text NOT NULL,
    pub_date timestamp with time zone NOT NULL
);
 !   DROP TABLE public.mainsite_post;
       public         admin    false    6            �            1259    16560    mainsite_post_id_seq    SEQUENCE     v   CREATE SEQUENCE mainsite_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.mainsite_post_id_seq;
       public       admin    false    6    193            s           0    0    mainsite_post_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE mainsite_post_id_seq OWNED BY mainsite_post.id;
            public       admin    false    192            �            1259    16573    mainsite_product    TABLE     "  CREATE TABLE mainsite_product (
    id integer NOT NULL,
    sku character varying(10) NOT NULL,
    name character varying(20) NOT NULL,
    price integer NOT NULL,
    size character varying(1) NOT NULL,
    qty bigint,
    CONSTRAINT mainsite_product_price_check CHECK ((price >= 0))
);
 $   DROP TABLE public.mainsite_product;
       public         admin    false    6            �            1259    16571    mainsite_product_id_seq    SEQUENCE     y   CREATE SEQUENCE mainsite_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.mainsite_product_id_seq;
       public       admin    false    6    195            t           0    0    mainsite_product_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE mainsite_product_id_seq OWNED BY mainsite_product.id;
            public       admin    false    194            �           2604    16423    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       admin    false    177    178    178            �           2604    16433    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       admin    false    180    179    180            �           2604    16413    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       admin    false    176    175    176            �           2604    16443    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       admin    false    181    182    182            �           2604    16453    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       admin    false    183    184    184            �           2604    16463    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       admin    false    185    186    186            �           2604    16517    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       admin    false    188    187    188            �           2604    16403    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       admin    false    174    173    174            �           2604    16392    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       admin    false    171    172    172            �           2604    16552    id    DEFAULT     n   ALTER TABLE ONLY mainsite_newtable ALTER COLUMN id SET DEFAULT nextval('mainsite_newtable_id_seq'::regclass);
 C   ALTER TABLE public.mainsite_newtable ALTER COLUMN id DROP DEFAULT;
       public       admin    false    191    190    191            �           2604    16565    id    DEFAULT     f   ALTER TABLE ONLY mainsite_post ALTER COLUMN id SET DEFAULT nextval('mainsite_post_id_seq'::regclass);
 ?   ALTER TABLE public.mainsite_post ALTER COLUMN id DROP DEFAULT;
       public       admin    false    193    192    193            �           2604    16576    id    DEFAULT     l   ALTER TABLE ONLY mainsite_product ALTER COLUMN id SET DEFAULT nextval('mainsite_product_id_seq'::regclass);
 B   ALTER TABLE public.mainsite_product ALTER COLUMN id DROP DEFAULT;
       public       admin    false    194    195    195            O          0    16420 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       admin    false    178   @�       u           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       admin    false    177            Q          0    16430    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       admin    false    180   ]�       v           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       admin    false    179            M          0    16410    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       admin    false    176   z�       w           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);
            public       admin    false    175            S          0    16440 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       admin    false    182   ט       U          0    16450    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       admin    false    184   ��       x           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       admin    false    183            y           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       admin    false    181            W          0    16460    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       admin    false    186   ��       z           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       admin    false    185            Y          0    16514    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       admin    false    188   ə       {           0    0    django_admin_log_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('django_admin_log_id_seq', 1, true);
            public       admin    false    187            K          0    16400    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       admin    false    174    �       |           0    0    django_content_type_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);
            public       admin    false    173            I          0    16389    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       admin    false    172   ��       }           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 11, true);
            public       admin    false    171            Z          0    16536    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       admin    false    189   Û       \          0    16549    mainsite_newtable 
   TABLE DATA               y   COPY mainsite_newtable (id, bigint_f, bool_f, date_f, char_f, datetime_f, decimal_f, float_f, int_f, text_f) FROM stdin;
    public       admin    false    191   ޜ       ~           0    0    mainsite_newtable_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('mainsite_newtable_id_seq', 1, false);
            public       admin    false    190            ^          0    16562    mainsite_post 
   TABLE DATA               A   COPY mainsite_post (id, title, slug, body, pub_date) FROM stdin;
    public       admin    false    193   ��                  0    0    mainsite_post_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('mainsite_post_id_seq', 1, true);
            public       admin    false    192            `          0    16573    mainsite_product 
   TABLE DATA               D   COPY mainsite_product (id, sku, name, price, size, qty) FROM stdin;
    public       admin    false    195   W�       �           0    0    mainsite_product_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('mainsite_product_id_seq', 1, false);
            public       admin    false    194            �           2606    16427    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         admin    false    178    178            �           2606    16437 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         admin    false    180    180    180            �           2606    16435    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         admin    false    180    180            �           2606    16425    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         admin    false    178    178            �           2606    16417 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         admin    false    176    176    176            �           2606    16415    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         admin    false    176    176            �           2606    16455    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         admin    false    184    184            �           2606    16457 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         admin    false    184    184    184            �           2606    16445    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         admin    false    182    182            �           2606    16465    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         admin    false    186    186            �           2606    16467 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         admin    false    186    186    186            �           2606    16447    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         admin    false    182    182            �           2606    16523    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         admin    false    188    188            �           2606    16407 +   django_content_type_app_label_3ec8c61c_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3ec8c61c_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_3ec8c61c_uniq;
       public         admin    false    174    174    174            �           2606    16405    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         admin    false    174    174            �           2606    16397    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         admin    false    172    172            �           2606    16543    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         admin    false    189    189            �           2606    16559    mainsite_newtable_char_f_key 
   CONSTRAINT     d   ALTER TABLE ONLY mainsite_newtable
    ADD CONSTRAINT mainsite_newtable_char_f_key UNIQUE (char_f);
 X   ALTER TABLE ONLY public.mainsite_newtable DROP CONSTRAINT mainsite_newtable_char_f_key;
       public         admin    false    191    191            �           2606    16557    mainsite_newtable_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY mainsite_newtable
    ADD CONSTRAINT mainsite_newtable_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.mainsite_newtable DROP CONSTRAINT mainsite_newtable_pkey;
       public         admin    false    191    191            �           2606    16570    mainsite_post_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY mainsite_post
    ADD CONSTRAINT mainsite_post_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.mainsite_post DROP CONSTRAINT mainsite_post_pkey;
       public         admin    false    193    193            �           2606    16579    mainsite_product_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY mainsite_product
    ADD CONSTRAINT mainsite_product_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.mainsite_product DROP CONSTRAINT mainsite_product_pkey;
       public         admin    false    195    195            �           1259    16474    auth_group_name_331666e8_like    INDEX     a   CREATE INDEX auth_group_name_331666e8_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_331666e8_like;
       public         admin    false    178            �           1259    16485    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         admin    false    180            �           1259    16486    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         admin    false    180            �           1259    16473    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         admin    false    176            �           1259    16499    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         admin    false    184            �           1259    16498    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         admin    false    184            �           1259    16511 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         admin    false    186            �           1259    16510 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         admin    false    186            �           1259    16487    auth_user_username_94b8aae_like    INDEX     f   CREATE INDEX auth_user_username_94b8aae_like ON auth_user USING btree (username varchar_pattern_ops);
 3   DROP INDEX public.auth_user_username_94b8aae_like;
       public         admin    false    182            �           1259    16534    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         admin    false    188            �           1259    16535    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         admin    false    188            �           1259    16544    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         admin    false    189            �           1259    16545 (   django_session_session_key_630ca218_like    INDEX     w   CREATE INDEX django_session_session_key_630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_630ca218_like;
       public         admin    false    189            �           1259    16580 &   mainsite_newtable_char_f_652ddc36_like    INDEX     s   CREATE INDEX mainsite_newtable_char_f_652ddc36_like ON mainsite_newtable USING btree (char_f varchar_pattern_ops);
 :   DROP INDEX public.mainsite_newtable_char_f_652ddc36_like;
       public         admin    false    191            �           2606    16480 ?   auth_group_permiss_permission_id_23962d04_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id;
       public       admin    false    1958    176    180            �           2606    16475 9   auth_group_permissions_group_id_58c48ba9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id;
       public       admin    false    180    1963    178            �           2606    16468 ?   auth_permiss_content_type_id_51277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id;
       public       admin    false    174    176    1953            �           2606    16493 3   auth_user_groups_group_id_30a071c9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id;
       public       admin    false    1963    184    178            �           2606    16488 1   auth_user_groups_user_id_24702650_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id;
       public       admin    false    182    184    1971            �           2606    16505 ?   auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id;
       public       admin    false    176    1958    186            �           2606    16500 ;   auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id;
       public       admin    false    186    182    1971            �           2606    16524 ?   django_admin_content_type_id_5151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id;
       public       admin    false    1953    174    188            �           2606    16529 0   django_admin_log_user_id_1c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id;
       public       admin    false    1971    188    182            O      x������ � �      Q      x������ � �      M   M  x�]�;N�0@k�9Z;��k��Bb���%�О��z%J:JD�y"�Y{<o�?�[3��7:i�.�>Q��g&�?���H���^E�K0�`�ebХ��tR��iYN�f�ZC���� &lA�nh��q�Xj���+��נsDMM� �#��f����#�և[(� I� ��b�v�f��Ĝ'�r+��5�EF]708#>��Z��;Y����6%m 0�F��ހ��u��?�啕n`��py�*��sbA5���D�v��>��>�Xe-Z���qP\��D1�2�BJ�3�y؇y��ְڽ�E\�* ���2���;�q����c�      S   �   x�E��
�@���x-܉2~��?�R$(�� L-���˺��Ug��<N��G��L����W��>��ֱIvb߱E���֐���c#�J��r��O��+QW����gR�oBi�!�廔�gPJ$)*�v����cc0��Y坫S�9�qd!�堊��v�4M��
/,      U      x������ � �      W      x������ � �      Y   G   x�3�4204�50�5�P04�25�22�341416�60�4��/.I/J�Qx�c͋�ˀb�朆\1z\\\ ��      K   r   x�M�K
�0�z�)��ޥ7�!��$Sr������<f�����FX�&�(��Pe+�=��<�i��,МW�T��T���9�k_�TR��T�������#�sL��^ 3��8�      I     x����j� F��S��l�5�Rie+�FSڷ��E�%�����0s�^��]��{u	 6>��m@�� ��0q1���3�@����yBpV"5A�}�}<��2�q��?���y�t��0�c���1Js.YE�/16d���m�O�/���l�Lp�Z��P�H&UE���7ԞJq���ƴRd��{J-m�e���4���=!ؔMX��ܵ�cŚP��1�CDQ�����m�M5����4�\3���\i�^cT���{��ţ`@~7~�a����      Z     x�e�Ao�0@��+v_4m)"&;,"�Dj ��5��JK7�h��%;����;�����\�p��mhNgG�w=Dà��Y�������� �*���7*>J�Te����c�B�G�S]~վt���&M\�aK��>�-+�<.-��p<δ���냧����(����v���Z�&�����d ��h�n�e��ɤ�jM��l�.����W���7�ʱ��n��Ԇ��>���O�2#�sD�=!��隐�*@+�|F�{_x��%Xg4      \      x������ � �      ^   L   x�3��/.I/J�Qx�c͋��8 "%�%�.�%�I�ũ
! ����������������������W� C\      `      x������ � �     