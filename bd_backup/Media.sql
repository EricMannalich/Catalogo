PGDMP     %    5                 z            Media    13.1    13.4               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17825    Media    DATABASE     b   CREATE DATABASE "Media" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Cuba.1252';
    DROP DATABASE "Media";
                postgres    false            �            1259    17857 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17855    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    17867    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17865    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    17849    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17847    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    17984    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17982    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    218                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    217            �            1259    17839    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17837    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203                        0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    17828    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17826    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            !           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    18006    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    42405    principal_categoria    TABLE     �   CREATE TABLE public.principal_categoria (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(25) NOT NULL
);
 '   DROP TABLE public.principal_categoria;
       public         heap    postgres    false            �            1259    42403    principal_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.principal_categoria_id_seq;
       public          postgres    false    244            "           0    0    principal_categoria_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.principal_categoria_id_seq OWNED BY public.principal_categoria.id;
          public          postgres    false    243            �            1259    18177    principal_episodio    TABLE     -  CREATE TABLE public.principal_episodio (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(255) NOT NULL,
    link character varying(200),
    serie_id integer NOT NULL
);
 &   DROP TABLE public.principal_episodio;
       public         heap    postgres    false            �            1259    18175    principal_episodio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_episodio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.principal_episodio_id_seq;
       public          postgres    false    241            #           0    0    principal_episodio_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.principal_episodio_id_seq OWNED BY public.principal_episodio.id;
          public          postgres    false    240            �            1259    18100    principal_genero    TABLE     �   CREATE TABLE public.principal_genero (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(25) NOT NULL
);
 $   DROP TABLE public.principal_genero;
       public         heap    postgres    false            �            1259    18098    principal_genero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_genero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.principal_genero_id_seq;
       public          postgres    false    225            $           0    0    principal_genero_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.principal_genero_id_seq OWNED BY public.principal_genero.id;
          public          postgres    false    224            �            1259    42417    principal_historicalcategoria    TABLE     �  CREATE TABLE public.principal_historicalcategoria (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(25) NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint
);
 1   DROP TABLE public.principal_historicalcategoria;
       public         heap    postgres    false            �            1259    42415 ,   principal_historicalcategoria_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalcategoria_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.principal_historicalcategoria_history_id_seq;
       public          postgres    false    246            %           0    0 ,   principal_historicalcategoria_history_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.principal_historicalcategoria_history_id_seq OWNED BY public.principal_historicalcategoria.history_id;
          public          postgres    false    245            �            1259    18166    principal_historicalepisodio    TABLE       CREATE TABLE public.principal_historicalepisodio (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(255) NOT NULL,
    link character varying(200),
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint,
    serie_id integer
);
 0   DROP TABLE public.principal_historicalepisodio;
       public         heap    postgres    false            �            1259    18164 +   principal_historicalepisodio_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalepisodio_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.principal_historicalepisodio_history_id_seq;
       public          postgres    false    239            &           0    0 +   principal_historicalepisodio_history_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.principal_historicalepisodio_history_id_seq OWNED BY public.principal_historicalepisodio.history_id;
          public          postgres    false    238            �            1259    18158    principal_historicalgenero    TABLE     �  CREATE TABLE public.principal_historicalgenero (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(25) NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint
);
 .   DROP TABLE public.principal_historicalgenero;
       public         heap    postgres    false            �            1259    18156 )   principal_historicalgenero_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalgenero_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.principal_historicalgenero_history_id_seq;
       public          postgres    false    237            '           0    0 )   principal_historicalgenero_history_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.principal_historicalgenero_history_id_seq OWNED BY public.principal_historicalgenero.history_id;
          public          postgres    false    236            �            1259    18150    principal_historicalpuntuacion    TABLE     �  CREATE TABLE public.principal_historicalpuntuacion (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    puntuacion character varying(1) NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint,
    serie_id integer,
    usuario_id bigint
);
 2   DROP TABLE public.principal_historicalpuntuacion;
       public         heap    postgres    false            �            1259    18148 -   principal_historicalpuntuacion_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalpuntuacion_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.principal_historicalpuntuacion_history_id_seq;
       public          postgres    false    235            (           0    0 -   principal_historicalpuntuacion_history_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.principal_historicalpuntuacion_history_id_seq OWNED BY public.principal_historicalpuntuacion.history_id;
          public          postgres    false    234            �            1259    18139    principal_historicalserie    TABLE     j  CREATE TABLE public.principal_historicalserie (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(255) NOT NULL,
    sinopsis text,
    emision boolean NOT NULL,
    fecha_salida date,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint,
    image text,
    promedio_puntuaciones numeric(2,1) NOT NULL,
    categoria_id integer
);
 -   DROP TABLE public.principal_historicalserie;
       public         heap    postgres    false            �            1259    18137 (   principal_historicalserie_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_historicalserie_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.principal_historicalserie_history_id_seq;
       public          postgres    false    233            )           0    0 (   principal_historicalserie_history_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.principal_historicalserie_history_id_seq OWNED BY public.principal_historicalserie.history_id;
          public          postgres    false    232            �            1259    18131    principal_puntuacion    TABLE     0  CREATE TABLE public.principal_puntuacion (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    puntuacion character varying(1) NOT NULL,
    serie_id integer NOT NULL,
    usuario_id bigint NOT NULL
);
 (   DROP TABLE public.principal_puntuacion;
       public         heap    postgres    false            �            1259    18129    principal_puntuacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_puntuacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.principal_puntuacion_id_seq;
       public          postgres    false    231            *           0    0    principal_puntuacion_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.principal_puntuacion_id_seq OWNED BY public.principal_puntuacion.id;
          public          postgres    false    230            �            1259    18110    principal_serie    TABLE     �  CREATE TABLE public.principal_serie (
    id integer NOT NULL,
    state boolean NOT NULL,
    created_date date NOT NULL,
    modified_date date NOT NULL,
    deleted_date date NOT NULL,
    nombre character varying(255) NOT NULL,
    sinopsis text,
    emision boolean NOT NULL,
    fecha_salida date,
    image character varying(255),
    promedio_puntuaciones numeric(2,1) NOT NULL,
    categoria_id integer
);
 #   DROP TABLE public.principal_serie;
       public         heap    postgres    false            �            1259    18123    principal_serie_genero    TABLE     �   CREATE TABLE public.principal_serie_genero (
    id integer NOT NULL,
    serie_id integer NOT NULL,
    genero_id integer NOT NULL
);
 *   DROP TABLE public.principal_serie_genero;
       public         heap    postgres    false            �            1259    18121    principal_serie_genero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_serie_genero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.principal_serie_genero_id_seq;
       public          postgres    false    229            +           0    0    principal_serie_genero_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.principal_serie_genero_id_seq OWNED BY public.principal_serie_genero.id;
          public          postgres    false    228            �            1259    18108    principal_serie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.principal_serie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.principal_serie_id_seq;
       public          postgres    false    227            ,           0    0    principal_serie_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.principal_serie_id_seq OWNED BY public.principal_serie.id;
          public          postgres    false    226            �            1259    18018     token_blacklist_blacklistedtoken    TABLE     �   CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);
 4   DROP TABLE public.token_blacklist_blacklistedtoken;
       public         heap    postgres    false            �            1259    18066 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.token_blacklist_blacklistedtoken_id_seq;
       public          postgres    false    220            -           0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;
          public          postgres    false    222            �            1259    18026     token_blacklist_outstandingtoken    TABLE       CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id bigint,
    jti character varying(255) NOT NULL
);
 4   DROP TABLE public.token_blacklist_outstandingtoken;
       public         heap    postgres    false            �            1259    18082 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.token_blacklist_outstandingtoken_id_seq;
       public          postgres    false    221            .           0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;
          public          postgres    false    223            �            1259    17932    users_historicaluser    TABLE     �  CREATE TABLE public.users_historicaluser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    image text,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    history_id integer NOT NULL,
    history_date timestamp with time zone NOT NULL,
    history_change_reason character varying(100),
    history_type character varying(1) NOT NULL,
    history_user_id bigint
);
 (   DROP TABLE public.users_historicaluser;
       public         heap    postgres    false            �            1259    17930 #   users_historicaluser_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_historicaluser_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.users_historicaluser_history_id_seq;
       public          postgres    false    216            /           0    0 #   users_historicaluser_history_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.users_historicaluser_history_id_seq OWNED BY public.users_historicaluser.history_id;
          public          postgres    false    215            �            1259    17901 
   users_user    TABLE     �  CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    image character varying(255),
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL
);
    DROP TABLE public.users_user;
       public         heap    postgres    false            �            1259    17916    users_user_groups    TABLE        CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public         heap    postgres    false            �            1259    17914    users_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public          postgres    false    212            0           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public          postgres    false    211            �            1259    34237    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    210            1           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
          public          postgres    false    242            �            1259    17924    users_user_user_permissions    TABLE     �   CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public         heap    postgres    false            �            1259    17922 "   users_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public          postgres    false    214            2           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public          postgres    false    213            �           2604    17860    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �           2604    17870    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �           2604    17852    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    17987    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    17842    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �           2604    17831    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    42408    principal_categoria id    DEFAULT     �   ALTER TABLE ONLY public.principal_categoria ALTER COLUMN id SET DEFAULT nextval('public.principal_categoria_id_seq'::regclass);
 E   ALTER TABLE public.principal_categoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    18180    principal_episodio id    DEFAULT     ~   ALTER TABLE ONLY public.principal_episodio ALTER COLUMN id SET DEFAULT nextval('public.principal_episodio_id_seq'::regclass);
 D   ALTER TABLE public.principal_episodio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    18103    principal_genero id    DEFAULT     z   ALTER TABLE ONLY public.principal_genero ALTER COLUMN id SET DEFAULT nextval('public.principal_genero_id_seq'::regclass);
 B   ALTER TABLE public.principal_genero ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    42420 (   principal_historicalcategoria history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalcategoria ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalcategoria_history_id_seq'::regclass);
 W   ALTER TABLE public.principal_historicalcategoria ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    246    245    246            �           2604    18169 '   principal_historicalepisodio history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalepisodio ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalepisodio_history_id_seq'::regclass);
 V   ALTER TABLE public.principal_historicalepisodio ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    18161 %   principal_historicalgenero history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalgenero ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalgenero_history_id_seq'::regclass);
 T   ALTER TABLE public.principal_historicalgenero ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    18153 )   principal_historicalpuntuacion history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalpuntuacion ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalpuntuacion_history_id_seq'::regclass);
 X   ALTER TABLE public.principal_historicalpuntuacion ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    18142 $   principal_historicalserie history_id    DEFAULT     �   ALTER TABLE ONLY public.principal_historicalserie ALTER COLUMN history_id SET DEFAULT nextval('public.principal_historicalserie_history_id_seq'::regclass);
 S   ALTER TABLE public.principal_historicalserie ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    18134    principal_puntuacion id    DEFAULT     �   ALTER TABLE ONLY public.principal_puntuacion ALTER COLUMN id SET DEFAULT nextval('public.principal_puntuacion_id_seq'::regclass);
 F   ALTER TABLE public.principal_puntuacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    18113    principal_serie id    DEFAULT     x   ALTER TABLE ONLY public.principal_serie ALTER COLUMN id SET DEFAULT nextval('public.principal_serie_id_seq'::regclass);
 A   ALTER TABLE public.principal_serie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    18126    principal_serie_genero id    DEFAULT     �   ALTER TABLE ONLY public.principal_serie_genero ALTER COLUMN id SET DEFAULT nextval('public.principal_serie_genero_id_seq'::regclass);
 H   ALTER TABLE public.principal_serie_genero ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    18068 #   token_blacklist_blacklistedtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_blacklistedtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    220            �           2604    18084 #   token_blacklist_outstandingtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_outstandingtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    221            �           2604    17935    users_historicaluser history_id    DEFAULT     �   ALTER TABLE ONLY public.users_historicaluser ALTER COLUMN history_id SET DEFAULT nextval('public.users_historicaluser_history_id_seq'::regclass);
 N   ALTER TABLE public.users_historicaluser ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    34239    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    210            �           2604    17919    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    17927    users_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �          0    17857 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   {u      �          0    17867    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   �u      �          0    17849    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   �u      �          0    17984    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    218   �x      �          0    17839    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ͒      �          0    17828    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ��      �          0    18006    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    219   Җ                0    42405    principal_categoria 
   TABLE DATA           k   COPY public.principal_categoria (id, state, created_date, modified_date, deleted_date, nombre) FROM stdin;
    public          postgres    false    244   �                0    18177    principal_episodio 
   TABLE DATA           z   COPY public.principal_episodio (id, state, created_date, modified_date, deleted_date, nombre, link, serie_id) FROM stdin;
    public          postgres    false    241   �                 0    18100    principal_genero 
   TABLE DATA           h   COPY public.principal_genero (id, state, created_date, modified_date, deleted_date, nombre) FROM stdin;
    public          postgres    false    225   ��                0    42417    principal_historicalcategoria 
   TABLE DATA           �   COPY public.principal_historicalcategoria (id, state, created_date, modified_date, deleted_date, nombre, history_id, history_date, history_change_reason, history_type, history_user_id) FROM stdin;
    public          postgres    false    246   Z�                0    18166    principal_historicalepisodio 
   TABLE DATA           �   COPY public.principal_historicalepisodio (id, state, created_date, modified_date, deleted_date, nombre, link, history_id, history_date, history_change_reason, history_type, history_user_id, serie_id) FROM stdin;
    public          postgres    false    239   ��                0    18158    principal_historicalgenero 
   TABLE DATA           �   COPY public.principal_historicalgenero (id, state, created_date, modified_date, deleted_date, nombre, history_id, history_date, history_change_reason, history_type, history_user_id) FROM stdin;
    public          postgres    false    237   Z�      
          0    18150    principal_historicalpuntuacion 
   TABLE DATA           �   COPY public.principal_historicalpuntuacion (id, state, created_date, modified_date, deleted_date, puntuacion, history_id, history_date, history_change_reason, history_type, history_user_id, serie_id, usuario_id) FROM stdin;
    public          postgres    false    235   Ş                0    18139    principal_historicalserie 
   TABLE DATA             COPY public.principal_historicalserie (id, state, created_date, modified_date, deleted_date, nombre, sinopsis, emision, fecha_salida, history_id, history_date, history_change_reason, history_type, history_user_id, image, promedio_puntuaciones, categoria_id) FROM stdin;
    public          postgres    false    233   Z�                0    18131    principal_puntuacion 
   TABLE DATA           �   COPY public.principal_puntuacion (id, state, created_date, modified_date, deleted_date, puntuacion, serie_id, usuario_id) FROM stdin;
    public          postgres    false    231   4V                0    18110    principal_serie 
   TABLE DATA           �   COPY public.principal_serie (id, state, created_date, modified_date, deleted_date, nombre, sinopsis, emision, fecha_salida, image, promedio_puntuaciones, categoria_id) FROM stdin;
    public          postgres    false    227   )X                0    18123    principal_serie_genero 
   TABLE DATA           I   COPY public.principal_serie_genero (id, serie_id, genero_id) FROM stdin;
    public          postgres    false    229   2�      �          0    18018     token_blacklist_blacklistedtoken 
   TABLE DATA           X   COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
    public          postgres    false    220   ݴ      �          0    18026     token_blacklist_outstandingtoken 
   TABLE DATA           k   COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
    public          postgres    false    221   ��      �          0    17932    users_historicaluser 
   TABLE DATA           �   COPY public.users_historicaluser (id, password, last_login, is_superuser, username, email, first_name, last_name, image, is_active, is_staff, history_id, history_date, history_change_reason, history_type, history_user_id) FROM stdin;
    public          postgres    false    216   &j      �          0    17901 
   users_user 
   TABLE DATA           �   COPY public.users_user (id, password, last_login, is_superuser, username, email, first_name, last_name, image, is_active, is_staff) FROM stdin;
    public          postgres    false    210   w      �          0    17916    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    212   �w      �          0    17924    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    214   x      3           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            4           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            5           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    204            6           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 286, true);
          public          postgres    false    217            7           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    202            8           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);
          public          postgres    false    200            9           0    0    principal_categoria_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.principal_categoria_id_seq', 1, true);
          public          postgres    false    243            :           0    0    principal_episodio_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.principal_episodio_id_seq', 1, true);
          public          postgres    false    240            ;           0    0    principal_genero_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.principal_genero_id_seq', 37, true);
          public          postgres    false    224            <           0    0 ,   principal_historicalcategoria_history_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.principal_historicalcategoria_history_id_seq', 1, true);
          public          postgres    false    245            =           0    0 +   principal_historicalepisodio_history_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.principal_historicalepisodio_history_id_seq', 1, true);
          public          postgres    false    238            >           0    0 )   principal_historicalgenero_history_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.principal_historicalgenero_history_id_seq', 37, true);
          public          postgres    false    236            ?           0    0 -   principal_historicalpuntuacion_history_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.principal_historicalpuntuacion_history_id_seq', 164, true);
          public          postgres    false    234            @           0    0 (   principal_historicalserie_history_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.principal_historicalserie_history_id_seq', 206, true);
          public          postgres    false    232            A           0    0    principal_puntuacion_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.principal_puntuacion_id_seq', 124, true);
          public          postgres    false    230            B           0    0    principal_serie_genero_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.principal_serie_genero_id_seq', 365, true);
          public          postgres    false    228            C           0    0    principal_serie_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.principal_serie_id_seq', 86, true);
          public          postgres    false    226            D           0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, false);
          public          postgres    false    222            E           0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 421, true);
          public          postgres    false    223            F           0    0 #   users_historicaluser_history_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.users_historicaluser_history_id_seq', 122, true);
          public          postgres    false    215            G           0    0    users_user_groups_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);
          public          postgres    false    211            H           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 2, true);
          public          postgres    false    242            I           0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
          public          postgres    false    213            �           2606    17897    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    17883 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    17872 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    17862    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    17874 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    17854 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    17993 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    218            �           2606    17846 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    17844 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    17836 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201                       2606    18013 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    219            E           2606    42412 2   principal_categoria principal_categoria_nombre_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.principal_categoria
    ADD CONSTRAINT principal_categoria_nombre_key UNIQUE (nombre);
 \   ALTER TABLE ONLY public.principal_categoria DROP CONSTRAINT principal_categoria_nombre_key;
       public            postgres    false    244            G           2606    42410 ,   principal_categoria principal_categoria_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.principal_categoria
    ADD CONSTRAINT principal_categoria_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.principal_categoria DROP CONSTRAINT principal_categoria_pkey;
       public            postgres    false    244            A           2606    18182 *   principal_episodio principal_episodio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.principal_episodio
    ADD CONSTRAINT principal_episodio_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.principal_episodio DROP CONSTRAINT principal_episodio_pkey;
       public            postgres    false    241                       2606    18107 ,   principal_genero principal_genero_nombre_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.principal_genero
    ADD CONSTRAINT principal_genero_nombre_key UNIQUE (nombre);
 V   ALTER TABLE ONLY public.principal_genero DROP CONSTRAINT principal_genero_nombre_key;
       public            postgres    false    225                       2606    18105 &   principal_genero principal_genero_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.principal_genero
    ADD CONSTRAINT principal_genero_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.principal_genero DROP CONSTRAINT principal_genero_pkey;
       public            postgres    false    225            M           2606    42422 @   principal_historicalcategoria principal_historicalcategoria_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalcategoria
    ADD CONSTRAINT principal_historicalcategoria_pkey PRIMARY KEY (history_id);
 j   ALTER TABLE ONLY public.principal_historicalcategoria DROP CONSTRAINT principal_historicalcategoria_pkey;
       public            postgres    false    246            >           2606    18174 >   principal_historicalepisodio principal_historicalepisodio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalepisodio
    ADD CONSTRAINT principal_historicalepisodio_pkey PRIMARY KEY (history_id);
 h   ALTER TABLE ONLY public.principal_historicalepisodio DROP CONSTRAINT principal_historicalepisodio_pkey;
       public            postgres    false    239            :           2606    18163 :   principal_historicalgenero principal_historicalgenero_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalgenero
    ADD CONSTRAINT principal_historicalgenero_pkey PRIMARY KEY (history_id);
 d   ALTER TABLE ONLY public.principal_historicalgenero DROP CONSTRAINT principal_historicalgenero_pkey;
       public            postgres    false    237            2           2606    18155 B   principal_historicalpuntuacion principal_historicalpuntuacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalpuntuacion
    ADD CONSTRAINT principal_historicalpuntuacion_pkey PRIMARY KEY (history_id);
 l   ALTER TABLE ONLY public.principal_historicalpuntuacion DROP CONSTRAINT principal_historicalpuntuacion_pkey;
       public            postgres    false    235            ,           2606    18147 8   principal_historicalserie principal_historicalserie_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.principal_historicalserie
    ADD CONSTRAINT principal_historicalserie_pkey PRIMARY KEY (history_id);
 b   ALTER TABLE ONLY public.principal_historicalserie DROP CONSTRAINT principal_historicalserie_pkey;
       public            postgres    false    233            #           2606    18136 .   principal_puntuacion principal_puntuacion_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.principal_puntuacion
    ADD CONSTRAINT principal_puntuacion_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.principal_puntuacion DROP CONSTRAINT principal_puntuacion_pkey;
       public            postgres    false    231                       2606    18128 2   principal_serie_genero principal_serie_genero_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.principal_serie_genero
    ADD CONSTRAINT principal_serie_genero_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.principal_serie_genero DROP CONSTRAINT principal_serie_genero_pkey;
       public            postgres    false    229            !           2606    18188 N   principal_serie_genero principal_serie_genero_serie_id_genero_id_0bd47b9a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.principal_serie_genero
    ADD CONSTRAINT principal_serie_genero_serie_id_genero_id_0bd47b9a_uniq UNIQUE (serie_id, genero_id);
 x   ALTER TABLE ONLY public.principal_serie_genero DROP CONSTRAINT principal_serie_genero_serie_id_genero_id_0bd47b9a_uniq;
       public            postgres    false    229    229                       2606    18120 *   principal_serie principal_serie_nombre_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.principal_serie
    ADD CONSTRAINT principal_serie_nombre_key UNIQUE (nombre);
 T   ALTER TABLE ONLY public.principal_serie DROP CONSTRAINT principal_serie_nombre_key;
       public            postgres    false    227                       2606    18118 $   principal_serie principal_serie_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.principal_serie
    ADD CONSTRAINT principal_serie_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.principal_serie DROP CONSTRAINT principal_serie_pkey;
       public            postgres    false    227                       2606    18060 F   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_pkey;
       public            postgres    false    220                       2606    18086 N   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);
 x   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_token_id_key;
       public            postgres    false    220                       2606    18051 W   token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);
 �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq;
       public            postgres    false    221                       2606    18071 F   token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outstandingtoken_pkey;
       public            postgres    false    221            �           2606    17940 .   users_historicaluser users_historicaluser_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.users_historicaluser
    ADD CONSTRAINT users_historicaluser_pkey PRIMARY KEY (history_id);
 X   ALTER TABLE ONLY public.users_historicaluser DROP CONSTRAINT users_historicaluser_pkey;
       public            postgres    false    216            �           2606    17913    users_user users_user_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_email_key;
       public            postgres    false    210            �           2606    17921 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public            postgres    false    212            �           2606    34335 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public            postgres    false    212    212            �           2606    34225    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public            postgres    false    210            �           2606    17929 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public            postgres    false    214            �           2606    34345 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public            postgres    false    214    214            �           2606    17911 "   users_user users_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_username_key;
       public            postgres    false    210            �           1259    17898    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    17894 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    17895 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    17880 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    18004 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    218                        1259    34240 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    218                       1259    18015 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    219                       1259    18014 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    219            C           1259    42428 (   principal_categoria_nombre_42775d2d_like    INDEX     ~   CREATE INDEX principal_categoria_nombre_42775d2d_like ON public.principal_categoria USING btree (nombre varchar_pattern_ops);
 <   DROP INDEX public.principal_categoria_nombre_42775d2d_like;
       public            postgres    false    244            B           1259    18255 $   principal_episodio_serie_id_470d573a    INDEX     g   CREATE INDEX principal_episodio_serie_id_470d573a ON public.principal_episodio USING btree (serie_id);
 8   DROP INDEX public.principal_episodio_serie_id_470d573a;
       public            postgres    false    241                       1259    18183 %   principal_genero_nombre_d06b4db2_like    INDEX     x   CREATE INDEX principal_genero_nombre_d06b4db2_like ON public.principal_genero USING btree (nombre varchar_pattern_ops);
 9   DROP INDEX public.principal_genero_nombre_d06b4db2_like;
       public            postgres    false    225            H           1259    42437 6   principal_historicalcategoria_history_user_id_3c5ce05a    INDEX     �   CREATE INDEX principal_historicalcategoria_history_user_id_3c5ce05a ON public.principal_historicalcategoria USING btree (history_user_id);
 J   DROP INDEX public.principal_historicalcategoria_history_user_id_3c5ce05a;
       public            postgres    false    246            I           1259    42434 )   principal_historicalcategoria_id_f7f84f1b    INDEX     q   CREATE INDEX principal_historicalcategoria_id_f7f84f1b ON public.principal_historicalcategoria USING btree (id);
 =   DROP INDEX public.principal_historicalcategoria_id_f7f84f1b;
       public            postgres    false    246            J           1259    42435 -   principal_historicalcategoria_nombre_6e225489    INDEX     y   CREATE INDEX principal_historicalcategoria_nombre_6e225489 ON public.principal_historicalcategoria USING btree (nombre);
 A   DROP INDEX public.principal_historicalcategoria_nombre_6e225489;
       public            postgres    false    246            K           1259    42436 2   principal_historicalcategoria_nombre_6e225489_like    INDEX     �   CREATE INDEX principal_historicalcategoria_nombre_6e225489_like ON public.principal_historicalcategoria USING btree (nombre varchar_pattern_ops);
 F   DROP INDEX public.principal_historicalcategoria_nombre_6e225489_like;
       public            postgres    false    246            ;           1259    34250 5   principal_historicalepisodio_history_user_id_cec013b6    INDEX     �   CREATE INDEX principal_historicalepisodio_history_user_id_cec013b6 ON public.principal_historicalepisodio USING btree (history_user_id);
 I   DROP INDEX public.principal_historicalepisodio_history_user_id_cec013b6;
       public            postgres    false    239            <           1259    18247 (   principal_historicalepisodio_id_1787410b    INDEX     o   CREATE INDEX principal_historicalepisodio_id_1787410b ON public.principal_historicalepisodio USING btree (id);
 <   DROP INDEX public.principal_historicalepisodio_id_1787410b;
       public            postgres    false    239            ?           1259    18249 .   principal_historicalepisodio_serie_id_0f644b6a    INDEX     {   CREATE INDEX principal_historicalepisodio_serie_id_0f644b6a ON public.principal_historicalepisodio USING btree (serie_id);
 B   DROP INDEX public.principal_historicalepisodio_serie_id_0f644b6a;
       public            postgres    false    239            5           1259    34300 3   principal_historicalgenero_history_user_id_b9783050    INDEX     �   CREATE INDEX principal_historicalgenero_history_user_id_b9783050 ON public.principal_historicalgenero USING btree (history_user_id);
 G   DROP INDEX public.principal_historicalgenero_history_user_id_b9783050;
       public            postgres    false    237            6           1259    18238 &   principal_historicalgenero_id_8853dca7    INDEX     k   CREATE INDEX principal_historicalgenero_id_8853dca7 ON public.principal_historicalgenero USING btree (id);
 :   DROP INDEX public.principal_historicalgenero_id_8853dca7;
       public            postgres    false    237            7           1259    18239 *   principal_historicalgenero_nombre_b5dbe3e2    INDEX     s   CREATE INDEX principal_historicalgenero_nombre_b5dbe3e2 ON public.principal_historicalgenero USING btree (nombre);
 >   DROP INDEX public.principal_historicalgenero_nombre_b5dbe3e2;
       public            postgres    false    237            8           1259    18240 /   principal_historicalgenero_nombre_b5dbe3e2_like    INDEX     �   CREATE INDEX principal_historicalgenero_nombre_b5dbe3e2_like ON public.principal_historicalgenero USING btree (nombre varchar_pattern_ops);
 C   DROP INDEX public.principal_historicalgenero_nombre_b5dbe3e2_like;
       public            postgres    false    237            /           1259    34268 7   principal_historicalpuntuacion_history_user_id_cde396a2    INDEX     �   CREATE INDEX principal_historicalpuntuacion_history_user_id_cde396a2 ON public.principal_historicalpuntuacion USING btree (history_user_id);
 K   DROP INDEX public.principal_historicalpuntuacion_history_user_id_cde396a2;
       public            postgres    false    235            0           1259    18229 *   principal_historicalpuntuacion_id_8981e183    INDEX     s   CREATE INDEX principal_historicalpuntuacion_id_8981e183 ON public.principal_historicalpuntuacion USING btree (id);
 >   DROP INDEX public.principal_historicalpuntuacion_id_8981e183;
       public            postgres    false    235            3           1259    18231 0   principal_historicalpuntuacion_serie_id_64370349    INDEX        CREATE INDEX principal_historicalpuntuacion_serie_id_64370349 ON public.principal_historicalpuntuacion USING btree (serie_id);
 D   DROP INDEX public.principal_historicalpuntuacion_serie_id_64370349;
       public            postgres    false    235            4           1259    34277 2   principal_historicalpuntuacion_usuario_id_93c332d4    INDEX     �   CREATE INDEX principal_historicalpuntuacion_usuario_id_93c332d4 ON public.principal_historicalpuntuacion USING btree (usuario_id);
 F   DROP INDEX public.principal_historicalpuntuacion_usuario_id_93c332d4;
       public            postgres    false    235            &           1259    42438 /   principal_historicalserie_categoria_id_1e1277df    INDEX     }   CREATE INDEX principal_historicalserie_categoria_id_1e1277df ON public.principal_historicalserie USING btree (categoria_id);
 C   DROP INDEX public.principal_historicalserie_categoria_id_1e1277df;
       public            postgres    false    233            '           1259    34286 2   principal_historicalserie_history_user_id_bf40556c    INDEX     �   CREATE INDEX principal_historicalserie_history_user_id_bf40556c ON public.principal_historicalserie USING btree (history_user_id);
 F   DROP INDEX public.principal_historicalserie_history_user_id_bf40556c;
       public            postgres    false    233            (           1259    18218 %   principal_historicalserie_id_94014783    INDEX     i   CREATE INDEX principal_historicalserie_id_94014783 ON public.principal_historicalserie USING btree (id);
 9   DROP INDEX public.principal_historicalserie_id_94014783;
       public            postgres    false    233            )           1259    18219 )   principal_historicalserie_nombre_1df8d62b    INDEX     q   CREATE INDEX principal_historicalserie_nombre_1df8d62b ON public.principal_historicalserie USING btree (nombre);
 =   DROP INDEX public.principal_historicalserie_nombre_1df8d62b;
       public            postgres    false    233            *           1259    18220 .   principal_historicalserie_nombre_1df8d62b_like    INDEX     �   CREATE INDEX principal_historicalserie_nombre_1df8d62b_like ON public.principal_historicalserie USING btree (nombre varchar_pattern_ops);
 B   DROP INDEX public.principal_historicalserie_nombre_1df8d62b_like;
       public            postgres    false    233            -           1259    18221 +   principal_historicalserie_sinopsis_047e828d    INDEX     u   CREATE INDEX principal_historicalserie_sinopsis_047e828d ON public.principal_historicalserie USING btree (sinopsis);
 ?   DROP INDEX public.principal_historicalserie_sinopsis_047e828d;
       public            postgres    false    233            .           1259    18222 0   principal_historicalserie_sinopsis_047e828d_like    INDEX     �   CREATE INDEX principal_historicalserie_sinopsis_047e828d_like ON public.principal_historicalserie USING btree (sinopsis text_pattern_ops);
 D   DROP INDEX public.principal_historicalserie_sinopsis_047e828d_like;
       public            postgres    false    233            $           1259    18211 &   principal_puntuacion_serie_id_5df8a496    INDEX     k   CREATE INDEX principal_puntuacion_serie_id_5df8a496 ON public.principal_puntuacion USING btree (serie_id);
 :   DROP INDEX public.principal_puntuacion_serie_id_5df8a496;
       public            postgres    false    231            %           1259    34261 (   principal_puntuacion_usuario_id_5ab655dc    INDEX     o   CREATE INDEX principal_puntuacion_usuario_id_5ab655dc ON public.principal_puntuacion USING btree (usuario_id);
 <   DROP INDEX public.principal_puntuacion_usuario_id_5ab655dc;
       public            postgres    false    231                       1259    42439 %   principal_serie_categoria_id_f2b61270    INDEX     i   CREATE INDEX principal_serie_categoria_id_f2b61270 ON public.principal_serie USING btree (categoria_id);
 9   DROP INDEX public.principal_serie_categoria_id_f2b61270;
       public            postgres    false    227                       1259    18200 )   principal_serie_genero_genero_id_234aa7e9    INDEX     q   CREATE INDEX principal_serie_genero_genero_id_234aa7e9 ON public.principal_serie_genero USING btree (genero_id);
 =   DROP INDEX public.principal_serie_genero_genero_id_234aa7e9;
       public            postgres    false    229                       1259    18199 (   principal_serie_genero_serie_id_474233ac    INDEX     o   CREATE INDEX principal_serie_genero_serie_id_474233ac ON public.principal_serie_genero USING btree (serie_id);
 <   DROP INDEX public.principal_serie_genero_serie_id_474233ac;
       public            postgres    false    229                       1259    18184 $   principal_serie_nombre_a6a5eab5_like    INDEX     v   CREATE INDEX principal_serie_nombre_a6a5eab5_like ON public.principal_serie USING btree (nombre varchar_pattern_ops);
 8   DROP INDEX public.principal_serie_nombre_a6a5eab5_like;
       public            postgres    false    227                       1259    18185 !   principal_serie_sinopsis_9ae2648c    INDEX     a   CREATE INDEX principal_serie_sinopsis_9ae2648c ON public.principal_serie USING btree (sinopsis);
 5   DROP INDEX public.principal_serie_sinopsis_9ae2648c;
       public            postgres    false    227                       1259    18186 &   principal_serie_sinopsis_9ae2648c_like    INDEX     w   CREATE INDEX principal_serie_sinopsis_9ae2648c_like ON public.principal_serie USING btree (sinopsis text_pattern_ops);
 :   DROP INDEX public.principal_serie_sinopsis_9ae2648c_like;
       public            postgres    false    227            	           1259    18052 6   token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);
 J   DROP INDEX public.token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like;
       public            postgres    false    221                       1259    34309 1   token_blacklist_outstandingtoken_user_id_83bc629a    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);
 E   DROP INDEX public.token_blacklist_outstandingtoken_user_id_83bc629a;
       public            postgres    false    221            �           1259    17979 #   users_historicaluser_email_a7c70263    INDEX     e   CREATE INDEX users_historicaluser_email_a7c70263 ON public.users_historicaluser USING btree (email);
 7   DROP INDEX public.users_historicaluser_email_a7c70263;
       public            postgres    false    216            �           1259    17980 (   users_historicaluser_email_a7c70263_like    INDEX     ~   CREATE INDEX users_historicaluser_email_a7c70263_like ON public.users_historicaluser USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.users_historicaluser_email_a7c70263_like;
       public            postgres    false    216            �           1259    34320 -   users_historicaluser_history_user_id_7f91d047    INDEX     y   CREATE INDEX users_historicaluser_history_user_id_7f91d047 ON public.users_historicaluser USING btree (history_user_id);
 A   DROP INDEX public.users_historicaluser_history_user_id_7f91d047;
       public            postgres    false    216            �           1259    34209     users_historicaluser_id_5e70dd03    INDEX     _   CREATE INDEX users_historicaluser_id_5e70dd03 ON public.users_historicaluser USING btree (id);
 4   DROP INDEX public.users_historicaluser_id_5e70dd03;
       public            postgres    false    216            �           1259    17977 &   users_historicaluser_username_8f7ba123    INDEX     k   CREATE INDEX users_historicaluser_username_8f7ba123 ON public.users_historicaluser USING btree (username);
 :   DROP INDEX public.users_historicaluser_username_8f7ba123;
       public            postgres    false    216            �           1259    17978 +   users_historicaluser_username_8f7ba123_like    INDEX     �   CREATE INDEX users_historicaluser_username_8f7ba123_like ON public.users_historicaluser USING btree (username varchar_pattern_ops);
 ?   DROP INDEX public.users_historicaluser_username_8f7ba123_like;
       public            postgres    false    216            �           1259    17942    users_user_email_243f6e77_like    INDEX     j   CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);
 2   DROP INDEX public.users_user_email_243f6e77_like;
       public            postgres    false    210            �           1259    17956 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public            postgres    false    212            �           1259    34336 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public            postgres    false    212            �           1259    17970 2   users_user_user_permissions_permission_id_0b93982e    INDEX     �   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public            postgres    false    214            �           1259    34346 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public            postgres    false    214            �           1259    17941 !   users_user_username_06e46fe6_like    INDEX     p   CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);
 5   DROP INDEX public.users_user_username_06e46fe6_like;
       public            postgres    false    210            P           2606    17889 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    3029    209            O           2606    17884 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    3034    207            N           2606    17875 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3024    203    205            V           2606    17994 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3024    203    218            W           2606    34354 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public          postgres    false    218    210    3045            c           2606    18250 M   principal_episodio principal_episodio_serie_id_470d573a_fk_principal_serie_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_episodio
    ADD CONSTRAINT principal_episodio_serie_id_470d573a_fk_principal_serie_id FOREIGN KEY (serie_id) REFERENCES public.principal_serie(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.principal_episodio DROP CONSTRAINT principal_episodio_serie_id_470d573a_fk_principal_serie_id;
       public          postgres    false    3097    227    241            d           2606    42429 X   principal_historicalcategoria principal_historical_history_user_id_3c5ce05a_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalcategoria
    ADD CONSTRAINT principal_historical_history_user_id_3c5ce05a_fk_users_use FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.principal_historicalcategoria DROP CONSTRAINT principal_historical_history_user_id_3c5ce05a_fk_users_use;
       public          postgres    false    3045    210    246            b           2606    34359 U   principal_historicalepisodio principal_historicalepisodio_history_user_id_cec013b6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalepisodio
    ADD CONSTRAINT principal_historicalepisodio_history_user_id_cec013b6_fk FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.principal_historicalepisodio DROP CONSTRAINT principal_historicalepisodio_history_user_id_cec013b6_fk;
       public          postgres    false    210    3045    239            a           2606    34379 Q   principal_historicalgenero principal_historicalgenero_history_user_id_b9783050_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalgenero
    ADD CONSTRAINT principal_historicalgenero_history_user_id_b9783050_fk FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.principal_historicalgenero DROP CONSTRAINT principal_historicalgenero_history_user_id_b9783050_fk;
       public          postgres    false    237    3045    210            `           2606    34369 Y   principal_historicalpuntuacion principal_historicalpuntuacion_history_user_id_cde396a2_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalpuntuacion
    ADD CONSTRAINT principal_historicalpuntuacion_history_user_id_cde396a2_fk FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.principal_historicalpuntuacion DROP CONSTRAINT principal_historicalpuntuacion_history_user_id_cde396a2_fk;
       public          postgres    false    235    210    3045            _           2606    34374 O   principal_historicalserie principal_historicalserie_history_user_id_bf40556c_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_historicalserie
    ADD CONSTRAINT principal_historicalserie_history_user_id_bf40556c_fk FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.principal_historicalserie DROP CONSTRAINT principal_historicalserie_history_user_id_bf40556c_fk;
       public          postgres    false    210    3045    233            ]           2606    18201 Q   principal_puntuacion principal_puntuacion_serie_id_5df8a496_fk_principal_serie_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_puntuacion
    ADD CONSTRAINT principal_puntuacion_serie_id_5df8a496_fk_principal_serie_id FOREIGN KEY (serie_id) REFERENCES public.principal_serie(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.principal_puntuacion DROP CONSTRAINT principal_puntuacion_serie_id_5df8a496_fk_principal_serie_id;
       public          postgres    false    227    3097    231            ^           2606    34364 @   principal_puntuacion principal_puntuacion_usuario_id_5ab655dc_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_puntuacion
    ADD CONSTRAINT principal_puntuacion_usuario_id_5ab655dc_fk FOREIGN KEY (usuario_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.principal_puntuacion DROP CONSTRAINT principal_puntuacion_usuario_id_5ab655dc_fk;
       public          postgres    false    231    210    3045            Z           2606    42423 O   principal_serie principal_serie_categoria_id_f2b61270_fk_principal_categoria_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_serie
    ADD CONSTRAINT principal_serie_categoria_id_f2b61270_fk_principal_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.principal_categoria(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.principal_serie DROP CONSTRAINT principal_serie_categoria_id_f2b61270_fk_principal_categoria_id;
       public          postgres    false    227    3143    244            \           2606    18194 K   principal_serie_genero principal_serie_gene_genero_id_234aa7e9_fk_principal    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_serie_genero
    ADD CONSTRAINT principal_serie_gene_genero_id_234aa7e9_fk_principal FOREIGN KEY (genero_id) REFERENCES public.principal_genero(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.principal_serie_genero DROP CONSTRAINT principal_serie_gene_genero_id_234aa7e9_fk_principal;
       public          postgres    false    3091    229    225            [           2606    18189 U   principal_serie_genero principal_serie_genero_serie_id_474233ac_fk_principal_serie_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.principal_serie_genero
    ADD CONSTRAINT principal_serie_genero_serie_id_474233ac_fk_principal_serie_id FOREIGN KEY (serie_id) REFERENCES public.principal_serie(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.principal_serie_genero DROP CONSTRAINT principal_serie_genero_serie_id_474233ac_fk_principal_serie_id;
       public          postgres    false    227    3097    229            X           2606    18092 V   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk;
       public          postgres    false    3085    220    221            Y           2606    34384 U   token_blacklist_outstandingtoken token_blacklist_outstandingtoken_user_id_83bc629a_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_user_id_83bc629a_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outstandingtoken_user_id_83bc629a_fk;
       public          postgres    false    3045    210    221            U           2606    34389 E   users_historicaluser users_historicaluser_history_user_id_7f91d047_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_historicaluser
    ADD CONSTRAINT users_historicaluser_history_user_id_7f91d047_fk FOREIGN KEY (history_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_historicaluser DROP CONSTRAINT users_historicaluser_history_user_id_7f91d047_fk;
       public          postgres    false    216    3045    210            Q           2606    17950 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public          postgres    false    212    3034    207            R           2606    34394 7   users_user_groups users_user_groups_user_id_5f6f5a90_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk;
       public          postgres    false    3045    210    212            S           2606    17964 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public          postgres    false    214    3029    205            T           2606    34399 K   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk;
       public          postgres    false    3045    210    214            �      x������ � �      �      x������ � �      �     x�u�M��0���)r�"�_����@�]�µ��1�������z��X=%������	�1-�=�����}��̸ί������3<���oFPv������*A�D`	�����A�w�0��aY�i�r�F�����{���{%����k���<m�� ��[�37���"�{r�A$'+ �]x�4��wZ_&+�.��(]r;��_qo�_�р���x׋��m��I�+7K��X�=�����A��#�;��l�<LY����*!  �XF�?1��2��� #v���yX�i�����+H��e(yH
�z(d�Hʠ�PDI�qo����m��:��1�Bal�U!��ae�R�*���b%�[J��*Jᴭ�ڎ�0�P�@ul5"�)V+E2SJ�.V���tP]������cX�~����}ipG׃��ڨ;I�t(�G=���9٧\t*Ii|z�3�y��gq�:�O��1n�#&f�܈G���1�M�/fL�s���*��������{ƏJ`X�=�s��T'|��uk���ߘ�"h�n�3�:�Cp@��}��Q[�3�dc'����v���\�����0\�:����,�l�)M&�p�1�����zU��Px�Z/�ލ��zY�BP�S���Am��:?(�	��8��i�
��L�ȔA�NG��e�~f�bp+!RLN�o"�<��$���S���4��m3m��]Zu񗤻,r.aw�$�Z���I`��.i��a��g�<jvBu�9�y�	u��>h!R����m�      �      x��\ɒ��q='���tѤžԭ���!�M�M�(Q�["�#�e"i�� �'̏��T!��Y�ʬ�ڼ� �/���;���q0{������h�%�;�{���������7���'�o������x�Cn8���T����h��]C�K?{N5����a�Ǯ����R�-�{�0��R��}ܴa�k���=�Jpi��벮�z�����)܏=esl�^쾪�|�N��?�tO���a�݇c�%��W˿�O���0��!��  �  �=��ۇ�# 1 ��-"��!���_����nN:UY�n�~�_0ZRh��c�)ֿ^PP�D�^!A����w޻?������y[6M\:�C��f����a�dO0B���|A��40�=^=qm`���3�HV�"�����ǂb:�ڽ��c��@���={��+ӻ�W��k:[�K�D��
4�x���
kxzAX�w�q��@R��z�N`��pat�1��#c�	�=�\r��>����g�����1�v ��4�M'xT�k����U��K��E�]���5!� ���dt�0����k�5}M�k#��Cy�|=�l`MpH�f&|�I���p.i^j�V�(�T�i����;��ȱ�6���
����>�݀��?�PXf]Q5\����6���
��ڀ^�)"���Oq�������6�6���
#xt�S�����۴sY����W��<�����W���T���~'*yCEWP�iSt�qx�6���
���^y,[/�����a@��%�|ڶqt��m��I�0��
��ԹG�0�ݢ��>)y��&�pr��f&�¤&��:蠎����8�gR�q^��#GAՉ|�`fZ������^y@e|,Er���!�D����,$����DW4B��)�Ծ�I�Iҝ���x5�)��HO޶�̴�j���^�åI4�e������"Q�����̴�j��$G��-~OCB�z�-�c}��޶�̴��N�����I�e]�El��\�<>U���3ӊF�Y#�]� ?���!h���Դ4�o�`fZ�5kD$�A�2k�>m|r��G�x)|Ք)k�f��PrzN���W*"�-��P]d(�3)Y�M@�f��Ps�h��w�~�2͑�D$>7�r?R���̴�j�ܠǈ�:)ٵs�H'(�#�x�2I�Ho�L+��� ��ew�	��sU����P�gZmLDlE"��^:��zL����HT�!����G�3ӊD�9p=��נJk�H��^��iu�q���>�`fZ�M'&7OΥ$�)RD��
9��Q�a\q�˶f���lb�l�d��Ew�d䒈��U��`fZ�='�:?w�1G-����=�\r7z�6��V$B��>�O:����$���c��P&�z�9���b�`fZ�=K�j��kt췚@{�����I�>�O�m03�H��%��a��2�O��9=�(�h278��7f��гD�����OA~�D��+�sG���h�f��A����[q ����n��kI���)�����f� ~�����0<�åf��Q&g��m���FPD�R��o��k�=����=������:o�`f����	�aـ'eI�x^7TWv9{E*W��o�L/4B9X>Q���	.0K�<*�\�g�3>�Ļ�g�w��$It��f&v�I1a#w�<F��uX����8e(k�m����0��t�I|H�(/�]�!�J��Wݰm03�&���Tz
�E�4e��DhX��|�6���
����T�<,�Ҽ8�NI_��0��l�L�>�F�5%�Ϊ=�GU��1C���)>$����m��I�0�隲�w&�.�Cu�Y�M�QAX�P\oLL�0�G���jȊkQ���´#/SC=��Rf�
o�Lx��r=�^�P�C��^):�ˌ��/*�d���f&��ĸ��*��C�*t8W��e��@���V�]�f���bfr�ūQ7GO�,��!7v��k���3�}���Lꚴ�1w���F��\Z�DO��;��3�}��|o���\��k<�T^�]�}�Z/��z�`f����Z��9����\BJ�b9��{ny�d��3�}���N^�Y(�҇�(̎��Dt�Qy�!sն��t_#0���$�I^"��^K��Q<��#69�6���kFB�1���;���@nfG�U�TI�jvn�����$�kFr�=ڢ>��@�VI����U�Κթ���O0���kFJ :25�U����:�<?`�w١�I�znņO0���k�d�r2�ԇ��V>��σ�oz�s�B�3ӍF0{6/���:Ԩ{8h�ˁ4TVYu�E_���g�m���F"�{����rB�9C���h.�Ey���|ʶf���L�
��T����.O�m�I�Tנ���h��!l�ݠ�b�`f&"���c�(�iD��d�N�S]B�+�Z�!r��!�6���I?!d����GG��%�Tfפ(IUמ�ٵ�G�-��̤Ll�&�&ɬ�ꨭ��E�L�8�"�gQ�K�M��m��I/��x�t/��bc8q�5gκ�"��>;�!
z�U��_��Ĥ^K�:���^ ���tpثZ�@����#YG�f�k 5�m�Lxɤ����5�IW����s���_�
2��EKvU�|��lLL�E�ߧ��mct	�;��I���RT���:��6�m��T�"��'�MZ��C�T�}6��~x��j�o�>|��z��#ځ����`5mU��Е��&[/���>qEz�h�N�'j�'��	�D�nZC�Gu�eI�eT������D�o��OE �)0v��p/�f\���Y a�Q�n�L/[z����k���c|R��[��@&�K�i�.���6�H�_R��(2�/3.im<���~٭�18�kI��g'�?taT��w_��,�+�3�O&���[�n����NM��-��� ǲNOw��~���S����?��	�"v�\���u�w�6��n�����fY�������vo�<�+�Dd�v���=B�����w�����.��1���-�"&���r�!�>{���f�Fbj����pއ���_6+#/�m�h�$�̉FSJ�9���|���j��v��mFN�f���z��=8������[��1��
�D9D����={aQzn���=�Z�{w,�.l'�8QT�i�D��5~����I�.�0̍�̖��Lz���e��+YF' �{�)\�����q3���_��/i y��Ac;���摷�.Ź��̑ٵ-c�C:	��J(;���E�<������!4L�-$�kһgxf����/B/!��P������L.=}a��C�B�!��v~���J^��1�aXۼD��,<��c7{� r�ң�ֶ. 3�����[_]�H�ˈ�CT��'τ��P�`1���#a����S@/z(��iÆ%�����>���b����d>�䓠�{��V����%T;x� Ҭx��|��4�0(������ �3BL�q`N����[��!�]�v���㬠m��$e&�X�i��>�4q��)D�\y�L�^�ۡ;���{��!M�py��
�\�`�+싔���%7S�Dj�P�Q�)�#2~KF�kY�kd?��[�Kx�DT_z�c��5?z*rI#�Y�pӴ�WWh>n��^mK�5:�{�4ad�,W����^��u��ZL3�k���� \܄��
Ħ����{�#���}N���HC�����z,~J���6a�rd�� ��Cr��z=���x�-��>����G̷y�-�C��R�<:~Kg�$�ɟ�7m3�;�O̯K���Eث�G0�Q���f�a�T����nq�-�^�\�x���9�ݲ���#��$&�ы����["�kJ�D��,�YL�2Q�g��L������Z��ل c`Ti=%\�E��=�P# �0Ϝ!m{���νu�0*��Uy!�rF�GDN��4m���n���������=���o��4M%m�^?O��s� �	  [*������T��&o�@�� O�'V���ߴ���2����}}�ySjڸ_f|6�Bw����j�|�^���fm*��,���~���3O@}�.��_�25/z�ǳ6�t�}��5@��!K!�B�M���J�{N��v˸4�
*(!9�
P��Q3��A<f��χ�4j��\��I��2��c�����j�K������A# �!���>���@�N�i��W9L���6�125%i����y��<\B$b�S��1�2�i�FG��?�f���OH���\�1�RA���=(������F74H՞	�o��i�c�� M�o��bn�����i�;�����X�[s�n^�"S��9uMTq��ݡK�/�+��]�^���[-����JP�Љ\�8��a� ���V�����w_�u������-�{���;���"���ui��C��u�|p�[" � 5���m5�F��+s��Z�����#��6u��.0'p_�q�z�	bK$�ʼ9�j?"v��շ�	� c�BQM�>X
,.�8��K,atq>�:M���;��f����%crzt�YP������^�	Z���M�,.�}3�@�gYܔ��\��'�w4-�+�6�6x�h��C����@˹��?h��� ��P+�D#�a����0^�0s�$ӶAfz[ ;o��
A��u�t�,��mF��� �����A�d�5ݝ���/sބ ���-�̼���&D���Yܮ�|	�v����R��0n��A��-l
>���\P��e��vR�e�|�6���6�%*5N�	ՔN��Q�5d-p���n1F�@ �,�7e�}َ�?���a��z]���	VKRaNҡ�A�c(�}�*,��M��e8���W]��P���h�~t� ���Ѓ �� ���=��Q	Y����#P�����1��|3����:�������^p&��mϥy�.e��^��� "̹���M��ݷ����lׄ,#��wZKD����>�����k[Fѣ�
��a�?��u}�S��"��*������˨��6}�ħ�`�v�s����,C�3� �0��p��k��H����;��Zz���{H�������CW��	��è��0uAo�8��X'Xz?�f�Y���H jP7�
 ]��$A{ȁ��@b�LXX�?lޠ�R�}n�j��h�o�8x���~�z��+̴��m�*��"^f#t��vJ��s���WB�l|��9T��_�����f2x����B�{L�╯�X$�D��A�&A��@b� ծ���ց�H��I��� ��0���yט!+��e4�C���^�6�i̅A ��݌�� �&��'��� zz5&/��!,`� �`Z�KPS|�y��~K��G����'�CXP�Ñ�{�
�3@*�<x�/A�x6��T�0����n�ք���Ă���%��퀼��1�{���	LE��6����O�`��n�޽q�[z.[�R!d�82 F� ����э[z/hd2�����wo����w�o����wλ{�|6eֵq�zTG�ҁ95�m%1�3�����.��	!T����^X���LLԛ�~(0��
� �{%�@��@Ә^ISgI4��{;xa]u�݄xT4��@p�華1XK�fMcJ�l���q���f�V
>=K>�}[�Q��9�Ș�5���Ԍ�@9� õ�db���ՏDN� Դo��M͎��χav��[GaK�Q�͇Ǧ��)@)��~��s��0�I?��Z��n�eKn*�5������#��u� ��r�"�Fo>R&�� Z��+��N�ld|���o�(DC�?m�q�*��|��&�3/Q`L�UA�e��BX�e 5ߘ>�?s�tn�M�
*:�#&��A2��[��@
'L��=: ��	����p��m�dJH�`7����K�����z�pl����K_z<�X��E�3JV��M,�޾��ͫ��a�	�nT>Pc�t~H��I'�f�#��n���3f��[�e�t>���0K���ϼ��x ��i�:����t|��6iEl/!��*�U�tu>�LkiUEB,��YGX�87o�@
j0%��|�,�2dP7n>hQ�E��r嫀g�\�!(��˱�P�8_��x����5ݏG9��.;��P�D1����%���P��y����f�{�q�^����bD���1�a��xb�7w*&���|�wv!?+L-gn�Wa?:y�57��A-��Z
��3��
��3n1`�`Za[f������*����%��N���0xS���O��1C!��C9���r�q������6�����·�v�2Z���]m6��Õd�Jb��>t��aNB� �5�=��4l	qT�n��ܽ�Q�qh��Z*{T	o�R��mY-=�o�0Ŝ�0�(�<s��j�GżZ���#�j[����_��
�˷Z���x�9���81�/�ڠ�{>����j�������7�*|t�      �   �   x�mOI�!<ۏ�B��e�����b6��}�Ά4}Avm����1�$V&܀�v�L�Ϊ��Od,�f�AHbMjS&�܃������JE�����j�p�q�O`�Fr��>�b��3�0Sx�'I�Լ,�S�֐K��c�e�4pB�:��J�a�kU��mcr�>���v������W�a�|�8v��C�7�ɣ;/F}?+D| I��      �     x����n� �'O�/�0�ϲ�u���خ�}��%7��RbEv�c�pf0ݕ];�v�{;�!T�֍��; @_(������A"$!b7���m�O��:<ѭil�Vۙi|�x2*D�-��G�uo}��um\Q7�K׶��_I������-�i��m��Rr�h�d��C�%f���$H�+!7�8G�fu�U��.2�2@��p3�N�o��I��FA�!�D>M�f�������׍S�;eq��EɆSIiH,E��E�F�oz
%A�h8
+��U�n��(���"f3.�z�Q"�{�}}��1���Um�Y��yUo�?Y�ble�]�}��s�RD�R��q����@B�2��Ss������XN|��0�`NV� �	3����6�.�;W&]�0A�*��`��I1�n�>l�_kS~�nGS�E�T4�n�ѴG�[���~�_i\FTl���r������|���pм)�[4��u�SU���E��]�F���ҿ��@��\)#r� S�W���H{uU��9[��r��q *A���~D�p1痧�T׮�ƻ8���f���QyFv�wm�zt�]��BЂ��惙^���0�༢.�������v��	�@�!ϰϔs��4��;F��2�JS_�L4�n:z� �h�����b��^��+��<��db�!���yV���+��w&.+�ĝ�i�؈v�h��u���q2%0���qr`Tp9K�].$n
��"�<T���E��a����$�q      �   	  x���n�0  �g��� ��퍋�d�0�"YB(�-W����9D��C�eة'M���F�<�?g�l�d����4h�WL�ܮx w��os�#��}v�@��P�r2�.�7��?o4D]����#p�O݂M�쉬�-��Q7�h-��m3�^I.3�Cz�_0�(^¾Z]z��jT�Q�/>bX[q�,>̑K��t�Tf�y�����DX�LP.E͇�:m9Ŏ��v���eH6��i��ʚ��Z��{��5t�6UY1���$I��ay         #   x�3�,�4202�50�54��t���M����� �I	         �   x�3�,�4202�54"Ls���Ԕb�
CΌ��+}����Ĝ���}�ļ��b}sU#�2Hꇥ��E��@:D��	U@���ObIf^>H�4	H���d��{� �����̔���=��NC�=... �r3�          �  x����J1���)��ig����� �����љfHg��>¾��A��B����!_Ӻ���]:�י�:>#x�I�����+��[�=cb��p�HY`j��DUfv�� �-�� ����?;;ބp`XZЭ�)EZX�+M)}KZ��#������3�P}��[�������,�-����M,�J�q��z����Y�Gi077��x���?��X��Bߤ 5*��֐���QQc��;oR��V��7���^l�A��WY�r�e�w&|�q�����9=�����P�?��/�2���P8�..,�#�>�`�'�s�4�5w�rUZ�-6y�*g���RL�7i:(�5�ZLVRvT���AUer��F"�G�2�]}���}���d���u��d8W3~$�z ?Q�w1         =   x�3�,�4202�50�54��t���M�DR04�"c=CsKK��)g��6�!W� Հ(         �   x�u�=�0���Wtq�&�������/P:u�&�@MJ��﵋:����KBH������&f�R����Z�>�t߅��^����Z���OG	���<��R�	���c�a��N·i����w~��)D�L��1�>̠�ˢF��j�*Y{`K����s�\:�         [  x����j�H�s�)澤��O݂�^B�(rc�fFZ3�}���~��&��jah�A�7=5�W��@��
��n_Cz~w�;������2����/W�d~���{�[Ԡ��J-�u��������T�ȗ4���n�o�|�9MBoM\@�jZ�wS�SfK-�9k���&��^�Z$.�$M�]!���q:�;	�%�$j��/I���axL��vJu���`��ڡE����8�KK�E���J�<��I>c�����,�*:4��e 
��Ki��ɂ��R\�:R+ [�^�-��s|����E���SV���m?����G/�j:0R�P��Ž��>��k�Ҳ&h�W�iQo���4[��[[�,���t��!��=�W5J Vu�������Fu��$�o��Q}���ӥ��V]g�tW�Z�7�0��, T�QKx2�nE�� s?���n��>�{�����M� ]��"v�S>qrq�1�)�!7��Ɩ/nl����������~ѱ�mG^"�`�w���������x�H������k��Ⱥ}���)�a�WpX"���ʛU�M���xhj�w*H�|U �b�s�I��H�L� ɭ�B��ᑛ�զ]Ʒ2z=з��p�=f�ӿ�/��ˏ@�)ޓ��yF������ġ��~��CM�A�BG�E��<)� �UyC"��%&hR��1��$j�vH2�e�6��1��>fA�e5��^-�M!�0s��OK"�*�/�t�ܺ2j���x���3�t�r�i/=`p�B4%����1��7A��!v�-��)��ƨ)m���1�帶b1,Ӣ�z�6%��p���B����˂!��}�WWW?#ˁM      
   �	  x���[n%7@�o�"��.�M��d�Yvb���$܀qtH�|��E@�)���G~��ǿPn7�5����?�~�/�߿�G��8n�7�夓����H��|G4�c�(�G���_�7�M�����?�����2�����"����e�X�D���'��r�!�cQ��^��$*_���+Q�h=�D�a^4�E��;��OÉ$�x���$bE�M��� =����I�����"��~�H�����r$�0g2��<�7���MWf�Ж;=�$�M������>r#��;�|���W�vl*���U�����Q�|�_ n��H��?�C1�xDڄ(�9b��1m����I_��?�R��-���6S�7�A>�H�P�P�U/fU>g����_��?�V�h����o��J���B}2�'?�iZ��!5d����s@�PP3�#�&��PI_��"�5Rj�}~q�j$�5�6�
%z�\<�dSjՒ����'s��ٴ�>��<��zG��掫O�P���2mCw�"��-|E�=�F�a�jI��ôA��k#GEF�ǋ���a�
I4����g�)p2�͛љ�g���K�-s���0�H:�b�`*5�V�O�o�2���˔���^��F�8����{���k�]�aѼA/�lOG���^�>�є�8�̪�B~�F?2�yo���VU�>��<��8�L�%���_=οar�vh��i�D�F��,2.Ƴk�f�P~E@���P)���H!0}���5�[f�g����f��!v�W4��8[�C^���������D]j��l�jt�G��a6�n�"��	��`���
��a:�z��%�H�!����=�o�U7"L~�t4_s���L*�2��r���gB�*��gF����y�c_!>M����s���ת��&�_�3�yФ: �I�sTfd�y!Y���0�e�=��k�M�Ca�Ʌ8��)��v��LRX6�?dRez�au���Ɖ�o�����ǼwO�0yfy�1��N�N��r}��s��)��V��&#�Z���ST5�9ƨ�R�Y5�n!��cXm�D��^5�d�|1��9�Fʹ��dZ����hT�>�Lӎ��2�F�)ʰ��Ok~{��9h�>����s�h�v�0�5�E�LZ��ʬ�e5���&�V�o�}2G0k�$�,?6��o�lkLP�����i��1+To�+�<�v�\u�r��&T��:������F[�_O(�%J kA�lD����5�FVF���
�+/m��ʘ%��d�|�K/mIP�P�D��[����Ҧ�S+Tr[,���g�ԖM��������k£��ҦN�O�jf�A��S^{i�'z��?��|��O�5}�է�f��	�z��ɚ-Nl�NhL�`��Z���B˧�V���V=��u�R
eM��QA�yE�ڦ*���Qy1}(����凮�v�JY��"N��c��7�)���J�!�gN���f@�jM��F^�s[��S+ki�WχW����:nN�5�
}*u�5(�܊t��M��b+�dǷ5Щ�w��C���Z |?�L���j�\X���扟�]��Pkf]�{���jy�X!V���5�&��N���V�?�j��J��k��-��Z�
*��[ N��eV,,�fT<�5�k�s�T˛G�U-����kr�4�[f�
�jVB튶�e-�f��Y���T�+�J�5�J�5Zf��YI���<�}+5�-���O5+��YD�.I�F�,�f5�@@�Zy^>u�f=|��v�$i�h��#p�E��ͷ^HҬ�l��(Q�V^K��Z��V�D���u4���j�f3�t�Ź�����Vӭ��]!n�#�K'[��tkv�nq�3
m�j�5�U��r�q�Ɩ]4ݚݪŇ[Yb.��k�>G�]��p�?��ԭh�5�U��$����V�yX��c!nɍ��M�f˭+>ܒ|��&o�tkvB>ܒ�i��.-ݚ]��pK2gɄ����G�C��AS�vP�A���|��Px?Z{����+�[�k v��l=خ�rȥ7���U.{^EA�Y9��|���6y�-i�W��+�/�A�_��VD9�
���6�`�%Q�,�+N���l����Y�8� ��eO���ʡ�e;m�w���Z��4�!�=�6�ح9��1tˢ�yn�+`k���[��J��2�)�]��cv-��2�"�����eؼgA=,���0n���X�-�b���,��O�u�;,�nm��2Oy̷u�e�-�zX6���ۍ�H�]���l�y�N�7�H�]����y�!�vd�O��&zH6nέo��C�n%�ñ�ǛcD�]�v<2P�1;�O�T���x\��bv(6��;A؎���u��ͧ���-.�%]b�ݧ��,�����k<�QK��;��3�
�H���~������            x��Mo$W�%���
���D`<�����RH
I��, ݍN#�͘fn���BN�fѫY�40�H`P� ��*sQ@�G�����������I�D�TV5�*%�t7{��w?�=��9��g����G~�F�q�,^dQ�Fgզ*�(���2q��UY��7q^$�<Z%+�m���E�<M�$��2���(u�&���u�w�2/�T�?/��I������ȓi�,>^��K�����L�Q��<__��ș�����*uY��g�H�U~*/�dl��0����.�*�뤔!ƥ����*��s:�&_��a:KWFW��гM�
������LO���3W$yt���i��2|a�,��Y����ȷ�B^�������}'��|P��K���S��,0_��[�X��,��dQ]�,�$Ɗ��SP����E��.n��3�J)˝/�8���U�o?��H��:.\'�k�o�GG����M~��dI�W�5��i7����묒+n&�U��X�/��[�b�nȒE�⸼��oF.k^�ŵ�!��,�-]�$���a�fyy�%�Hw�2�%_��D;��<P7K^_�W1l�����ʹ�[!���(�8�Fo��,!�T�����ȝ��*��W��"Dq!bP,u�
���dG�$G�j-��D�U��q�k����B���{p&'�?֛<������G����pޝ�G���Yo|�o�:�_�C�?�nO���?���s�xn�����un��q�;��Sn�Nέ�C$��Ք��ٛ_={�S�yR�Ͼ�eu��w�����~<ޏ��/�x��{.���F�����}�y���g݋��?̃�a�|��~?z��˃/e�q
YW�s�6eu�D��e\T<��5D��TrⱰb.��,Et�;yb,S͜,�,B|ÿr���$r�Nd՜���|�l�����R�S���E{`����藲'rv;�SY�R�S�����Ʀ��[C�|��m���JV��e�-��C��d�J��5���$^��"�S�	��(��͓�F�p�b��Ų��ȹ�Cz
�&�.�G�R��|J�Z�3W\F�W��L9�o]z�����[\��K���Y�1562������;����~�z�b��ǲ�m)6�d0�ȏ�^��d$J�U�/����8ʒ��"��s�;���IQ�+���B�</�����+�/�&B���m�?��a��ɵ����rp��^	����*�R�pVE��۟V��-?Q�En!�G�����T^����F�{����򒯗Oʫ����Wy7:�CesE�RA� ٘/*��B���"�½r�)�8rȼEN�U!�@I��N������N�����v��勣��2�q���xi��{\-���*��!�.�:+n��I�E�Jz`�/8&����TfTʛ���au�T��zi�y�5qv��?t�� �"�ㆰA����~w<N��$Y��$�OT���/�,9q:�ΝxqjK�hi?r?��ȸ��3����u��8I �o�O%m���C"�/ɛB[e��C�l`.��:Kf	9��:��
/R�Xʆ��/�.9Y��e��}��>��޾�b�3��D�7�?,�y�ʂ'�!(�D���n�5��ԂZ�ȇ�E�&"����-��oG�E�-e�e�� ,�Mq�[n�P'���׉\��<�#&���PVk=a�5g���1?|To��'�x��t�ו�Z~X�A�xū%�Y�t�Z��B�!D�G5O�E�g�w2�0i.��R,�B-,��_�cX'�e���_V�&�Z=�0��;P%[[��jq~��L`Ү�`WE.��U�"�}��I��3��N{��|x�!8r'�ZH�����V��L+����Θ�sos��{�{��?];���Χq���zם�ƹ(��K�
�48���_�*�3�FӍ��Zݜ�*�Ȧ� ,E��Q��/���4�_ ZD��~�Z�#u��G��B*S=(k�cOIE��8�ǯOE���;?���hzU%^���곊����2��O�#�nc9�gB�\�dV�S��2��*(�)��\�0���o3�F���8 ��n���ɗ�|����r�2�D�����<a�D5��Yo���gv8w���y��ݟ������Wy�.^���\]Vw�M:rʊj��>%��J�����̩����"�o��x��Ez�^W���[ΓuLgE]5���K2��w��WS85rш��8x����׷?����zwdO�+_�-�'�Ѱ�O��Oc1T��c��T}���r~/�=ϡB�p:�y���mÅC+���ϫ��D_&�8b�$d�Ш�Ê�GU��%�t&�7���B�N\:�qE6���yK6�=*��l>��y��O8��֘�%7K��m}��ݺ*���2�y��r|\K 껌
qdRW�`�����D�)��6���M0ʆՒ��)���%�J�*Y�}[�HC+t�
��-e�T6:�m=�h��.�%����.��E��l��*�V�+W:��U�V�i%F��5]��d�aƌĖ�)���_��$�Q��T�>ٽ ���f���p:����L��d���I=l�`&����GC���P4�0���Ѡ;����C1��*賽��JV#:J.�E�idz�5�
�f!��H:�U�����.�����݀D�XG4[n�Sw�����BX���쒛�S��)
Y_C��gq	�p}�CM.�T�ϲ�O��Z�	z�;V�/�!J}�v)�[���N�c��G�|��N)�0����O:Z,��c!4����}��	f/b%�)�RKG�i|c�����?�"�e��+1�*��{Y���~}*ϓ�}/�E�*IE'��|���A���lt��
��o�˸�9lNQα��r�e�K�u���N�v(�4H}$�)��/zT^#�%�s���IYH�2>]��#��t���p�'���+���N��R8]n�-S���_�SQQr���ض��s.�HD��س���9�޺���x�5�ǵX�zYD�Bb��&D�@7�)�GX7}��cz��	Vn��F/���nTIq�^�?�������(�~�R�A�ʙ�M��]j8�'xP�.��u�ŕ�")҃os��/s��2Y�����F�~�r'gX���諜jK�/�P=�H�<��6�t��jU�V|�
���4_�T^*zT.�*��60	DC����Z�]�Wm&3���tip0A;���e�����o�"���3y�Kl���C�%�����as��lͬ�\��u�/��0�پ�aO���;�L��}�w��`��yWY�<�m��=�/bW�"^����&	N�����cb
�Df*��ć�{�4��䔾���oBvE�ᢒ�&��}���QIVn�M%��e�Ӫ�R��%D_T�M'�����)�*s<��G�-IS�ѝ�7/`�_�z �e2��8�**�G�'���1]��x'���ig���*ߊ
�H1��K�1˜���A5K�P�T^Y��Ȝ�v���$�B�C����b��M�B6
A֭4}��d.��V+���:~l����<��y�
F܍�����cGUX%��bX��7��?�*���kb��$��䊟��HҵӸ�}�����A�a8��>1�̭11��^G�.�eE���(t����#�abh hcƘ߹+U���$��µxo�Y�wP��l������[#���<:����t2�72�'8�m=���{��8�[�;^��?S�M/����X�72E�I�%m��¨�(��3e�Ђ�t����+��kV�݋ҤL�R����DeG6���"� Da���P�%���E��k�82�
��I��]'^'bA-]��*�^��������M�m�-�Wb��A�D4��GћsS����5O���(�d�=,֒�V��;��\9�,H\'�,\{���N�yq5r����Y�C/}���M`��G��h���	<�7�u�7��dL��no0��a�s9�֞��m�]���ǣO��>�������V�78̺�ެ��w�?�>��#�x�����u����Q�;�Mz�{��w���c�{��#����?kK��ɬ߻7��'`0�C�'�����    ����%J��aoԝ���}��l���J�{��R�R�R䟴�w�0���x؛�S*2�Xd�>o�12�/%25���y���E�����'(�����1��.�r�� Ho�1��}������F���q9�vr�f����c���6���g6��}�g 6�f��6�a�Q`�}��lx6<�i��v:a�t�p8��Qn6|�(?��0hG�E����h����p�0x�t?F�����A;�=�����?��g����G�}��?�Զ�����p��f���Qj��/Rj�����V���|2��H��Qj���,�����p0����?��>��G��sK�nJfr(�7�w{��|~o��O���#��_;�c8lK���'{?��DA 8����G��#~��1�=��Iw>�����F��)�)�/�)c8�+ރiw&��+UF�����4����T,b1�����)�1J�]a��ӻR4�wg������0J�G��?;Di8k���sql�
D��Xf�Xf�Xf��Xf7��=��~w4R��[f�� �s`G�{vo��?f�߇A�?B!���^��>���ޤ;�~�	���D >"���NNl����G�����%���]$�����Nx�E����9�E��!>�;WV�6��,�ͳ�aH��ve�\��1����yL��=�x�C�4������}����|C�6�l��R���G/ڡ�³����"Xɚ�T�K���������+��!頒��*�4���{��_yC�2ع9���i��[ߔ�8�q�+Y}*W�ژ�I����������<�2����j���GJK���Ă��v~l8>�����xؿ����^��������0��1 ��?`������8=����FC2� �p��t�k�X�$�����}�ӦP="��Ȁ�Hd����c=�u�W�rK6N�#L�&�/&0j���3q����?�/�ش��� F����I��x:�7iД�G��#x�x`��B�@����x4�=$P�8��X�����mO���h<�%z�<B
!�"!�v*k<?�ͻ��t��.��������`�&����#��g��3�K���I99��aW<������#��r�g����懣aw4Nf�u�h�����^�K�8�Tq-
�����#�E��<p���4/��o�� ��*Nr��7�U#�6�1�`���xϗ;.�����X��E�ŽE7#`P��y�B�c�.�.,�P�+��t� ��ky�*ϲڪ��zu�dxIn�eO)>��\D����;��d(s��Ӽ�R]c�u��3����%ns=�r:6�$�*N)3�6�>���{�>(�MG�vw�[(��x/�V���I)�Iv�W�kW�Ex� �뮈+��+�k����O��ʸƨ�R����~��������[Tԁ�_�+\'˺�ݑי7��"�"~�Jn�4��D&s�z�SA���t:f(>�nr����x'���g�3ۋ�n}0<N{��x6��K_���|':��|mއ�h�-sZ�_"��vr%ph��5kt�)ۅ���!��N������{��C��r��J6��W�m2�_e�d����1�F��S�|$����5KQ!�`$��E58oO~3ΪL-��ic2��93d�N�UR�_��Wq���GP��(/b����^* XH��xg�/�N@�O.�@�2���Ҝ�J-,�����M�;��(0�.�m�DL�w�����2�-\�t���S]�W��,F^YL��-d��yo>��]லŰr'����� .��={%��%�1�R���Kw��J$q;G��n�4�HMi�3��g�n����µ-�]��kH��q;��8C�ԩL�٢��Ғ��x��?�(�Ǭ�C ��K�R���[��QћEes�Ŋ[�r�>l,_��3�-dM��a���t=��e��z*�U�j�� �b��ԱnWn��[�#�2�y�/�b8K�-�����LJ~�&+K���r�÷z��4�%��I�S�&�����>�x����8����{<�8��a�H���y��Y�i
R/��Ȅ�����c�2�\�9��<�2�Xt�\�5sm�#���i�����`2���0RzNpv<����y�ԯ���Vt�����A�9�C�?�� N��`KX0
XY��XjWc����q��([8"�
 Ns�򐿏�nD�\���Kw�:���b�u�!r�E��	��Hc�p��b��g�aGejU�F��Ex�E�苔 ���"Qj��.`V��;s�Ԗ����!��kzE*So��ZR1�!_��o;+�HXd�ö4L����p|V$���K�}�+�"b�_`_�а��u�Y^;@fIu�W���g�[���Ju�W�����ь׸5�3�_uv�2�Џ�FHF�q�I� ����#���t� �
�^��DxBFG���{�*-ƌ.�8���8 ;��%��"٠˧�ƽy�q�u�����(5��M�x�&~�[�K񙕅�K�IU
���4�d�-0�x���a��f��}]�w��/>���/�ٞ������2��@�z��v=�8^��l?����Pf���^�U��Fի�:�i��"�T%p*-�hY��^�q��H+��<��	I�Kz�#�s���B�L�i������S���&w��nČ_���b�R(b���]V��/$��Զ��o��^$o����-�����O/bE7��3Ë;��@%/`���zrf��8	�h�?���b������0�Қ���6�w<�{^e2sh,���Κ�%q�2�ݹ��E�7���l�b�(��\�m*X��b�&��P�^	�b֙�r�N�MSZ��i8�ݿ�Ax�ˬd|p����E(bhFrZ�� @ س\����+�\RU��Ӂ-�C0�+Vxl4s瘹3�N��x��j�1?*�9wx�Bm���ZE�Y¸j�%����ٕ�����խȣ�"�c��ԩ?b�ß�҄��w>=,��զ�)cM]��η�p��
�����۔v4�����"�Ŝ���?��l԰��I�-���N��Yp�?&�*�'��v������	�Q���{#�a�լ�i^�2A��^�YHH�+�K�i��ň����6�~q.~@u�h��6z�O�D�#���۫t�o;�';<����ԗ��t*]�PDPa�&�>�B���A��V��x��ьwmm"��`P6� �ro��]�7%���qq�o���Y����<is�A)hY�̧�s���o4�+N��"������9%���2Q Q49���.��� �X�`&�(�pvrqy�N}�f�AE�]s�#�����Ê�&�Aʣ��q|�N�T|����b>�n��%����Lr<����.:�9"'zDZ�ɠ��I[k4��8n��]m��N�P�+���
��ʳ�9�{�q
Ob�ۃ)~a��; t��Vk⌙�nRS��	\(\iY�����)ƀҙ�TvS_����S�x�%�,`So ߂\�Q����|���Q���t���NY���(z>���-<5ꣷ�V}@?���u�����R��/�B�g�A���F�HL~��n��{�f�Zt|���bų�1�����yTNP:1�-���:�q,��)�?\ �xS����e��6D��>�f��0 >?&�*�'����d�b�5�D��l�:�˝�$؂��q�lܱ$�W��xώ/УO.�ޯ\��*�����n*y�f©� �i�G쏦.1�1Tr���쌦�޺MrfA9�4x�����LXe���CV{ҘҀ`�G�7%V��`�����c���L%P�9>��IL
u�&���вv<����Ɠ��'�ƶ<엾[k�� \��!{]m64��fų���8�G8hVp���+��J�t�B�<�F�	_�(�W�L�U20d�|�d�e�`�`�����^d�M����S��.Ƅ��)���s hm"a�S,<�Xg=" r�_ǵ�hw~X��+g �?�;Uw    jh�K~_��5�����q[�&��y�?�L�eIcG�s�lQ���#~v��(���\6���"��1;�'�R+j��:[3!p&�E�+�|l�^���bS��B��±<���f�!��w���N~i�4ƿ�21�Y�AU*|�HU@Z��F� 胂�9���b뵲��m+�'���.�C Â�%��?+k���u{�t�ibF�ϯJ/s�A�AQz���C�;Q��.��?zr||��J���SC��Պ��� ް�	&��6Ye�?�\a@�N���w�N�P�������ns�1��vCN4�#�.e=?���&8�\zz���E[S���e�}��Hi2
s��|��9)���
-�C�y��X��2����\q,닞��ɤ},�ğ�f��C*uœ��o�x̪��e�'����{ ����!��`R��I��~�� ��,�h�� ��ˣ��e�l����\��6Q�K,���;)`�X�A�9�i%G*K�)�JG���L_í,f\
]i5�}�Oa����_ȉY��o�w�`9O.��
��/��#�%�ߒ�[���pF��\.�,�	� Q�ʪ�.s�6_��Zx�h�e+v�5�x3W�<?�'�Ъ�� ��C[����I�EӉ.����ڀbR��m�V�N�a4>��[Ԩp�kۖoO�
J*Y��7��T�xW,SE�����^��9qY�v��L!���0k�!�X��t�`z �O^����@����|���2������]�_.*�7�q��R]:�!��\�\m}��y�$3,y���-�P���j�E��C���F]m� j��P4��b$�ل:��ET�^NsR��DDι<���U~����g��pf���^��-X�1N�ƕ�h��s�����7D'0D؎r��
�ە�{�v�;���,��KE�ɥ^)g�[l��5/����/[dO,�/G�GWi�����̷��3�z;'��"#�s��Hn_�B�84�!��������݀���i��]3{�XChB���-���OE�ܦ�!.V!�D�܀��2JN+]Qu��FqR�.��p���1����]�'��0�[|��d�O�~�����}��+���G^0H�Ӹ9w�U��N{�c#U����oQ���S�s��"�W�%QH���ZJx�.���WV�#x�*eBR���Ȱ,�sf��(�Q;ڣJ>��>{AeP�"���
�9�XԠC-i��w����FRJ�}�(JN�ݬ� ���\C������#5A�r>�*��3ITu���SoqoQ�V6YO>���fv8tG�ɸ�>@7����v�`�l[�3����X�C��&��0գ69�/U�3��l�&�;;`� dE�P�*����.iO1��s�<��"���@�iP���+��;ԞZ��oН����?����cD��"��n���,w�c��C��c���th)��\�"7�<+����13�j��cC��X-�1tv&83!��2�N`�����B�����ˊE���EN���Ŝ�l�2����ܾ�Ӱ�o`��4����z��MB�Mg��z�%V�z������-;͘�����4��T�riZX�l�@�1��yu������6���'�uyD���?��Bشъ��e�M��=���d4�LU�0��0Z�p��b��Y��ܥ��L7Vz)g0ٰ�F~��
��>s z� ��<�2�*������W	$�`~z[��,i�Y��%\s�����t*�LD������:��U"_*+�$J,F�Kq]�c�~���xC���.�Kޝ� �Z����R�)6�2z�ZsG^mr}��-�|��]V�r�aO_e�\���Ӧ#�<B��ʵ[$LЉ�ț��y�F��e��xc��.C�Ek"6�f%.%��`-���-
�]�'�Z��($'��-�`�_�Aɗ2�Ѭ#��W�$�vo
3o�4Wc�b��%,ԧGw�[�S iiP\�qaZ�-B1x�;MR�� m%:(���%��Ꮼ�n���r��[��31*Wj��Y^]�<�O�3 ��5��Y�ؐﻴ#;��Nu,F�+_���6`=�5�^ǱX�Y���y�l���j�L	%O����X"�]�-�^D�I��\���Amq���Cm�-nsB�A�Fo�����<,#�4�51�d����t4� 
 n"z�Ï ��F��N��v��y%���~��@��hO�
l/��#�X����@�k�(@�Xdj�o ��L��2ӛ`y��<
����5<|�;xώ�1�R��KY��y��ƠV���4 ���h�f�b���1�K�S�O���B�;�.��{�����t�u�B
MO%U2��`�%-��l�'�^��}E��yq�)ݠ�׷?�(��������SpD�N�9��@{_LF���������"G�k'�x�ҽ{M8�'�0�3�$��Q����bʒ}Ϙ�7q�� a�jG�TE�G �����I^YY��m�-Ơ��Ҧ�_l�s?g�V=!��� C

� /v��i@�ɸ�,_TW*��݈��F���D^n-�˹-c˥tl���� b�5�VT�lMkW��Z� l�&
V+!K�
/�q�YCB�,=�q�ص���K������<$Ԓbq��)��3a��̾��sj��FQG#X�M����v�n48����x6|H��q'A���~I�"9�P� ���j%N"�v���R~q��]@X��E�9D����A�8nά�I������\]�M��,K��,UA`�$�U�FvM�G�	`dJ����lc�	
,E-���Y�O�[�^���`3�B�4�2�18X�9̭��T�`��-��<���������KV��VlSP�)�&�q�.Ay��n��Rn�Yl�)��Eb���x���k�����];��U�J`��@�X*�1�y�"c�m]m|<�m�hB=��c$_u������A�ܱ#t��k�TbM{ۇ<f�' �����A �z'�%���'5%�C�vvn49O���l:~(���I82'���G�ĎL���/mW���5S�Y��O��ߦ���V� ޴"ʷ���X����4_y���0��,���F�	��m�K�j`�J� �zo@-�JT-T�T}�N"
�E;��,s����ʒr�v[Ƶ�0��i�{�n�ޤ���pnT����\L[�j�q��G����^�"���B��^��[`0��X�O�D��� �t�
�@�R�F�*�Ј�Q44C��S���
9�5��aD�4i#���!7��?u�}Zc�i�²,]d"*�*>��CG�;�4d��d�.s��e��T�C�"�����j'XG��Ѩ;�OfÇ�V��8�T��~)Uі��*E�kDZ(�2=�ձI4��9j���ƒkg�	�|��~�-Pn:~C�K�T>̝�{�ٝ.��UZ�fa[^��d�`8v+X��i[A���s�`]߭ڙY����#�]���x���d��nm�A���xe�J9e�M!���1�H#s��!�@]�D�]x�s��:��R_�b��j��3�1����uu���j}{�O)ri� g�r��뎄A�C���Bn�E9]�_f�x������7�ֈ*v���E���4�a���a.L�s>`�5c�H]��,@�N*�G���f���6�p��[�_r	��f�(���|q�~v�\k,�.Vj���/[������I��o�D�=)M��ߖ�q����/=;�������ݢ:#;���յSf��A�T����ʏҠ�rL���y�ܼ���O�7|�1��t�K/58c�@Cn�Q�O�36��fbV��[�I�8d,�u��Y���*�tڅ���!��)���2p�]�a�����ष��\������؂�٘�����A뙦̷*��Wme�*�B�]��X�����U�*µ�M��]s�D��d����G�>r[����Bɲ7+���A"/]ꋨ�Y~G��8�Kd�If�i��V]6DַY;g7s���u�#b��}O�ay7���`�4�Vlӊ�E�ֳ��A�C՝�(\�    ˺���*��4j���P��ԝFk���Ź� �4�d����	G��y]#���6�"6*�d�/|�L($o���l��MkLb��y�w�-��ժT$��m ���L�jHyKE$5���j���ɻ�g��]���p�jbc�F5-���˿��3�����4m�l��e|[~O�u�~�>�	��n�� :��&������Zs�d+�4�/�T"i�i�M������9Pc>�c,� _;f��jҷ�@��x_=� ������)���h�`��8�-�&m�е���_`$�X�n([�hc�,�t�u�����E�i K�$��T�0GBZ�Ï���Ma�07F���ܩ�l��~�Q�0Y����'k�`"i��qݠ(��q�01hs�,���5
��\�<�ϋ��-0Z���W�*��"��}����� �b`�N���e��c��i���w���6lk��"���]i������Ť�����"u���-��|Z�'VVsgXd�����ܞ�ݳA���0�ۇ�{x�	��>d���62(�% ����j���C��4�7)��D�8�Ό04o��0>-�M	w� b���h�胕@i���g;�(��V��`dh��ȧ1tds�!���R֤��K="�M�^$�B��ƽlT�e���/p����#e�P��K��M^4�Nh���g��N�G�no4{8E�+p½8q(c����~�M�>P{���i�vCvB�Y��z���4�?M/vt��c{���e�u*� � ]GX�$W�ޓt�D��H��"�=�EL1���K�_&���]��#qGb��˜��h��ә���(��XO�������x�oN��M�uX��|����ҼM8&�R�f�zxz����@����ꩱ��n0������%�+CP��-d�\�F��atL���VT�|�m~Yu��=w��sr�}���/�)e-Q��Dl��w�I�לT%�@���Ay]G�����y�� ���4�N/ʫ���\�T���Osf'���o��Ǿ��g���䴊�V��|_�u0�3y�ע��+&��ɚʦ`H���*�?��`Į���9��z0��|2��:�Γԝ�p"�9j��~ɜ�D�5:�𿾆�3�Ú����Q��:�X���]F���ےEj�|_W_�^�<�_0,�1�פ��>�Ֆk���StP6~MpG����b{�F���a)h�vru�9��AE�M�l��Ƴ��cڅ�+�d��.�eB�];� �p{�+n]> ��?r��H󷥗Ӧ(���nw�2����s�n�uI}�|�G�����u�я��m�v��I:Tވ���p�SjvE��Q>kRE:���L����,�Q�N��OjT���yz��F[�ܒ;�kX���@�F)zMڇM5�8��?��r�ۧv���V�d�*�f;�
�A�y5�|<a�D�����jK�@�^�����-�!qh���J�֣�l����ѬS���,��@]N�A�o���3m�*�~N�x�<������$ˮ�\�d�q��3[����P�x؟�Ӥ{��~G(����o�bpBٔ'��l��4�E��BM��=H�� �<�Ӿi-�l��� ���t� ��M�-r�%P���0Q ��ѧ)����r^�y�I'��{���jB-Ճ~�j4���Ȱ f2ڿ��Dy��It$��'�e�1JX���H�X/`rU6t��Fᠯ�� ^;��v���F�u��̩�T\h�����Ec�Ɲ{AR��\K\���b1�'���� Ԋ���T����"�U}.�:,܈�Ս>�i�p]�1��=8����!��*)�8�H���hs�A������sA�|s�٬-�����;���Ç����x):1):Q)j;�{卞�<�� �of�b˭�>z�(��!�%/��^H�٢UK�lI�m@��BI��߮���"��e�i��t��psn0�kB��2�1����M��v��!� �o_+�j�.C���؀<ϟ~́��s��;�<�E��퇚�p�-[gޤy���蚪W*h��g^����^,هA�Y�t�>����y[����iw2�F������!hk���R�e��*<8Rx��Ɛ��0�O�Z)�Qe��N*@�?O�2�蛪,�gy���W�����,������4g�4�Ф� �	�Beg��R�-�d����3��$u�2�7��F!G��FV��l�Y��:�Z�Q���K��2����sI�&����=��MMB;O�g�|���Ը��e�%{ ȌӼ��5�����D���~�c��>�~����7��"���z����`�k	�h�FJ��|��	Q[��e���wi\��8e�����,~��M,�a�kQ��إV@c����3�S֢UZ[G�t�#�>���ml��#���3}����3U�m�ĒL�^�:��M�����f�4��i!f����l)"PEjƁ�p1�Cʰh�R�J����W��NAk 2��8\q��"�����m^T��G�N�Ef��sq�/�w�1k']��ˈ?˯�~]�k=�J}Zs�F�=~@��Z���i��լ5tj(����<�����<��C�{�j�����W��#m��7C�-��.2һOU�y�@��޾�ڐ�A�I��$�>ԜdgZ�Lˌ��yf��?6`V��H��_�b�E.�!���Q:�H�j2��������l}ά��[�X��~��+\��距
a�pÚ����c�)c�R.drk{�,}<�k*n %��I�{��t:�M@Ӈ=<�=l�^��G_~�6��뷟��^����W�������Hթ!p�o�+��_���~������nq)F����/c�ť���mX�t���V�gz����eA�U�����yU��u��"9�Y�Պ�H���Ը��r����E��O�AU)��xz[�j;5D,�`}D7���"�;�%�@��7��ɑ��z�d��� P�R���J���-�|_#K��'!�e�?�;V�`���܂ѧ1o'?Fs��������ruB�:�:��-�{%@��4-P��Tu)�H;�u���Jx�U�;�ۣ\tc��V���
x)�`P�Ā����� YI�$�x�1b��R��Q�G����1 c/�j�A�T��L�/D� �o�/i<paM��a!�l
�BEt�31�Ҵ�B,OF.��q�*�v�#�|�_��5ÆQ=u0W�^W�=V�f5�ó��,}�I�SF@�5x�Ż��� ��x�H��xN�:EE`������l2N�g�u��d�P;�Vϑ�ϣ�b�Ģ[w���s��k��G�-���J�?/c���u�J嗭���S�E��9Uzu[3�����H�U�u��5X�ƾV�c����ވ�XC����V�VT�6���Gc=��ؒ��M����ҐLP��=��uy�x$�!��f���m�
�Vۮ5s�Zs�H��=�h�j�|AOK�h��`e�O�s�u�����nvi �N���������	I:�$�Eq���s���,����u��?�'o�8v��]<��
��8�I�7�L�H��gզ�>�Y���`����X���W.��<���[�q��v�q*�FF�*T�!ĉ0w�n�[l�]�+�	e��W��Dc��-Y
�I�z7�x�QQ���\�L��O
�Ô%��s���@�)�ε dxI�m��W�F>M6[]/��TȤ�V��40kj�@kia��Mc���?O^� �E~��yƍ��H�s�{@v"�/����< a�
L{�*&�.$�����-�B����p�i7k�}���k��:���D�Ɗ�6�}	,���l;�'z(Ǝ�l����楙�!)>qf�|Z�P'܈Ū�^�>s�
 �u�)C�M��b��	�h��G�5 �F�"��H�٨���k��U���7�{��z�O����|��_�i��{��L�|S@��#;X�1̾9��h#kEK�K!�$eo ���yq5���%�n�78&:�dbjݾ?՚����$��b����<��j�i5�A3 F�    �{i02�%T�q���
O��r�4ӛ#lx�IPp�XA4
��F�D�ť
�N�O�n�o*�∪k,cx����=;��r�$\J��ji����X:ԡg햤�A�A����`0/�ӊ$�1D�\Xk��1����:�\ö{8*��"v�j�N9���ɳ�5��!��R�6����k6��Nu�$
<��<������ax0��O�����N��t�����*��^ɽ�1�i�N��*?=���apP]W o<�&�l�}z��:/�E/.C���=����������B�JҔ��+��g�	$��!��1X�����kc+PTLMm
�p<����7ٟ�E);� �ƫ����છؑ�r�U�����'{Q�.�f��JVmh�� ��֐�*�����Z���!W-XMbڐ�]5�l�+۰��H�H#n��WN�cƋ[ecV��k�w8��f�Ik������ț���&ɂ�����b��uR�*��s��i>k��~����!�J/��#�_�1�ӛ��:ݹ�hR�(�?��$:�8��o4tF�ͯW��jAH5*�@�(C�������s�8>R�Z֍ɔ�r"�kv&!L��&��!���[+l�ǧ���gt�˚�GI7�6F��.�@�H�||z�+�b�y��+eɰ���g��Uo�Ћ[ax�%�/q,��h��ɽ^\'f��:�N�2I!�;8uҺ1Ic�|�8ts����?��68�f��ӝ�5�+��u��Wm:���58�S��?�dE�'ȥ6x�>�V��&K�jM*�I���}n���aw<��eZ��=��r�q��]�ǸZ��SՃ?��\�u_��o�}����&��>K�$�R��	Kxv�vG���wʍz�l̓��3t�XR+�b��I��"9#�<����6��ġ� �4�9�.sK�r*)qp\����2�'<NI�R�����c�o�U.a�\ѫ� ]�t��;�&`2��	�Z� ݃5�e]ݸ�7q(��M�|=��gs�Io��Z��	���n\4�����)���݅|�T��^�-�,E�N��كJ����r�X�����jS>�#��M�M>ø���<&�\i���w9���Fː&ٚԟ]�M0١B�X��Ebi����'��iMϑ�OmI���#4�L�ΈE�q��F�C�õ�6�D�֧�_�GJ����*d�t��������2���RbmV`&i����T�WB���P�)�~��>�+(�,R��M�u���N�u�8���9@.c�M\�I{�Q��_�"�V���0�B"�:��%�<���`	�f°���7�"@��cV��;/}�2�@����N`���x>?�2�nYC��r��*�Z�⎇��`6M�C���ۋ�"�^��^'������^�u,�An'�,�4�!1�V�!�$Wb�m�E�D�4���zo��'�� ��"Ӱd��h�w�ؗ�v�� �ʅ����#�D� %W���P,��I���;�T�vU,/�g�.�Y���˄Q3��y?k��=�99cF�1�����Ts�MT,{�9ˡ&�����x5>h��.���p�P�$Y�p���_f:�N��V�gF��J!�����B�
 e���
Z>t�ˌ�i<�]��S, \U�H�2L��h+�{
#���P���:_k��� c�\�~(�#�FJ�74tt&�Q]��`�5o�'�#�{�h�(���2�L2��e�)�n]�0���6Ùc�4)�`�zBv�-w��H<��fV�:�3u-BM�e�q-�
~�VF�eM<��C�x�r�k���W���OUT�mQ���f:��&�����|ц�O��P�nqI��e�� �{�4i�����9GdJ/�l��>-@w[����/�v� ����,����y9��'�ĜP�����<�D_�]$�tk;u4
:q���d���et��,�^⏓}�+[��)��1�����dO92��85��K�E��s�_� tfM��ߢ;�ӡ�"�7+�<��b�ԣ$\-8ց�l�z3�T��e�YJA�]��荶�����B��F嫭T�0q��p�:��?��G۞z_�̠����Z�����Xe�O�ac���4�i�;9;k���!��Fʹ���Љb`a:��(�hf��H����Q�l����t>�?�tϓuu�OV�7�엁�#Z��mvl�;��}
��_�t
�&s��@<밷os��QD��c�2o�{/  �I��τ����ԹD��>�?I0��3hp�o��K�E�-j$����-I�hߒոr�Z�e�j��e�WN�s�[��u���C]�BS��ȸ"Kې/�ʂ�~*')��o�#�3�5�V��@ˏ�0V���2On�?��'-l�/*uq!��d�S�]T���@+�:N�\�.���i��O�A
䊝 p�;�t��;2���]#�h[����U��﵁���p��M����������7���ogӇ��^�;��C���oq��y�ټ��<������;��'��Cg��|�d?��O݆�Mvow�N}z.��^�6��X{Tghq��<-O-�a��Z�N|�koS�Z���&xH��R�((�2�DhL�ڒ�JK�\��<B�@%�>LsŎs ���B�w���7#�r	K�i��.}F��Pyy��.8޾�Y񐸝Fi��e��3#���K�׮S$��>�U�z�/�wB�^��	���HY���:�`�yx����߈Yڤ]k��9_[�J�Ƴ��W�k�mw�if ��n�a+n����&�=�ƍ�P�������8�~�Uެ����Þ%��F 1�g��z�:��|:}�B�Od�}X���d���T8�5��E+�D�j�ڃ�[����8e�𕬌���q��
e��`l1
���M���0y�cP�X���\"�E\zz녬���ԅ�ך5Ť�@����o��5���)�c�O��់T����X�z��Bh�GpJ|�`	�!��� e~`�e��NN���`����D�������w(_�U�g�L�EkO]]�%m7���X��q��)��z���!N�oA��������.��Q��ɇߊbu��p�f��A�:�V����&WE��%(�	���~�6_\>�F����n��R��K�����w�
��|�Q�����1��*�CE�`?K�9�n�t�U��6��U>n��y��Ԏg��B���F�zg����bx������-��˟��%,?��i�U�Ȩ��i��L�N�>�fR���G�M�nf��fe$��
�Hhz?X���b�����VY2+O������,���,��Xk���Y�ռ��Wd��Y�|���o�
z�q�qP8�y����Sw>�L�{��t\m��$��'/d#��/Kv@�cS,c�^���E�,�\��������҇[��03�0$��G@�#Zȳ�C��XCAS���(�C��Ѯ��b�+п�����T�ʋ��)�7t^���w�\R�+�;�%Y�Z�P�Qb����r�(Z���4zRV�zU�Ƨ�'��jy�iڐ~�&�?��8M�[M��ag�pp}l[�x�q�ā(��NW�T�y�~;�<�t}��衪�Ps���E\��	��R��j�@e����c�	�����q"�1�*� �ݲ�:��
�.��aYkѯ�����fu��%T���j�v^t4�]ڟM����x��h��~A5p�1�wq�,Fi������u�ѐ6��,�.<�����n�yִ[�U���5�N�8SjID�x�w�V��"��~��O<1�S��6"�ހǋ�5��uFŲ�M>QHc��^�e�+Kxy�Y������+��@Vn,w���-�ݡo�v�o:���a�T�a�Zcqhre�:SR���Ͱ��w��<[�xE���WQ{�	
B`[#�4�ϕ�c4ki7�,{;�:�G���?xXֽ���6���Vdf���"�	��+߬�c ƾMLMI�Qv�񰲇��?n�L�D���Bi0RӤ����3�����R�`�3�N���ؔi�+��v��ע�}�l�����#�7�]�ܳ-�    $�ƙ��[s/�o��
��xe�o�,Z�!��ҥ\�-|):�5�"�����s0� �A�+���-��qY�gY�����bT�y��%O�@���CA^�fa�>HQ/U3Oxp���X�CO�t�o�?e�����l'+}�y.J�;�Rz��U�˰�.��d�R�_[�+Yu%�������'+5�29�������#Kv�Td�/�_kt���70�����3E�}Z_$ީ�(%���s���v�����z�Z�t?���o��4��n�'\@�8��z���`B�E�� ���դ(>t�l���q�@���Z"(����hY�����y]Ԋ]�SR1��f>*:'��a�Qy������ߕ5��1�����r�Ϊ���XeYH�*y��o��]��n�J�ރNf���V��wi-�����h��z�EUxF�:J�o'	�d,͇��&����O�2�'hp�/���F��&�Q�}1eZi� ���� ~C�XǿL3{�	8۩A�׷�dͬ���?x���V���O���U�O���<J��� ����U}^mQ�������]}x�]�a�E%��9m:������R�ȼ��4�G���BۘB�]��i��%���V`�����d���<�Ng�Q@�����G3��5B���u��m%z|����+ٚ�ihV��w	��@3˗mduNs��i���p$Jr<���"Rۖ�=Q(������%<ˉ��2�`\����"_���<��=��y���'��Y��3��:Y��P�����B�"n�+t'^�2@�檆�'���2i�D^z�ώ�3�f(*�[�����FQ
�+��)G�9<�})�^� CP���h�[Ԡ���e%S7��]�o���B��M�T���O6�*��k���ڴ��I��ˤ2eդ����d��D�t:̶��UR����*��,��@�>���r��c3����y�K�ă�ԡ�)2����S�6����!�qQp	��Yn� �;T��tG
�5>&��gh�^6�mB;�~�Zȼ�T����5�4����m�����[U7e~���a�)jF���)B7��ڢ8�]����W�|Uh)r�3ڨ���|���&�.��?��E�w	
J�T�e�]��������i;˨jm.�vjv<Am�\����1���Z!��~�YP}"��jq8�K��Ï����_>��[��H͗H����M�;�үY� ����ʪ��uη�ӾtL!�!������0�������������
}��^:�V�9	�e�$��А�U��Ћ��q�L5xO.�*]�AO s�,y㹫�g��*�&7��k�I!BA��n�=��#}����A����o'�3%�������'����;���p����~iEȒL�%ԁBVw�3���"F���e\P��o�D)4�:�4���p3чA�X~��h[)�"�䖃��L�x���гe~���UƠzj�Yъ��$��jwۀ"m����,먓Q�
UQYZ_[%Z�s�"
�'�	��!:�$����S#�1/=cQ��ى>��q��Ɗ;�������$��v3���^�+����!p"�*�O '^ڊk�ܤ<i��>���2ˬ%�)+��6���]-W�O�����z�>�'�t��pK_����5ӳP(8V��"(���cs�#��S$J3U�΃���!؜@ͩ� ��U�-:�	���Q��9Ԛo������A��}y*�S#=Eҵ��0����c����`r�q���������}�Ǘܳ&CzI�����O���]uUrȁ��Ggb�(����v,tvא�ЛbSe�E�?��X�Z!m2�e�i��|�H�%��V~�e~琓DOrܩ�ŗ�n���z�}劊E恢 ���0��VW��kv7ߞ���#�]�����W����fD�6h,�a :^���8��������ߔI��it�m��,�`���c��Գn������G�L.˜aj�R���E~�*�DVƤ�gu���p��EثD���Q�.�"��Ï)�1�Ϫb���K2��r�l�Mn*P�o�翩�\��/�nL�Q�OI`	�{VǪf�ǉt�'�.J�����a؝Et�	��~�NL�p�����x�L`��U~զ�YU!�fZ0�V���x���a*��ݻ�_�nJn_ucQ8k-�,l����<6b������U�0?Q�N��9"0ke
mq�K��-ꄠ��\�qR�_4���A)��lx_[aP��q1�-�etkT�y37�uc>E�y�&�hb�js��6�b/_A�ֳ6��'	��0yOk^�묑5]���H�)Xd������-���������~��_�����#���\Q�}��M��ZG��yչ[h����|�Q��������+6 ���U�_6�I�jߏ�bnT뤯C�A&kj��0�=��r�Ƈ\|���2�C������* E|V����-�޶�vt}0�Ï���KgwG�VCS�{�� ��+�~��]xۙ�3��]��)��Y���s� �.�xX�j}	�v���C�K�Ū�Lp�^��]J:� y{|��8�u��TL���[KMF΄a.�|`{�U!R!�c�����^KP8f��!H0l�j�F��uq�N�`���j����U&~�,H�W����1N�'k5|&�"�:�Wt�G��l��.A(w����I���Z$�� �!���QX@��o+�d�Y݀:�!~nG�D��BG@��&�����B��h��U�H�a\�Z�w�k�`�Q��?�71 �1 ��k-���-ve�i�M��3n�����\N��I����I��3���SG��\��}�e\�l|$��+�J��#���.�'G�D�v�|���ȑ��ɗyuU>�B��
�#���Y6 k +��K3`�˺-gu0jIy��ug���t��J�	$�u	��˰�+�r�f�� fƪ��Lq�3xz-�������9�4�V���3A�"��7�9%7��9z��2{ ɐ]�V��ѫ��a%��|�h|	ݯ���y\��=��I�ۯo���}���V*Y��=�%6�ݯ�шZ����@��H64*��� �Ѝ���$�lH �n���E��[��_urW�d��L�[l��I���5�c;D�?����lJ����mx8�vǳ��AO2r����~�X�W��P.2�iQ� ��(�P���2�&��iq���곔8��SF}�ZE��X�vJ�4��x�#_�_/�R�B�VvZ��tM�x�������2jv��-���V�`�4�l�U��^�TD�T�z���
<�ez'lP��-q��h�on#JSTI7�7�#i��-(�]7W9�q�ݘ��w��v"C�ʎa|]�$>O���r��T���g��D�JTH�f��-S�3e�l�!���,b��is,O!9���x�&��p�w���>��l��&��59c�:��6�(�ǖPv�cE�yP��A��{�c�c��0��J�y!γT��N#�L�L��-�U��І��y �����w_����e����$Ň�����8F�\�i@K yQ�2ڐ׆幕�,}"Ý���3yq�n<����_�kҞ��J��W��3d��|Hv+��R�]��Ԏ�ީ�z�����CᢏyY�.�P
a�b��aַEw��U���Ku?Xs"�F�ؖvL۲>��lޟ��R)�m9�/�V�"����298�k�[vQ6:���,�k��5�+��l�SSY�B,`&4�!u��Ǭ�lbN��Y��M��3�|J_�Pr,.Il��$�fq��@��fg�b;��
����t�`�ޑ)z׌��c^|j{c�KRUe��A��>J�M�)漃^=E����׎T�o�f}����������������������_��o���|
�"OvH�����CE�R��0r��)�}��K���J���K�ـ�w!�`�L,>8S�P-k��h��|x-�A�P�R�A���ƙO�1����{�X�7�w�    ����heCkamA�dUh
{)8c�8K���&�3ی2�K��4�q��Nɳb�ـ.M�*$b�H~�
�=X	~r��`F��67�;"����h"�K6�|�b,@_s�j'���Ѡ;��¸!�'*�m�r�O��y^]��;5ME��r�㯷{|^-�_�kR��֪�I��0�j>}��舴��[pi�I��wrL���(E1�~�V�|��+�;�;L�hw��N΂b�J0|��vJ�~��VK��G�e� �_P<y���mI�݄C��e��N|�O}��b�Kg.��_�V)���Қ�ݩ�FX��������.9�Vy��U�q<����23Z��Q҈4��z�Xk�[��-'�F��E��h�����~<�wҰC'TFwgmI���o�K�bk� �#�;y�uH��,�����������������!�5ϖ����h]?������v�d�i]��Hk9fpt5� ����Ӆڠ������Q{*�#[?2x+�")cp\h|G����1�0�ƾ�0�O5��d�p�2���Z)�Y�>�(�L���_�J)�+�+ �|����Ԭl\���2�X��i���pڼ�i�&%!:���f���[�6K+`����8�{L�F/\Tr)V���޶q����`�>O����ဈ��l��[]:V��Z����P<q����������Q����`\%��XɎ�nY+�B1�͂���m���=�e��b��+�NI=@��W8��C��o��j=�YE>�Z������CR�V"B<E��Եb��f����h�,�����N���n�5������ѐJ�=�a�N���Q��l0�= .��/��z�����^~�<mM, �������N��E@h����{�aעϵD��Y*��)��? ����7l�:���u�r, "j��I����g�f�auw�|��Q��v�,��@�#B�4�T�E�^��`gk�t��섦;��&�Pms4���"�2�9�ۇ��+z�R۲t�N�Z���O5��_�F�#��vi09�|Nz��C�`$*��Her/�M����^��/a�[��u���*��=ס
[�n��J;�Y�m��(���u�u~a���#~��u�:D���t��6�5��6�T��?�(��>����yu|���4�/�ܢ�9j�~(�JC�2t��qE�5�j���V�a�t��8�/�)KK�
&`\�� W6�	�SȦ
�����-��e^,�de��J������<��j� Yz������} �?��y�,�ubM}�=w�D�0 Y�T���j
��֪]��s��(g�ƻ��AO� �X<lC_�43����*9N�~w4����C�I�I���a8�a�__O�^��<L��%M�oE|���B�ʧ�pq�r�r�u�p=%��(ɢ�o�^ɖ�i҂��\��G��������ϑ�^~z�.[g�Qvm-uI�ҡ"p��Ve|G.!Q&���P΢1��*16m�v�zpqp�5!��s�(EB�98MsE�b2�gU#kU>�jO��\�ͺ��t�G>.�I��� f@�a<��K@��g��Ze���>y��
R�Fʱ+w��3;�hc8���
�Zkv�w�ü�-~�fǥKd�^��d4_�۹���2�#��5����r����I�qʚ}WpX����)�[zڄ+��$����`�ā6����c��յ�F%�u�]��@�iJ��@1��O��H+Sõ��T�D�,���G|x��N���;��G��CR�7�P �>�^h��t���\��b�GQ��zп���Rtg�K��s�cy(x�a���*B��i�	 9ٴwJ3���oqTf!_��L��^?��F0��2��2�r������S)���t`�X���R�,\#ˬ6�,��:��jޥ;�ֱv���&�OKϹ�Y�k�&���������C$x��ˣ�"�Md��_��C�^ʾ���y�&I7O���nF42��y+_!3L=���O��x�n|�)&�,'l4q��F��I������a�?��g)K�i[�����9Y��6Y.Ӹ������t�}��~r�չ��̮�k�o��Q�1=h��+i���E���\��5�V݅�%����qOk̓0 O�+��B�>�hn�Iؑ�Q����rѬ2�D���KAy�_��*��]��~Ț�oQ�[���#���"��*,��R�W��BP�uX�	� �%e�Tv�#�������ǽ�h6�?�TE�����Һ�{���4�e����?.s�d�����]03�����4���e����8�4��4�ݖ��\|��}���^��<x�9>�i�4��g^����Ʒ"V�:Zu%�/�� �
�(����y��Dh�d�q��=��<���(�w��P��W���R�7	/Rw��6R��&^[%�|�y���(׼��i�/JV�`�$�2в���52�j-��� ��)�V I5f�v0y6(�pvZ%G�N��V�-2s�Z�����«���	)����;���������茆�D�p|�t���d<yH�s�'rFN􌴏�^P���FQ��^��as����n���OA��v���P�V8Y������9���V4���6��$������mx������#H����-� �zԖ�%2.cr�j�>��+���Q|<�Z�ߍ��N:�	w�&�'�1?�	�rJ=_��%M��s���id婀 �D1vȻ#��,_4�y>wVy�-���W�g>M�<�ƒ�ZZ�������4�N��4�g���ҊM��%6���!�y�e�NK����r�̧�B�*�'��-�e�_
̾��g$� w�s�Ԉ��q�l��ϒ�^���0*&U�?UMX=��@���%�n*@17���l�#��?b�<X�	�ɱ�gbQ�Q�I�,2�Ț0����^�r�֎,V����c83�`�Xq�ǡ��#Q`��Y�C$�G�;=@�[�EC����^o>~X����'��V��_�h����p��4���޷�Ƒeg��_���	H|'�^�G��*�ʢ��2$"3��##�T%��f��` Ϣ���FA���^�?��3�|�9�ވHUgb^h�Kb22��}���h��$f$��C����K���Â�X,5����w����hZ�'oO= 6��i3s�s�k�:[4Q0����������� Y��ZRݵ]��e�2=������H�E��J��h�Q�:�1�v�x����Z�7��T��K�K�hn��,��� �m$�L�{;ǣ�eE��ȴ��]Ө�ˀ?I��x��{W�wN산�0��BQ��$4��X��nF8
��}�C��?CN�i¶/�9��,1%��=˴��)�K�*vϸ�jșg;�3�=@5I��z4c�����!>Z�Q����?x��,-B!B呴_��3Ƶ�p���e�������\6A5��b�OW=. *m���~�d�o%�<���x��F�o	�AhF���1hPR�{#!j��������T�Wކ>�����;�H}x��0a�bi&Ę'�T{�Zqh�&w��¡W�/�`R��0��H��S�*X�#bu�W�t��Þq'�׷.���J�6BT%�>u<ꕃu��ɲ�����p�tS�#5��
"�v�oW��;K�Uw�	;���r 
��@Z���-d�խ� �ĪX���x$�fr��}\�V���@/]�%h�-3PĆj'V��k��}'X�[�~��^l����y�}���A��ezTL�C�,ݛ�(o��g��L�wuS5ץ�6�p�_ʮ�M��zŔ�פ�%|#������
��x�kyø��6��5g8�"�V�gx�Y��`|E-:9�y6|���|��ii�,�1�e���.=&�S����@4�"�v �����M��;�nF�@KD�&��cLbS8���q���c�}��� JP��W��D�kh�}��V�U��{R%R�ٌV�$i_�n��f,��%꣔ �w3]�h ��    3GϾΠ�+s�Qs(���7卄*������tt�"�D��]�Ky;����[=U�[,����sA�mI��b��_,��$'IcRs�e3�:��O�,��!�Y��Y�Y֎ב�0�@�/��d���DM�H���U����Z�h�롧�G�K�Ş�/̬	ԍ�V
��VH��0�QL���-y�W�#v<~�_��j�"n6it�e�K��b����U֡�}���Fg�G;��Ѧ�����ñ�]ż���B�G�a�O�0h/�Y�3������j����쓰/yT���&��"Y�`�z���D�[�_zq�/��c/I]���D.���s5�������7x����u�� ��4*_=hX0����W�܎VT��H��>��Qޛ�-mCK� [8N��"�YNb�V �F|��ך-#���NO7���͏���k,R����e5�]H�����]-��b+ A�Q�<'�(��ݡ�� {��(u7�z�LC'�+����g����5����^ަ�}4�Z�7�H����/�]\�W�q�nCf]1�6ŬS\/t�a�{s�&�rEi�R�v����,X�A��ݒ>LQr_C}��n�5K%���j0��I��$�hHM��uC��U��$ZS��91��er)Jp�����~��I�g�=��8*��qN��U鐩Ja��a��NڪS�@��v&k<��/�<�fH�9�mX_�������mD�	a}a�~�ak\9$�h���jC��]GI��c-[kg��59=<���t���>BZ���`�~V	n\�:ρ^��X�`��e[� +�K֪np6��|] H���<�&�TCR��#t��b8x��t���!���)�?<�vG[��Uy]V��P�@���R��^H�2��Y��2*�H|ɻ+����O�����Zp����_��e����
���@����x��PbyT����5$sG���I���g��Z�;�?)��+|��SQ�C�9 V6
���kM�H������7ՍJ���"{���v��^$�y����ϳ�{{:����&s����=D��A��n�H�	*+A��ЋpQ�S�#|�:e�,������x(T�Yq��W�N-i����/{�gh�ܙ=�9��}p��^eW����)���dC,�F���iP��Qu3�/C�a�Ÿ+[񏗏w���E��I���m^5���6G���'g��;����Mf�x�c}��8��0@���.n�FoIl�_<x��!��f�O/3�z��p�P�M��6Y�-3��|��]e���)|gѯ�e]�� ,�^���d� /qg�w58_����Q
'�l��:'�T���Ue|���z���;�q�Z���@��+]R :^�4��[w���%gu;�d+�
.%�s�\T�}�9�Ⱥ����܁����"բ>���@��Y�?IL�|��$�+�� �!���I���&7F(�*	v�l��~t��]9=ە�vt����ƙ0֙�k�l�VA��3(	Vك��3v�`Jł�-C��ԍ�N�S!����pa����,ؖ
�,U/�!�ī���@�j~%߮L�Ұ���P��:v|~��l���sM�������GSp�+�;��\���VWwMp���֚�#�)���O��Aj���V��WQ�2�*�o�����6����絃��Y�|'lV����S4�F�K��	*��Sn�U�1���	�r�*�Wg��{m��N8�j���ภ���Z���l�H����Ѧ���I��l�?����{�������OoT$�-���T*qؼY�˔�׌��aPZJ)�屏WA>��\��/ZdR�`��i�6��;l��%�@��!?
~x�ja���dQa�����I��3����+u���/!�F�����ڴr��B�Z�\d�����H�\RE������
�r3�����L�|md�2&�L�=��;#_�^�����v����g�e����ug�E�����l�A�N�`����1^��O�r2��AP<�k%uڷ}�����5:���m������0 Gk��ӳ��ý�Ѧ�ɗ�8,��,sɌm���!ۑ��'��LJ�������oV<��F�{k�,ϧ�;j��B���-&�Ur��6@\���S��ش��xfVR�鼘U�\�Z�z���+p���wH��YS@�I�/E^	�=@����E�N �.���
E7Y\�<m�Nq���io�{�$�t�Nx`1�IJ��_K'9�!�c[������'
U5s�KX��͂�z
сEX�+d�*��ֱ��w#���!_vo�t)mn�R�8 �� ��f�N|�л�!6	�Ֆ"��,j�Li�H�g����Ǻ�\}"�,�������h#/�w>�D燐۵Ve��������I2��uZ����K�ӔC��ڊ���e�[	i̯_����Pg�ߐ��2ž��Ɖ6yv �o�:i3��*pb	��g�
_	��ߛ2� O�3��t��0���G���}�5O�M9=�=�݄v����h�5��:�ea�P��.�&(eS2����T5�
��������J<�����V�����j.]ٌ�p"�����gv\<���!*7�����t��G����?�P<H�,B�����������Bumu��DHYϮ���� į�$�h^&�w�wQJ���?<�T&��4�{����Lk.�K��,��U�O�W�Vt���׽O}��ā9�,3הCXw����\�vD�魎�y~y�f�j�I�����D"�p/��o�n5�m��[��<��(�h���L�kmz���?~�J�:���e�/=ؐ�%rj �*����"1c(ڑ���R�ne�I��%ROJ�+�����@jW���1l��̏9�m�5��<o���p��r����eWл�IswY��5K��r65�9��#��7�)ʙ�4U������"��2�V�Q�3�W��5BؕO�ㆉ� 5�b�m6�b�"�]�����Я��d�3/�p)�嘣��+Ǻ(��;��ˢ<�����I�ʝ.���`��-5߱���]T���a��2,@�#��#�]��T}�Z��eI�.+��n1~���jf;��mѻbܹp�N�Z�
��¢e�{a�Ω�pNF�*(릑J?+�;M#Й[���c��q�2!4���z�8���Jb��.VƘiZ�&g�@�	Ck}����0�I����ȉ�Ѐ�\­���!�����6M���M�c�i�͆��Y������`�B6�?����`��~+J�������hwSW7Jx�ܳ
�(����5�j�O�V���/�ɤ��̛=�R�"a	'3L��k�3��Z���?H�fm�7��i�ui��_JT�,�����[����i!�3:mi�l��U3#(a��VD:ԟ~x��\�Ȅ'V7,�5�`��4��G+��~��vV�|���E��"2S���M�j�q1i�h'>��TE;�L��l��4��f3aүZ-��_A��4��`��Gj2�z˘j�^��=F-#15��0P��G�p�P�F���~����.�
J�b�������*�yONX��m(Da���Q��y�����2;��o���[��ΰȴ�w�]�o)7%��y�1�:�.��U����ꇧ9!x��>U��/�:'�i��0Ó��#�
 �C��� Y϶h�>��%��<ȧq��P��$���u�k��EJ���H��D��<�J@}��WXZpc-�����b��+e����T��~��p�Lb��ho#5Z�`̗1�����8ܮU�,4���ڪU<�Z�jKІT�\�c'F(]���2�eR���́����&�KԂe����ٺH������F�x��d��pST�l�+��p���-� y����IJb����ȯɾ��e���F�e$~��yB�Sf���;ն�1~�pH�.��kK9���� ]��������F�5V/�G��� S��B4�����Jԉ�Z�K���ܚ��O���[����U"���jbߡ��ti۲�$�0�h*�-��U7SZF�nX�    �F�籪nئ׉:<>' Db��m������c%�%�f��Ӓ}Jt)ʻ������l}�*�4�sh�c�~SV�t����%M꫆��wѕW�Ui��/!�j��������~/G���������hS���s�'c��()c"��~�s}�����������ө�}�9h����ES+��Ms=���v�+�k�g��D��j�B3��~���%7��)f`/��}xA��Sr"�[?���O\�GC�b�2�2t����)|+8�)�r���N���p�ܷ?�^��-�O�2<�ɭ}���������IΎ~��Y[��5k3��`�d�i(�ې
���x��N�:�N�ג9��I����9��&Wk}�Ⱥ���Ú�g��qv>�I-T�u.�6��)}�HR�Ϸߏ�F���F�NV������d��n��U˷�_��5�V(˾��}� 3�qq@-U���l�Y�f��`��n�g��6�h}քū��R��=_������.ս/��]��S#���_=�Z	�E8�{M����$���$o�u�|�i��N'�jU�����9Nx$�q�.2�
�;A� ���Ǯ��<[4�g��d�F���7��N�Y����M�О�*n�J��_��6<�Q�^�L.����_������GV'�y㊿�A�1Y��5���+�L=��%e�%��R�$�4$�Ī[������<�����Xuķ��ģ�4�<��w�$�$�Kڢ�1���3���b�D�f�Zf��2�ތbY@m�0yD��a���.хĆ���v_��Q(�ڳ<�u|�^;1�W��hۀbp#`{�vx4	�.��d�N>���dBoo�pS��sp�hl�h���G�<��ٗp�'�<`���̺l��PZ�r�MQ���9Q8(�x�Q��m�
�$+$���?�j�$�($�p��a_mD�9͖W�y�%��ys��\�>���G�;�*޾�P�ϖjCO����c	B��-�	�1�z:�ADѽ��hA���WT�<ڡ
%-M�����;cV��k�Ԡ�xb|�p�����������hoS!��Xf�8̂~������x9�+X5���i���I��85W,(j�
	�H@�����mS׫˲\��&'A�}kG��&$�M��6Ea����T^P�Z8w:ٳ��̹�MY�$���%6��;x��)bj�yTzh5��b��z.	�iSO��y"�An�%p"Υy�}��\V,�������xj���D ���y\�6�����r��" JcRVf�t>���:�͔)�7��[�IAj����F|;�s�A�s�x�Xf�ZK��凇�����͢~%n;���:{ ]ܤ�Vxg]sr�� �/-2��a ������(5��<E�^����Xp�&���|��(zM��3��v$Ջ�n&��&�~�����lՂ�eL��]{�^�>��Q���0�ɤ�HU���`9�PUn�y��.9@�b�i�U���`�f"�)r�T'a�Jҕf��R�rk'�>!�ZV���ίJ��^\IB|Mη)�IV^`�z#��MU��1����Qp6����v���ԸN>��V:\m��/|/�Xq�k�v�I�M2�������������%�^�$��+��o~C��Ui�T&��j�,'Pm��?�,钡9em�rZrΊK�J>V��=�-�B(lj�Z���ҎtךDҴ��4c���MNҘ�`2S�D"�*ԛ�N�_��nV.����U�rx8d�'qhs���K����h�Pn���614�t
�u�a ~|0::�t��K�K�A��s]=������o�>}>x���&jI��?xWb�@�p��͟~���F��_�����Dq��dz-�����@4���̬mI޻~0���FJ袡�����M|��#O�\��K���3�D*�4�`5"r�a�HɳIn���J�.�	f~��9CR]Fҽ�Y�?Z�ӽ���#1K}�B�M��^��F	u`=CaR6R���<5U�K�:�zIe��5̌L�4b����i��	�pҁ��٢�����.��������h�I��k̉5��5���cmgޚ�y���͵D#����'��*���;�߃C�4�@c@NZ��p_@#�Vp���c]���)���u��q�*a�XO�0��XRec�C�B���QA��o9j�.8M4�5��TN�4P�M:���b&��	��Z��:�:��uA��$��0!u"�aV'	BV4�����K�-�p1�����¬�8�խ��KG
4	���l�Ǖb�J�⣵^<[w�wwO�7�}j�ӱM���h;�V��Ks ~WV�{�ந֫�j[��Dq���������L�4"�ç���Te��ʴaE6��O���2�n�S�8u��)s���;��k0^C�3�oMu���]޺1\�����fĘ-3]%�0Ԅ헾���2WhC�j�La������ �6˔z���L� $r�Ͳ�p�b��X�9"�[JϵF�YY�R�=Gkm&�����o�]9�Z&/t���j�\�c���9��Ou��_ߢzq!)�]R=�:��WI�yB��nk&_6K�$�#�h�EC�U��˛��_'����wx�{�3��>'�{2�W��J'��f��pq%)�\�<PAqn3΅8�}nE�<_jJ�S�g��.�<kF���G
tbN&F��E�
&C��Kz`����ܶ��H�f˕���?*���� �H"��kua�Qږ�?�J�p���˂/���R`�T����p`U�*W<;d�QP~P�}�ج��h	�v�t�EYI����7������������*"6vH��4wlXq���@<���|t�P��1�LΨ9��/k�Cs��loEkr*;�Ld����V��b�+ov���t����@O���P),�k�SM�R��
%��iO�:�֚]0��98=<��x�a�U�=~�����vV���|[a�[ -G�:]�ξ�X�>E� {ꄷ�{7z=��fY����΄�G!���ǉR��{��1~��jz��ꔘ���_�z��jC�U6�  d&2�岺�:g�3==��F4�vP\\�M�E�J�|2�+��劼�n2��Kn�?.���kc�*��Km�a��`LH���=Ò�[28��C,B���n�!��W&3��3)힋���jU�e>�SJp�K׾���Ղt�e����X9t����+��n1 Etc�=Cl�!�׶/ě�v(�m��m�)o8�����f��p��h���ơ���NYX�;M��r��4g;�!��ui�K5\^����-��K�P��LK�`��V}��Œh�/�V���Z�R���a�5u�8�7���e�A�c�*rTN�FA]	��i
������+)|��Kv�?�_]�	�/���N�����x�16��5��H����p��z.�o|���[�H`�Uy��D��&���ˆ��6d����D�)��Y6P#1ټ�G&3B�s�;yW|��q���I<�@ f�1Y�(�X�[:~�׿�i�֘<���twc�k�h�k@�i~�N�I�\bdQM�~����C�jp
a7��%k���|3O�=��t3�,Z�q�u�<�$9����x�>|k�T"��9��f�˳rݘ���]i7��S���g�6gQ�G5��f�X�$�{)}:���D��wW,'�ذ�v�K����n���a �Q�t8��bע�L�xu�Y��]/�3�K�!�~����=h��;�3��}�rT1��������Ӷ#�Bs5�S]��+��=� ��FFD�*���V]s���)>jԜ���h��z�����h��㓿_�خ��ߕN�դ?u�0BW�Mf�lNx8�]	�e�H(|�Y\d��R!�A�i��3��N��5��)JL
X1Avhj�&�Щ��j���N�XtM�4��#_�7-�Yz���LI���Zj�ML���iN�$g
<�v����\#�av��l�N��#�L�S�����'����&,�@p,#�q�.�@w{1g��m�9�$��G�@��u��LM�>��|*�    �c�>�A/�v��N�����������L�ξ��ݮQ���|�,��@�oY;��ۍ�W65IfKj3x��e��9��.͊�AQ�2T��`�*}Œ�M3k�?��w��^�Q�#Oam����#�p��./	M�r�n�AGr(t���_�k����L�!��9ٯ�I~C�V��Rg�0�Z��M^ff5�F�خ
yK�m�"�vJ�_���B�"O�"߶���_;m<�]�
�Cs	�
��Hu���P3�h�d��K��, [0�	��%sjuҡ�}`�g����S��/f�Y*������/`��2�:��g��;���ӃM`��=���v��l>x#�g����,�	�;��=��g����s��x�6C"B�8(�Ġņ�,�(<f�R
Or&�LL���`�sN	�B���{����i�2KoԂ�{�@���m�f�� 	�[5u�L3!�K���AH�~^��g�UuQ"�x���th/�BЍ&|�#i��5
���	8�jM@5ȴФ;W�F��-�vjf��/\)ķ�^�!�Q�OGGܖdZ�9H���x�uVLʆ�b��L�� ��%�3�����M>��&�
9[W�i��C�����d����&�"Yq\xP�~���Pi��_�@
�O�H�܇ǆ��.�w�ε Œ���
v��3W�d'rE�&y�hd�Fc��[ �]Uϰ�H�������[v�Q��%qE�k?���T]Ȝf��q�DV�2�ȔFІ���)��|X��T�a��g$�шT ������R<<=9m
��d���t�����1]�Z�Gg��;���2a���v��CV����Zȳ����u�mIK��$f˅s�^��|�
<��ۘ�mMA���&�6��+�S�X��y�	��.2J��9�J��������%r��e�f͋+��?����8��8�3_N��yu靭2���0s��饼S�Y�²Z!s� �ֿ広�5�<��E@�X�����깝�:"��_���9����Gu� �7#���mh�m���r���^ҿS�-��ڭ$Umq�m��_(솁�.1�\�ޟ�si{���S�6uc�<�-�8���q?p:9l<���y�4���)W(lZ�_�&��N�� E� 9L�&2��������&�r׃���&"8W֘+k�+���o�%��$[v"�5�wo��XQ�Ky[����l�d��%�0$�yF�1_��R�ݔ�&~ѠI���_IH�Oл��n�uEY<�q|�6��Q,Ԓku0�ѸI�>�4Y{K�b�:�����%~����2���WΒo��>Vp�0]��J������;�5"�R��y���g�:X��^�N�ϳ;��t���+�U�Lp�ʪ)�7�u�4V�T���+�v[�)����ӵ�N(��9��t�a?�F���I?�3Dx���Z����`WNœݍ�h]y\0�n;xW��dIk���������h��h؋���^���E�f�B����K҅u[L�P��I o���1
r-��9ޜ� ��d�qj�w��$��8�Q���=���4�����:�U	�Ծ�uه!�wXC��^� MYv��j����/�ț�O��_^g��0�2Φ� a�-Qėv�P�5��i����J����A�N�Ê�|E0��2|����oߔ �:AĄ�;�xqk�q9�G'����V��Xs_����Žҽ�[�P�9sbc����y���K?eR�m��A���̂�PM����Z����P�ht|�	���*s��X�����Qbz�BafcR��>�ժ�$�Z`���#]��b�f�s͟�Q:l�?�wdA%Vx��t���as,i݃N�)���y%ӻJk�1�O��]��Z��H�=4�띿���h���C���s�y�W2+�`2j�w���fIy�Ih��a
-n6ztKv(l�o,�m}.��y���흞l5�����o��t�:�K�� N$e3O�H𰺹��-� W����1��er[*�S����C������?dL�ᷲ�&��7 0]�2B����7�e8�i�\C�;����ߖ��G;���N�'5�~/{�g��`�����O0v�Ÿ��s��Zd+"�*�?Kڑt=Yn-Q tϣQ㙖��`kҪ=��7HΡ��3x��ub��m:I�����+(�}(��!�?��Q+�P��q���VMh�\SUQ��,�Ju���}��CG\�-��� ����˔r�Y��'�P��A��<k�S%c@Xr����(VZW���zC)	U  ���G�эp�m��q��ֺƲ�y;:�dK��P�G�=�sA��sy�+��5-Xׂ�Y��hG^��i/�R�Z���b9T�O5���,��N���s j��f�ʥɝU-pKP�):�V�:���J�I��/�[���R�m^��V�XT��>W�����۳�d뀠�i���J��mRk�0�P�]B"��ú�|Jݺ�ѷy��Z�A��E�_g�HA�Ϩt�	׫�$�ԝ��>��fv,�"j�*[k����㝣���Mj�ުhm�X���g����T�rc�R1W�<Gշg-�	vG���h��E�D�ݫf���7\g��Vh�C��<28v�TW"P`���&�1�E��G���!�1F�7�۵�!�P��pv�S��F���_B|��@��yx�����L}i�S��N�K����@ž�=j"��P��)3pϺ�دe�ג�?t1�GDa,e�z�/BԂ��ե�7yi-U����u����q#�3M�~�p�i2�m��(�����2�:zQ�����[2���Y%3&�5�C���X[��.D��M�v�4)��*��6MB6t(E(��@���ە�oz�5�vb��ɾ�d<�������FV��=���v]qy��ՃW��[6s����&7z8G�P5��0�Y��l`��;������c���ܶҠ~j؂Bـ&�8�Y0�&L���6屑��m;mI�I�k� ��*��eK��W�#�:�$�.��u;E��jX�e8p����tn񴻻����粉�u91%��M�|�XyW��
�h�Qk�N���^>����D!$[�5a��{"��t����p�യ� G�ĸ�Ȇ���i���ﺐ���Y��[�QY�}5Y��\�wU�.��%�<oY�r[o��*[����WՊ�-`�>|�_��Ť�s˙e�i���-^4y$1���C���k�nb��ѿz�M�2���H�i�Y��_�D�t��zL�������N+�[�2ڮŊ����l괖g��4	o��fh\/�z�����4|T�XN�*�G�\G:��$2����P	�Z�ƶw��"��̘R�%	�ib��´��%M墉Y�.�����U���:r)��1W�㯤��̳�@���{V�]%�y��3�G6i@#5F��d��ks'�?WF�Y�gӦr�X':]�v��o�wt�{�A������^�h�e�ί�7Kم��Q�'c*��G�a%/zI�[����
�aN �����Xd�.}�͛Zm������=W҇�+XE��"��^��N�|��lV@;+ �'=a7O[I/�BHS��%W��e�k��瘹����!9�I�=�#\Js�$�UTڋg-N�.�:��m��5�^0�dvE�S��<�x�px���ڤ�s*�?:��J��Y�F�+��
��a�h��<I����Y��Zq�,�p��`o��C���|�e�P~;C��~���c�X^0yd�:���\ ��ݕޓ#�hjZu��V8�كP0��KVid}{�q*�"N�X�Β:t}���5�q��@ji4ǜ4���������[��R	�� z17j�'K��-~��W���k�zk2���؊���،
����� !�]h�hYeMqy����*�3d׀WQJ1�_g��묱ͪ-U7t#�~u�ig[��J��MI)�@��l@��=������ ��$�O�a����,�T���ɜ��s��V���	� <�J���ID.�-�+�ɴ_����^�n�������$=0�y.	Y�(bK�y�v^�w=T�ã!uL �  !��Bm��:JVN\���4��s$��cUv� F��f��C��'9�4�_`�)<5�lP�6��StݵLd�p���@�t�Q���p��5hGP�8ܕ$nl)nL=D�h��,TH�A8s��Z8<��2[�ɧ?z�T���!���o��q.QЀ��,)���u�[�����{�1�}fU����,��=?���?.RU�n�Bߦu��ތ�����2�A��f (��`���8.��*eG�f���&M)$�o��<x�ѧ��В���-�e8��P(Q0$����G��v����h�f���N�Z�#��eb�m
���13��d��?�����51��^`;P�k�<��䧲�B�<w�
۴�[����`����O9�h��d"��+���]	#r�a��	��iz��< �u��1l=Q�Rv�ǯ���ҏڮ!���]y��&�m�:UO��(1Bp�^�T�S�(v��3�dץ��sS��,v�`P��>���*��g ͫ�5���"L*�,���$eR��l3��r��0��6.�\�kNʕ���x�o%z�N%2��|!��3�V?ӥ�|8����3?�l�[}�&<W�5(�����B@���Ê�07��������A�_��҃ ��"x9���9�o2��)iS�
	s`����"�F�^���}9�b�躶�&�Ah�|,p(�&g�`�M�Q.�P�O������\Sثfm��ѳ#�ˠB��p)��*?'Ψ��&-���R� �T˦�d�^k[�v���Z�n������馲��0LX�a�|y��]��4%a��3�Yz-�=���a�7IՐ�HИ�b��qinu���R�8�.؞����o����U�%��1wX�N�Iđ)R����X}����-7��ZV"��(/�ju�+Z{c �����G�P{���-7�+�p/��yZĲ������"�i̩A"�������r�Ԭ�5�B��הݔ�t5x��5 E#o��m�9R�%�O�7fS�(��Sґ�▗�W�;s�O�˾�4�ɮ5�N�x�{t���W&�dl��M��$ޮX�'xS�����TM(��.J+�0Z�L����&%E&g���l����5wV�3S�6�ޯ�~W�I������������|{�
�B5K��iwGu�a(jJ>�I�rbT��'n(_HJ��ڰܡUg*�\��a�b�n΢�b�׾r)�m�[+�n�x�;k|jܹ�A���û�rS���V�t(���S���n;��'g{���?�$������ײ6?$�9�M��vMW0�ߤ�N!7y�����:��D{�Q����"��:�/ 
�Tp�������>U��1o��	>����B~��uD'�����eR�b��f�����f�y����p��l�z1��f1á��#���tKn�Ds|ibZ�+���=CF�UQ�ተO�kI��J��2���r�KPn����Ƌe�P��Dm�Sy�7�*H�M��0��K?*���%i�߼�{���l�r�p��կ
Ũ�
���\�&�g-aÉ��j@p�� >�9��h$�۰H��Ʋ�ƺ�z����zO�F�,��/�#�O8Ƶ4�ar���e�[Y�Zh���Vھl��P'K�+�)+o�xvw�σW��Q=��=?�r��r𲆮�D5ZV�r�i�����us��F%Q�$k�����'_(]��Yj�4p�+�}'��>$���h�SR�*Q�k��&�D["�pאl�f��%���d`�*��;mUv�	��K/�������U�ڤk������Ύ���L`��4��a}��no#tSd��۳y>ٮO%�ܵ���{Z5w ��LZ#�����D�B�Uw�i�h���QA��h���3T�J��4�حka{7�;~�^YG��<w����[
�Z��|UJ��p�mEn��3��[5��M9O�u"3�Js��BH	"�c�M3z���E�P�2�oW�.�I��%��-���I����ڼd55.Z�E���ڬ�2=M)%`<$,����%����
�j3����ѱ�?ҝJ��2�*���w���:a?��Î��5[OΎ�vNN���-e"�?�;ٮ��,�rAt�(�xM�l�7`͘Z�a�˃n1��" <C���.��C{A�u-��~}$)�vV�?�V���9T�RP+桸��ш6h�~��ɻ7o޼F���u\Vٵs�0��"�Ģy�#�P��5�2+�{e0���x�+��=�/Γ;���5����l>o�x�n&�9�+CP%'fJ��r[x�alx�e?'�D�`%�#W	G:����f?�����{�eI�H�>�ϖeر�!!s�?�Oɣ>�;ި.��ګ�l׋h&(�<��u�=8�c61��Xk3n1��+�R�	3��HQ�$P�M۶
QJ4�t�E~	� ����,":�xb�_��5;�7JpGF6���[צ�e��tG���e�-���B���w�ZD�FNw�$X��T��mX{���v��F������]�u��s7�%m�.e��˽�R����8+Dx��QϘ�jƤ�=}⌖���&�M���SM1��S�n��Vh�R�hz*�tF[��|���!k�����%�<�_3�1*ɶ�W��宏��	�Lo̞W��,]� 4�@��ި�e��b�+��Y�@�ڇ���M��RN��^g�������M�����<|���b��O�	U9x��ܼ��da?~�� ǫUIK��_��M���D�������$O�R�� ��C��m,��u�N)o��';ϦI.3t�:��O���TM]"�e��'v�k��	�l�KPLy�P��5�������������o�ӿ���!��_��>�Ԭ$E=��L�2�=���Hy�cͱv�
*fp�Ԇ�&x���AbtL��g �G|�Fi"��R�J��j�[�<*00��	�'�W�����:�6���l�"^I���"��uq�LM�2�����4(����Z"�������=���~f/�N�l���#�k'�x��<<<a̖`@�:�źX�+��*C�K>��mHn�ɡ��ҁ��I(/������w
a�(�`��Z���������b&�X't?G߮��qqU6�K��KB��2��z�9���_63��o��\��j��B�A���5��Ux���Ҟ+���Y���<t�X��)�b��4oj�u+|��#�ԦU��-�p��ZP��ҳ��ۣ����jMV�'Td��W��\BJ�Q���r�����r�<��KT�g�_"N��pT��PV��,���(���HAI�hh��WF�"j�9��]C�/�ތ�w���n`�̩Q��1�j;�@�l$�j�.����[��7@�H0:�`����vD�9�-U���D\������H��T5J>^�g�=(k�d���d�tSVǵ�Kc�_�<�ow��/���/	��         �  x���1��0�X��,,J$���1��X~v2�,P褃�a���l�{�k��ί����s�'I�GTz�Q������U;Y[Ǭ�`�k[N��Y�ڭݴ9������~���Q{X��^�N]��$�RGvt�ut+�H\?�_��|�X���Zp0��'�M��!�iu:�a(h��L��+�`@A�` �=L��+J ���PpI0�`�(�$�PpI0���`B�%���K�	gpI0�`�L$X�	��L$Xq����[�	��<H�b	$X�,�w���n	$X�!���[�	�����OQ����A���3��p]�ΠK�BA���3���=��HЇK�§hH��c��+"�:�uYbu]bw�`j7�]�ي�W|��Ȧ��5�������G�����m9��ٖZf[NdY�nˉ,�*�r�)˶�p̲-'�̶��2?�Np�r>:p.O��<�c�C�u���|���iKC�u�����y����            x���M�W�%�����̐@0I}PR-�$E�EIͤ�J�nDxF�L�Q��b䢡y�Y��3��0x� ��zUZ�D�=`0?c�3��dRTQdf����k�>�{��;�{��[w�޺��z��m�ם�_�ܾ}k�N��:�O#��mYԱ��)��C�<t]��໾����Ե�&e[�������,eѕͼl�p���ٖ�^�&��o}Y4q)?닋��:5E���e��b�O�W/C�a�6��"]�V>��G�gV=~*y]�x���uhʹ�@������2���2G|�<�e�E�H)ï|�g�R���@:ym�'�y��BS\`
m��mL��{]Vq٤V~&�+	?j�T���
m9)���i�`7�Y��x��e8�����eh�X���%����W?U��-��褹z�'��zY�F��Js�iR�/�*ց+���lX�P\��E��Uߦk�32h���[����br�֝�")��� 9�t��?ݑ���L�4U��߾-�u���L�S����ǟ�����>��#����ury�x�)ۃ/Cq�.A�d��e�i��q1<�œp^6��}�.�-��T��"^�" s��{��8-9��\��K��"^�F�T<e��&�*��M�T�U^�]&ZYhY<Y.}�a���D~3aIؒ�v,�UV�W??+�Wqyڽ�u"BT�OÆc��G].e�Ky&3O�Hh0��ǲJn�{��B{X|�[m�5��If�΃��8��LU��(��-UUʧ�Xc���М���Į-n<�E�)�ï�Wa~��oUXn�a�S�nfA�CAxou�)�����V�z�xR���T~Ն���Q�<��X�u�F9�Q>N��Z�N�*ur��U�a9�������[�.T�ܷW?WW/��6�lWw�ӜB'?��z;�k��F?͒K���ɇ�/�XEQ[�A� ��=�vq_�n!']��)�E�5W?��Ҙ�D~�~���T���C��J�*6�*<�&�F��GUa�����^�{�˫�/sQ�"k���r�EF eL�Z7<Br�8��:hU�VtAWN�2�/dxec��i���h�
g��s���6y��y_-&�[~�aP�'8�[��~~z������
�n�r����!vo��0]��#���%˳�N��BJ�i��!�,C<8jd_0���rpEx���N+�[�	�v���U,�����_�CU/�5�=�9�1W���e�Ui+��H��[¦Σ,��8����L$2aa֋����HA�\�!�M�zy)ϭ�Qr���J�T��\�G�1��U��]��(;D�#ci����LKD,��d_�X�����q@8��ū|�~}�*YD�jy�ȣ�2�Cfx���}��/[��u���;��M����{��|.��sj�����)JGͦ��{��&b*4�Wܛ,��J>�dm`X�}�3$�X)v�H��Av��Dx�7	o9������ 9x<�^�K���啋D����Q��"�ST�����L/9Yr}���s�Tp>�	�ɓ���K^�`� )��ݚr�u�W?�V�կ����_売JuRe�Õł������i���X��%,�Y(�X�:�4����t"��,��۩l�*
����^'(�#̢�E��^��P��C\�U߄�2�9�4n���@O��l��\�Uh�N'�#���8׽řǦ�r\f�ڎtzmZ��g�w�ت0.�J�.n�#�.Ҏ�F�je�\t��a�Ŝ�S�{N�=n�5@EJb���N�R��m���Ŏ���H{�"��RwɄO/f$7�/�D������������5du��'�ƽc�~�׶-ef�Q<9zAwo�{�R����қW�]ai�pE��X��d���6�EBo���_�p��`�#	O�@~|�pQ4˒BZ��D5��-��������oDZnÎ[�tSo�ֿ K�K��X"5P��ݦ��RU%��I����.�QE��"�_�1��bd�3'U�Cx�IԨ�����g�UPW�*������yk��~���2ǽ�{am��֐�<yR<����^�9�ԭc%�U��J�f�`̉������4�-�?�r�,U����|h�m� {��l�%o^�꿭p�h~��uQ�K`6��A��.�U���i��3ù3'�xVb(5�T�n�S3����#�W�宿M3Q����vl�C�Mi8h[1�[�Y���l>.����x�TŅh�.�]-�ۋ|�5�de�K��4a�B�iY���6����y\���-�}lް�t`�2P�w>���[�/����9��u��*�<6��wI���$�T-܅�l-S���ÿ������'�W����P��2v�-���:Y� ]�2�CU!*�V�ǝi���KE�k��x\m'6,#"t`To�u���N�_|���8:?�k��~�a����ߑ���f|�aFE�3��U�C�G�I~�ƌH���l��m��NXbnϺ^���ܹ����x|.Nj�K�닣�n!NOw�r�"�W/q�340�#/��c9i��a��)�u������X����r�c�v���<�|~��U��C�b����r�������#1E�S����m5����9쐳RձLfU<[��hP����yq#е��#,�sё�7'ێ�Wi#�X���D��
t�-��kڼ�Fiye���9�|exʇ���Ehi��/k�
p�C0�"�DNd�uk:g�#.�.�}�O?�����D���6)�����#>,��=���n�,#����F���n<b'�+p~}���2�����uA�0��Ck�ΰa8��>q��&3?��=���V}���2�l���ʞF8}a1�,1c��4�*�xp�k��e!&c��-�s(����h)�U�烷�<���e]j��ξ��i��2����h�▚�zU���S��&��a����Ł�cQ�ۧ��Œi%�\�C��/ԩv�(wp3G`�b҇Ԋ�tU:d{�~jJ���]�C=������ZG�\��/���d*F W�� v�"49N��E�𒃶-/i5�aUn�z\Mq��=Q����͍�:��G��5��z�`����xk�w���=Q��IJ0� S�|;p���kB���HXyYo����v��1�HػPy�X�%�i�Ԏ��<�սn�~����G���9j� �� �c'K�L.h����{M�؃ ��*��K�I��'ɧ��`	���K�%�"��V/�:�m��Z���8�FvD�.�K��u���>�Z#Z��f64��[r	ђ7[�O��*��W#�/��(\I;��!�i1`r`���:,��d��{~m�A$�j�Prq�Uރ4٥��Ա���{`�h���ן� b�楜�X'Q�	���g���w
���{u�Z2N/�����!7{+v5�ՆYi�`�g�7��K9�Q�Q�0f�>t�z��%�޺���P��(�5bv���y�-��M)��Rsu�a�ܽF��藋�D��� ��j�߹*�21L���T1�<O�k��xN���<|U�. LE�#���2��2�G�R�P3.,A�n����*{� ݷ�=��/cA"�}��4�Z���0��6]�X%d]���F���e�W�9B#h2|��&m�y��˽�?=FHo;<�xA>�V�|eJ��%��l���Rr�(u.�fO�8�����F��bK�qx�k�#�* �;)���ݣ�����k���R_p��[@��Y�57�jŧdB�Qն/�,�RT�`�b8���KKڵ�\;!7�o����os��Čj�0c���XlI7+���uџQTNޚ�cs9�ա�S��b��I�!j�D\��"9���-�.k9&��F?��������b�ǜ.�C���̽)ݎ{y�ݽ.��t��ب��B�� �3geJ�Z���7mYE�fΐdD)8��2�]#>�K��4,`�82����Al����+�������4K�T��hg#4���9��Щ�%��t�@��y�Z�m�����)yza]/�寘��q��=Y�j���A    �Zo���]�j�����is,��O�z1Ӻr�����޺��{oo段�ޞ��*�e(�����V��2��(�΀ W�Q)~���*�����$�K�+��nLѬ��Zk$�G���&l���;����w{	��B�qd��_��I_�v�n��ld��S�t�;*��� ���3�#����F��Ҷǭ��\T(.�}L|����0��X��"H�$YX��Wgw�MpZ(��3D+�/�����B3�E����P��ә>�|lab��[�NDl���Ý�5�����N���;F(i�D³y��Vۆ&o\E���	��j�[/M�L����+���x�����a@���C�ߣp�#��O���b.  	��q3�%s����,,YQ�)�������æ��=��tŻp��Q���]^�pb8ʿkȘ�~��zF�y����{�]hՂ�ٵ����"X�P|�ċ����M�R��8��د�5��@�?��B�'z⋰fZ�
�[��>��xP����\<�S�y��H3L4�:Fm��GH��`f���P+��2t1a'f�C�H��������b�ΙfBi0�ĕLy�'{�1���${N�Xe�{(r��u���@��	y�����;�䆑`|fi�L��W���!�&3�}��=p�}ݵB>�K2�E�©ܬM_4p�d$���eV�6i&2'��4`YK 0�o6>n+�9u��b��(=���d�h��O�;d��<���߱�����eH]��]�Lo��]y��N���~
䝏��5��t1��fJ'0�c
~���x�d� e�al$s�rtJ"P�0���Vs�g����:�<��>���w�x�	�@>�z^�����V�?�"���7�����|'.<�#ƃN7�p9=
��@��J�D�1���7��!�!L���Z\�����RٛB�v���=��
&"�����g�6�h.�`%�|���쓉B6����mzP���r���o4��桪�0�-`Yg�}�Oz�`	��Ȇ3�w�~��಄�۪c�3Fm��:�]2���f���hՋ�� ��籌_�*n ���t����k��Hb 1��Y
>9'��ߕ&�ivV*Z���5�^��U������wa0�Y�h����e���m��oH��G��������`��G���R����p[���jF�"^�W`�s�~�=H�I	�KC��ҋ�i���md*�M�a�o먱�����qեlL'|rB�B$�l�$��Llu�i�� ��͛jd {�8U��;h+0Nm�h�|��0�3��&p]��mnvA8�F�՞��,�d���v�Gk
 '�{KEfH22��*�	��3��c����=���˳�MͶ����,��Y��ȗs�@�U���<c�2��|��1��2 �!ձ3�".��� �n��{�À yB�<z�3-�Wo�b��yX_�a�>|����OE��*��'��^'h���c�ظ%���b���R����~��H$F8_񅸨 =fgư=��9�3./�_���0fd`�\Fuc \���.�kO��t1)����g�d~���ϡ���eOs�R{��d6�WCŀ�>t�HX�&'t��-�h`���;	~bU"2��J��|�o B�Z
jJ�a�Ym���(�%&�\W?�����z	���ˉ����pZU�L���́:����
X����_ӯ
��y��� pr���[������nu��}7��~�!�r����u���q����r:�bN���>jvT̛]�,�٫A��/{���C���KI�_��U�å�0��a7M�=]<��֫�ݙ��&W#+qT�q�z�Cʢa�/np����1�؜�kr���42�,?��,B��cʷ��.�g��g���	���/AX/S�J�k�7s�z�Ķ�la�A@��FcJ��Y��$�v�X��%YN�@�����O���fW˼g�Z��4��ⲇ˨`8?� �7���*;,"l���x�K�"�;0���3��yL�ble����~����2ձO}U���?������j b���Sॠp�u]ߋ���[��ߋ��`i����e�-�gSd�����˝�� 5[gyu3Pǫ\h��5��R�+��Y7�q���>.��@�����B�O�y<�D�����KƄ�8��4ز���з��E��]����<��UE,v���a�,�,�L��	�a�[ �	�0lYӚ���s͠2�
&%��&l@N���Ѹ�[4���˃�c˷��ǥ�G��%J@�A;��d��;萫�9EM7����'�&��CG\�G"�"�S�&\����4d�j�ͩ��9�_ĭN�i�\_�DuN�/��e����XQ܇�u�^���rZVLӕ�g���gD/pQbV�n�kG���kA�B�&��P��Z�,9���QD&�<�F�:�5��w $���9
B[�単���أ�zu�h*(H�+�F�a���]j6k[*��l��N!��$�X�L-4Q��%�#Nռ���61���FX*��ڮr$<��Dm��'l���чZ>pJ��٧O-�� ~�,4�|�^���牔�w�� 8�q$�pQZ�|�)?h8�;�8WP�_�Ձ`��]X�ɀS���^�_T���j�I-1���B��u��O�f!��ȩ[��'�Է�Q����@��0H�J׽���(Ǹ��F��:��Pr�0Y�u�����+6�}#>8sZ��9���`��y)��"���44��ky��9����o	��{�!� %}��=�	ťjOaQ��Դ�_:��l� 
]$�nB�N3L$�F���>q|����L!�R��:Ֆ-KETk������C>��9��鰡;٩w��$���z�U v\Jf�.1v�D�_9��BwM��A^�$Q����m.n|k��D�#D���g= ¥l�;ōG(�B$�?��^{+VV�t��I?O�z�_1�X�2�x�Gbu�"��_�!s���j���i���E)�k�r=.�Oz�P(���74*���{q���8���B�[���M�Fb����&2�Q|�˛�W)�P�qޫ�AM,�����.ج���Z"������?S۟�[�����ȥ$�����2&���^�*���D^2�Ȣ&Ykd�p(¤�����̈́�
�fQC���{�Z@5D�OD�g��`��o�*��>X��fu����cq���y�*XjM��K��~�&��Q�| ^<�7U!^L�Պ���:-�lJ�>�������n�QW޽Y���U\��&��Ļ섿���A���o�N����kl�x�b>��x����U��9��_�e�V�X��H� ꅿ�i�Ep�8�
����݆�~��V&,����(�r����)��kH8�����9w��hu��xhAݓ���;���{*2�}���G>�Ap�hU�{$.d�f�����mI̷CD�,�Y�6hx�,�шq00�
�Tą�	�p"6V.i"""�Ly���M,�C�/ko�c0���]6a�lE�d�B>�3�ߥ�ܡv�ʫ�_�F#,��b�������҇<Uڅ��b�ԓ �����޽=Ώ{A��!)U䂥9a���  L��N��U{��������n�G�6�ǁ������
\-}opq=edO�|�b>6��v�.�8�9kp&g�%�oL�����o�IiޯU,�~�(�j�0���qy�熬x�/�C@�DS�;�I8XhC���������fiu��i�Jx�w2{볾���!�e؞����	��ᡀ2����y����������#�j�֊�'��n���@��c�,�;�T��9k�I��������C=.a$�x.?8x� �_�y�JV�.w�9��m%��QѰ���:Z���R�Ͱ��T�0l�m,:��/�S�ȧN�o	�8V���@E�%�T-q
����c����;�QY�A>hx��#��$�٪Q�׌BoO��.뢾�H'�C�d�:��g��    � �v��0�@.P6���M�˯�6c�e�͋�(^h��m����F��e��ȃ��dGx3��-ˈn���%~&��G,G�}�n&����<ybG�<��V���W�8���3p#J�����,+�C�ғ�"�d �^��0�Ga�(�<
S;
;��w�����jwņ����rve[�2ӎ�1�+���8�74ꀪ<&�Cd�O�q�j�v�o��/T��c�k�x�!&}Ն1/5�� �̱�3�H
1���u=����9j��5��XoG���v�.����BrmZQ�m�M#v��1kLD�fY �j�G-ɣ^�� �5�y3(�9��vD�Z�`��&}��ן8I����Wj�8Y�I7fy����b�<b�'4���tl�H�iF��%�����"�����f�q�TY�Z�\�y1l�[���3�]�M��a��r�w�p?�������<�F�]bO���
BBj����j�N�����cY�!�Cu:B�*(�%��K�?��X�� <����ʂ�r FJ�t��:r�a8.��j�D5�<�9!CbGeZ���4ΠU��":Yq�
H�SL����UC���J.�F��~U��l�ݣ'W?Ρֽ$�4�s��P����ԏʫ'��i�f���l�eh6""�2|��<:q}��5���}���N8�_��E��A����v�\����Ŕ�fW��3Ҭ��Y��hvc"#��M�B?���л�1+`A�Ü�]~���N�+h�82�u��i�і
1�3}�e|*�g#F4�~�0փ��g�)�M�W??P~��Q���+�D�ZAKZ�����Y�)�.ux��U�Cn�q�V1�"-h��gI���tȌ��M$X��dY?�=�E�D�Ɂ�6��C0t���� ڇ$�azѝ��i����%?�P����Y�2�E�����u��R��lEf��d;�~5�'VVskX��t�7sp���ߞ�Y��K��~��N^&B��R2 Y������,������m_���1R���f`�J]橋��кh��&��F��R��9�v��7X�9;�w4La�d&2��/���n�dA�K6����RK�uU���ųo>ǑY(�`EEӄ����*59�m1�=��:�)�x �i��G��/Dץ��C,�.Z��׎�LZ�ZO���8
��v�\]�m�����i�(��h����J��$�Jw�	����O����{���.�F���w��4l\=����t�mVa\�1'��X'�mg��e<ԩmU�h �����u����D�')=Gm�~�����{#(�!C�̃�mrp�4?���z�4��SS�R��8���|#�R��L��I��� ��b������L9"����[e�؏Il@��X����M��?��m���$iJ��#fcV��� !�~خ�^6riQA�o$��H����ť���~�^�����8Z��f}��R��,y�עKO{Fv�˚ʦ`H;��O6`%�͞R�U�����|d~_Ex�hΛD�	J����|��
VXA�E�Sv�oPǻ��{͔y�ĳ���D��C}�b�>����F6�R����֮C��O�t���Y��b��V��r'�m�[;�:��_��T֗QSO���<�;~��!&��:���q����F����c�DwW�(!y,�
^(�����o,b�����g��#*
M	����� m�l�"��516Q�U�� �)�B��bn����U:�<��0�wB��]u���%9��^�,��Y>������h�u�-Q�n�\��f�kX��|�k�WǛ#7s�4�<܈q)Z ��a�\D֧���8zǓS�4�M�&0�Pf*���-�mo!�"��ַ��b����][��#7������ �U'���/���Mhي��.*���#T� �3|� R;o,P�o��_��6���*1�*r�t7+��Cu~E�����k�
�f|�F����U���-;C�|	O����q26�]3l��K�F�1 �P<�W��D@S3|��'��կ��W�޴��Iq���!ݦ<�5&f��b�~�M�穌ő<@�Tk��jP���jTKc�Ҏt��q0�}����]Q�禍��.�~J(��WbZCx#�'A,}}�����ƍT�ń@.���&O��F���D&�����Me{�+@&��W�x��]�tX|6���zcC��>x���1:~�2�O*�X|��@O��)"�x�'�! ����ԥcj�1U�Ȏ�F���+pz�@��������0{��q�(��u�Ғ�.P���%0��J�5�XuU�-l�NU#����ǥ��?h����d�n���ݩ�.�3�Y�˒�|��ț4�ɚ`���+�����7�6 ��Տ���JǏ��e�G���Cq�6W�(�X�nZ��_����]m�aTr�\�\���W$>��4�	t���^�:�?�͝��������ݗ��+��H�vzrz��m��*K�C ک9�\���g�F�P|ӷ��$�n2\1��Gۨe��J�W q
��4�����`�G��QŻ���:j���W/O�'�/c�E�ī*�̘���<�2ل����Q�����̶���@�S|�X���5�ʯs�X�qѳ�R��*�`�7Ҳu��.p�@e���[\@`�.�bW�ܻsgb�a��Z�Q�҆?���5�L`p����(`*;!����<eY]��~�5RN��T��Yfս.3e爳�_/���b�.ZY��ޭ��?u
���y����[ہQ@a�~�E��X���Sd�܂XSc�V�����~F�9³)N��:S���w9���Y9���P)H�wc>3�"����d�� ��k�T�/�*q0/�Ó�h�q��l.���+hP+䧶��L�ꕌ�M�T�=���-�����{&���`�b��r\��q,-`%X���1���^>�eE���\�����x�P�ϩ8�k��,�;����ʀ�J,Z����4���6����Z��p+��"�4�41n�9��ښ4h	�{�p?� ��+��$��s]��	���4%� voF��X�Q��t��Ѡ�y#��0k�1�4���B챩�lU�T�|���m�5DE�h��Ul���D;��m�R���uRdQ`ōU�q� ?IM�(��'H��i����{������ө��Ӵ����ݓ���`��)��uQ��+i�޴O]�1|4�]��+S|d'9��^ɲ��sR����U������B=N�k�v���e��
(6��^�;�i�����>Q��-Ez��e�><��Q���Vm�kŚ�$b�I����|vN�ձ:c2���e�y�#���t֏7!Vpmr�"_���bo8�a��:��Юu1{$�k��{�س暝ս���춬�+�s���O��}������_��>U=���	�~�V
O�n�r8�ʵ\`şSu������s��b6+#$��i�T�����B�����m�#-	>oJ�������G�RP������3zr��<�pv�'�F�`�TzVY�TU�s2�0���j!� bJ:��h��x�\��٩�;�%t���<eJWi,�jڝ�zP{h�%�q+��G����N�f�%yS�D
��!�%3l!"9��޹����L)/S��� /��e���PU� z������%����;%�p�\3,��g�3� ��D8� �E�[i��eSp����9�%�9gܙ|��Qg����h:���A69W�zD�6��=pn��:��̘s�Z%�R�Ũ�&7�dd�Q�R�,L��Sen	�1� �G���tg 	�����V"�z����gĈQ��;�ީ��-��G(R�n���rw��+��$�uX?��i95�ٱ���+exȇ�Fx�Rta�"�E0��w��۲������PA�Je��r�7i����9�z#�ڔ8���/����r�p��W��}f������8�#�P#UZ�z�j40]<��Xkn'_�
?՛a��,Q5��ץ*YgDT�BXG�f�i+}��v    ���3��@3BPe�`�1���TN5��5`�њi�q��Q���o*!SJ�@�����C����VZpVY�ܖ�)�o���AaMh�(��;#���b��
W���u{���z����LK<2 gb�{P��dY�Ԝ������A3VA]Yrq�zƥ���[��f�R����ϳ�m����0����G���T�����a}���h��˗1����bYZ}��rP�2� ����i�CP���!`�l���c�Ȅ`���qRr?.ɲ����aH;�1'5#Fg��6�1n;y��<�y2�`4Ĝ1ǔ}�u��B�1{/vj2��K�/R�*��[�����ٟ�?����{�P��ۭ8�:�rf ���5�N�F�UfW//R��E�wk��<}�yg��Kc8`�m��y��XsӁv��t��a�|��Q�UAF��+R�Z�y��4�����9���+�Jw��\&��ބ���@>�m2� � Y"M$�'g	�r�]�$�S�諹50*�oƭ��&�dx�S�2~�@�XRa��W�&�a*�B-edk)a���QiE��>ݢw^��e� ���%���3�w���l���Ϊ��hx��x������wq�.λga��}Y�z���Ra�:z��j��4p?����� bK�+s�w[�h�I��f��1�1<';(+Č���\�ƣj�'DzHn"�����]iux��?x|v��%��53�B%�F^U���� ���u|�8�,�F�q��@���fz�B��q���0-��meF<�+�s-�:�]��O8��w�(s�7����3m�['�V8�|�)L˸������ ��HՎ!��~1��,��˺yͪ�_�J̉�Kw�F1�A����M�A~�f�P����2A�����qv�\h�J�ĥ�<\>�gjc��������fXq��[�t��)����C����l�	����M����O\1ZUɢ�������j
��5!w��U��$�����r"�����h�P��sI��Q9�z�V�6��&���a�������'����r�;Z��"lh�Eq�!�I���GtǢ�:F�Gf�L���*LKc��(а��EX�#��/���)b��DV�G�'��P|.����哛��K4���&2<4�94������Zv����C<�1���O����K��Q�����ȂW����b���`�@�����H]~�W��?4Y���L9��uF��`*/]-��r� {oQ���z�hB���+Lp���֢3�LQ�#l��T./̦Z^��B��s�z��in.�:����\�	�C�uKJ�
��$�|�}5��v�s����7@?���5���O�Q��q��X ���fW��6q�3偙��������c=K=�D���-y�(C����4	XNn�F]4�H��w����jYtX)aVC�T�TaL��U5�XMmY�(Q��x��C��>++��"��7�����
�R=b��0��b>2��f6����e����(Vpt�誡����X�E2s^*������H<��Ҁ��&�S1��"�p��!~�&GT��z������-~*����]��Л����M?;(�����E&�׺�l1�{�-ڏ�ت�b�q�s֗৒~?�h-c�<�d��?��$�Gn��ZO&M���CS#��4�GG�`g��u�z���� ��!xB�Y���a;��@h�C.ee��FV��h���q��0J9]V��#o�d�A�v�=H)e]�N���o�1����S9�"2���ߖ����jk0�ɢ�%_XPhOo���>�'��g���h��f�{�-a%�ꭑ�;��Ni�`5\�b�o�V��j�vMSˁ����C��yv���� =ٻ�W�m�����$�S�j;��w�3�/NMG��^�A��[٤�_Vlu/�"~��HA�Ξ�
�|PkE�����?U&b�K�&"3�v<��&�������$��[	�k���ԾQ�sO-�Mg�өU���XP'��<�Rm��qZ��A�����l g#*��hbE{�3r�Q���bP(�Wp���ux}�V�[�J gA���E!�B�5�ֵ��e�S�0m0�׾y6:��gU����!It��j_�E��4��Jc0����`:8���*�]��������*p�܃G�:Q�MY=*ր�#���gnY��yH�h��X���	��d�����u��]Ar����E��Fc�]�� �a��ڦl�m��k$ԦtVD���@��?7�\��?ق��K8�S�&��$��e�vP([6|�z˖�*�uG��Aޔl4�����-�&�0h~�_P���eX�E�1bk5a�b�2��4��X\���n�8]'�"i^��gYUh����4/.����g=�ׯQ;��)�z�D���#�-�m������`�	,3�{�Ƴ4?�yX\���=!��\\y���8��������Zi�~3CL�gkr�]q,�6�߅f����@Nٻ/��sP$+�M�G�D����|~V�J�Սg����ߧ[�d	�W��Y�o含��=F����)G"�q,U%�dVΚ�9���{�s:J�j՛DeQ ��߀� ���ws��cA��Y��e]o4f�&���V��WТ`+4�J ��w�/}���������?��E@(����~�f'�鿚�!;�;�|Z�0��Ln�n��f�.��8'Š�i$6�N�c��O�H+\Z�	CB�b�Z��=TڎV�f`��>�^m�ؿ�"ԍZ�,MP:�67>~�쩲�2e��Jmt��	a���t4�<�EI'\�?G�1�@6�V�U��7'cKΗQ/�şb��a5jI�m���ϣ��4��1Οaue?�����z�9�?�0�˻pM�W��V ��Z��J���1Nڴ�-��*�t���&�5!����lU��׎�^�ֲ��c-��8ٽ|Y�)&��@��Q�Ԕ znc�1/�9�HG�|٘��������ֳN Y��k�D�)<k�8�T�\��rwS%i�|I_��%��Hh+�����Q'2�F/^�a�B���o�f�)��XzK�%ܚ��� ��56�ML�a�X��I�~��o��f[�0p.���]Z��QG�N��$uęp�Ң�նf��]r�ȕ�.7 ���T��T���)�\0�l�2�S�G�$�h-�5�Hw
����D@��d�Zõ1��H��p7ʝI1n���|�7C�V9=�4��j J�|r�U����o�T
�]P�1�<͜�P!'���n��_:2�~[�y⿷�`To^#tj�_��o�� �)�[��ɓ�}�>>�2�|C"��U`���b�񝃊Ț�榃������ro��d;o=�����RB2�� �ЅK˿�=�V��wS�*��O Ƈ\�b�$���oD�0{+Kү�^�qE�^ro�e�v��W�h��PY�N�#��`W{��;y�2���h�z�n��Q\�pjd��6�;R�pXƐ�Z�����W!�K_�L��I�
m��Y��H�5����B��$~63{��t�뷥�1�ó��p�@�LQ����S����2[�<���T���*��@{�݂D��-|o��࿟��y	�,De�:x�3�x�7�~u���"!
E�]�^6��#��l����*��L�+��j�	]�D�_D�����]�=PtR"4X�i�vV�3�D��^3��7�5����5�)CA���f�#WNY�Z�2��A�zx� ˛}�|ݶRg��� z9*��<äpIS��8��o=a��/j�T�������:ņ���cv�	�Q�	�~�(��D��~�[�P���@G�Lal�2o�*����e�&��':���Ї�;#PE�4��4�<ŰYD����)��Ï��`��	����*�����S�}7���)�M���r��^��j�$�*�Tuc�7,r����*�c�0��nae��f\�m.*2�sR�����w�
G�4���{?ɲr��YA�%�����-eM��_D+��    j.��W��9:��(�b�7���A`�M�e�������T�՟5���"�K#�4�/��$�W��I/����}��d���3Λ��ƚ���n��O��\�I�{��͖��6ڱIԜ\��2m8���ݙ�"T7r���U���i���u$��x����x2f�hY������xhvĖK������F����g���ʦ�f ]�+M�י�ԏak�Л���+w�aO`
ήɶ_�'��*�>�b��<�hY�]ZϯBӳ 8��c�Gfv��9�u묾�[�>���g��Do�?=��:5�f��ށ�G;�#T�Ð�[[c��j�� 3�H�?b!Y��5Om0��`k-����#MV�5Hz�<�¯�QJ�΃��f� 8�b s�fg6��4�f��g=�:�c�ʠ�]~�s���7�i߬�t}ì���Y��Q^��~���Z"`ҁ;y.��.����X�m�8�m4����0NDc>�|�oS�����nR��]��/~��2��ޅ��`�����l�3Ul��@Wem�\�U�r;���*�vqW�ˡ�n�߶�u� gG�l׷z#��m:�7���WZ!�|�Kc5j&�\6��N�-���:�}��$���wn�]3W@~X�1Sn1P�N��׫TE���#S�Q�V�E�Ѓì-��j������:f��t)�G"�����O]��o3��Ր�?�I�>�EQ#u���ԡ�p�U���BU��_O^Ƿ:^��G��H��o-.�d�jGV�Y�� *aR�3���\�5C\|��&#+ى;[dD?5]����wh��^ �8��ݽ����!��1�{ϯ~6f;.�izm\'���R	{O�\��+�֖����R�У��������D�����,rO<{	�#>#����̨��w5?lJ���(��⎛�C�i��Chg��n�捍e���>��L������^}��h2�Ć&���}k���7+⁙ʁ���J~�P�g�6YpG,ۭ{�:�<Չq���w�5��yVIq�zɯ7��x� ?j$�5���*k1A4H\zBr�,�c0�(�V�:_fz�xuxT��*+���g�?E9.�-�x�5���f`�Nm�����)�8j��iٕ ��_kᑶ�dr���L[��ϳ���E҅S���q#�8������QײdpȂOPI&8�)����V:ooX�͛��/+^K�o|��u{�s�{$$��:%�J�@V4�Kk�5������M)xSގ�rg?6�X|��l�R�х�ʍ(54��x���.�N�1m�a�#�L�:�P�jC�Q?�#�P��qb�gH�Ӫ!w@@����@G������0&'�tl�aGrGx>.w��H0Ɨ@�zal��~�ӄ��@L!ܳR#��6��)o���D]0�|l[����n�E���;Zت�˥:��4������h��C���cI��]�ُD�<���`�$߈��/z Nb���hi<u�UW	��Z6골���\���V�Y�9rŻ7hgB�F�~-�`��1\B������종�1<���*�i��Q���(C�
4��܅l	:x� ��uS\0#im�/��	v�;�5j'!Fh��i�6���jL�F��Z�6�����C+���F_4W�����Q��b�Ǝ �Z~|���'�t9W�hQ&�~��c���ԯ�[�˛�3$�E�c)�l�����jTg�M��'��ȱ�K���L�÷��q��q�2>��gA�z��Gc�҆ �.ҹ���T}�BjP�Ddwn�b��;�pW���
Tm=8��DT
��(>3�W/ۉ7�S!�qp@i_�U_�XZ׀� ��p1P%\i����hFH��`��B{ě~�p�$��bڋ[#u��-l��uH��$�q���,Lz�e���8�9R?6R�+�_}*ܿ�����!���7<��Ky�;_8H�S�[]j�Ll2F��B7�,`��,u,
��b���%��y��Dj�K�% jz��4�Ƥ]�(����7�^��'�F6��DUr�|X�~E�Rc!�bӶ��HqCH;z�h�MUe��Ƌg`�֤���C���Fs�'���b��.�1���|Aj�0��T]�8>>����V9B�tb��ΒC:rWlG2�]_���/T��Q��a�(���m]oN4zd%�L4CNp�Xl�l՜A�B�̜�\z'�s��ܿ��'x�� R�ӛ�C9��0���&;�-h��L��/�;r"��C���]0�ف��ݯk3L_�F����Ii?���a��-���=�����wY��6X\�d�)[�<Ɛ�0��朆1�����t&v`R�sq�IN���o�����e\��C�(�u_i��Lce��E���;K��Kqd"g�'Y�Nn'��?f�4�R�eH��Gm<dj����5o����I� �b��}���{&B��yO�nҫ�8�s�c�/s�,<_K����ʣV��"��C��[M'nmB�D�4e��	jbEt�z�`��1͓PU�x�|!��-�Ĩ�ϑ6@&~�:er~dc�_�1Z���^�ܩ��:>����B�{> �bB����&�?��#�����>h�K@�G%��G6�`�;�4h.�q�Z�n���0��ZY��r��04��T?���gZ|h])����\���'�FG�m1�-�0���/���@�X^�e������H;��9�
a`?+#[m �@�d�f�6���i�����!�M~��_�?d��
Y�n�z��N��F�v!�k�DP�:'�T�#��B�@�V�C��V������y/}%��<�(�j�PgRay���B��oB�_Mj�RZ�$:��!�w�8��FA{��ve���2�b��tԔ�j'���v@�8ԷS����2�^0���~���"z�A�E~�����_?�����Z���>������t�]	�L�U�d�k�H��I�4D�Gm�5N������
��5
����̖��"���o���[�)O�BK���ʎ�>�q'�|�����0���擥V���1�����M\����]ʕ�� )�;�����3$��CوOzt	\�����MtC_W�rR���@Z1��M�X�B��8���ޤT�w�9��S'�F�S'��A�%>9:��Y]��oJggٛ1����/Z���#������N�����V}�������U��Vy�[#���I ��S���_��������/?�ǿ��?���?����>�	;�X>��q����Z}��R�eTK�n�`�B��81{%�0��?�N�;E�G��+�b�DE�5��7�ݡ(��E��\iSh$�/K(Z��q�M	�.jL#@��Ѻ<�=N�Xυ��B�Ea��N`�ޒ%�m3�r�"{�'5��J�@�����e���K�*՝��/I�d��a9�~�jΐ�c@G�I\�N��r+���8P�\�S �S���L�~81
��i��%0Q<?1k��hW[i�]V����|�"�D�{w�»"�<u,��_`׎+<ވw��S8,��N>a�G	+_�+q�/��!ļqݐS����zID\C!���:� �g���JF [,oB�ѐM�eJ���j2\igәW~��M^ˌ}+�Y_�Q����Y�F��Z�:�!PU�SC�V:G���Bl�q�W!/���Ai��v^�4zY�k�[�E`"�A�j�h�ԏ�J���9H��D[�>k�wfE��#��b8�Ϋ�>[O��Lg���ΦzdT⧻�c\�����2��V�׫$��;�U'���~�r�SJF�(��Zt�PwqY��

���TR����2���R��o��.z9�X�[^�w�^,��?����H�T�5S䍣�ޞ���'�^�|����Z�$�,.HhL��H9�r|$�����M����"�c;s�LųхV�L]K�>�> ��)���/U�4���ȋ�hwDm˛?�Au��o̍8A�q�/O�R��t���Ž�_�﨡x�0�eS�QeڒF�K�;ay-��Ul���6x�aZ��t�73+����Φ�}>c��;� �  �˪)}��x�.��]E��W �N���\6n����y?kXɜ5���(�?P�.~*�����,*:�YZ��JǢ�t�&Ҽ8�8)��nh�?�O�?˵syS�W?-�FE!��1`�:$%���L��zIcav|��Ln�� ulL5�G���)y��{��>�e����g���Bi9(.0d��5	k�"#�Pk�5yaL:(��a�1�����zi�KE�/�*���&�NqF��ȣ^���D���tZ������Տ�c �Z\��Rj]ς�b��^�P�aaR�PZ��io�Lٯ���$ a\�5F)5A�VuS�URM�i9Ž��ܕ9?6��qQ���g�&	`b�Z�ker������7��l�.�i!����?T�bh~H�U5ddH�O4VeՕcEa;�ܠ�5��^ۿ�(�5U���~����]R���؊����ko�B�ӵ޼�+�w�G�|��D�l���j���pIY6�>-�C6��X�8-��חw�QsT���Ͱ2J��h'z����]I�c�'FmQ���^���K4|�T�dSIQ�%�kI��O��a�V8@9��a��O�]]�SD�/��"?�3�Nb�Z���P$]t5��Q4�?%X-/�l0+��$(��Lw@��n;Q�T˂���^c�5/ ��&Z����|��z*պo�w�b��a5�� `u�{�ݓ���f�_J�N��{���Ŝ�<題����2�XX�Y|a���d�[�����t?.�@�� O�"]�l��Xe�^���n������YF�z�Mچ`���u�Х�A�*p�pU*-�G�@���4�@,��Ҝ�̡�Z���ri�>-���"������j�s.��IB�H�#��A�9�v��o�1���*�u~yX�9��4���&Z$� ߮\��َu�\�^`n�ʻ�bG�a���$�O[�\/�y������W`hӱ]��$��T��ܔ��fCnm��P��i���"���e�p҇Ub*6�u�e!Y;���R�r���a�1�!q`�
����,:�M��R��S�{ �d�Li���<�U����I�c1m���L+t�<���!D�0��Dmp�셗}'I�=�&Ѧ�a\\��wq��FW�\մ�b9�a�Ru���
��^j��(�8�;X=��"�R�Ǥ�'��ڡp��ŉ�JzA�1��큠��1#'�(ٹ��8Z���94��O�~��0��wf�\��Ѝ{ ��K���Z��觼p�ց�����*����ÿ~�6��љQ��C����EXe�4��#&7qp��Rki�ƈ��"Ss�M3�,�3�Cnw�Eqe�0�78�-�pж6~�*Jc�[X�-��v(��NB�ӣ;p^Zz9Y��g���<��n��U�%K͙���E]�����#иK���X��&m�c[�Ќ�H#*�fޯ�o+}_s7d,h`w����R�-�����aJ�!q�=�P�����x;���ݠ�~�*`�+������*;T��s�0�*�;ܲ�7��?-��+n��EvS;$'jz!!^^���	䙭q��g���e��\1�&�"߿H]�|��O�ﳌ�84r�����O���2|���k���V��5
 �"95{�_)������>����/�Iz�Y�2L�"y�eaR��{�<h�O����\-���z�V��q�!^*w>�}���@�|mn[?�s{'��χ���g�vz         �  x�%�٭$!�cV��<��؈DMesPE �W�4�[���2�e�?�����.��~�\�k���+�n�[j�uK;f�:��sj[�K�Kݿaラ�ԫ��}�UZ����o2P똊�^�Ԏ��o9㍡����ղ�O�J��[z��|w-�۾�'v��~g}c�|0��9e|֍2���b4�-�k)g��������N9'��AP?E�et�>[�.ӈ�Z+s����mLj�.���̣��M�^���U����e��#��6�2��������48)��F��q:����Ͳ[Jn�=b�m��m��m���)�ɉ��X����r\5A;85�kF
n9��k�;ih��s���/ߵ\X䶈[nW4v�H�(����Y��ܼ�hw�W�6��T�o��"|������۽���g�l��,��L��U�ʍ����i��ҙ�Z��j��=M'cJ����(�g�2��qe���̂Ëd��^�h;�Ì­#�T�Չ��U���Qkb�h
�f7��8�y8�ƚSb)�Sb{�k�=)fr":�� �_"@�'�0�GZ��X7S4Q�O�!a���d�
f���Qx ��r�=A�ƞ}[�Q�\��܀����F��2��@AT����_�AS�c�T�8=zK������D��8**��X2���@:�<��X*������#��\*�o�u'%�q.�Ԩ�:r�C�HR�u�T �H* v$ ;^* v<`v$�@;�
�E0e�/�p;^w�W�S�¿'Eݑm���v�w��B�#!n�������j��P�/#����H����V�N<k�\� �.B4�W�W�����/����x;ꢎʙ��ۏv �@-�,c��)мM@�����F����T���aw����9A�t�7��~At����Li0a�E+����gΙ���FB\�e�͗�<X��e���2=H��!gK#�*@�gv{#����n��F"�FYF��ވ�� �"��rF1��m����j�ySG%>s��j����ƿ�"�ª�*²� ������� w�G�ە<��2�ەk���
2n��#B5�캢l�����"��pW�	�!,r�wEܕ��A�J� w�Q����v����rWx�\� ��dn�gM��R���n��pw��[O,�Q8?�5<�>/5��^��e��P#�Se�RT+w�;�����
ۃ����`K�!�í�$�+��{���G�i�S��,;Q��Q�8�GO[�B�۽_Y�bp�ߛp�/c�L	p=�Ga�Ms�B5鈪����0��7b(p ��K��*�v��HwM��쳷f�Лg�����{��Q���'�t�=����M��W�˛�
�=�����Y� #=��� b*�[
��'9����� �	,x�K�@=�Q�q�߿R�L3��      �      x������ � �      �      x����v�\�=�|��Z59$0ؒhB:�PH������U�<ۀ���	o��/'y3��Us֪�����'鬹t���).?��Eԍ�׽Iգ�����7El��V:|sk�˿�q9-�
۽m�����S,�'��<���h������ޓ�[�q-a�M�O�-�/蝭�b�a1ߵ��Z�ʓ������_�N~��w���w|M�`��Bo�t���#z�fN�7�������p~5������߫��B�?FmP֠����?�����J���N���L�c\I�r�r��(dBz�h�R��=?ǰN�~C����#���~�-w�����_�yAmï��'���t�����C7��}�*���lh�Y�?v:K<�{rt�ݯ�^;��'�0��j�����w=��H 3�QMI�y�R(<cZF#�D�|���o���L0����v�t��)�������_�lr
�̯H���by��Ma|N�ڇ2��ܩ��##B�]�h�y|R{չ�V���⧩��ı����zHu�c]K�HMi�"���xt_�o��}����v5?;���#�a2ǘ��aq�h�;vUH���~$u�y⪒���?"���d�S͏�pc�����x�"��)�xU4���O���Q�jL��T�d&�*H�j�����|~óu~��l��~K�m}oB;t��^9�!���Ү G�_X��V�\��,�&�gy�E>tVM�snT�����U�ۛ�^����U5�i~x��H'$L�Ɣ$
���$eL�T��e�_�'��Bh?�8�~��BZ^���aew!|x&��ii��_-
���&�ծ�O'=k���Ng-���4d���q��VMr�g�oŚ��{�bī�R���n���/Lu�F���0͈d����<%/��������?�����g��ϛ��t���bC�3�CaV׬j��W�����s���T������X�Z������_
��Ǐ���U��5���_�҈�"N�,���i�	OD�SH���Y�i��U`V��o	W\�Wӥe�G>Z9���U���0�^e�CY�^m�;���ik+U�᛾k���-ެ�b�����wo�{����Г��zzu_A�"�J��G�K�\{\D@kt�E~j��_�~+����0��4�UGR�'�uV>�a����Qiי���֚�s��hyc�S��.�����6]�'�n4������ +_!p�������jq"���B�LO(�0�qB���%��?��7(|7Y�@�-�wJ��}7X9nP��u#�m�c�@���?�1������ǗG�ms1��������1;9��e�!�T �W��:�ó+{	�P2B#��"��eR]ɤ��/��ҧ�>W_�~�'c�Zp�VwB,W��;9�sP!G����>�ʾ2>����l��e��?�'�"����w���rԬ��>�U^��0���]N����q]�DBR���������XB��ϑp�0����+~��pM�I�W����0vˍ�;���pI�����<.���-B-�c>9���2�kM��&C��Ր� ���|�U]�x=��R%U�H�0����U�c �B���� �� E��(�����ª���c��e���qE���~�6�==\/V�GΙ[�n��˭�&Q�Ռ�ea���y�"%�\�z�@�q��4	�&UӴ(5]K�(a���(�
�� #`�E�@�pV>!�z����Aw�
����E���u�RI�F8�z�x ��Z}}l�۟��d��v=SQ��G;�ކ�Q�P�������U����
�BU҈EI�&q��p��>G� �sV��_��p�����0� ��?�� eHn�׬�����!e#
�u��P��s3�Ck}.U>�~��,�{_g��}��:C,���^%e��	5T�HD,��$2�jE� ?G� �E��-�� �~�{���An+A'WV�!�Hߝ���u�r�fkxl���1�H��۟�X���M�u[���0_Z��j{���0M�I���/�$T�v�H�ƹB��� 븞��爐�v���(��^3�o�[��C�h-��r����� D��I?_�j�p����ʬ*3��b��|8�*m$oi��،���G��o|2r ����I�>&���W�
���a��"�$q��H����sd ��%���	�d�d����!
��c��� �p�u�,f��욝���6���گ�F��?��o�s���`�w '(�1� ^N��J�(%ྚ�����(�,��8V�� �{�1҆��[��d�;�7���g/|��p��5t d����P��d�:�3���[��/D�Q��hg�W�KG7Om/*H�@�i@Έ|���ë��C]j�E�0����%�8J�B_�sdHe�&����x#C�I��G��ZxH��.�B���V�_����,k�0�C*���4u~f�},�F��I��t7�w�XL��T�8��K�S�h���*D�P*��� ��RB���!� �Z����
4�l瘏>��H0& D@x�~%�����T�b�� ��Ŧ�̘8�:Q~�6#�c}vv��,��4���{N{�5Jd���^��D�搆�H$�`��%�C�4zaO"v�#5,F:��7ѱX�%�?����MKǳ�(���Ƀ�`���D����I���>�f�18�̕ϻg�4�w���^�V�d�~�Ud1n7�!�p=��#�Z�B&�OO3=�t��IHH���'	 ��d��c��!�_J�(x��p(��% �9|K,k����<}���P[�����c����G�L��J���Z=4�ԁ�b�J�5 ��U�Uɴ,�@��NA
gi�f,
�⌿�g	�|(�����TjaW����30��%��y�GtFʈ���Z��o�St7oV��֭>�� n��IYFg;.���Dc+�Zw 
���,��X���/������ �FB�pə�푳�=K�  �w  ��n�2--Ԛ�)�rw�E}��oZX
FF|�u�]�k��d0訽�a����A��I���7����9��,��т�!�+�@p� ����UA��0c�H��уf<	%0��H�� 0�-D@��|P��~�����lo��n�&�K��u�%���J�i�U��q��hS�O�1jH��m�M&� 
P��N�RD.�W��\�{Rs�@-�&q��,T�r|a�"y\=&c ������2D��|��1��1Dc��;aAiসD�:dY�\~�B_7z�n)�ᦑ�;�a�hu>~��w;m}b�(�p��
��:�ӿ �H��UB�Lh*3NR%���5���%DКj\3Z����&�f���m�jPn܇��*{(f�����V�.�.[è惭���5�[��P>��2��wo���E���8;�(%Vsh��Z���kVS"��c�	���,⠎upj��?I�8.�� 1Q�[
p���&���V1��y��[�V�Y�P^���A��Yw�n�Y�d.,_�A�<��6�Lb���vCr ��?L}�+P��1����(,T���x�TA� ,5ES��$%rQ� V4~��B�2���������_OA�ˀ�.J��OA���ٓr���w�\�ukt���[��L��d'#y�j6��.U_��[�����%�*!�P�$� �hDѩ�q��/�9J?h��o �]|Ɯ�lo"lc�iA��46�9@q�ƌ�Xe���VG�^j��~<ܗ�]2궭Ϲ���%�Ň�v��ٻP�K2�s񨅯�W %��2Մj�h\JE�
ИH)��D�n�И
Ken�>�yp�U��'�4◝����Z]��r��'��uj���87�p<"i\����~��2RvQ���Fݪ{0��KPJ�_N�R.�E�J�y�����0ԣ$�Z+/�9J>�c-�n��D[����w.<~e��/Ij��ښ��l���x%���}y�o�sNl%�h�Ѭ�    ���>��=ǿP"�-���^��,�JLd��� "�R-�@h0?��y��Q"��H,��7��n��҂�}!��v��!:�`��y���Ҫ����K�sw���1�6���f{n'�e�Of�??>��ۏ�5� �������!s=��j��\D�J�V��8�����3��D���ΏɄ� �{�$�CTg����js��1��c.m/l�P�"��.�S���,���yPzN���T��غZoi�7E�k���V��wK��P�=&����'�,�� �$LH%�H�'��Fs��D0 �G���@ip�����!X  ��q��$V9ʭ��k��v��z/���m�-6�����R��7��_�qv
5��� 
y�B�r�ӫ]�i$S�P�X�3��,�Q�|�Ea���]5o�m�Z��V>ށ@�}wZ�~n��3��Z��Ƭƕ��YRv��Rj��7ê��Su���V1���']���@�	��A�zz�rlMTI�LPM�2K��J�I��% ��x���OX@y�,\Md`����.R�d�t��c4��E��Ior��W�9���|
(���<%��!W�%e�NY���(>
��  8��
D�� ��Db�'zTdp��ZF4�+Dר�S
w�s���r�@�<����*�	w��@H�Db/����ص�Z)$�5].��4姩���An��'�������d:��~�	 ����W�٬��^K���Z�E��O�"?B=NN�ڼ��( pBiV�oh�_�`�< /�Ņ b�
�N0#S\��X���Uu@�m�6�/��`.��iST{�Sw�������f��)���0��)�����ӫFQK5K��H�~#��I�����%b��;�Z��f^z�;�Jv�-�pG"�[Clw2/(�ǁ�ڄ�h���~6�V��e���v�I��:K���\���G�{�B�0�*�B�m���^�@UE��B�P8!k4R��՘jɋx�1ώ;?� ��� -�;���y���	�4X*�p��nU+�u���(���?0��,V���������Q��f��4ʯ�@��{%`�w����+�<b�$�q*A��QQU�����(�xŭ� �Q���V�l,�q,�����'u`tV6���lL��?6��g��������:����ح�p��O�g��; r������ ^N�o"@E�4��u�F:Y��T�D}OQ"�'� 濥\����Z���.@��� �� 9a�<�heu{�Z �ކ�r���n����\��`5�zfb8o���{�^vs�b�@pR�r:>�G /�W"g��T���5�B��fIJ"
 >E� �1�]�X��@��� �Vrd����"�9p�^tG����,������Ⱦ�x�������{�Z�#���y�����=���U*����^�t���r�1J�Tׄ�Yʅ)yOQ"`��,h�m΋����Liy��_- �$���ѯ��6���=/�L�����dlV�l~��n2�Cu�h7q��2�M�� *��@��	���:�����L�HO��$R%D�( Ѕ�: +�wi-�(��Zx�E� ��T��XXȹ����<�q���~1]��Ϫn9��qy�M~�Ke;'���@��W�JMԹ��_i�jHb��4a��}5��rCy�� �k-���-Z�9��g��XQ���m�n�i�{��G%�h�j�c�4��I��+��-�Ff��Y'�|��-��M�
����Ay�xzmQRx��3B
p���B�E� ALx�"��D����@����vJ8#�2�< n-},L�b��d`}[k�ڻ�>W�5~V�wcsZ���V`~�%������>�B��U�	�����)>�E�JC�Q28�1U8�<�"��D@�t�κ蚿kc��|��%��x��Xf�>l>�϶�Կ����l�����>�����������~3�Gk��sS��_uA����^]8�����iB���
I")5�	5�^�s�He�m�0���w� b	�A�&�m`P1A�M�V�6�	�����;uQx��'��Z���tb��ğVM{*��A{����7i�w b�Jy%�-<x9��W�z�Sd"��.#��4%aJk/�9J��@E�X V���@����*�We ��2�����N!
3������,3�]"=����6��>?t?g���_8��J>�?���5t���.#M�;��T2!�L�R�U���2J*U]��|��WD�uKc�Uͥ]bB~_�����{�¢��U�w����7w{�����x��� )mG�>l`����⳴�����C��1� !X�: ���	*�t%�d&H�����\�9�*R�/�IJ�)��ǒ��i�F�X,Vt���m"A�{��v�cе�]���(��q9�w���V�{:�7��`�W6嗣��?Z�O:���}�P�H�J9�Z��ӫ�4R�f��r��Y&R%I��z��')ۈO5�aU�󁽳����&g�������`� j��L�W,��k��=��Ec��j�~6�j)M��[~|�(���_xǢ�Dc�u��|��*��
��d4Sd�X�T�J�HDJ�N�0�ɋ|�����4�7~xK��C��䘌�;9���t''덼!�ů�)A�=����ڕ������2��dp�ۼ!��}�O�C?	*�>�;��H3-�2�h,S��T�CUՒ��ͨ' |�����!k�o��z�K-Hb�+1�� 
;_-_��S�y���n2�t���Գi�4���v�=���b]��r|^�?��=�6zI]�TZ��_���!��	�u�)��G)�3��?I�خU��h�3 ~&Xؘ�7���1�l,���6旊�������_��q!Y?&�wC�f�gkx���>�6G��A�:>(�W))z-���ـ�1��`��1����а�C�H�$D�ڢ��,���g� ��v5!��WބF�C��mb�Ӣ�Mi�ޖ=;��ԓ��]u �al�T�KǭЈ�O�I�@z�-R�������H��8UH�,��K�������3a/ʓ���uD�.��~���|��|v��� ��y��(;�ֲ�C|�G�}g���>u�l�y�,�؟�4���LK��n�=��a�*�7��;�r�������D	�ARa��"�C�(����<I�\ ���[�g�#fGUMPrI�`ڐ��Us�10Fe��z�u�d��i8�}M?��;v�)R��o��Y�P�|���]!R_u��{����-L8\FA�����CN�i��)/ʓ� (k�Y `q�Ib�3��@cE�D:�>����20�??��_��/���:��Sa����-54��i��:�M�q(l�9���s����
�����_�0W����jDH�M#"J�NA"�Q��(O"����hi���F\�.q���\ƶ�Jc
wc{���mO��X5�ޝ@�{���Lv3�ܤ���pf�A�i��{ ��A��G���Za7� �t5@�u-K)v�05M��Ey�qcQ{V��w`iy�����g	�_3	���kK�1À+��x`�~�*z7}�GFk7MN���o����EZnx$�;m��T�0�
1���W���ڭ�T�I��I*�&t\Z��#�H*^�g	�ڪ����,�b��;���t1�(q �_�A&ù�ļ��%�Z�j�_Hժ�-����zu���t���ye����мP�gq��]���Y@��8JY� ~�}��r�&��RM_�g	���j��Ē���T�������RBo����v���ϵ�)�k�?���/�oˏ�=<0�*:l�^|J�J��fu/D�Cث �������N��I�,#B��P��C�j! |� �<ؾ-�� �oPq=�s��\;YY�>������y��'�e�����N�Y�%���'���l�<��Qg6���V�|�	&j���)�T�N    �	�MWS�1�R[qU�(�"�}q����6����������U�9f��"(;����q(�l�.w��':kz�f_X�wv�yPx���-��ʿ�!8Փ�ƤZ�ӫc3"yb��d!�B�SXfa��(�"h=uX5���}��X}�#�J\���KL�c�!�������lT�?�3�M�����{֥��gܲ޽��Ά�E\�|�>��|�������3�d�z$�	5e4�4����"����w.�_8�	������E���o�{&s.�
��fW�VY>�c%J���,8|G#���ڛ�U�U;#��Z�� 9�4FH�^[5��E��kI���y*:*d�߳tH>��4[5o��9�#��
dV�ckz�<G�cL�en´~bG����L���bD�ӂ��d�[I�þ&IcM�����{�t�ќ�����wzMGG,-#�ւ��R=�5&�"� |����]`n�H��ʆ��Ox~�sS�X��}��ޙ7+|��!����xY��<l5�Fn}������C+���8����HbH�
��]C0�S�%� ��C$Qb�,"<�R}Q��B�y� ��`x�H��9>yO�<�ߙm��w��:��ٰ>�Hm�~M�jS��ۭ�~�=U�y�o���S+b�s��@qx��Q��^	�� �VM���ma�P��K�8A ��B�^MQ��Z����w��6I���\vVv��"�k9��{{��M����s;��^k���]wD[c��]��ϕ��{�����h�h�?�?c��X�x�D'"�`LH����$C�>K�TV�Ha��պyN
�>H��Db���=�8����bV�Q���0:����t�Z�a���!g"\}u�q���T0�g-�3Y���8���
x9���e�R&�B�3��B�%����ڋ�,RO֣��������T�_F��X�Z9�`aC���/
�.��{�7{��4>y��AHk�;;;�f%\V�n����{
(8vZk��a0��+���˵(�@�p�jYD�FAg/�DH55 ��a�����U��奦��1pXA�UE���^�e��h1��������>Գ�[��kH6��m�wޒ�����񔯜�ر ��*B$�����4�2�!�"�EL�D����!դ���'\.�;��}��l����!ܒ���*^=�m�?�[`��f����v�l�%�|қ�$�����K�3;zl�<��a����x@W�k{��^������7��,gRS�X��$QX�DH���G�c�_E1�H�������T���KhKg�9|��~Y�����z�&y��,ƹ�M�h�٧^�}�������}A���J	eu�q��k]�6)"��)�EOi$���2�=K�TEUw�8������!|�t�1��`��ܮE��D�	���צR�N���v:�Nn����?'�&�it��px^��7�y/B$��њ�R^c����0��K�*�LQ�Fi�jI�F	�'��E{�
q����s�+|g���N�Ai����@�A��}�X� ���׾nϧ�j`��!1��{������bhv�����"D/��L�����Z,x�R�@�ާ���$z�e�` �^�'�ǰj2Y����d�p�����_B��Cw]�$���G��,,�'�^�8�'��s7Ҟf%M���KH�KE������I�=�:梹��:}9��@�1 p�φz��)Q�2M�) �$�Ī�l� �����3!�b][S:]�g��'�%׉�&��b�N��0��﷟MK��c�e�����<J���C{sS���>�:��~���
 U�x�X��Z�b&LO��xў�Cg�<���7��2�	��F^|J�v7 �Mr����/j����t��h �^u��ҙ'��78����x����|ڝ��=�*�$�%i����^	8��0� �|z&E�ej�'�Β�E{�qܹ�"8����;o@Y@g p�뼐~4�m-l��1��o���X�f��VU/ɴ������{eZ��i�[k?t���	̥RJ$}������,��R�p�e��JHB5�L��E{���%5�s��7�s�6�!i��A�@��0 �S�4��,R��Ni������q�ig���θf���~S��f�Un���\�����]�+����J ��1�� ��$рD�q(���J�+/�s�(-,��T�I�{.0|����%c�_"3�좕Z�6�0�D��8�����\�ǚA������TO��6	�p�d�0�P��J�� � ��*+��_&Q��PI�k���%�A�B�h�Q"첶��3D�ۺ,�S�ٿ��\B�p\��R0���U�	(ͲV�|���m\�Z����Z̬V_C`�^�v��;+��=y�/����'��D���^벸�(D�QD$j�+!�����Dً�%� ��e!�7uYG����}yiM��8DkI|wQ�����NQ���k�BX�d<�lN�#�=ǳA:l]��h\����t� ��6���\��W"��8"���؜$X���"B-��(���?G�p+/j�	s���7
�հ��$�Xy4&�(�Nd��
۽�-	��j�	n~���HTaw�O���h�ʎ�z{��R��J�;W����g
���f�l<k���Ա�J=ҸH��9J�[U�Ts2;7߁gM<P��Pb:+0.�w����!�Xe^��U���"�[T��OKk���]{Y�yԅ:��#i~v�� bu9!L}������r�%:����!��%p�����Q"�q�.�E���Ңv>]���ρXOX	h�yxK�a�`AkD�NV�r��W����d�q�~����h�=���x��P�|U_����H���5�D�� �
�H�)p^�#`� |�m�CU�{�����w�Vu�=�o>e]+��ᬚ@i|.��	�?^W�;�d��lf�L>�Q^%ﲹ�ݯS5Z�m�C��PziBb�v ߻��c�
.K��| M���<E�+ |��8������7}�6N��+�;�1��� ��ePBe
?R]�v��#�6��i���6��;��4���&o�^։�7�3� D����t.�#���k2Ar���Hu�%V�P�qb�	��Z��?G�H�<?���&>Y�n�\>-�jz�Ľ!�E,^��>�q� >�ѩ{�����6h�zb��xZ5������ylf�9�	�R��읫���E 5Z���ߛ��p�a(3t�T㜃[�#��Y��?G� A~|SB oߔ���v�ZY��KY�;}l�#3��CY[^>�7q�-�����Ӿ�{�G��y1���]���1ɣ��+���'���RK���H)B��1� &g�fi���E������W�n�0W����>� ���q�>v)�]��������t�ľ����?i\ٍ����|zX���{�4��Bh��ǐ��Z��āY"$ѥ1�p�(�J��E���:��m�8Xl�[�u�q���&�P?��_�Aɝ�Zd�J.��R�kh�ɲ�s��i���9uI�P�uZ�S�:i<��a��������W)La
�Yh��J�aE2dL���?G�H���!�6q��M:ӆ�<0��4}�I}첩|��<�3����e1s�Ϲ7p���}����Y����=2�,�e�4�C�kl� ���(�Wr�N��8K�&�J2�@�<V�8!1�)�P�g!x?y�/�w�W`~`�MlmǝI��(ႮU��J7܋���n�|~�R�}���ƹ��=|�_ɇ\��c��sj�^&/�\��� �?�S�s�9�L�8D\s���cLMS@�9RD�[d�ʻ�4��?��&��B��rD��d��-���1?Ms�D���ؙ���(J��?>��)m[����v,{;��;�%%-�z����U]Weȥ��04e�1F"PČ���s�.�y�ލ�tF9)J�
19w�EnÇ�_Vԯ�V���X;2�i���Ʀ�    w�qee�+c�8��6���/fo��#x��vu��f��^65kq#�K�걮�R�#\O��$� ��@�8?�9D���VsG�@������p�kgFˋ4L��8�"u�'F|�
Oi}5X�=o^g�a��|zd29�{��pn�qB<D���<�ƪd*�85�E�����Lǵ�OR#vn>��#���~�C���A׬�_�隸G��jw�c !�r���۞w�A;�Z�Qx͸a���{��X���~$�v����p���R�`����B�)Yr=Z���$�B�F(�	 �$9b�1yD�<Z���E�2uj*\�lMix�]�]Ek���/G�Y�v��v-��T��;7�֋���XZC�*������w���E�3�����:��9W�R�2��h�L�R�1"�$=��1x�q�� �r������5����x�܂?#�vr�h嵱���J����|3�?K�3��]o��]Ey����s�s������꺬����J:�It��!���PW���!1��')���|Aǽ��=�]�)��S����F�8l��&�c5.úI����~�8؝)W|��u��qv�vg��n���c�M�;qu�xU�Je��ӫ���x�xe�
�TIS�i�� |�$q��Ƌ�F�de�c<6I���T��=��_����V�e��H�p�Y	-6��zk�ZM�+����]��Q-��!(	֩R���ǹ�פ�P�4��UK
d����T�f
%q >I�����q���v�EOй1C����еXP�lz�w�t?�%��ݣ#�ٟu~>�����xpn��gcq����|
����h�*���A�\O��}�lM�p�)��U�g��2%"���B��bݼ,�AG3�F0�� w01Xa@)���qq��h_�������x^��a[�ew�u��$���m)U&��jtb�����{�?�\�]���k(V�XOS7�
���4d�N�8����9[�����k��QW�/�t�����fkT��FM��K�B<]�f;��Ss=�t�~�m.$���I����e��k�:�m? ��4xF�z�����\����81�;�Մ`���D�1 �$Ir�^g�@of�H\&H�.�s�޲���)l���]���$���ex��>��9ښ��������l������C�̈?;��PY~ 3�ӫ$��^p\��jB�=�&1��E��$yΞ����� ����Vi���Ƈ$\k3!@p��uJ�Z���J\�>򶖝RլE.vK/+�E�3>��F��f3�5M���c��{).�uQc������,�5�c����\dDj|�$q0I�X��v�7t�JVA^ i���oa?vcnU��a���P�� �XR%H�.ʏ����f�tf�h��6m}�#;��2,��J��X��^�`���.UMdFM$RU��3]b�s6�_��`����t���,�r�ӌ�����=�e��*�T�.��Q�9>�����8�+C~������"_Jb9�k�L�h�z�A��D��[-��� fd�0TR1�Zܑ�Q%�	�>E�\�:�������I���x��S�q�����ɀd�.rU���!�WŚ�;�[�W8�-[��xR�è���³���T/)~d3u^������KSdl&ʰiSK�s9�\eރO�$������>�=E����F!�1�R�vY4ܣ��¦C@�.�G�?�(_�"o_ߚ��������Ruu}A�a|�m��� N��_u�,R�����7�Q����X�&y�G���^Oz�S$I���X�pL��R��3���pq{��LrM��ޔ�I~��}F�	�ƥ����v9͎���vw�V��6����!(4�pO�����Z����x(�!�K�0���h�)(@�)���c��A��j��uA��Ȭ�z��	�]6�"|�YXR�}m/��c{x4M���?_���p��;��1|kl>��� F(��FJ���&x�)n�R2�
Ƣ�P��dί�_I��n� y̯"�Û1PA���}�Sฎ���>:]��Ǩ������+�ם���������|u�I!�d�6mo���at�?��}(���$n�	��MDV�����U��-��}d1DgU�"I.�2�M귝����X8�I�
��LN��1�������Ep8��ro�i&�pLw�[4ڱ��O��9���<��G�G�|�Z���^��2�R.Z��21SMx�u8"�O�$� �qR��w&����*R�%4����� �O�fyCi3��j�Z_+Ά�����&5g��M�3Z��*���q���}����A)1�h
WD�_N��L� �j�0A!"�aZ!Uh��q��O�$�`�<>� �y�`Ɲ���V\�R�8����{�8U?���]Ԓ����nW��YkT��c28�A*���g�e��2���*e�� n� �+����zd�&賸�%�Hǂ-�*'qd�9+�/>v�]����s�����O�A��Hq�1�^�b�z�����ݎ���^�^���u����mm����t���{U�#LQ�:��頋���H����P����E���)�� �!���o���1��URX���U���.�Gl5�]@3�ut0��伥F�����]��z�z���w���2�/�4���Gj�a���j���q��TUl���(�e,�H	H��,]� Hk҃������6@p�_NW>^z��g|��u�N7�%3��='k����{�ژ��JN�z�Ql�n�Yu��l�t`="�٫�������E�B��$��Tp�|�%��e�f�%I*��Pc���4#���:[�t�l<u�=��'l�,cT��缵���U;W{[��ӽ�L�ʴ���߇厗��S�#x!Ժd5�����k����؋F\$��'
������U�+	 x�r��ZG㭁��J�2X���b������D�~����u�]�pf���1�觫Ey�0��&�(<vZ��#��rXU9�I,\N��=����o�$)�bʉ`R �ϒ$�l����� ��<۹����xX�j�.;��S5�����ղ��:��NӀ�������t�S����W�����t4�>=(uL�-�P�v=���Ȑ)<���B�)�Nd�t=�U��<g����P\oCq��Uh%6��C����@����Awኬs���F��Ҷ��熡ߞ�ʩ���Km���
��gZ�&5 B(ֵ���8f� �Q����(YDb��$M����w�� ��0��,���Do��V�y׹���2Qf��|�q~���G���K����>n��������Y � +�:o�9A	��g	OC�K�#3)C��x��� V-��)A�RD�qq�>���-"�l냛�~4me�Zb�^d��ٱ�\|V���(ߝ�r�?w�z��x�M��Wɀ��h�_F8m��lO�Z��ѥ���Z�6�4EL�Aǈ� 8��tau�K���	w��Ru$�̯��ٴ D�p�^���2����x0	N�g1��X���3���J|�h��&�\O��X�d��$�R*t�ꉌS)�Q�a��i�sV�#��[s��n��q�V��U|��|m�|oxy���E��<��@����;��U�=Gv����mL��T��X�j���Cg�d�\�������8��S%f댔0�g�H��4�. �4Ab�t� ����PƜ����� �I�k�M,~#�7-�3� �	��ZZ���ͥb��o��u�/�Y�[8
�+U�< �щ!k�N_O��AMS5Eŕ�B�TF�)�J�s[���	\c�r�qS|ٝH˳�-��eg1Gr�Aa�� J�'��z���V�n����Ǿ��/2�z����}8wf���l̼�v���+��z��81Iu+�B�L�1̲�eZ��@�i�dX��B�Mr���"V��#��U�ŷ�≰s�QS�`���j�O���`�t�ZQ%`_�/�,zEY6���V�\~[5�    ���I�z��A]U��<�L�LD2M��.5�p	>M�Lז"����R�Gm\��i���� ����-�WZ��L���sZ�����;)ƞ����$$��FW[D�e���U|���#�WEPM��A<�&�i,U��X@�45�pc�,� �4A2yA�fL���+�;d��O>&�q@��5
�	��w�in�j����7�c�$��������aw`�U_����9��`��1���z���+�Q��$J��0��(��)����>g�z�,L>"�[�~�+8�%/C��EHL#���lW���w�ѪO�̧�6v�Ӻ����Ñ���s��;#x/����m��6��;�AX�ꠊS[��k����H�%
<QBE�\Kq؂�L�<g���� "�������v�b��1Xb�ns���
�M�Z:x�r�	��i�i4 F6�k��c��>i|}����7��W�SU�����kjKg�&���4!h��2��f�T���������"x[Ə�݂^����3���zl�%��=�{���߲���H�Qw�\��p/�U6ۙj|Y~_;Y�|Lf��|X���
�VUꮧW>�[�!j }!��R��Σb����������`�=���s��$�����\�LuY|m`sت�p�L],^d溑�e�yJ��δ[�Î͕l2��%��8{}�<�߃���J���A��Y�
��D`3<�Bp5��Hu����F�֒%܇ ��3({g�)���R�l�wq���j��c�Q��xcZ��[-�����w��d��0��pޫEP��~��=�<��,J4��"�,��2�+�U-��I���0Am1������%�|]�f�ΝW���X�o%�a,3��{���U����d�	������1��~[���(���RI��R�"���E2�B�q�0���I����֠�է�������Kv�g�A��̪��i�(�x^~��Ύ;��]捷7Y�Hm�O�Q���t���"�c�F�� Pg�����S��<��Tc<������4�];��O!o���l�ߧ�K�Ǵ��h��)�Q1�X����~�]J���o~���̚m�����a��7����G)y���V�࿉�n�L��S'~dje)���3��9{������R�����V����q�*>�!���y��G?t���)=Z���)�����-����(�����7�NY�����W����1�� �A�ai$d����1�g}�ݫV�+Mu��̌ؑ{�_�GE,�����A0 R5TD��0Pҗ$�I�$��'q���{�l���MP�;#���r Wȶ͢�����������G�qɨu�D� �1׍ή3�����0z�Mݹ�,�CP@F����." v�Q	�K��R�q�8����?�9N�%���[i���Q����p��uR7o�>�R`{]ql��Wf3C=�2��s�-c�3�~U]%�|0k��m=Q��?��YE,�ګ���A~�Ŕ�H&>���	,��H���$��<Ǌl��HR�n"��:��+P��A������v�5۹;w/V��Ri���2�{ɹ�R���a[빃��� y����M�A`��U��&!���HI�-�C>����QD?a�O% �4N��CUf���l7p���|,!D��TE>�Z�����:�C��,C�s�E��}��2��/�V�����i���x�{���|<"��Ų:��5�PȐ&h�!t=D�P�4
�r��S�4Nҫ�%�z��{�dwzg�]B�R-����6�(R`m��L�+�[�}��}tW�������N'�l����k�i��mo|�LB��
�	V�Ip��$ �&��&� 0Th<��3&c>���xUu������E��N#�O@p���rh�<�-�˫̨k�m��>���ן�i|��'E���v�&�Y�:���CF��r7aF�)���c_�I �Cו�c��a�����qȨ�c�^"��`U"��e�h��B��р�d�u� �4��&Ε���cqzL��y�i6�Ӣ����pHǦ���1|y���wZ�aS.��[�s�V>%�0 ��]HP I%��{�!;"8��oh�y��l��C����������K����Q��"�Uְ��u*Ng>iN��i|��&���C�vk_ʏOo�=��D�+���W X�^��B��;\��'}�$��b��>��I�SE$fZ�ζ��B
4��R8��d��-��j�y]�WUX���7fߔ����[^�-ع�im�m�:]�K;p��F��1�JӔ���~]�Ng�p64�&JH>1"Ne_i���q�ʹNq;��cn�+��
Nj���p�ېAo�� Θ�������|P��0&�֚F���R���m�;�"I6}^���{_�� d�RF�=X�^�IBƉ��SK���R��<m(�P�0|'q����U�7N~��\���F�>0�{�;(��q3uq$���e�.�ֺ�K�V;Ҝm���Q��l7���g�]>l�#�Y��C���\�V�9Zo�A�
<aF��:�i��,�}�){�`U�@A��*g|��9!�u���p�ȍ�d�]��ln�J���S�nN����y�fM��A<���Q�T����$l߿�q�v{���i�,W�U~#"�H��@�
�ƀ����NT���$�@�=��i7R3y;���-:!b�ݜm�I{�.�����DNRu���F�J'�/�|ڝ[�����O�4�Nw�?���隫��p|~���G����5�~(HY_
Cƨ�AY���0%��c�^"(*2j@pu�݃p��mo���f?��]�+7���j+�D�Y��?��!��v��Ԏ�w��@��S�'�x��/M(1���ӊX\�����3���@7D�B���)O�"���=�_vDp�腃ӅM��V�K+���g�����Lm�l�4��L���t&��?��؆���^�|����r�����T��=�A�a����;Д$Z�JJ}AT�Bi(N�%W8T�cvDpZ�y$��Σ�e�V���"g�)��o����Sn��E���X����CM�����}�����s/�V{%ǟ���X�!��R����{P���$!@DR�̈C 1"H��gq'����zc�v�R8��>�mʦ����Ί�&�ݬQ@�r�k3�^8L[�����F�ɪ٫�륈<�z�����3Vۋ����{(��{�\���%4�`�� ����7t) �Rq���<Ǜv�*��R{�oF�ZZI���"�	���A׿~���{p�v�˖S��<U��W�\=V��\�?���|�k����X�S�P�A�?� �a�1���҄���Ȯc�I���� �gq��~8�=��w�S`�b�ٹ�dR����o>�ߣ�����0T�AcG����.{5��Ǻ���3��W�|��>.����Q���HYZZQΪZX��ku2MQHe4M�GD#�&� �gq�ԭ�X��O�F���!�) փ��j��)
�zN����վ~'�TMߝ���ǽ:��8����8�ok:���~Ȩe����X����X�,�<�q H	T2�,�#�"M �,N���[���?�ی��Y�{�߼X	*� ���9����x�[�r��/"���p�=��8=.���vƻ���|�'�\޳}ҺG�@�-F�+"I�z}q�J'q���"��0d2Hb�y�Y��>ǟ+��w[��om�:�3-��N��p\�0j��$~U��XE�m�
M���-u���b��"�σ�f�;M����I*R溬�կ�rlP_�җ�f`�� :�@���x�!�y�C;"��x�Ê��{1zâ}�UDV����؈^�|b'\�zδz���^�<��L�\���o5��t71���}�×�pIǷ����PhkE�$>d����=��zd�WE>{F�F�P���$�i�[h9��"�� �e��h�m�������,��ל��u�֛F�3k��5o4^VK�k|����4|
�a�[�F$���X�6^�Fȣ�    u��!��z�m��)Uԇd��% �$N��⵳w���ou�[��ւ��ʱ�ܸ����N��p�6�Y���[��8-f2n������{a�H>���>�/\3hN�i���!��j��
�X忮^��Ek�����"j�%?&�8��|'A��
�
����2�!��͎{vN?��hHp_Z���9b�Zϸ�Q��/���}~4��ssF���sk�6�����iy|It�ep���p^W����\&$�a,d����-��(2/cT�y�Q{���i����i�e�V���-����R�'d8�k^\��U��4���w���sc�u>+�������4��h�a;'���_{DP`>h0�p^W4��(�Dhp��H� ȉ��0R!�I�s��A�x�F��o���r fq�;*�{�L/����0�e���d���ǞNg�q1��U�G�M��t������T��w2R���=j^W�}3a(4��$�q(?��A�$ � ��p�3d&�f���n��{e-Ɯ�33��fZC�]�*( �:Yl�<t�Et�\pӗ�Uoo̓����bޞN��%��W]u���:n�����ȁt�����z=�D�ԏ	1�����DZ�1]RD�9��\=�ݻ��I��Ś�Y�q/�ӳ�w���X84�^�^U6��ҫ��o�O����G71ٞ��c�H����xi7ۧ{%��c?��\�u���g���(bIU@iA� �Nr.O��)�^տ���+������)�8;h�sv�:4Y�M֒����}={�M��g�w֏�4��y;)��c��Vk���6��;%-]:�n<J�_W���P�/"-HB!|���U [�����>Ǯ+zX�⦇�d��[Zv�cM��g��
|����{�vZ}�����w;LZd��i�S+ʋhުɏ�K��d��)��]�^��?t}\W�]�74l@'R�@��%�Hib=�C؃��k�̹u����*zy1�}��;ӲXJ��)v�_��bGn�ͦ�U��y#�6�tku����]�m�V�������v�>��aE�[�b�W�����X��h@6#)��:A��@��A,~�a{�l#/y؃����Il��}��E�3컱�q*������NH���+_;w�M4f=��s����>By��Y�s�WK�E1����r{��)�/�hMB��^�I���+Ժ��&\Ӊ�K]j�� ���$hL@��Y@t�;���^��>�{�@�����`7Ҕ��DѴ�̨;A�s0载x�m_.�O�Л�i���&M{�]|�v�l��R4wV��^W��4͠�A7�n0�`�Q��%2��X��V�#���ȅ�AE�����,Юx�A6��ä�̶���������&g��a�����go�n�i�ޚ�i�M?��3��{�r�*8�_;���:�%+g�b�RQ�#i���*���p���*	�vO������)�� wwST��=��n�ږu�=Hƃ���K�BN�a����S�=��L>��SwJ��`Y�z`u���)���R	����Ъ.":�]#>��\ ;�����D̤��ER�y߈ץ��%j�d.��vV��&�uh�*1�vs�]�0��-��s�����y�E���, �@���RPq����z�$		��� �@_1��3D�D�~���$h�U�\����`��LR�@��n 9����s�i�	f�Me}�s�܏h�z�G`�_�v�n���x�f�߉��"�{4ր,�>����̸�"D]l�#��T��@���$��Yс	:��V�' �L�Q�צ"<�9v�X���G�{?���V^��񵯷��S%WzO��j�pj[=�9i6�+^�O�{�b��j�_�K%�A����$DF�䔉8� �Jr)�(	���7�ϰ!�F��u��~�`ܦʩ�+�BZX�*�>��9w�ߺ?^u��h���W͒d�M�]{@������w 
t� Z�+�`�zEP�����HP?rCe�:pA-$~�;�s|�K+h1"8�k�q��.�o���P����\x�UԜ��@�ژݶ
���n��D�Kw��>�//�E�'����6���=��T-���,W�f�'�1��a@!��Q�p���!�<Ǹ��crOu&���A��e����e��j������eF��JZ|��o��s�c�1��M
�Fj��Ym]�m��\�1:�$���ֹA�=��Y�������}�m '��Ӯ�6?ǹ\U��6���	�ױ�-�R��6����$Mm"����@�+�I^��Yp�D4�D�3���A�F��)���zz�x�hi>�_�ӌ�d�g�Z@Hx�K!T�S=J4#��� �ϡ$�`&*B1�(�}hZ[E�Ec�����e-n;����..C��uj]�Dpj��ˇ�t�99e�xQ����o��H���s<�dr�G��H �B{/�Y�&ԺsR�t������P�>��\,�VQ�Ǩ���_{8���nʶU�w�>�����.��jL+)I\[$���S����{��0v��H�[�}�eh����;�=��l� ��I��Wc4��004aD8X�&�<	#	��9��`Ѫ�<B�q#y$��^�B���a�`���{"�֡E*����Yٺ5�{�h�l�\���~\ Mc˨9}�/c���Z|����\a5�v�{R��z��$fD��SoAŁ3�O8�-~�{{� �Fн1�@�_Ez��ka6sA�2/���Sb��{y��t���Lw���`'�8�W�b����Z��������=1���^?��V~#Ib�t�@c�㤶Lh���%�>��`�}|.�q���ln�uПRbQ�L3bϧ�B[��b����_�8t9�;������p�iO��B��M&���Q�¼^��!�CP��2��I�]~V��X��)��)�']�y�@I�=�s�K+�AD��� >ա��3��� �{H5���@��1�?�Rε�|ؔ�����G���:�-<|}�p�O�O�DP�W�QCܗV�`���~$��:�~�E���)������)�۟]q�I�L}L���v���x��B�v�!��p��):�S�	��ˏt��1:Q�A��L�l��Q��q֧�����a���ؔ ����I��7 ���k]��C�xH4�	QB4�!�V�JȪ�����#��Ce���ݺ��MV��c�y�[C1�?��=~žg����D:���CQ�G�U}�i7�Eh��;����+�E�@!_�%�F��=�C��8�I|��ŀ�'
�v ��S(I��C��?ot*R8��i��t�6Q����p^L�Y�W�R��U+`��[�� �jߏ���j��]M��pZ/�~^��:��a2���L��`U����`dH��i(���	]'���%|
%AW�و�u;�-��Kk�q��ِH�T���r|�Romv\Y�P�m����G���,���=�����˅lj���O�H�#(p�Ġp�y��w�D1)"�@�T�Fh)��D��S(	 �V�
��o(����K�pݵ��cB0q):ס 5�	��FS�s���N�������_~�j���m����EI���	#�ع� �* ��ƭH$p��>J"�3�(�1!Aq>�� �u�A�#7�o͌���� �2cA����m�&QNV�2�C��b�v���K3yc�&�)h�l��I�W��:��{�����W�3!����O��1�b�J%�P��O��*��T
|
#A���H۪�o*3s��͌�X"�ԐӜ�t
y�Ey�O��Um\<�s��;�>.��i0 _�g�IF�i��x{X~4����AY�����_�A��A���cH����`�W*���?�� ��C]�D��[W�����=�C�@�5K{Ib9�S	�@r6;cR���o2�wV�?����oV��tu�֔ygc�'=��w<����x�\wz��w���Ob�Q"!�D<��,e -N(���H��a���N:o|*y]j�<|6,�C���C��l��    �;q���p�z�����h��z9�5�i?�v��dH��}ov�i9\�!Ĳ�=H�7\̣� �K8���<nh�Sk��D���0@0�=��7B��c(D���T��(���'�̱M��L6F����7n�kӾA��s?�|���=�w;�I��2������=�	�^��$LO4��~���F���Mp؍�&���"$���x�6k��^��[xh��)45h��M�k�� �V�aXZ�]��˅g{��<����ݦ�a;퇛���6NC���T�l�w 2���I��C(��^�`��F2�h�ٌ�t_�)�
x��=ǿ�D����7�LΛŦ�����p�K�s�:Ǽj+���L���sӪ��2QkČeS�+���_ˏݾK�qM���-�������D��E$�cT(
�����H�'hM%|#I�����&�e�j��d~����xW�ɰ�Mn;p%V���c��v���n�hO[���)d�]N���[����峓m�G}��QV	��`�$
8�!O���*Q�����24	 >������D -gu3���(Xh
��Ѓ�2�@h �H[��UQ�N��t1�D�d]��U���͖/Mo�5U�I�B��a�H/�� �X+^�uj���$1EB�8���E*օ�|!)DKoDQ[U�����h/���N{�m��㭽�y�;&���I�:4ݬ�̵l�Z��4{�Ԝeúù����i���oA��q��)�ȧ���+`Gy(�@����\I_�#N�P�5�,FR<�t�޼t��F�Za�Uq�����nQVU��4E�?ST֧GNV}�+�]�o�_�q�3ٵק�2�TR�i�t� ��K΄��
���8R�|t�F$\I�+�g��� �g1�`�������t*���[�.�95Z��t�D�j�UI��W2Z��i��im뗏�n�~���*�&��׹?��@��T$3���`,
%�4��H�4���%0��ط��GV�f7�XF ^��=k7[䟱K��d�(��]��UT�AGm��aT�v¯�w��v��hm�R���LN���i������*��Jd��aMA��A:���f�*����Ia>�t�:7�LX�&.F<
V�u��(���75!DO��U������z�%km�����������x8�Eߟ7�a?��s:����d_uj��Th"�c?�"!�46|?�R��;�g1�b|z,�g�Y�[^]��dm�ct�G����M3�җ���g[{>��$j4:�i�ϥ����aO	�En��zxJ7C5|[V (ȫ��8�L�z}eb�OC��,Dk�$P*��K)��gQl,����=HJ)��lc:^jaq�ٺ��Ei<�p ���X� ���V*X��Ψ)��I���Ș�_�oF�����>�b�A�ʫ"��{
Mb��B,BP�tAb�8���c u��o_�mJyD��a�f1A�{�(X���p�SW�ez{zN�A�T�;�H�����_�OѦ|P\��f�.�i��X���=�ō �4BJ"K���+%�pv!d��E�ǁ��Fun���!���s(��oq�u����-�r��np(�/��$uȨK�
km6]Y��W6�g�̜�O�a�ڐz��ҭ��&'X�}0�-�h� �8�$t�h����VPC�7B_�(����b��Ɠ���I A��:�t��^
w�%e&[��J������2�4��+k[�h0�i��vv0�h��?��!뼤��Z��e�`1[��A��x��WUj��4��4�?�
��5C$��	 �NNI�)ƾ���vw'��$�5�d\6Z9�-د�6�I�~����a��l���ܕ�}�&[�[���d����eQx���/�^�4����u����(����kLPa(�3�H@z�u��o�$���B$�{���{J`��e��c������J��Rr|��*,lF��0_��f��~�4s����{ذ�C�����[�f�r���+C��G�իH�b$f��}��|?�M4H�2��s8��.+tn�����JZ9�A6��V��e���q9p�����K/��}Ҷ����:���:��n��~Χ��vl��/o4Y�#(Q���Ї��u�Z�i�hS��Ǒ(	�Y� �{�9�|�`-��`E
@��r(R1�|Ѕ8L���t���XX(lV����4�Ӌau����h���y�V38��噾����f������NW!��Z��E�	�.B@
�x�$�Fc���Ip��a������:K����ӿ^j�v�0G�໔�/<W
�~�-����д��V��mbv��k�m�>�m�M��:V ��r��Zq#L��;�i���!	�>0�|'+���ȏ-������GGn�8Sxq�Rd�⥀o�d�b&[�x�K'��YΦ�hH���̛(�]��[zxI:�z�6�Fwq,�c�C}������oȐ\��΂@��%��˨��I �iE� ���Kk���$8���kl5�<��|O%���hs`���ċ��x	�1�n�b^��h[#�a7'�{���=�C6s]�y&����a��پb�&C�uHn����=��ti�L��IP���,z�95|*���Mы�!V����WV�Z�v��i���8����-&��`}�h�8���[���s|���/�i���v]�Q�	9����K��_�16��X �gQ�4|��+,�z�a����)��|�C�z>��f�5���n֪{fm9�μ�����"�pN�l��p�mOU����a箸��%A��t��[��+���/4��-
��BMǜ������#���$e��v�$ǧv؂���m�7���M�k˙���:>�⥕S����;S��ެ���S�x���Gngz��7��Z����q���頔��R����&F��zZ'"�t�wR��G���F��(I
?*������,|��L��$&3��n>f�Tb�
p�w5I+E4�i��o������\j�������%��җ�I��@��@�4�.���O5Ж�r��0F�H3�X��L�vڀ�(I�U^��(߆bH�pH ��	��-!�mf�b x��)�N�'��n{<lߛ�G�r��_�}k�j�zq��ħ`u���kP:�U�X�ރa�3`:�LABƐ�(锅��B�Ϣ$i�0Y����Ũ�0=�& ���M��hU*�{p��װ;h�y�܃��{�d���}�_Nᬹ�-��hg�x�-�[�]�Fcg�{DP�=H�VHԯl^�$u_e��4P�?�\î`#
	l���� @ �}�e��4���6CKI��$�7�&% *���k�u���m+�~��k��� �u;��e;M�<�ޘ���/��>fmyEx '(� uy/<�~W�/�� �0\|�sj��Ѐ���2����A���!��ڎ���m8�8����Vnu�����Ί�W��p:��\߭�rV��O�h��j�m�"��sԍ߿3�A��MQ���׺�/��)�����B�=Bs�����"��i&�8c��&�ɧ'7���pJ��)f�(� �X�5�m�[y��]���f��[��I[�L{�����bJ�{�>{��=������T�A�;�Ĵ�qH���R@���,!6N�sXA�AN�D0�+'�mG(�jb�0r8HE0a�YhH�5
�U���������i-6�7��\;u>��h�B+��"~>�bn �x�X�zh;����ɘp*�8A�K�hB�$׌�> ��t�jf�8{��/��D��y{�Fu^3�м�-Z0k؟�̛{��S�H��d�j���`�>f"l�t��/�V!>�iח�>Y�#((�b�VEI���)6�����JdH9��A�&�S��t��V�J[7�� L��ܢ��E��4-v��B8/,g�3VIr�m���k���*���^w$Y�i����(
�~��b�?���+c�.*Nq�z%u�OB� l��~ C8�
� �("�sXK+    �q���򖮘���h���J�bF��t��5[e:��p��l���vo��n��n�i�b��;�D���Z�����'u��Q���.���u L �34���q��s+@P� |� �c�ce{�Ʒ���`M����Q^��!�`
�"��z�a�@�#��g��1�K�;Z���K懏7���re����.�/F��a�|�tM�
r�z}%�x���"� ��	H�&4b#�����"���� �ݵ C�gwZ���:�>d.�(A��/�^ު�B/�Ӻ�����ӛ���¶��e�\�����O���Z����k�2��DDT �~'!8�}���I*b��!���*��*��9�%��[��+��;a�����`�$��u�2�n ��oM'�T�b�457�av�F�^�?����MmЏ?�~u�R#+~؃3jMbSL%�?5�9��� ��C�BNu͇��b�x���IP��T� ����E� d��Y�Y���j�.����6t��(9Z���"��{�G�����1�&�F�K�j|;�������)�m��A���1?~�&bCb`��αQ�q>�� ���`D����y(.�9�nz��b@ԉr�ֲP�6u!��Y���Z,��������K{����ٗs�ϧ����>��d�U����d�`-ֈ�В��ԓoĐi$H��=G��
���Yq���&
�ᓉ�Ý{�nB�[k3�n0[��aL2������L��S�m�_بh��g4��i������D[R��h�L�V�Y��fd/1�}�44�
}���:�����p�����(��w0օ�ab��|J=�$���nN�޹�H�gs�V�ɧ�^�iOG�پ�H��͈���~����>��F��>P�Y�fR�҂��RHPn�:���u0�'���E��!%z(I�Q�0�$�`]A�W�J�ɻW��5�o=��VZGK?Ȟ�9��X��k6f�BZ����?j���o��h��5D:(V�h+�Tc^��[:K�u� +�|!�T��_"���k׌��,�%��z�P0B���s8�@��{0�v���
�E8�}�D�k^���h��f8�H���Ϊ-O��W|j��p۸��g�j�����D����"�/��/~���`z�E��)��^#	d+4R4
�."��jX2����p>���^s��Vm��֍^T)�d���l��J9N9܄�lz��N��V�7go������Ν.3���D~�Kz��K���z�Ζ��A��+j��s�����Ob!����8��&�BMr�)|
'��݇u9$w#~�zQX�B�@�s�B.ٱ����0�U��-;�Ǻ��{[��-�'����~ݟm"ݫ���yD���F�&؍W���<4q�����I��)�ŚA%	C]1�) �N��]��n���q3�?>p�6���^��2�=���7�L����A[�F�fp�S���˹��~ �������C���tԺA��/1��_R)o{>8�]�r�X�X��&-
���8�H����=�N�2�=���(�����C�g�n��M�A��-���ɦX��6V����2�nvj�hw9�����Z��
n~>w/�ک�ەU|��>c�AU�ԒW�r�N�����/x ����~���cv��`d��`E+���:�UX)�{�lm�SM�N�BVj���$
 C<��ʱ�YsUo�Mw��.#��o�l{x?_�i�����`r���A&p,(��K��`�z��c�$�OW �O� �Zp�a2I@�)��DP���f���h�*�s�T<��=�q��ꕙ�Y]��|}��۝o�<'�Y�>L��!�������k��]y����+T�D��nҏ�P�����*� (���$��[OQ`uj8D\q�
���A�5��[��rP�����cm��a�_z阹h�X��`�m�h4X�ӷt��t����d|T�Z���a�ڳaV�� N_�R�C�G�g��#�B��".��>�}=.w����V@���������	��b��s0���(���ߋ'7So�S�\��.��K'2�N;]w������~�T�4��q{�&�A���h�L.�����k�?$ҧQ�e��:�:���SgZ|/~�+j$8������O{7������*�|,����F�ͼ4��'U �I��ڍ�c�ű��S3&K�=�k�=G��ʓAf�V�/:���++�z��?m�p�[�6�&���"� A��D9�d*���)�  �x�[��*C�֚�s{�NQ+ʝ�yK���ϼ�<�"��ZW&ԛ�y�]����W�v�-�7:����>�ߨe/����sٹPG�؂Ԁ@����������R���Ώ#�D1�\�GH��"�������-�� �	!pd��ө�?�M	o��G�R���s�� ��&���]��Go���n����w�e��E͙��A�*��~�����܊�@�5��������ڈ#�=� �gPH�J���=�#��<�Mi�:J��_�[s��Lc|����[Y�j]Hgq�rp���~k\ģ�.��2����,�V�d�?a�.:��K�+�W�R~�Y�)��pn9c�J�D�Ł�#&�հe�)��� !�Oϥ�Ѝ;�Bxkl��0p`B�t�Ӄ����K�WĚ��Ɍ?~�7���~�M/�W��Z������}����Z۽�U��ň�O��.%�n�A���3
��	f�D��@�F�EA`b����3(�����q�b������R�t�[���z�s�<�q4�	��L^�����|�~K5v��S#�9ʛ���H��z׊��Z�M�朲�L��Ҡ�q�����1 �0#�p,[W$���y@u	���3(I)�i޷��na߶�K�<�;�[�㺕��	4
���>���1�GT�(o�ͦ�5sm��6f�������U�(
y�\���l��=v�"(JY2���7�#x]����`.�S��}�X���1J�VD[6rT�� 
(�P����yX�*}��.�X��v]ن~ޱAw����jF���w1ïH�e��݄m����o� �_�J`����^�"�Ȉ��_	��)M$�4T���SXQZE�.��(	�u����Y�yA����X�@��3����lf��������2�s'�R�O�~ܺ��w�=Nǣ��g|�΃x����CJ���=�ȠD>%B��0 �)����^��p�hx���p�3ٚN?G���"%��5ڄ�����������{,7K�c��ߧ�������pK�/r2z�7f��ާ+�����_ ��׆�(�)K�g���7�2���� |
!i1���g�j��-��R�t�-V0�<�@�S��d�ܝU ~:aG-vip�|�_���#��]��	P3��o��w���4J����D=�������7�c"�cθ��K|
#i����-��Ѥ�[�l�sz�6�t(&o6��s�����y�!F�K��Hmd-���j�S����a�:~�^z�W���w��q�~�o��±CJ0��a^W��L�1=T�T����A�"ƨ�J�Oa$�`j޻�#��v���c��vk�!��v��9[���1��G<�b�*oAF2����l���s(����ךdn"�*�|O��8jk|� 0�ҽ]���������2�b*���.	q$!R��x�/�����l�[�4��p)���z�b��A��8f�#Ag|��Wf�ba��N�<��������龟��B�_�����g}h������1.�^� �m��NP?�$a d �C��(�����#n;^qJlc�y*��썷�:(����I
�N���|0D��z4{�\6g/�|�F/��CO�~��5�M����n�V,��|��w��|�T{��#Ճc�~ǁD�����P�����s��B�c&�]���6���VǕe�u^zC6��xy?3s���'����L�����fm��ﾎ����S���ͨ�B�;�1��}G��M�r#�
��=��՟8    ���*R�G�b�g�e�3�L( �>��KT\ߴ̔J�N2y�4�cN�q�N��b�2�|��S�����Չ��pXh�&�җ���k�M��?"(�W�그z���i�I4�K�k�Q��nB]J%�D�q�9|�D�~�Ko!�ܽ���X�p�Ĝ��Vv��^�J�2|�k�jN�prz|���� �5�ZM�Ƈ�����e&Ǜ�~yY��U��"��B &p��|Cш$	�c�6��S�WK��v�A,��2��ph�9�nnB6���t
�ާ�|z�������͔�d��C��vת5���HT7[�N�<,�9�G��/7��I.�s���F��f`p��iHH�d�I�"�S�WK��>"{ͼi4�^��b5��*�L��Zh`Qś{������[����k4�o�Z�Ho����t��>���%,`O~�!H	��&������A�D:=�`FH�%Dh'�>����j�O�Z��d�r峉B򩗛�b`'.��u��8�"��D�����bf}�o���R���<�=�w�ˑ�꼰���~�_	J[q��ׇ�@�u��f |`u$�\R�&���)�W+[%�7ҍn��,��٦l�qz�u`���l�F_w��++�6���XњY\��n��"���c�m�ў/e#i�^�A��	�<f����+SP'I�DP��
�}�I�� � ��0�bU���om�Y���t�v~!D��q�>Ŷ�a[5��ɶ27͉L&ܜ��o[1���F�N&o��e?X�!���e�Y_�#(�Xj�TmA��R��!$-�0B��Z�/x�GJK#"�!?E�
`E(F ��s�=�-q�ĞO���l2Hp����	
�ԙYccp���GNyȷ�~��t�{�'�]���M_� �W�3���
?�?][�[�HL�PQ���13P{�C-�CIPG�^�l:�˝�*vfq�AJ��Qf�����$��~�a?��W��Ӟ}�V�l��ǹ{L���m26���X۬5"��eZ��!h}���L�_�ֿU��z�B�� ��21b��H�(	-���<E�Dpu��V���\j�@�g7W�A@��������ƞ��B����j��<h�i?�lh�\�� f��{�����-���A�t����M��"x]��:��HQ�0 L"�G���*�#�`2�J��Z\"8�)z�dc�0�-zr-�#jH�xY�vf�W�(�B���خ�6��w{������o��S�7}�=ټ�e�
T���2#{�z%u�d��J�H���I�P'c�>��H�~Hf A��)I��܁���i����k�[�T���d؏����U�|����n�Ec����1�$S�C�]O/÷�(��nz� ���h81�� �_2�(Qď�2
߫�O|�"p2JB��)��%��{�SD�`��F�Y�A����L��Z��~K	�{�	(�+Q�<�L���FM�V�L]�퉞\B�m��k/�otN�k�#(�ׅ)&uQ����u�B1�x��$��p	�W��b@�9������ݞb|P�ל�V �PQ9�
��oqV������$o���Q��s|����x�e;˪�z߾����y���S�A��JC��[8�U̐L���@�ņ��D�
�O�_-��+�A\�+������ ������f|��rj�u�+��ʗ����N�ˠ�:�t}�>��S�[{�������V�[�a�RL� ��ڂ�WD9�1J�򀆚 �(AUę�=ZJ@�9�D��b�!Nk����LRω�n�)4�a�#9Y�y�~@2S���
��U/sL>-H}�z���:�|�F���zY�~�[,9�GP+-!��VmA��0�j2�	0��쉱�#Ё� ��!$�}�������VQc�m�܊>_,�
�t
�G�!��*��/4����Wg�vbW���v�o����v�q4+��R,J�4F�
�'k���]���R� �2	��kDE"��H�!���jۙ�lt��&T n�I�l�A}�9Ɂ���C|ǽ,h��T,��*�k�If�ѷ��oAm� �i��Ʃ[� �8�Ɋl�\�>+I�$ј @T�f"*u<��a$Tb����8�3Ö�Ͱ��,�k� ��k��q����`��vQ��4���M��l�������O�� ��i����ޏ��雸C�i��4��@�\�6Rʥ�I�m	��ȏYD9�5���9�읪�ݬݨ�C�R�X�o�h�x�>u��{�Q��eeYa��ϴ�v@:���F��� g#ѣQmP�+��xqzDP0TB��W�-��G���Ki�BO����1�I�	ah2R��s�,�� * �ۺ~o�zg�sq&1C�SSk>K=,�U݃f,�k���Մp2:~��M���ox/��e�����9/�:u����� ��W�SEi�<2 �(��>3�/eF�i@�Y��y�H�A��iҚ���*��db�¼�4B-[� ���cH�m*��L{iM,�&��>k�e��Z}#���E`س���^���
�W%�{�\����:S�*�/=�:���@�F����ս:@� j(�M�uL�8���K�=��5���s�;���zW�<d��׎F�ü�y@h�;�ݾ���qx�ϵ�.'#�s�)
rWd3��5TX�:�	�P?�,�*����Q��)�W+"	"���Qu<��u-�ϲcs=w�F7Mf;��t��{�?+�1���пø�����N�&�[��ǅw����=��W�jZ�)���$N�k�5�гX⃝&��8a�Ϣ$X��ڃ�M�[a������W=5,�\آM࿆���e�ue$9o����N�Ç��*(N����}���[ �����p�A�޸���+��צ7!v?�XQ�� ���2"�S�W|����Lt�1���x����bJ�upj{HNy�BRŊ�q�tY䊯�s�vn�=�_��ק���~�l����{R��WBvװ���54	��lN��B 	|Ś�)�5@�Y���C�G��M�j��fQ*�l��Y��JQ��r�b#ke�ooWa��e3s�������/d;�v�¬�]q.�=�
��)3��T�J�+^
E	�m�AdhD��##IT >��`���t�*7"��P��lD������L&J� 6���leefo9�ڜo�;�sݏ�֢C�L}%���0{�/��4�+�V��z5 ]�u����,Q�|�1K����ţ������$�܃����,��ߋ��B��Y65��Ys@+�N�Z�'n�$o��o�I��w��ی�����̯�u»��ar6�;�jF�UT�f��k}�cM���ڮm9q�i��S|/`G�$��,�H,�R��Ԓ �挞�����%1;�۞�����)��B*fR��҄��8	'K��Mi�%|��t��y�x	��F=|�-tKl�������a��l8�����8�g�uu�2�R�]Z� Ο{"Fp���J��b�ZL�麩%�)�f�TTq�"���gq�k��$U�������ٴ�B�u=�'�I��(~�M�}�N����6큵!���ٸUkVϓ��h9��4U/��S,返�j�i���WN�$\x�&�8��.�8�4�\0	"�,N\��ա��m�ш�i��@��`�a2:{�p�c^Z���|�lZZ ���^v�D�����n��uW�N{2�d���tn��Z}8�@~�W��PC)��gG������F�r�� 	�Hp��?\<���.=�VrЋ��t831�x�vF!oϝ/�D�Q�{P	�ɩt�^/1�a�x$��so�*���6�rt���1��#��T�(��Yc��g�z�@�����\22� L�Q�,$��S8	dʥ�xpǋ۩���gl:��i����	�z|���M��0Ky�e{������2�>:=��f��U�e�Ԏ�s���rz�ɨQͨP�a@2��=��z�Q�(�KOh&���Q�1��̈́��X<��^��[7*    ��K̬ёiD�<Z�)N��`�!"MF����U���賻�|�����J��ٹj�}��W�;B����S,j3?��=	4�v�hBa���qB�XH@�)������#�C��oV��*-���;�XlێR؇�_����ڧ^>.cu�����;x�ݽC��i��)�p�T�����(?;75N�3n��������k��lF�DS�L��D
�BC$�H� |
'Ag��V����[� ��N�Q�{��k��ʍ�}��ʁ\mI|k�(eu5m&jQ˺�|w�[{tt��۾����z�̖��~6�;5�e����C��⵸��{�Hd¤"*J��0X"h$C u�)����P\ �������l[+ u#�!8�Y�_k *��4��r�v�k[�y�tW/o����l� unՎ�yX?�=s��MU	� ��}u�g�G������@5Lj*�PM��� ��0�B��^��\�~��6��m�j��D�B��H<�Qk�F_�e�-8������0"q��S�4O��i�G�Jv�w�7�t|��y%��:�W]�R�=���+�:c��R|�ވ>�lC"�F�o��0Dp�8��9��0���W�NO�EdIzV�bϨn�[�U���<\�ֶ��M������k#��m��hZl!7f��}fl[q����;QW��ꆄ]��`�z��R4֕��	SH�&mFf,�Dh�Oa$�Cֈ=FbO`�sӾ��!_ο�;q��Vx���|��ހ�MJ�G�-7��e��.>�_���v��t���t_�|�t淑���0�W�!d^W������(��N&� �ۙ�UB�h:>���h��T�}ˊ��1«����#�k��f7P3�v�)��,�h�i��z�>����l?/LK����3s>j�#�:%������O�L��?i�X�8M�′�j�?\{#A��N�޸�b�*6��}kX[e�Wf��	�W� [��%-�my-}�n��aa}��n�ч��V�W熑����ߋG�픙�C����5��ŉnP=*��A"Q��3"��HXQ�~܃X�>� ��F�|n����X�����X����zZ�n�t1���f���O�r��Չ�c�3�o��s���
=rs2Z��W��6��V^�P:9 $
BA��k�F"��Ǻ���04c����7ЛW��E$f�~k({iE�&�Ec�{�8�6�K{>z:�'���L��G��64�F�+�n�^���>x�����ƹ�+����]3����=����+	>��,�PC9$�L�����߸>��0�{Dp���7�
^�^9V�Hbm8���q8�N�{��W��8|��oq6�Ժ�nR�,+n}t�qs�U��l�V.��[��!�%����Cu�g���0�sBE*�D��@�6	!��s�7��`��M�?���o�V�-�9����&��Y�r[�9c�zczrJ�N�����Tz�������̘��eB>�5��@�8N���BA�� %$�Ω�<
MӞCIX�+�pb��o����$!�Yؓ�7%I�K���RţX�b�X)+�n���Ҧ�|��S��$��Q8s?T�x�U�K����&[w
�=��H����^ߙ4i4�!r�P@^LN�S�HX��N�`�Lo��stvb����]@ ����}wD��Gm6^���TW���|���[F|�����������9���'��oW��WI%{�X�ރ5L�Ӆ04�VA�	�.C@�9����#'���|��xn�8�9?�PO�����b����Z�^� </��V�)�v�������ɏ�N��o�a^弄������A4zj&�=��Y���	o�$�F(t�#&�X�
_�� ���p���Sޜb�E��_�1ȑ���pj;X�	NAx�����=h��}iZڻU�u{<}s��;��$4'�1;OgQ=���^14��^W���R-LHq�D��aZ��Q��L>�� ��.���.���c�N��= ~<�z�W��ݭV�M7��)���ϗ������}4Ynĺ��O;3�i��m�dLRg�#�a!�Uӥ����z݃p�i ����Dq�nW1D���p��GVW ���A����w\�4������tǍq�π+�K9ɋ6�m:����>���/�N��5�Yt��tZ�M�$B7�_�V��` �t`hz,� ��$
��6!0;@�)��>۹�X�J[����{{6DsX�)�v�z'/�/Pz����Eʵ�y�^�`fYj)WG=$�n��w����58���|�6�����@VgrJ��[���z�fXDT�!�!B�$�a�j=�	e���p���{����f��"p�^�ְ���~7QCy����4�\�wz���Uk==�,^�ddL�Got�g�g3�j]2��Q��od�2��L�n�����z݃F �DIe�@�K��u�q�uD��S8	V��!�)L�ՍSbo2NiA̜q�����`����i�4S��ªb%�1�R�T�ZCo##	���);�2ӏHƫ�tv� ����͘�H����^���_�0����ς3Ȩ�IƱª?���ǚ=����pn���<��+X-�a^Z+�y�t�S�l�����"��)�x6�ȍ����]cr�-U�M�Gvj���:u���E��̀���]$V��oJ� `�p�ztSQ�$\4�`՟�I�y�{	K��B�hg6֥���������V�|TT��!�֨=����X�yzi�{�=�e�Yn���b,�ǐ��7� �a_c�Lg�? x]�V�#�e�RJB$���`p���!¤��S8�7���7�w�.ʼ|�c��M�)N%������s'�2�z*��O:5S{���(�.�7�6ok�� ���?>S{��']��Q	��B(������D�!�aU4��JC�-]�& �N���||�LG�qo�:s;�Wإ {���Ar�+ߚ�=����si$i��ї�e����lE�T�>�/���w���K�lҌ&�M,��,�I�h�{�g�IXs3¨�#~&>/�&��J�I��I�|܃�7{����y�s�t���u핝9+��^�,�}����u۽^��${W�۞�Y��l���S܈�q����WC]���ك�)�8`�oa�TlD�2���)�� �r]3�`Z�=M�촾�'���o�����r�蹋N�NZ�7�f��̹���{��a�lo����j�u�%|J�u�wR��K��`�z}ib4�q�p�QT��<F$�C�Hp��)����X]�`�7�C�1Ƿ8tȶS�a���K|1��t��R���P!"g���N�<�_oՎ_�Ye=췜�f2u��q�~��#���R�u0J�WV�#0p�Exp@Ѫ��dRD�T@�9���Tm�=���2�ր�E��}44�g=k���8�̜�&�Ž���'���.��:^Io"���<��^�t�~��="l��;9C�
@�c�/��k��ZL�&$&�H|eB} =����Oqo�"�����o��Ko��݈u�6�yp���ר�<w �yJϭ.K��M��x_�}N��,4�ck@���֯��lV��ec���xwI#�ۅ�^%��H� )�����%��(�I">�� �(;{��w©��{�û�B�����AȪ[rCͷFg/�=:�Kc�g���7�6�+��l�4 (�}�&��fvV��$/٠�������@���X\�^�`Ha2��:!feFU�75��)��Wcq���K��.ty�l�3��B��7i����g8��sa�\)ŝO�v}"�~|2k�r܌�^KY�mNv�S�t[��xP� �b
����k6(�,B7���z[馁J)OqoGsO{���S��o^L��_���j�{(D�f���>�����K����Z��rG�����ݯU�5�[9-�Y���T�\_���=��P�+�*K"I�z�L��L�0���D��ŊJ!�B��)��Wk3��k3'Ȗ�q������ �\u�hr���c��].��:�uk7^���\-?���.����    ��B�_�q�+���J�YI�"I��� Q:`��r%ahA`)!�%uߞ��^ XV��wS�i�N1�}	K��[XQ(�Ť��~���(�,�Cs?�^���i���%K���,��@�Ӷ��`�SZ�>��#X�f PC/A�omF�s�c���@YoSD�Δ�(�
|'Ak�����n�[V=s�1�����1��u�|���<1+�]Y6����ֳ>{ˏe��L^f����K�F/���s�?M��io��� ����W��-I#afh@�kq(�̈Ea� ��'q��Uy�Y@��=���.2��]�w�n8/���D�&8mWI������r�ڧ�q�N[n[�<-Ӄ����y63�s�nY�G�΄Q]�#x]�V�$'1��R@AjFK8M�P��@@$y�{��e�8]�L4�ȁ�6܁xb+����� ��Bt�8�*-ͨ�r���&�=�;��3`f�����*1�k�ݏQ	��U�惇=x]��4��K�(\:3���t��L�
2꧸��(��G^�i�@v�Ê�6��4 �q1�F�s@�Bta�����,׿<4֟�<?�={�����5�Z��ۡ)\�˟����k����_�ğ՟V�`	!��4؈2ԙdq���b@�9����}�ň���"{m�yC��I���{(�?Aӡѩ��C��(;��.��xPχ��r�OG�$M3�д9�I2���Q�ۻG�J���"�Ë��h$�C���UQ1Xl$�@�9��:�V�#����Lob_��hj�؂g�,�cG�2��C�֨����-o�pl4��DK��9����n��$w?Ř���7y� ݰW��S�Y�y'QL���&�!�S�a�+�i&�A��p��N��m�o-؛�����n�GPD���·<T`�J���x�N��v�wtާkқ��S9�����KU�" %j�XX0�_�~Vbq��4cQ?)5��a�	d3OqoG�ߖ�b��o&�N��X(���>кs�@$���]-ldyn%/�7��˰+R'~KI������d��|�z���K2�L�ǻ� Gq<�f���C,��^3j��Cژ@L���!6C�p���I�,;�����B��Q1����>dх�K�Cf���3Q���Q����}�_�z�k�}���J�egS����y�|�j-T	��A������y�i&J��@ ��P��:�R�X`,~'�8iSv�{�#Mpb��c�sq���m����T\0�]���=o��fߒ[�t�^B�����c�3��;Z����{4������+�!��k��4�%��.&�
� |'),�f �����s!� j��2�b;��8O⻳3�3��Z)�����]�$���d��ݞt��#P��ϭ`�R�0���{��l�JR��?�8�09�@�M�!�@�(܁�sD�9�$�~#H��N��O1xv.L=�$N�s?��/M��۶����Uz����ƨ^Y�?ǽ��Ꝛ�<�]�{D��W�d�,�f�՟�N��N\���JHqȓi���ß��^ H��A��n�! �.L�w�.�|���% x��<lO>�ٕ��ƛ�v��q4T���X��F��8ךS;?:����ʹ}*ك��Ra��b��4+����@�:��(�Y(]�D�p>ǽ��*Zﶲ�����q"��P8
��Ɂ�1������T;/R��⸫�<7_�Z{W_����/��Z����u�[��" �)��Vx�*I h�@ ��R��	H��8	"X�����T���XI+5fX��0�q\��Q����]Jk3������w��ϓ%�z��Vl�K��.�-ⳕ,��Q	�;��#��.`�q=	���W)3�i�0�96q�,��I��S�Pa��)��1�V��#���R@�1:;�<��������A��F��V�Ó���s3��j���n��F���6��;Y��	ѡA���S�HY�VL�4�zSM&!S,8 �,N�=�~#xk0䎊NK��ܶ C&Y�����֬}�>/���{�$p�/�lh^�z�n��F�c�<u�ptL�����烈�x5�Qʋ���;հ�2�8�L&�0e�IbhAD���IF�AX���؍T]�>Ԉ5���	|���]�&����uN��?�������˹�����lҍ�ikj�f��}$�vs�ʨQ�q��u�X`D�jBӥ�S�$�Z�1��?Ǿ���C}�@�f�OnςX�V3���I����[�\���Κ��4M���L��!��9�o����Z]����k�X��o�<�d��W�5��o�z�$px%$�$�t�$p�	Ŧ�Is�/MϱoG����]�wv��o���q���}�f�'�M�P!`Һ ��y{Uzh����n��ۍ��)ឪx�>k��jt�]�vä��#�ΰ�L�uY�Q��HBc!u#±l�%DD�FF$��|'Y�Ƿ��[5�V�����&�i�m/�	�NِU;M�siuK�����qF��2M#�zv:|m�����۩0�r^.Lt�냈����e�L�z������P3����τͫx<����$9d�%�P�Ռ��ޛ`�zu�5j�R"�@3c�mq/�_���}3��4f�~d�Oi�k�9����5��Ԯ'�i�F���pI8C�FbB>Xr���+���+R�'�Ȑ&�<Ci��JQ����oK����d;��h���^V����j[�h�)�~���jZ���D��yf�;���ae����j�!1g���q��f�~�#|/6K9I�z}파�Z���B$�� =�S1����8I�be� �y즺�flt���Q�Ǳp�.J�|�B�:/_2o2(�~L�8���睠����/��6��Hs�ʢ�}�f����*-�$���K�AyL%�8��M�yZ��D�zI|'A��=�h��ʂ�j�e��⠝W^���u��������S�L%i6��7�ƃ��C������I��[�C���h�v!Yp�I#�șYZ�)V���I���������@Q	a�R�Xjx���I���v�7�F;���Q�F��·[���]<�H������.W~�<�Y둻�Y����ܹ���^��n�v�|�j�KӞ�ר���!��Jj���FD��(*[KP͌Y@� v�P�E��8	 X��=o�ss?���W_a��7��5O�X�wPL*��{Յ멍��n���8�}l'�u1�i{�7�i��;G������E�<E/ۃ�]��4	�BJ(�Sj=B��+0@�Y�b�c��1����m�*?��t6�}Yhx�l6ƾ�:|_Y>J�ǵ}��\B5�����j:��r��w���cO�������HC蛹�^y�a
��0�$�C�<Vz$�P��8	"Xz�o�c�Dς�obk��ڪ��;�p;R�!��dV�+����צӥ<lV&���}z^/����pt8e�ig�b� h�&�ه���5�x�(�� *�F�4�Dr'���I�%-Cr�߽[����pR�9a?�xo2�X\_��d:��.`�+y��4hLڍN�j;��գZ�Qdoƫ��t+�M��G�!��&�(I�xm�ACK8l?AL���b��Ð �Y����+x#7#�nhxP�t�	u�\�($8hC��?w$6e��=c�G��z��G��h�v�f��Yo��>��������Bn���0K�A�WnF�܄��6�DL���xlR�EI`ı�BI<.{0�p
�c�1>wR�h~�&�>y���(H]���J�5ة����y�~_�s����c�y_������5���a{��<h��~��`2�Qz{�?��""u=4��q"� ��
b�0�h@%^��qp/��K���������2
�ƻ�{��|�o�!wP�?-Of�r��x4q��v��i�=^���^X��h>fs��*APc��i��"�k01��KE`JbJe�	�XHy$��d�9g���SݷS������'߂S?)�Z�ٓ6�VC�88�aoii&ׇ-c��A��9�X��ƻae����v{��|:�Ȫ���\l� �  �_M�2|���$��Y��b��$2ut�N$�O4T������S(I�����7�7�g��h��-�%
����s�/�i>>��!��9nk����]�Y����+���ٯ1��&�� J��A�|E���6�+��zm~K� �3#C�Da �P�1Dd�k��S(	�J+z_�v�U���0��b�#G1�Z�waa��(�❁��{�]�L�d٪~�#4�H����S^��9'�W'�yQ�� (PꗋWJ��=ň�u�gB灊8�Tq�ZDB�Tt��BI����},vr�b7mԐ� ��D�I�=��b�.��Z�UI�唤����ȒKCs�s$=J��">���^j�Mr<�6/Gm�m� (���]�*$����u��P�!�qr*�L�f Q$f�L$�u���9�W/����8}�ğ���m3@�p�)�����n��[��Ӊ�����;��{��������^���Ѧz��1����I��E��L��`�8��m����ѐ)	$d3ϱp�(�r�����0��r���r����B̶�R���.m���~;����eû'�Uz���YZa�3[�m��9���� hb�4$Ԅ�{@�z-&8�dz@\���n��$e�|
%)��#غi�1z��%f2hN�N�M}w5��*ۍ��C��2Æ�O�7���<
jF��|����|�DS����mv� C{S�w�W�{�B#���$p�y�a���̔��S8	���;?dԹ���n2j	[h�-�\��xǗ�=f3�R� _nڹ���+��KwQ�.�v����^Q}�=m峱�|s�,�wj:�4Q�Z��՟���q�t�a��u.M�;#�taАs>��>�#�{�����1ʯ
,���j��n\�Y2��:��3/o���9��㶩����̩��]m�7�f��1=8�ro�8^LMg�A��xqkQʈq%a���$��ߩX�p��b�B���5�dsǺ��� �9��*����S�jz�p�cq5E�[+	�f���ˢC���خw��F����[��7.��Wm��S�?tw.,'5�$�	5��x���1�Q�B�_�KGz��D� �AI�|p���u�P[�e�@�Q��/"n5�����5���޹�c��	������~���K����2M;�,���QڪO�/u�@Q�B�k��G��F��;��]�I%Mlf��������b���      �   �  x�͝�NbM�����;�ok�UǝL��hD<ђI:((���ż�<ü�T!ݭ�$�w�I:^H���]��각���}���M2� c��2=�\����Q~tP)�+�Wn�ݻV{z}Ȏg����4n�N��	w��/���ƹB{л�uz�A����ﵺ���co��͠��G�� �g?�U�����㍝��9����!�h�m �����Zh���i|���K1�H"��c��= B�^��A�?�u�{��b��;20L2�$P`t;����o�� s31f��Al-U�\�#n# �=xb�WH2'=����*]���wo�S�l[���&����ɏ�cczD�[m��=+?�{ͪ��n�Ŋꜜg�/~�6��A��D���/}�e%����E�V�UQ�{��Vu�sJ[���W��oOG�p{�/Lj����Mg\}0Ì��k�U�@1�WY/j��<�t^���4�R�y�ΰ�/��*��������m����S�{��׎���n���l=������_��1�u�Z0-֨��t�j�w������j5���r����v]��Q��S.e�����Ҹg��[�wֶ���"��b�K2B�)��Y�G&��Q}����츽�7)��w@�ۇ��0�{�j_�]}���挵K���a�L�4��
��]�I�*v{<c}`o� 1��0�����o�r�1�H��cX�|�	.i��QF��A�r>���:�٩�v�5/F���8Oͧ�����m��ڌ.w�zzZlcm�Ŵv�[�^e�G-kkz��P1ad����������Bhs�/�!*�R�̀"� BX��|�ː�v`�I�hbi[K_��.`�	���X+߆�2�5Bl�q;�jiBDn���9�r��b�:*t�qrr\����k��|nX��}��6��R����y��|$��g���4bT=2�Y�y���� Nm����"�����<�� R���ϐy�6O_��Ӟ�?��⏥n?�;���AU��ǇSy��r��<�(��=xy.U6�ן�rx�����M��. F)���5�ݜv`�<x�N��/������i�ePף��ݽ�
�<�S݄�����a���*=u��=�je� ����p.��0&�`�	���p����/��_
��u�@�1�!���l���$�_�����2�W�`�+��!��r��������"{
�����	�,_��1r�'�@k"�C�����R�nHd2D���÷q_�_�+��&�!�^b���UA_z�2F��0$�'��Qc&�B� "�Ѧ�!���'�3�ѯr�'iA�?��|� 3�LL��6�TA�^�����٬���b�'�	?�?�#������H~��o�/;�p-d��O-�-V?I���E � �_{�����������P�vO�lX�y�~�ݿ9�_�v����_5�c�(MMc�5~hW��;y~�<���S{V������Y��17�?�v?�N�_U�9��u�̇r��E�Y������S���9�PPۡ "�P�[E���E^u�'�T,�uUS����/��w �����������Y7����U�3�Þ�9��Z��M�c6�����N�Ɔ��������1;>���s��RIø��q������+_�1"���rv�{�6>����I�|��8"�����;[��?�-@� �0��\z�u� Ÿ��6Av�C�f�!V�Z�WVNgP��%�#m�f��>�����D��a��7��@Al�=�c��/'�l�`����k�--D$��
Q���D������Hr#M�]�'���.A�E,H��'���.A6����+u��i�?����9v!H.B,��	?���a(t��ӿ�<����~B�`�XP����Ʀݿ��G*�UY�3���ύ[p;�Ԡ��8��sH��'j���V��4t�Tw
Er`�w���~�ᶏ��ᶮ9Wߥ��
�p�]�v���f �U�U$UVC\��(�<����Q^��o��I�����]�;��ݺ��F��C�s>0��"��H*���s\���h~ИSl����@�8���lϲ�6�Î�/�V���r9[_�p��6��Q�Jr�X,�W�\�Ѹ8]ݺ�UG���?�T/wv��'�#�^��G�_�8L�ؼ�ۚ>˃Qwx<�VY��ϯڏA)[�k\�J�ٶ1��[�U��������ꤕuL�R%�H�UV��ռ�['�lg�'!(��[�.��ZV�]J�HJ���WF\0X��$���g3�!���_���հ�͒��#%�%v�ͯ�=pbl���$��.�����r�2e�s�Vm0$���y)\֗�����\^JX��)��v����w���)�����+����������6�������׫7��V��C�&�Z��h��˯T��4ژ/}e���0�לʙk[F��+�r�A�!���ic>��L���-��DO8w����p<)ڸ�}����b�릎����f�Q.
-�z�����?�۳��ᡸ�^f��.�9��5G���t�ݎs˓�V�'Zx�zZ��s��rS���Z��ʫ�i3�3�ԣR�<l�5VVG;���S�6@��ݵ.$��l�k��h��Gʠ��|�!e�	��q���+�kl�� o�n�z����\g�;yyn�I)�z�b�7j��]�ʓ{��;Yj>W���g��k�%,�\���H)�����5�v�����)�i�\P�y~�w��2�\�?�K�F�G�W>w�B�{׈_^y�j-/��Jf�hHi�h�/���{у� 2��7����y��[έ�F�7��Ɩ�ݣϠ��M7v�uQV�#0�Е\�����[R�c�᧾Q=t.׹����p�J	�����=y�j���+��"0a칇.���G�I&�n���C��d���/%7n�`/=t�Qݻ@�G���W������|]� �^{�Ѩ��-,�f2��{`�C��mQ>�]�M!�{`:Ϩ��D��� �c��t���|���!G��c��tZЃ�+�.�y�O})�c���nc�L�=�1cgF���c�����m��kB�5qt_���?
 <t�0t�7n�t�dG�f9�/n H]I��=_|����o�(���wƽ �ܥ�ȖQ��	@{�$��ք��M�0f*2R�Lm���WKJ�^(w\�M4����<t��yqpJ�	iO;��K�w��7'ɽ6^n���ݺbr���� =e�����}����$      �   �   x���N�@����]�朹 M�F������	hG�����[������K~ ��w�`i/
���5��gW+�-�������
^�cr�&k��x)�TKmgvXڧQfK�����A�P 6 ��m9�e,*�#iՙ�ԓѝ�{�}у�f�?wʴ�:�*٫��onN�zjL]m=���MJ��!���x^��;������C�      �      x������ � �      �      x������ � �     