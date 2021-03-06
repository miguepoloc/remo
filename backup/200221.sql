PGDMP             
            y            remo    12.4    12.4    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    34198    remo    DATABASE     �   CREATE DATABASE remo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE remo;
                admin    false            �            1259    34348    api_categoria_componente    TABLE       CREATE TABLE public.api_categoria_componente (
    id integer NOT NULL,
    categoria character varying(100) NOT NULL,
    requerimientos character varying(100) NOT NULL,
    color character varying(100) NOT NULL,
    simbolo character varying(100) NOT NULL
);
 ,   DROP TABLE public.api_categoria_componente;
       public         heap    admin    false            �            1259    34353    api_categoria_sensor    TABLE       CREATE TABLE public.api_categoria_sensor (
    id integer NOT NULL,
    categoria character varying(200) NOT NULL,
    requerimientos character varying(100) NOT NULL,
    color character varying(100) NOT NULL,
    simbolo character varying(100) NOT NULL
);
 (   DROP TABLE public.api_categoria_sensor;
       public         heap    admin    false            �            1259    34360    api_componente    TABLE     �  CREATE TABLE public.api_componente (
    id integer NOT NULL,
    nombre character varying(500) NOT NULL,
    funcion character varying(1000),
    referencia character varying(500) NOT NULL,
    descripcion text,
    frecuencia_calibracion character varying(100),
    frecuencia_mantenimiento character varying(100),
    voltaje character varying(100),
    corriente character varying(100),
    rango_medicion character varying(100),
    rango_operacion character varying(100),
    exactitud character varying(100),
    resolucion character varying(100),
    protocolo_comunicacion character varying(500),
    datasheet character varying(100)
);
 "   DROP TABLE public.api_componente;
       public         heap    admin    false            �            1259    34371    api_componente_estacion    TABLE     �  CREATE TABLE public.api_componente_estacion (
    id integer NOT NULL,
    serial character varying(100),
    numero_inventario integer,
    protocolo_comunicacion_uso character varying(100),
    componente_id integer,
    estado_id integer,
    ubicacion_id integer,
    frecuencia_muestreo character varying(100),
    foto character varying(100),
    observaciones text,
    responsable character varying(100)
);
 +   DROP TABLE public.api_componente_estacion;
       public         heap    admin    false            �            1259    34369    api_componente_estacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_componente_estacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.api_componente_estacion_id_seq;
       public          admin    false    225            �           0    0    api_componente_estacion_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.api_componente_estacion_id_seq OWNED BY public.api_componente_estacion.id;
          public          admin    false    224            �            1259    34532     api_componente_estacion_sensores    TABLE     �   CREATE TABLE public.api_componente_estacion_sensores (
    id integer NOT NULL,
    componente_estacion_id integer NOT NULL,
    sensor_estacion_id integer NOT NULL
);
 4   DROP TABLE public.api_componente_estacion_sensores;
       public         heap    admin    false            �            1259    34530 '   api_componente_estacion_sensores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_componente_estacion_sensores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.api_componente_estacion_sensores_id_seq;
       public          admin    false    237            �           0    0 '   api_componente_estacion_sensores_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.api_componente_estacion_sensores_id_seq OWNED BY public.api_componente_estacion_sensores.id;
          public          admin    false    236            �            1259    34358    api_componente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_componente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.api_componente_id_seq;
       public          admin    false    223            �           0    0    api_componente_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.api_componente_id_seq OWNED BY public.api_componente.id;
          public          admin    false    222            �            1259    41551    api_componente_salidas_de_campo    TABLE     �   CREATE TABLE public.api_componente_salidas_de_campo (
    id integer NOT NULL,
    fecha date,
    observaciones text,
    componente_id integer,
    tipo_de_salida_id integer
);
 3   DROP TABLE public.api_componente_salidas_de_campo;
       public         heap    admin    false            �            1259    41549 &   api_componente_salidas_de_campo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_componente_salidas_de_campo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.api_componente_salidas_de_campo_id_seq;
       public          admin    false    252            �           0    0 &   api_componente_salidas_de_campo_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.api_componente_salidas_de_campo_id_seq OWNED BY public.api_componente_salidas_de_campo.id;
          public          admin    false    251            �            1259    41562 )   api_componente_salidas_de_campo_operarios    TABLE     �   CREATE TABLE public.api_componente_salidas_de_campo_operarios (
    id integer NOT NULL,
    componente_salidas_de_campo_id integer NOT NULL,
    investigador_id integer NOT NULL
);
 =   DROP TABLE public.api_componente_salidas_de_campo_operarios;
       public         heap    admin    false            �            1259    41560 0   api_componente_salidas_de_campo_operarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_componente_salidas_de_campo_operarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.api_componente_salidas_de_campo_operarios_id_seq;
       public          admin    false    254            �           0    0 0   api_componente_salidas_de_campo_operarios_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.api_componente_salidas_de_campo_operarios_id_seq OWNED BY public.api_componente_salidas_de_campo_operarios.id;
          public          admin    false    253            �            1259    34379    api_estacion    TABLE       CREATE TABLE public.api_estacion (
    id integer NOT NULL,
    id_estacion integer NOT NULL,
    nombre character varying(100) NOT NULL,
    latitud double precision,
    longitud double precision,
    altura double precision,
    sitio character varying(4000),
    descripcion character varying(4000),
    responsable character varying(100),
    protocolo_comunicacion character varying(4000),
    fecha_inicio_registro timestamp with time zone,
    estado_id integer,
    observaciones text,
    foto character varying(100)
);
     DROP TABLE public.api_estacion;
       public         heap    admin    false            �            1259    34390    api_estacion_componentes    TABLE     �   CREATE TABLE public.api_estacion_componentes (
    id integer NOT NULL,
    estacion_id integer NOT NULL,
    componente_estacion_id integer NOT NULL
);
 ,   DROP TABLE public.api_estacion_componentes;
       public         heap    admin    false            �            1259    34388    api_estacion_componentes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_estacion_componentes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.api_estacion_componentes_id_seq;
       public          admin    false    229            �           0    0    api_estacion_componentes_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.api_estacion_componentes_id_seq OWNED BY public.api_estacion_componentes.id;
          public          admin    false    228            �            1259    34377    api_estacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_estacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.api_estacion_id_seq;
       public          admin    false    227            �           0    0    api_estacion_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.api_estacion_id_seq OWNED BY public.api_estacion.id;
          public          admin    false    226            �            1259    34510    api_estacion_sensores    TABLE     �   CREATE TABLE public.api_estacion_sensores (
    id integer NOT NULL,
    estacion_id integer NOT NULL,
    sensor_estacion_id integer NOT NULL
);
 )   DROP TABLE public.api_estacion_sensores;
       public         heap    admin    false            �            1259    34508    api_estacion_sensores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_estacion_sensores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.api_estacion_sensores_id_seq;
       public          admin    false    235            �           0    0    api_estacion_sensores_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.api_estacion_sensores_id_seq OWNED BY public.api_estacion_sensores.id;
          public          admin    false    234            �            1259    41459    api_investigador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_investigador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.api_investigador_id_seq;
       public          admin    false            �            1259    41397    api_investigador    TABLE     �   CREATE TABLE public.api_investigador (
    id integer DEFAULT nextval('public.api_investigador_id_seq'::regclass) NOT NULL,
    nombre character varying(200) NOT NULL,
    cargo character varying(100)
);
 $   DROP TABLE public.api_investigador;
       public         heap    admin    false    244            �            1259    41404    api_salidas_de_campo    TABLE     �   CREATE TABLE public.api_salidas_de_campo (
    id integer NOT NULL,
    fecha date,
    observaciones text,
    estacion_id integer,
    tipo_de_salida_id integer
);
 (   DROP TABLE public.api_salidas_de_campo;
       public         heap    admin    false            �            1259    41402    api_salidas_de_campo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_salidas_de_campo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.api_salidas_de_campo_id_seq;
       public          admin    false    240            �           0    0    api_salidas_de_campo_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.api_salidas_de_campo_id_seq OWNED BY public.api_salidas_de_campo.id;
          public          admin    false    239            �            1259    41415    api_salidas_de_campo_operarios    TABLE     �   CREATE TABLE public.api_salidas_de_campo_operarios (
    id integer NOT NULL,
    salidas_de_campo_id integer NOT NULL,
    investigador_id integer NOT NULL
);
 2   DROP TABLE public.api_salidas_de_campo_operarios;
       public         heap    admin    false            �            1259    41413 *   api_salidas_de_campo_investigadores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_salidas_de_campo_investigadores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.api_salidas_de_campo_investigadores_id_seq;
       public          admin    false    242            �           0    0 *   api_salidas_de_campo_investigadores_id_seq    SEQUENCE OWNED BY     t   ALTER SEQUENCE public.api_salidas_de_campo_investigadores_id_seq OWNED BY public.api_salidas_de_campo_operarios.id;
          public          admin    false    241            �            1259    41495    api_sensor_id_seq    SEQUENCE     z   CREATE SEQUENCE public.api_sensor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.api_sensor_id_seq;
       public          admin    false            �            1259    34398 
   api_sensor    TABLE     �   CREATE TABLE public.api_sensor (
    id integer DEFAULT nextval('public.api_sensor_id_seq'::regclass) NOT NULL,
    nombre character varying(500) NOT NULL,
    abreviatura character varying(300),
    descripcion text,
    unidad character varying(300)
);
    DROP TABLE public.api_sensor;
       public         heap    admin    false    246            �            1259    34409    api_sensor_estacion    TABLE     �   CREATE TABLE public.api_sensor_estacion (
    id integer NOT NULL,
    componente_id integer,
    estado_id integer,
    sensor_id integer,
    ubicacion_id integer,
    observaciones text
);
 '   DROP TABLE public.api_sensor_estacion;
       public         heap    admin    false            �            1259    34407    api_sensor_estacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_sensor_estacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.api_sensor_estacion_id_seq;
       public          admin    false    232            �           0    0    api_sensor_estacion_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.api_sensor_estacion_id_seq OWNED BY public.api_sensor_estacion.id;
          public          admin    false    231            �            1259    41506    api_sensor_salidas_de_campo    TABLE     �   CREATE TABLE public.api_sensor_salidas_de_campo (
    id integer NOT NULL,
    fecha date,
    observaciones text,
    sensor_id integer,
    tipo_de_salida_id integer
);
 /   DROP TABLE public.api_sensor_salidas_de_campo;
       public         heap    admin    false            �            1259    41504 "   api_sensor_salidas_de_campo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_sensor_salidas_de_campo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.api_sensor_salidas_de_campo_id_seq;
       public          admin    false    248            �           0    0 "   api_sensor_salidas_de_campo_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.api_sensor_salidas_de_campo_id_seq OWNED BY public.api_sensor_salidas_de_campo.id;
          public          admin    false    247            �            1259    41517 %   api_sensor_salidas_de_campo_operarios    TABLE     �   CREATE TABLE public.api_sensor_salidas_de_campo_operarios (
    id integer NOT NULL,
    sensor_salidas_de_campo_id integer NOT NULL,
    investigador_id integer NOT NULL
);
 9   DROP TABLE public.api_sensor_salidas_de_campo_operarios;
       public         heap    admin    false            �            1259    41515 ,   api_sensor_salidas_de_campo_operarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_sensor_salidas_de_campo_operarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.api_sensor_salidas_de_campo_operarios_id_seq;
       public          admin    false    250            �           0    0 ,   api_sensor_salidas_de_campo_operarios_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.api_sensor_salidas_de_campo_operarios_id_seq OWNED BY public.api_sensor_salidas_de_campo_operarios.id;
          public          admin    false    249            �            1259    41464    api_tipo_salida_de_campo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_tipo_salida_de_campo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.api_tipo_salida_de_campo_id_seq;
       public          admin    false            �            1259    41421    api_tipo_salida_de_campo    TABLE     ^  CREATE TABLE public.api_tipo_salida_de_campo (
    id integer DEFAULT nextval('public.api_tipo_salida_de_campo_id_seq'::regclass) NOT NULL,
    tipo character varying(200) NOT NULL,
    color character varying(100) NOT NULL,
    simbolo character varying(100) NOT NULL,
    color2 character varying(100),
    requerimientos character varying(100)
);
 ,   DROP TABLE public.api_tipo_salida_de_campo;
       public         heap    admin    false    245            �            1259    34230 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    admin    false            �            1259    34228    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          admin    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          admin    false    208            �            1259    34240    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    admin    false            �            1259    34238    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          admin    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          admin    false    210            �            1259    34222    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    admin    false            �            1259    34220    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          admin    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          admin    false    206            �            1259    34248 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    admin    false            �            1259    34258    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    admin    false            �            1259    34256    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          admin    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          admin    false    214            �            1259    34246    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          admin    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          admin    false    212            �            1259    34266    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    admin    false            �            1259    34264 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          admin    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          admin    false    216            �            1259    34326    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    admin    false            �            1259    34324    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          admin    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          admin    false    218            �            1259    34212    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    admin    false            �            1259    34210    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          admin    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          admin    false    204            �            1259    34201    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    admin    false            �            1259    34199    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          admin    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          admin    false    202            �            1259    34486    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    admin    false            3           2604    41597    api_componente id    DEFAULT     v   ALTER TABLE ONLY public.api_componente ALTER COLUMN id SET DEFAULT nextval('public.api_componente_id_seq'::regclass);
 @   ALTER TABLE public.api_componente ALTER COLUMN id DROP DEFAULT;
       public          admin    false    222    223    223            4           2604    41598    api_componente_estacion id    DEFAULT     �   ALTER TABLE ONLY public.api_componente_estacion ALTER COLUMN id SET DEFAULT nextval('public.api_componente_estacion_id_seq'::regclass);
 I   ALTER TABLE public.api_componente_estacion ALTER COLUMN id DROP DEFAULT;
       public          admin    false    224    225    225            :           2604    41599 #   api_componente_estacion_sensores id    DEFAULT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores ALTER COLUMN id SET DEFAULT nextval('public.api_componente_estacion_sensores_id_seq'::regclass);
 R   ALTER TABLE public.api_componente_estacion_sensores ALTER COLUMN id DROP DEFAULT;
       public          admin    false    236    237    237            A           2604    41600 "   api_componente_salidas_de_campo id    DEFAULT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo ALTER COLUMN id SET DEFAULT nextval('public.api_componente_salidas_de_campo_id_seq'::regclass);
 Q   ALTER TABLE public.api_componente_salidas_de_campo ALTER COLUMN id DROP DEFAULT;
       public          admin    false    251    252    252            B           2604    41601 ,   api_componente_salidas_de_campo_operarios id    DEFAULT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios ALTER COLUMN id SET DEFAULT nextval('public.api_componente_salidas_de_campo_operarios_id_seq'::regclass);
 [   ALTER TABLE public.api_componente_salidas_de_campo_operarios ALTER COLUMN id DROP DEFAULT;
       public          admin    false    253    254    254            5           2604    41602    api_estacion id    DEFAULT     r   ALTER TABLE ONLY public.api_estacion ALTER COLUMN id SET DEFAULT nextval('public.api_estacion_id_seq'::regclass);
 >   ALTER TABLE public.api_estacion ALTER COLUMN id DROP DEFAULT;
       public          admin    false    226    227    227            6           2604    41603    api_estacion_componentes id    DEFAULT     �   ALTER TABLE ONLY public.api_estacion_componentes ALTER COLUMN id SET DEFAULT nextval('public.api_estacion_componentes_id_seq'::regclass);
 J   ALTER TABLE public.api_estacion_componentes ALTER COLUMN id DROP DEFAULT;
       public          admin    false    229    228    229            9           2604    41604    api_estacion_sensores id    DEFAULT     �   ALTER TABLE ONLY public.api_estacion_sensores ALTER COLUMN id SET DEFAULT nextval('public.api_estacion_sensores_id_seq'::regclass);
 G   ALTER TABLE public.api_estacion_sensores ALTER COLUMN id DROP DEFAULT;
       public          admin    false    235    234    235            <           2604    41605    api_salidas_de_campo id    DEFAULT     �   ALTER TABLE ONLY public.api_salidas_de_campo ALTER COLUMN id SET DEFAULT nextval('public.api_salidas_de_campo_id_seq'::regclass);
 F   ALTER TABLE public.api_salidas_de_campo ALTER COLUMN id DROP DEFAULT;
       public          admin    false    240    239    240            =           2604    41606 !   api_salidas_de_campo_operarios id    DEFAULT     �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios ALTER COLUMN id SET DEFAULT nextval('public.api_salidas_de_campo_investigadores_id_seq'::regclass);
 P   ALTER TABLE public.api_salidas_de_campo_operarios ALTER COLUMN id DROP DEFAULT;
       public          admin    false    241    242    242            8           2604    41607    api_sensor_estacion id    DEFAULT     �   ALTER TABLE ONLY public.api_sensor_estacion ALTER COLUMN id SET DEFAULT nextval('public.api_sensor_estacion_id_seq'::regclass);
 E   ALTER TABLE public.api_sensor_estacion ALTER COLUMN id DROP DEFAULT;
       public          admin    false    231    232    232            ?           2604    41608    api_sensor_salidas_de_campo id    DEFAULT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo ALTER COLUMN id SET DEFAULT nextval('public.api_sensor_salidas_de_campo_id_seq'::regclass);
 M   ALTER TABLE public.api_sensor_salidas_de_campo ALTER COLUMN id DROP DEFAULT;
       public          admin    false    248    247    248            @           2604    41609 (   api_sensor_salidas_de_campo_operarios id    DEFAULT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios ALTER COLUMN id SET DEFAULT nextval('public.api_sensor_salidas_de_campo_operarios_id_seq'::regclass);
 W   ALTER TABLE public.api_sensor_salidas_de_campo_operarios ALTER COLUMN id DROP DEFAULT;
       public          admin    false    249    250    250            ,           2604    41610    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          admin    false    208    209    209            -           2604    41611    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    210    211    211            +           2604    41612    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          admin    false    207    206    207            .           2604    41613    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          admin    false    213    212    213            /           2604    41614    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          admin    false    214    215    215            0           2604    41615    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    216    217    217            1           2604    41616    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          admin    false    218    219    219            *           2604    41617    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          admin    false    204    205    205            )           2604    41618    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          admin    false    203    202    203            o          0    34348    api_categoria_componente 
   TABLE DATA           a   COPY public.api_categoria_componente (id, categoria, requerimientos, color, simbolo) FROM stdin;
    public          admin    false    220   [�      p          0    34353    api_categoria_sensor 
   TABLE DATA           ]   COPY public.api_categoria_sensor (id, categoria, requerimientos, color, simbolo) FROM stdin;
    public          admin    false    221   _�      r          0    34360    api_componente 
   TABLE DATA           �   COPY public.api_componente (id, nombre, funcion, referencia, descripcion, frecuencia_calibracion, frecuencia_mantenimiento, voltaje, corriente, rango_medicion, rango_operacion, exactitud, resolucion, protocolo_comunicacion, datasheet) FROM stdin;
    public          admin    false    223   A�      t          0    34371    api_componente_estacion 
   TABLE DATA           �   COPY public.api_componente_estacion (id, serial, numero_inventario, protocolo_comunicacion_uso, componente_id, estado_id, ubicacion_id, frecuencia_muestreo, foto, observaciones, responsable) FROM stdin;
    public          admin    false    225   G�      �          0    34532     api_componente_estacion_sensores 
   TABLE DATA           j   COPY public.api_componente_estacion_sensores (id, componente_estacion_id, sensor_estacion_id) FROM stdin;
    public          admin    false    237   ��      �          0    41551    api_componente_salidas_de_campo 
   TABLE DATA           u   COPY public.api_componente_salidas_de_campo (id, fecha, observaciones, componente_id, tipo_de_salida_id) FROM stdin;
    public          admin    false    252   f�      �          0    41562 )   api_componente_salidas_de_campo_operarios 
   TABLE DATA           x   COPY public.api_componente_salidas_de_campo_operarios (id, componente_salidas_de_campo_id, investigador_id) FROM stdin;
    public          admin    false    254   �      v          0    34379    api_estacion 
   TABLE DATA           �   COPY public.api_estacion (id, id_estacion, nombre, latitud, longitud, altura, sitio, descripcion, responsable, protocolo_comunicacion, fecha_inicio_registro, estado_id, observaciones, foto) FROM stdin;
    public          admin    false    227   �      x          0    34390    api_estacion_componentes 
   TABLE DATA           [   COPY public.api_estacion_componentes (id, estacion_id, componente_estacion_id) FROM stdin;
    public          admin    false    229   Ý      ~          0    34510    api_estacion_sensores 
   TABLE DATA           T   COPY public.api_estacion_sensores (id, estacion_id, sensor_estacion_id) FROM stdin;
    public          admin    false    235   ��      �          0    41397    api_investigador 
   TABLE DATA           =   COPY public.api_investigador (id, nombre, cargo) FROM stdin;
    public          admin    false    238   "�      �          0    41404    api_salidas_de_campo 
   TABLE DATA           h   COPY public.api_salidas_de_campo (id, fecha, observaciones, estacion_id, tipo_de_salida_id) FROM stdin;
    public          admin    false    240   �      �          0    41415    api_salidas_de_campo_operarios 
   TABLE DATA           b   COPY public.api_salidas_de_campo_operarios (id, salidas_de_campo_id, investigador_id) FROM stdin;
    public          admin    false    242   y�      y          0    34398 
   api_sensor 
   TABLE DATA           R   COPY public.api_sensor (id, nombre, abreviatura, descripcion, unidad) FROM stdin;
    public          admin    false    230   �      {          0    34409    api_sensor_estacion 
   TABLE DATA           s   COPY public.api_sensor_estacion (id, componente_id, estado_id, sensor_id, ubicacion_id, observaciones) FROM stdin;
    public          admin    false    232   �      �          0    41506    api_sensor_salidas_de_campo 
   TABLE DATA           m   COPY public.api_sensor_salidas_de_campo (id, fecha, observaciones, sensor_id, tipo_de_salida_id) FROM stdin;
    public          admin    false    248   ��      �          0    41517 %   api_sensor_salidas_de_campo_operarios 
   TABLE DATA           p   COPY public.api_sensor_salidas_de_campo_operarios (id, sensor_salidas_de_campo_id, investigador_id) FROM stdin;
    public          admin    false    250   &�      �          0    41421    api_tipo_salida_de_campo 
   TABLE DATA           d   COPY public.api_tipo_salida_de_campo (id, tipo, color, simbolo, color2, requerimientos) FROM stdin;
    public          admin    false    243   M�      d          0    34230 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          admin    false    209   P�      f          0    34240    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          admin    false    211   m�      b          0    34222    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          admin    false    207   ��      h          0    34248 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          admin    false    213   ��      j          0    34258    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          admin    false    215   ܬ      l          0    34266    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          admin    false    217   ��      n          0    34326    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          admin    false    219   �      `          0    34212    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          admin    false    205   v�      ^          0    34201    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          admin    false    203   E�      |          0    34486    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          admin    false    233   A�      �           0    0    api_componente_estacion_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.api_componente_estacion_id_seq', 69, true);
          public          admin    false    224            �           0    0 '   api_componente_estacion_sensores_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.api_componente_estacion_sensores_id_seq', 35, true);
          public          admin    false    236            �           0    0    api_componente_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.api_componente_id_seq', 57, true);
          public          admin    false    222            �           0    0 &   api_componente_salidas_de_campo_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.api_componente_salidas_de_campo_id_seq', 2, true);
          public          admin    false    251            �           0    0 0   api_componente_salidas_de_campo_operarios_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.api_componente_salidas_de_campo_operarios_id_seq', 2, true);
          public          admin    false    253            �           0    0    api_estacion_componentes_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.api_estacion_componentes_id_seq', 66, true);
          public          admin    false    228            �           0    0    api_estacion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.api_estacion_id_seq', 9, true);
          public          admin    false    226            �           0    0    api_estacion_sensores_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.api_estacion_sensores_id_seq', 44, true);
          public          admin    false    234            �           0    0    api_investigador_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.api_investigador_id_seq', 6, true);
          public          admin    false    244            �           0    0    api_salidas_de_campo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.api_salidas_de_campo_id_seq', 32, true);
          public          admin    false    239            �           0    0 *   api_salidas_de_campo_investigadores_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.api_salidas_de_campo_investigadores_id_seq', 22, true);
          public          admin    false    241            �           0    0    api_sensor_estacion_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.api_sensor_estacion_id_seq', 26, true);
          public          admin    false    231            �           0    0    api_sensor_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.api_sensor_id_seq', 16, true);
          public          admin    false    246            �           0    0 "   api_sensor_salidas_de_campo_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.api_sensor_salidas_de_campo_id_seq', 2, true);
          public          admin    false    247            �           0    0 ,   api_sensor_salidas_de_campo_operarios_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.api_sensor_salidas_de_campo_operarios_id_seq', 2, true);
          public          admin    false    249            �           0    0    api_tipo_salida_de_campo_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.api_tipo_salida_de_campo_id_seq', 6, true);
          public          admin    false    245            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          admin    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          admin    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          admin    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          admin    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          admin    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          admin    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 354, true);
          public          admin    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          admin    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 47, true);
          public          admin    false    202            o           2606    34352 6   api_categoria_componente api_categoria_componente_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.api_categoria_componente
    ADD CONSTRAINT api_categoria_componente_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.api_categoria_componente DROP CONSTRAINT api_categoria_componente_pkey;
       public            admin    false    220            q           2606    34357 .   api_categoria_sensor api_categoria_sensor_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.api_categoria_sensor
    ADD CONSTRAINT api_categoria_sensor_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.api_categoria_sensor DROP CONSTRAINT api_categoria_sensor_pkey;
       public            admin    false    221            �           2606    34549 `   api_componente_estacion_sensores api_componente_estacion__componente_estacion_id_s_66aef67e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores
    ADD CONSTRAINT api_componente_estacion__componente_estacion_id_s_66aef67e_uniq UNIQUE (componente_estacion_id, sensor_estacion_id);
 �   ALTER TABLE ONLY public.api_componente_estacion_sensores DROP CONSTRAINT api_componente_estacion__componente_estacion_id_s_66aef67e_uniq;
       public            admin    false    237    237            w           2606    34376 4   api_componente_estacion api_componente_estacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.api_componente_estacion
    ADD CONSTRAINT api_componente_estacion_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.api_componente_estacion DROP CONSTRAINT api_componente_estacion_pkey;
       public            admin    false    225            �           2606    34537 F   api_componente_estacion_sensores api_componente_estacion_sensores_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores
    ADD CONSTRAINT api_componente_estacion_sensores_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.api_componente_estacion_sensores DROP CONSTRAINT api_componente_estacion_sensores_pkey;
       public            admin    false    237            s           2606    34368 "   api_componente api_componente_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.api_componente
    ADD CONSTRAINT api_componente_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.api_componente DROP CONSTRAINT api_componente_pkey;
       public            admin    false    223            �           2606    41591 i   api_componente_salidas_de_campo_operarios api_componente_salidas_d_componente_salidas_de_ca_27c28905_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios
    ADD CONSTRAINT api_componente_salidas_d_componente_salidas_de_ca_27c28905_uniq UNIQUE (componente_salidas_de_campo_id, investigador_id);
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios DROP CONSTRAINT api_componente_salidas_d_componente_salidas_de_ca_27c28905_uniq;
       public            admin    false    254    254            �           2606    41567 X   api_componente_salidas_de_campo_operarios api_componente_salidas_de_campo_operarios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios
    ADD CONSTRAINT api_componente_salidas_de_campo_operarios_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios DROP CONSTRAINT api_componente_salidas_de_campo_operarios_pkey;
       public            admin    false    254            �           2606    41559 D   api_componente_salidas_de_campo api_componente_salidas_de_campo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo
    ADD CONSTRAINT api_componente_salidas_de_campo_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.api_componente_salidas_de_campo DROP CONSTRAINT api_componente_salidas_de_campo_pkey;
       public            admin    false    252            ~           2606    34444 X   api_estacion_componentes api_estacion_componentes_estacion_id_componente_e_745580b2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_componentes
    ADD CONSTRAINT api_estacion_componentes_estacion_id_componente_e_745580b2_uniq UNIQUE (estacion_id, componente_estacion_id);
 �   ALTER TABLE ONLY public.api_estacion_componentes DROP CONSTRAINT api_estacion_componentes_estacion_id_componente_e_745580b2_uniq;
       public            admin    false    229    229            �           2606    34395 6   api_estacion_componentes api_estacion_componentes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.api_estacion_componentes
    ADD CONSTRAINT api_estacion_componentes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.api_estacion_componentes DROP CONSTRAINT api_estacion_componentes_pkey;
       public            admin    false    229            {           2606    34387    api_estacion api_estacion_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.api_estacion
    ADD CONSTRAINT api_estacion_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.api_estacion DROP CONSTRAINT api_estacion_pkey;
       public            admin    false    227            �           2606    34527 R   api_estacion_sensores api_estacion_sensores_estacion_id_sensor_estac_0e886562_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_sensores
    ADD CONSTRAINT api_estacion_sensores_estacion_id_sensor_estac_0e886562_uniq UNIQUE (estacion_id, sensor_estacion_id);
 |   ALTER TABLE ONLY public.api_estacion_sensores DROP CONSTRAINT api_estacion_sensores_estacion_id_sensor_estac_0e886562_uniq;
       public            admin    false    235    235            �           2606    34515 0   api_estacion_sensores api_estacion_sensores_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.api_estacion_sensores
    ADD CONSTRAINT api_estacion_sensores_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.api_estacion_sensores DROP CONSTRAINT api_estacion_sensores_pkey;
       public            admin    false    235            �           2606    41453 &   api_investigador api_investigador_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.api_investigador
    ADD CONSTRAINT api_investigador_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.api_investigador DROP CONSTRAINT api_investigador_pkey;
       public            admin    false    238            �           2606    41443 ^   api_salidas_de_campo_operarios api_salidas_de_campo_inv_salidas_de_campo_id_inve_af500586_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios
    ADD CONSTRAINT api_salidas_de_campo_inv_salidas_de_campo_id_inve_af500586_uniq UNIQUE (salidas_de_campo_id, investigador_id);
 �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios DROP CONSTRAINT api_salidas_de_campo_inv_salidas_de_campo_id_inve_af500586_uniq;
       public            admin    false    242    242            �           2606    41420 G   api_salidas_de_campo_operarios api_salidas_de_campo_investigadores_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios
    ADD CONSTRAINT api_salidas_de_campo_investigadores_pkey PRIMARY KEY (id);
 q   ALTER TABLE ONLY public.api_salidas_de_campo_operarios DROP CONSTRAINT api_salidas_de_campo_investigadores_pkey;
       public            admin    false    242            �           2606    41412 .   api_salidas_de_campo api_salidas_de_campo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.api_salidas_de_campo
    ADD CONSTRAINT api_salidas_de_campo_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.api_salidas_de_campo DROP CONSTRAINT api_salidas_de_campo_pkey;
       public            admin    false    240            �           2606    34414 ,   api_sensor_estacion api_sensor_estacion_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.api_sensor_estacion
    ADD CONSTRAINT api_sensor_estacion_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.api_sensor_estacion DROP CONSTRAINT api_sensor_estacion_pkey;
       public            admin    false    232            �           2606    41494    api_sensor api_sensor_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.api_sensor
    ADD CONSTRAINT api_sensor_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.api_sensor DROP CONSTRAINT api_sensor_pkey;
       public            admin    false    230            �           2606    41546 e   api_sensor_salidas_de_campo_operarios api_sensor_salidas_de_ca_sensor_salidas_de_campo__7d53ed30_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios
    ADD CONSTRAINT api_sensor_salidas_de_ca_sensor_salidas_de_campo__7d53ed30_uniq UNIQUE (sensor_salidas_de_campo_id, investigador_id);
 �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios DROP CONSTRAINT api_sensor_salidas_de_ca_sensor_salidas_de_campo__7d53ed30_uniq;
       public            admin    false    250    250            �           2606    41522 P   api_sensor_salidas_de_campo_operarios api_sensor_salidas_de_campo_operarios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios
    ADD CONSTRAINT api_sensor_salidas_de_campo_operarios_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios DROP CONSTRAINT api_sensor_salidas_de_campo_operarios_pkey;
       public            admin    false    250            �           2606    41514 <   api_sensor_salidas_de_campo api_sensor_salidas_de_campo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.api_sensor_salidas_de_campo
    ADD CONSTRAINT api_sensor_salidas_de_campo_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.api_sensor_salidas_de_campo DROP CONSTRAINT api_sensor_salidas_de_campo_pkey;
       public            admin    false    248            �           2606    41463 6   api_tipo_salida_de_campo api_tipo_salida_de_campo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.api_tipo_salida_de_campo
    ADD CONSTRAINT api_tipo_salida_de_campo_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.api_tipo_salida_de_campo DROP CONSTRAINT api_tipo_salida_de_campo_pkey;
       public            admin    false    243            P           2606    34484    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            admin    false    209            U           2606    34292 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            admin    false    211    211            X           2606    34245 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            admin    false    211            R           2606    34235    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            admin    false    209            K           2606    34278 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            admin    false    207    207            M           2606    34227 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            admin    false    207            `           2606    34263 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            admin    false    215            c           2606    34307 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            admin    false    215    215            Z           2606    34253    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            admin    false    213            f           2606    34271 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            admin    false    217            i           2606    34321 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            admin    false    217    217            ]           2606    34478     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            admin    false    213            l           2606    34335 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            admin    false    219            F           2606    34219 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            admin    false    205    205            H           2606    34217 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            admin    false    205            D           2606    34209 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            admin    false    203            �           2606    34493 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            admin    false    233            t           1259    34425 .   api_componente_estacion_componente_id_2d1793e0    INDEX     {   CREATE INDEX api_componente_estacion_componente_id_2d1793e0 ON public.api_componente_estacion USING btree (componente_id);
 B   DROP INDEX public.api_componente_estacion_componente_id_2d1793e0;
       public            admin    false    225            u           1259    34426 *   api_componente_estacion_estado_id_29582af6    INDEX     s   CREATE INDEX api_componente_estacion_estado_id_29582af6 ON public.api_componente_estacion USING btree (estado_id);
 >   DROP INDEX public.api_componente_estacion_estado_id_29582af6;
       public            admin    false    225            �           1259    34550 :   api_componente_estacion_se_componente_estacion_id_cf1d440c    INDEX     �   CREATE INDEX api_componente_estacion_se_componente_estacion_id_cf1d440c ON public.api_componente_estacion_sensores USING btree (componente_estacion_id);
 N   DROP INDEX public.api_componente_estacion_se_componente_estacion_id_cf1d440c;
       public            admin    false    237            �           1259    34551 <   api_componente_estacion_sensores_sensor_estacion_id_d898540f    INDEX     �   CREATE INDEX api_componente_estacion_sensores_sensor_estacion_id_d898540f ON public.api_componente_estacion_sensores USING btree (sensor_estacion_id);
 P   DROP INDEX public.api_componente_estacion_sensores_sensor_estacion_id_d898540f;
       public            admin    false    237            x           1259    34471 -   api_componente_estacion_ubicacion_id_63e569c1    INDEX     y   CREATE INDEX api_componente_estacion_ubicacion_id_63e569c1 ON public.api_componente_estacion USING btree (ubicacion_id);
 A   DROP INDEX public.api_componente_estacion_ubicacion_id_63e569c1;
       public            admin    false    225            �           1259    41592 >   api_componente_salidas_de__componente_salidas_de_camp_12506ea7    INDEX     �   CREATE INDEX api_componente_salidas_de__componente_salidas_de_camp_12506ea7 ON public.api_componente_salidas_de_campo_operarios USING btree (componente_salidas_de_campo_id);
 R   DROP INDEX public.api_componente_salidas_de__componente_salidas_de_camp_12506ea7;
       public            admin    false    254            �           1259    41593 3   api_componente_salidas_de__investigador_id_ad579cff    INDEX     �   CREATE INDEX api_componente_salidas_de__investigador_id_ad579cff ON public.api_componente_salidas_de_campo_operarios USING btree (investigador_id);
 G   DROP INDEX public.api_componente_salidas_de__investigador_id_ad579cff;
       public            admin    false    254            �           1259    41578 6   api_componente_salidas_de_campo_componente_id_1eccb488    INDEX     �   CREATE INDEX api_componente_salidas_de_campo_componente_id_1eccb488 ON public.api_componente_salidas_de_campo USING btree (componente_id);
 J   DROP INDEX public.api_componente_salidas_de_campo_componente_id_1eccb488;
       public            admin    false    252            �           1259    41579 :   api_componente_salidas_de_campo_tipo_de_salida_id_93c7cfe3    INDEX     �   CREATE INDEX api_componente_salidas_de_campo_tipo_de_salida_id_93c7cfe3 ON public.api_componente_salidas_de_campo USING btree (tipo_de_salida_id);
 N   DROP INDEX public.api_componente_salidas_de_campo_tipo_de_salida_id_93c7cfe3;
       public            admin    false    252            |           1259    34446 8   api_estacion_componentes_componente_estacion_id_8098dfbc    INDEX     �   CREATE INDEX api_estacion_componentes_componente_estacion_id_8098dfbc ON public.api_estacion_componentes USING btree (componente_estacion_id);
 L   DROP INDEX public.api_estacion_componentes_componente_estacion_id_8098dfbc;
       public            admin    false    229                       1259    34445 -   api_estacion_componentes_estacion_id_dee2c2aa    INDEX     y   CREATE INDEX api_estacion_componentes_estacion_id_dee2c2aa ON public.api_estacion_componentes USING btree (estacion_id);
 A   DROP INDEX public.api_estacion_componentes_estacion_id_dee2c2aa;
       public            admin    false    229            y           1259    34432    api_estacion_estado_id_ebd57e4e    INDEX     ]   CREATE INDEX api_estacion_estado_id_ebd57e4e ON public.api_estacion USING btree (estado_id);
 3   DROP INDEX public.api_estacion_estado_id_ebd57e4e;
       public            admin    false    227            �           1259    34528 *   api_estacion_sensores_estacion_id_59e96ed6    INDEX     s   CREATE INDEX api_estacion_sensores_estacion_id_59e96ed6 ON public.api_estacion_sensores USING btree (estacion_id);
 >   DROP INDEX public.api_estacion_sensores_estacion_id_59e96ed6;
       public            admin    false    235            �           1259    34529 1   api_estacion_sensores_sensor_estacion_id_6f81e86b    INDEX     �   CREATE INDEX api_estacion_sensores_sensor_estacion_id_6f81e86b ON public.api_estacion_sensores USING btree (sensor_estacion_id);
 E   DROP INDEX public.api_estacion_sensores_sensor_estacion_id_6f81e86b;
       public            admin    false    235            �           1259    41431 )   api_salidas_de_campo_estacion_id_204bb50c    INDEX     q   CREATE INDEX api_salidas_de_campo_estacion_id_204bb50c ON public.api_salidas_de_campo USING btree (estacion_id);
 =   DROP INDEX public.api_salidas_de_campo_estacion_id_204bb50c;
       public            admin    false    240            �           1259    41444 7   api_salidas_de_campo_inves_salidas_de_campo_id_5c0169b4    INDEX     �   CREATE INDEX api_salidas_de_campo_inves_salidas_de_campo_id_5c0169b4 ON public.api_salidas_de_campo_operarios USING btree (salidas_de_campo_id);
 K   DROP INDEX public.api_salidas_de_campo_inves_salidas_de_campo_id_5c0169b4;
       public            admin    false    242            �           1259    41445 <   api_salidas_de_campo_investigadores_investigador_id_07b3dd5c    INDEX     �   CREATE INDEX api_salidas_de_campo_investigadores_investigador_id_07b3dd5c ON public.api_salidas_de_campo_operarios USING btree (investigador_id);
 P   DROP INDEX public.api_salidas_de_campo_investigadores_investigador_id_07b3dd5c;
       public            admin    false    242            �           1259    41467 /   api_salidas_de_campo_tipo_de_salida_id_0d73d95a    INDEX     }   CREATE INDEX api_salidas_de_campo_tipo_de_salida_id_0d73d95a ON public.api_salidas_de_campo USING btree (tipo_de_salida_id);
 C   DROP INDEX public.api_salidas_de_campo_tipo_de_salida_id_0d73d95a;
       public            admin    false    240            �           1259    34467 *   api_sensor_estacion_componente_id_58de8fc4    INDEX     s   CREATE INDEX api_sensor_estacion_componente_id_58de8fc4 ON public.api_sensor_estacion USING btree (componente_id);
 >   DROP INDEX public.api_sensor_estacion_componente_id_58de8fc4;
       public            admin    false    232            �           1259    34468 &   api_sensor_estacion_estado_id_c8830485    INDEX     k   CREATE INDEX api_sensor_estacion_estado_id_c8830485 ON public.api_sensor_estacion USING btree (estado_id);
 :   DROP INDEX public.api_sensor_estacion_estado_id_c8830485;
       public            admin    false    232            �           1259    41498 &   api_sensor_estacion_sensor_id_b2d253a5    INDEX     k   CREATE INDEX api_sensor_estacion_sensor_id_b2d253a5 ON public.api_sensor_estacion USING btree (sensor_id);
 :   DROP INDEX public.api_sensor_estacion_sensor_id_b2d253a5;
       public            admin    false    232            �           1259    34470 )   api_sensor_estacion_ubicacion_id_7552e4b2    INDEX     q   CREATE INDEX api_sensor_estacion_ubicacion_id_7552e4b2 ON public.api_sensor_estacion USING btree (ubicacion_id);
 =   DROP INDEX public.api_sensor_estacion_ubicacion_id_7552e4b2;
       public            admin    false    232            �           1259    41547 >   api_sensor_salidas_de_camp_sensor_salidas_de_campo_id_65cfb01b    INDEX     �   CREATE INDEX api_sensor_salidas_de_camp_sensor_salidas_de_campo_id_65cfb01b ON public.api_sensor_salidas_de_campo_operarios USING btree (sensor_salidas_de_campo_id);
 R   DROP INDEX public.api_sensor_salidas_de_camp_sensor_salidas_de_campo_id_65cfb01b;
       public            admin    false    250            �           1259    41548 >   api_sensor_salidas_de_campo_operarios_investigador_id_5a73bed9    INDEX     �   CREATE INDEX api_sensor_salidas_de_campo_operarios_investigador_id_5a73bed9 ON public.api_sensor_salidas_de_campo_operarios USING btree (investigador_id);
 R   DROP INDEX public.api_sensor_salidas_de_campo_operarios_investigador_id_5a73bed9;
       public            admin    false    250            �           1259    41533 .   api_sensor_salidas_de_campo_sensor_id_e3de913e    INDEX     {   CREATE INDEX api_sensor_salidas_de_campo_sensor_id_e3de913e ON public.api_sensor_salidas_de_campo USING btree (sensor_id);
 B   DROP INDEX public.api_sensor_salidas_de_campo_sensor_id_e3de913e;
       public            admin    false    248            �           1259    41534 6   api_sensor_salidas_de_campo_tipo_de_salida_id_24eb6120    INDEX     �   CREATE INDEX api_sensor_salidas_de_campo_tipo_de_salida_id_24eb6120 ON public.api_sensor_salidas_de_campo USING btree (tipo_de_salida_id);
 J   DROP INDEX public.api_sensor_salidas_de_campo_tipo_de_salida_id_24eb6120;
       public            admin    false    248            N           1259    34485    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            admin    false    209            S           1259    34293 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            admin    false    211            V           1259    34294 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            admin    false    211            I           1259    34279 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            admin    false    207            ^           1259    34309 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            admin    false    215            a           1259    34308 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            admin    false    215            d           1259    34323 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            admin    false    217            g           1259    34322 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            admin    false    217            [           1259    34479     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            admin    false    213            j           1259    34346 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            admin    false    219            m           1259    34347 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            admin    false    219            �           1259    34495 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            admin    false    233            �           1259    34494 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            admin    false    233            �           2606    34538 `   api_componente_estacion_sensores api_componente_estac_componente_estacion__cf1d440c_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores
    ADD CONSTRAINT api_componente_estac_componente_estacion__cf1d440c_fk_api_compo FOREIGN KEY (componente_estacion_id) REFERENCES public.api_componente_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_estacion_sensores DROP CONSTRAINT api_componente_estac_componente_estacion__cf1d440c_fk_api_compo;
       public          admin    false    237    2935    225            �           2606    34557 P   api_componente_estacion api_componente_estac_componente_id_2d1793e0_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion
    ADD CONSTRAINT api_componente_estac_componente_id_2d1793e0_fk_api_compo FOREIGN KEY (componente_id) REFERENCES public.api_componente(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.api_componente_estacion DROP CONSTRAINT api_componente_estac_componente_id_2d1793e0_fk_api_compo;
       public          admin    false    225    223    2931            �           2606    34562 L   api_componente_estacion api_componente_estac_estado_id_29582af6_fk_api_categ    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion
    ADD CONSTRAINT api_componente_estac_estado_id_29582af6_fk_api_categ FOREIGN KEY (estado_id) REFERENCES public.api_categoria_componente(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.api_componente_estacion DROP CONSTRAINT api_componente_estac_estado_id_29582af6_fk_api_categ;
       public          admin    false    2927    225    220            �           2606    34543 ^   api_componente_estacion_sensores api_componente_estac_sensor_estacion_id_d898540f_fk_api_senso    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores
    ADD CONSTRAINT api_componente_estac_sensor_estacion_id_d898540f_fk_api_senso FOREIGN KEY (sensor_estacion_id) REFERENCES public.api_sensor_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_estacion_sensores DROP CONSTRAINT api_componente_estac_sensor_estacion_id_d898540f_fk_api_senso;
       public          admin    false    232    2951    237            �           2606    34552 O   api_componente_estacion api_componente_estac_ubicacion_id_63e569c1_fk_api_estac    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion
    ADD CONSTRAINT api_componente_estac_ubicacion_id_63e569c1_fk_api_estac FOREIGN KEY (ubicacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.api_componente_estacion DROP CONSTRAINT api_componente_estac_ubicacion_id_63e569c1_fk_api_estac;
       public          admin    false    2939    227    225            �           2606    41568 X   api_componente_salidas_de_campo api_componente_salid_componente_id_1eccb488_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo
    ADD CONSTRAINT api_componente_salid_componente_id_1eccb488_fk_api_compo FOREIGN KEY (componente_id) REFERENCES public.api_componente_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo DROP CONSTRAINT api_componente_salid_componente_id_1eccb488_fk_api_compo;
       public          admin    false    252    225    2935            �           2606    41580 i   api_componente_salidas_de_campo_operarios api_componente_salid_componente_salidas_d_12506ea7_fk_api_compo    FK CONSTRAINT       ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios
    ADD CONSTRAINT api_componente_salid_componente_salidas_d_12506ea7_fk_api_compo FOREIGN KEY (componente_salidas_de_campo_id) REFERENCES public.api_componente_salidas_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios DROP CONSTRAINT api_componente_salid_componente_salidas_d_12506ea7_fk_api_compo;
       public          admin    false    2996    252    254            �           2606    41585 d   api_componente_salidas_de_campo_operarios api_componente_salid_investigador_id_ad579cff_fk_api_inves    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios
    ADD CONSTRAINT api_componente_salid_investigador_id_ad579cff_fk_api_inves FOREIGN KEY (investigador_id) REFERENCES public.api_investigador(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios DROP CONSTRAINT api_componente_salid_investigador_id_ad579cff_fk_api_inves;
       public          admin    false    238    2971    254            �           2606    41573 \   api_componente_salidas_de_campo api_componente_salid_tipo_de_salida_id_93c7cfe3_fk_api_tipo_    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo
    ADD CONSTRAINT api_componente_salid_tipo_de_salida_id_93c7cfe3_fk_api_tipo_ FOREIGN KEY (tipo_de_salida_id) REFERENCES public.api_tipo_salida_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo DROP CONSTRAINT api_componente_salid_tipo_de_salida_id_93c7cfe3_fk_api_tipo_;
       public          admin    false    252    243    2983            �           2606    34592 X   api_estacion_componentes api_estacion_compone_componente_estacion__8098dfbc_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_componentes
    ADD CONSTRAINT api_estacion_compone_componente_estacion__8098dfbc_fk_api_compo FOREIGN KEY (componente_estacion_id) REFERENCES public.api_componente_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_estacion_componentes DROP CONSTRAINT api_estacion_compone_componente_estacion__8098dfbc_fk_api_compo;
       public          admin    false    229    225    2935            �           2606    34597 O   api_estacion_componentes api_estacion_compone_estacion_id_dee2c2aa_fk_api_estac    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_componentes
    ADD CONSTRAINT api_estacion_compone_estacion_id_dee2c2aa_fk_api_estac FOREIGN KEY (estacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.api_estacion_componentes DROP CONSTRAINT api_estacion_compone_estacion_id_dee2c2aa_fk_api_estac;
       public          admin    false    229    227    2939            �           2606    34567 K   api_estacion api_estacion_estado_id_ebd57e4e_fk_api_categoria_componente_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion
    ADD CONSTRAINT api_estacion_estado_id_ebd57e4e_fk_api_categoria_componente_id FOREIGN KEY (estado_id) REFERENCES public.api_categoria_componente(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.api_estacion DROP CONSTRAINT api_estacion_estado_id_ebd57e4e_fk_api_categoria_componente_id;
       public          admin    false    220    227    2927            �           2606    34602 S   api_estacion_sensores api_estacion_sensore_sensor_estacion_id_6f81e86b_fk_api_senso    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_sensores
    ADD CONSTRAINT api_estacion_sensore_sensor_estacion_id_6f81e86b_fk_api_senso FOREIGN KEY (sensor_estacion_id) REFERENCES public.api_sensor_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.api_estacion_sensores DROP CONSTRAINT api_estacion_sensore_sensor_estacion_id_6f81e86b_fk_api_senso;
       public          admin    false    235    232    2951            �           2606    34607 S   api_estacion_sensores api_estacion_sensores_estacion_id_59e96ed6_fk_api_estacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_sensores
    ADD CONSTRAINT api_estacion_sensores_estacion_id_59e96ed6_fk_api_estacion_id FOREIGN KEY (estacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.api_estacion_sensores DROP CONSTRAINT api_estacion_sensores_estacion_id_59e96ed6_fk_api_estacion_id;
       public          admin    false    2939    235    227            �           2606    41426 Q   api_salidas_de_campo api_salidas_de_campo_estacion_id_204bb50c_fk_api_estacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo
    ADD CONSTRAINT api_salidas_de_campo_estacion_id_204bb50c_fk_api_estacion_id FOREIGN KEY (estacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.api_salidas_de_campo DROP CONSTRAINT api_salidas_de_campo_estacion_id_204bb50c_fk_api_estacion_id;
       public          admin    false    240    227    2939            �           2606    41473 Y   api_salidas_de_campo_operarios api_salidas_de_campo_investigador_id_08865c2f_fk_api_inves    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios
    ADD CONSTRAINT api_salidas_de_campo_investigador_id_08865c2f_fk_api_inves FOREIGN KEY (investigador_id) REFERENCES public.api_investigador(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios DROP CONSTRAINT api_salidas_de_campo_investigador_id_08865c2f_fk_api_inves;
       public          admin    false    242    238    2971            �           2606    41478 ]   api_salidas_de_campo_operarios api_salidas_de_campo_salidas_de_campo_id_ac4b32a2_fk_api_salid    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios
    ADD CONSTRAINT api_salidas_de_campo_salidas_de_campo_id_ac4b32a2_fk_api_salid FOREIGN KEY (salidas_de_campo_id) REFERENCES public.api_salidas_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios DROP CONSTRAINT api_salidas_de_campo_salidas_de_campo_id_ac4b32a2_fk_api_salid;
       public          admin    false    242    240    2974            �           2606    41468 G   api_salidas_de_campo api_salidas_de_campo_tipo_de_salida_id_0d73d95a_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo
    ADD CONSTRAINT api_salidas_de_campo_tipo_de_salida_id_0d73d95a_fk FOREIGN KEY (tipo_de_salida_id) REFERENCES public.api_tipo_salida_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.api_salidas_de_campo DROP CONSTRAINT api_salidas_de_campo_tipo_de_salida_id_0d73d95a_fk;
       public          admin    false    2983    240    243            �           2606    34572 K   api_sensor_estacion api_sensor_estacion_componente_id_58de8fc4_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_estacion
    ADD CONSTRAINT api_sensor_estacion_componente_id_58de8fc4_fk_api_compo FOREIGN KEY (componente_id) REFERENCES public.api_componente_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.api_sensor_estacion DROP CONSTRAINT api_sensor_estacion_componente_id_58de8fc4_fk_api_compo;
       public          admin    false    232    225    2935            �           2606    34577 G   api_sensor_estacion api_sensor_estacion_estado_id_c8830485_fk_api_categ    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_estacion
    ADD CONSTRAINT api_sensor_estacion_estado_id_c8830485_fk_api_categ FOREIGN KEY (estado_id) REFERENCES public.api_categoria_sensor(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.api_sensor_estacion DROP CONSTRAINT api_sensor_estacion_estado_id_c8830485_fk_api_categ;
       public          admin    false    232    221    2929            �           2606    41499 =   api_sensor_estacion api_sensor_estacion_sensor_id_b2d253a5_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_estacion
    ADD CONSTRAINT api_sensor_estacion_sensor_id_b2d253a5_fk FOREIGN KEY (sensor_id) REFERENCES public.api_sensor(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.api_sensor_estacion DROP CONSTRAINT api_sensor_estacion_sensor_id_b2d253a5_fk;
       public          admin    false    232    230    2947            �           2606    34587 P   api_sensor_estacion api_sensor_estacion_ubicacion_id_7552e4b2_fk_api_estacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_estacion
    ADD CONSTRAINT api_sensor_estacion_ubicacion_id_7552e4b2_fk_api_estacion_id FOREIGN KEY (ubicacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.api_sensor_estacion DROP CONSTRAINT api_sensor_estacion_ubicacion_id_7552e4b2_fk_api_estacion_id;
       public          admin    false    227    232    2939            �           2606    41540 `   api_sensor_salidas_de_campo_operarios api_sensor_salidas_d_investigador_id_5a73bed9_fk_api_inves    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios
    ADD CONSTRAINT api_sensor_salidas_d_investigador_id_5a73bed9_fk_api_inves FOREIGN KEY (investigador_id) REFERENCES public.api_investigador(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios DROP CONSTRAINT api_sensor_salidas_d_investigador_id_5a73bed9_fk_api_inves;
       public          admin    false    238    2971    250            �           2606    41523 P   api_sensor_salidas_de_campo api_sensor_salidas_d_sensor_id_e3de913e_fk_api_senso    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo
    ADD CONSTRAINT api_sensor_salidas_d_sensor_id_e3de913e_fk_api_senso FOREIGN KEY (sensor_id) REFERENCES public.api_sensor_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.api_sensor_salidas_de_campo DROP CONSTRAINT api_sensor_salidas_d_sensor_id_e3de913e_fk_api_senso;
       public          admin    false    2951    232    248            �           2606    41535 e   api_sensor_salidas_de_campo_operarios api_sensor_salidas_d_sensor_salidas_de_ca_65cfb01b_fk_api_senso    FK CONSTRAINT       ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios
    ADD CONSTRAINT api_sensor_salidas_d_sensor_salidas_de_ca_65cfb01b_fk_api_senso FOREIGN KEY (sensor_salidas_de_campo_id) REFERENCES public.api_sensor_salidas_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios DROP CONSTRAINT api_sensor_salidas_d_sensor_salidas_de_ca_65cfb01b_fk_api_senso;
       public          admin    false    248    2985    250            �           2606    41528 X   api_sensor_salidas_de_campo api_sensor_salidas_d_tipo_de_salida_id_24eb6120_fk_api_tipo_    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo
    ADD CONSTRAINT api_sensor_salidas_d_tipo_de_salida_id_24eb6120_fk_api_tipo_ FOREIGN KEY (tipo_de_salida_id) REFERENCES public.api_tipo_salida_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo DROP CONSTRAINT api_sensor_salidas_d_tipo_de_salida_id_24eb6120_fk_api_tipo_;
       public          admin    false    2983    243    248            �           2606    34286 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          admin    false    2893    207    211            �           2606    34281 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          admin    false    211    2898    209            �           2606    34272 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          admin    false    2888    207    205            �           2606    34301 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          admin    false    2898    215    209            �           2606    34296 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          admin    false    213    215    2906            �           2606    34315 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          admin    false    207    2893    217            �           2606    34310 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          admin    false    213    2906    217            �           2606    34336 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          admin    false    219    2888    205            �           2606    34341 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          admin    false    2906    219    213            o   �   x���MN1���)| �@�e���3X$�4?��
�s1Ҫi�Ă�����KwWY���bpk���*�Tt���D����J�9�3�8���@�(��u��|���c�'�8�2�A�8u]���_�k���6�V��Z��S�C@����l�>�{Ǵ�	�A#�f:�$���4��L�D��g&�������Ov�������.`�q<�V�ǰ������X1�C)��:1���o����� �>�J      p   �   x�u�MJ1�ur�\�� � ��v󦺺-L*ZIf�[�G��ي�޸����U��+������mr0~i��AE� �㧺҈�7��	=2=$F������cv�7������z�J������]��J֚C^A�w�.�+E$T�:T�e�����*~��EY���{S����ԟ��kl#��¯HB�]'D���I���������~�      r   �
  x��YMs�H=˿�.�a� a;���63`�@�Not�DY*C�J*Z����:b:��G���e�lc�a#� J�̬�x�R�Xm��@��"��A�=�P�(UlΦ��DR���y�k�~4��d�ue*؉S����e��X&i�}/�_&S��TδO�Y$=�I��Vx��'"���7Ŧ<�,���_2�HO.��J���
 p%7�5T)_)�ō�CZIx*"_���Ė�a�2��$�8kn{�a�2M�ǧ�Z�c���c��en�����<�>�$~q	nUǩ���]�s?h��H������S)�Ʀ"e����ȓ<�F��S(X6��퇾9��X�y��t���l��Ty*�{Β�G>קf�htPb�������>��H�HK�b4��;�h_����\��}��Ay�"��g���<9�y���N9��òSs ���a�����Z��GI(��� "�Ղ7=�&�Id6n.��]�v�$N ��H��d��r@�(���4������쵬��22v�� T]��ݲ�+<Y�T�iB^Ns+��pqw+CN�u������.]�"�C��ذ����3,b���( �3f#tBܧȚ�哉��9�<�5�[����ջw����~d�§1��Y�T�<S�����
xlU��U�nN���=	��K6��c����8��ǲh*)���pg EU"�=5�_�.g�WgC�w-ֽ���հ9b��7�\۶˶}lQ,���*�o������FD��<D�G��Ak,�@�P>�X��gM\E��eI�]&�*GFr��%���:��Ǔ�����t����2W83��Gy��=��A�w�={Ij �[6&��q]G��U@���c�T�X CS�k7�CvKd�ŘB¦��<y�=U�^����-������W��˸�q�f"P���)<3�8�A��%#��:�LĬ�ɛ_Ig��'������7~��}�p?����	6!D�5�]�M��n��~���@�n[IƲDf�i��(] ��.�w�V*��O�ٖ��?px�N5[���"Ea>�1a*6���GQ7/��ixH�|��ǣTJtP���-$]�� �~�l��~�Q�N�1��� $�Iq_x��䇾!{����3N���F�<)�l�ɺ�����e�(�#���fe�Q�v�Zw��䀽e�^sO����9?����[����-�bW���������e7��Ϧ��=���&�Ɠ��f����ɪ�o��]�CZ����9�X� ��"�;�G ��uH9p���14#�H�e����j�.9���t񂝹�J�q���I��حs��ov��	�U�G�N�)���V괈P8ahAJ�8��(@��	��)�����[���_����zt
P<��m���_�t
����34�u����utϸ�����Ź��Ch������ I�o�|L�L��j��)��iҫ� B�.#�D�,è�C�����۝ru��X_Ӵ�z��c,s�"BB���U��J��h��)۟���W�i�F).�
�#8nq[WNxZX�&�D��[�5N�"^��"@����M��< �&�)x>vm�����y�ÆW��`��8�JC#��a�u��5R�5l3pi�� R�0%�\�eE3�.�p�78B��Ʉ �Ћ$�,�a��e�εz�; o�V2(�bk+I;rt�_��hٰ�Ag4jv-r����F�B|��6/�%E΂�Gv?�<;	|= �j�iN0I,Jڜ�h�c��({51x��E��4w�P�"�u�D�~)�#p���f��)��w�+��1�D��б+S�f�j�0֩�/A����)��`�YlX9GÇ	�6~,b����_����唇5k� �lc��IO&F�)E��<�h�]�%d��#4m��P
 �Zl���YWb`g_��@uT�<x���	ѕ	�T�-��FX����כ崼�?�H�٘�
���<y��O��X�9e���2��_U��jX�}r7̟ 6T�Iތ_���_n���P4̈́�8f�������9��&��ߥp|���1���e|�#b�jF�y(Krv
,���L��H���n�j�2?٦�����d�8Vi-�+��"�W�]0K�ڍ�����}�Qo���z@w򉡱��5	�58�|%/ؤ��R����z	l�It7А��*\�-�?[O�o�6�F���cv�X�ЗU��e�lg��I6�(�����q�jq�DD�ޗ y�Khv���ڳh�8JU?��\�M�(&Ĺ�r�kP|`��)�H���AX���Kj����r�ٳ�Զ��@��]9��s�&Ǣ������C������F�=z���\�-���e�����%j����4�	��C��*��i�v���֚�3�h���S(kk�D�F�Sc2/��%#��L�����<j�nÓH;�Vݤ(�LT4g->�q&'�'E��x����/�S��H3�|�zy^b=E��:��e���Y�D�Ӹ�݊�K�lld�K�o1�c����M[ܰ�apP�����|v{�����^%>����j�̈́0a=�t�;vֶb�:���H�n�K�
LG1��ۛ^F/Bwlk,'������/ܩ��:{bBc�Π��������D� �KV�?Us��K����IZ������ݕ��mu�;���V��j���d�r�'�7�4���3�nM����)�.�]�v��0��7+ �ص
���s]=�1�#�����uV�����<z��񩲷��?l�s+      t   f  x��W�n�6>�O�c��)��}t�[4m�.6�(��YH�KI)�o���<�_�Ñdvn[�p�����������/�O�$rO���O/�(%�$��֫��=�g�<�z��Ĝ�d��G��7�c�E�Dh�ie��]morS�M��V=*x�kS߬��㗿��>�x������X⣥^DB�f �Ew���e	��Jߍ*U���K�
�t�1����ua� I������;}�g��n83�P�_i��ġhA|�����[@ܔyl�o�w*Ӆa���) ��:�@�)T&�4��vX������3]����A(/��e���:S�q��R�
A���U_dÞ�{�5��%S%۔�)��v��Ɍd&���9i(����*�"�
�$�4��j/�O/Z`�a��[�L*�d������24J*Y�At��U���<Dj�
�Oj���%"�%q("�%I("�%�
�(�}Z}|�g���Ǳ�z~��a�z����,�Io� ���@\��`'�S��	6���YF�J䃈���҆�=��a�a��Tir]Ȃ՚�z+ٓ��\��!�(Nǐ<~�%z��n) �b<y 	�2��̱�����ث'8̧�c�����ٙ�3ba�,&�Y� F��x�p����4CE���]�[`a�P��^�쭪�����tLV�Z�'N����� �|'���W3�v�����U,{{];"�nk{���r����R�,����9XTs5pi%�F��B�H��ɦ��9d��ד��Fao߭���u5�(�-�y�!h [1��3ՓzH�nG5�iU����k�Z��X	��g�T�e�pJ�K���Ik��6��D�BW���^�j
��8�=��<�Mp�/iX�.i�B���PS���G�����0��f+�
�Tn�ڸv)e����Ʋ��Qa� ��
��/:��"��yX`�Fx�""yt��3�F�^I����JIJ����js�"����8B��MgAӰ�)��IR8���܅
.L���pW���d�26J�,�o���������VWX1���+[#3���]�N�3>|�f�ڷ�<}�E%�EGJ�yё���8.7R2q"��H	���%G��z:��$ܗ      �   �   x��ɑ�0�@0[�L�q,���B�AK�P�̈́�%{��
�B���������v���{�Z�mj?8�A��=�P}߿���~I>pR�3=�0p趼OߨW�եY��uF���d���1ӯN�7rZ#g�c���x)�      �   |   x����0��)�F����6�s��준���0�]q�(,�|0�R1�����ǔ�Sf�>7�ʺ���2d>�(7�K+���r�������m��Y.ecB���\�s�� �:&�      �      x�3�4�4�2�F\1z\\\ 	      v   �  x��V�n�8>3O�c����V����Nw� ��㲐I/)Nߨ��>�_lgh�I��M��E������qJ8U��ʐW�x�ݚ֒�	�
z$l+����e�g ��Z4R���ZYÞ����RWJ�VRA������Ҵ�B��rj�Q�3N�^B�!�89p���]�Vk��ǅ�=����cӨ+a	��(΢� ���Ü����h��؅p��Wj��ZԲ���lv0=9�_V��B��N�Q�[�lQ�[%��͈�J��2˕���g�.E-�1��bn�%:Z��u�0�4<��\̲P��M�� ���n���Qow�...�a�F�A,]�Jc��ZC� "F�1W0b&fk�2Z-�R��j�F@�g
Ϊ4z���Q�BP!��K���b4������}6yN�b�X�HL
�$.�"�2���F�kZ�k�7�"�c2(x���/�da��$�������6_�t�k�y��,N��R5)�u_�%&H}�r����<ϳ2ڇ����v��^���t�L�e�y�	�a���%�:	#�gí�o�Z���0*������oʿS�	py����g�2:���K��	��w�GHt���s�s�ñ�܏}A�Ǣ�,������f��i�Ub��5�E��/ ���Lx,��̭��^��4�r�H,:��D#+?QH�M}`�v�ą .++[�՟�����@����g�<�>�n}r�#�3���5����}b��sj~��Gs�=��ǀnR��e�h�D���xFy�cpX�Go|����~@�i��4�
4�$J�^����J�d�1��OF�2!'�J.Q#<�E�S�1�p�232���n;q,>@đϟJ� �p;5n���
����<]������٣}��u��T�b����{������oZ      x   �   x��� D�3���@/鿎xr�'�<۲e���AN&5Y�ds&w��&�5�1����S��K�����Ŏ��;��?9�o���]&�𔍫��>�����ꋍ�+�'[a2	�E�l"�!J^��#Θ��҈��{�J'MΎ\&�ȔM�<d�K��;�&�4J}��,yUP�zUQ����~�9�l�塎�ԕ�z�jz�C����G�؛NitI�[��$G%      ~   `   x���D1Bѵ)f������_���XB��j�q��fܦ�c<^��s�iD3��E����qA'n�FW^���o��Htz:=6��?��      �   �   x�}�;�0Dk�{$��AEJD-�*�D+,/r>"܈��3�b,�f��ffn
nz
�b�YJ�a���&�&��7�%��)vӫ�J�9,��4=[8&/�<~#KS`�T/)����Õ#����$T�)��ԲD�	�MF�k��ԫp�r��90&��6+�ݘC�g�����̬��vc<      �   �  x��V�r�6<S_��T"�����d[�y�7��/C��\�Tl���9��OЏ�g@Q�6N�r�������AYT�j��\�ʪ�����USo��R��ٶ���Sy�O�Q,�b����%��Q�_��	�.��\��n���	��@��S#A���S))�����"�óW~����|��j��Z�W�<��A!Aߐj�ێ"����h5)�e0�Ι=G%�>�����o��=r�2�.�(��ϊ���W�E�H1����}����2�)��=������!�Z��[�Șt?0X`�;��()���\��L\�sm9Y��D�I5�;r��z���cqQ%��7��1wp����ے�.�4=��;AHA=8�p�i�Y��$6C��x�n�*�<�◽�6,Q�p��udZ��Na^����,/f��A�7dG��@�I�j�q�5�Z� 6݇�􀿣ԇc���C�m�Ƭ���B�M��-/O�yW̚��ލuQ�g�Z �m�y�֛�s2�������E&Mq'�j ��v�{��.KL�A5�<�^��C��2,��Bܘ,�i��� �Sբڜ=5�hz?N,�tb�&����j�	�A��pȏ�F�1��iif�y�]�aB��
X����ނ������ĊA
��k5�h�b��=�Z�G����������J���;���Hd�f�A`u�(<LQ�c;~ 6@,��vv���u��(~��m�Xs@�o��Y@��D$�ƿ�5}f'F񬥵�Ƚ�D�����1]`�aԹݳ}ǁ ��>�t��$�� qҠ� nlC͒[�];��erO�C�)�d��v�����b[��gmF�3h���=b���4�8O��y��B"��P�s��/y櫓�m^�BG�C�1�=1-Y&v(�M�bY���=7=	�4|;��P^�scC�,h�|@A"?������Z���#G
�����ћ���[�
:�e��(��F�!M�34�0���<��5�T��)v��f�	�l���D�2��y�㔨2��LeKGKb���s��V����Y;M�q��m���\�{=:ό��"�+�g�M�r]��b�{�*�+Yd�[�\��o����`jθ�W�S��b[}{�D�J��v�X,����       �   ^   x���� ��0}�hw��s~r�"�`��ر�.�DK�q�-�F����lPǞ�j��2庺�c��s1
|#S�P�χ��7��{ �A�_      y     x�e��N�0����H��9ҥ�� K���KN9qA�Q$$ހ��A�PɃ}ι��N����ڌ����l'l	د��b�iʸѮi)���|�=��!�U��!�*�<Km�$���NJ����)��X*?���[D�	�xYo4Y����X��^��-��v�U>�.I96��Q�&�wR{�r��	�2�����ƚ�҄"Is��ꔐ]��e�IK��׎EԾ����S�ξ*1�?�X�Ol��52�PIM�H(-p�f�0_	jJ��-c�'S�r      {   �   x�-Ͻ� ����D����D��n\�Kbɖ�XF�b�{g!�>����U��=��j!��-�*�b�j
M�9dS�TY�K*�C�	$پ�R�R�p	T4FsL�N4��
y�u������a;�����gʳ`f; ;—�q��ʬ���������c������1�      �   V   x��1�  ��}��%h|��pӁ�����c/��I"l�m��k��jWyԝ��lɆ�P���x��^͉%��	?� �      �      x�3�4�4�2�F\1z\\\ 	      �   �   x�]�MN�0F��)r�"�{ fłb=O�F�S9IK��8�\���b�β����^$N�_���N3�:K�C�6T<�C:�Lp:�{xEI$<2I
�T�%�,��үh��O�q��A����{�Bއ�=�3~�m��G�䂴�eOYrl�[�^�T�8�9TrBM�]�I�z��h�'Pj+�Tez�laR�z&�W�{���|S�סz��ŸӋ��a��H����f�-^��E��5�Ӎ1����w      d      x������ � �      f      x������ � �      b     x�}�]��0���*��Q�����H����BU�wtw?!qb;1}��;�q�����\�i�<��E/��'�3�>�w��
�����]3�!XZp��s�!XY�{��v Tg/�~��6�KVXk8�j�����-��X0H�-2�z$\\����++�A���+5��� 9���H�V<`]�t|m��U�������j�: ��\���n�+��e7_����tV[0t����F"1���"�Q���͈�v�כv_����M�#>�N;b`/`�#d]O�m��}}ϣ��|��1�����0�
v�O�~�� �&N��B9��O �{!�M/��κ(k7�ʫ�qP%�za.g�I�^XHY����6�^�Paʊ!CY \� p�	�Z��@������8���qӃ�Re'���$��3���0@u����(a"�N�����àb���P�#IZ�Q�jҧ�Y��S��UoS	m�Q-�R�
]�QmR��&�>rC��$�0����*f���32�DX�ipI���R��qM��ٜ�5��M�U�
6@F���m��d")�Da�x��m|�Ӹf��4,s��]�~f:��W5+`Y�?R�e�+k�w��)[Y�>U�Ê���:��i�en�a嬘?D��� ��?��� �|awA��a^��a���t���Y�c�a�"�!W�`]#V@b\A:H��,8�v�t��$�����w�4��q�P�����$��(#�?ȑ�
!��_�Y���NC�����L��4���r0�Փp~)����1U      h     x�m�]k�0���_�E�F���Ĵ0pb7�9�N��`�6ְƦ���_6�9w///�C�����c�I	�0l��f�l�;O�ޒ�h=?-����d�-�js�N�Ƙ䓙����Gw�|L|�,BLB�C�r&����wZU�d���I���*�����(uڠ�)�m����b���a��x���)s���ϻI�w3-��`68>�ʤ��fDo� f٢��-�;�¼��㱎�+��4R����4�jkѵ*�Te�������+^��� ��z����\���njv      j      x������ � �      l      x������ � �      n      x��][o#��~v��� �� �
�ë��2��M���dw6�vu�&�dHr�L���<�a���?��,Y:U%UIv�A�q��#Y<W�%�|"��)O�mJ'��0'���M=����.&�Y5�����_U����W�ş��ߟ��Hqu*�`���2Λ��}PІ��Vc	
N���7�j�wP���Bi-�& �0*��_z�4fN^T��.�=o�o�4V	�B?�XM�̋���@���8�
U
��i�3�7�tZ�:GB8�'��;g��687��*.�⼚}�Cm4%p�����g�*�� HсJ.x�oe#�� �T��:�IK�nQ/'�����j��t����ꀓ��Z{YG��ڊ���x�8Ӫ��Oo�fq���7�����O�--�ZPi忽��/��⼞V�f�P��mN�+-xy�?�W���V7��ɢ��;[��e��Y���j������W�j���-�pL�p`uZ�ժ��?�}|�#���-��-E���L(_}����%�������?���~o�~�f�b�©8m+Tϼ��o��])�����$X��4v�Mv )U.��$��Dw��lU����ϳ.I0\@F�fQ�+�7�M�_�\雏[��F�e4)+i�s�ou���W�
��*]J4e�$��-�| }E�y�)�W��Cx�$�-�M�.q�8��"D����d�sG�>�V�c#���o���bB�沞_&�l�%�	ε�,���ǅu'/p�\\�)���m<4V�`�����r��X,�h�{�B�j�N��/�%-=���hàq������}5��h�zAd�̠�H���o�Ln��dySO���(B�vƸ�.���o{���Q�����p��f�qry��?���6Z+gAeàO�O���ɴ�NAkO�S�&OI)�9y>�]ސ��su[{�B�*"���h���7�d����dm�a�@EX�Ӏ��5��j�2|��/���Ū��B-U5ز��XN���*�zy�C��D�e�V!k\&�=Yty�L��]5�9Eq(�
e������Wg�������"o��q��-��F'��aQ͖W��|Q,�U=E�2-��V������V�����>
-8�٨o
�M��e�q2�W����b�*2���ꇪx����U����o�~����D��S�J�v+|�D�p�۟Q�J��_I!�~ߋ��S���
.�>���lU�����<)!�!�ط�pu��:y �Rʸ/߽/��3�p~��٫�{15�t���\G�P��Ţ����P1(����U���)�T}U�H�q1�]]]}������ߪwkjè�N_*���Y�=��Wk3�r2��>�]����_�Eqv��%��'��d�	Yͽ��|������ҷ0詩^hǡ�9!h02+�w��k��%~=��.���Ϸo���ĞaS��C8ǲn|V-�G-�x"{�G��y���q"�zi��B�m
.� iS����ۤ������cz\�Ҡ���I���mt�7�Fȝ�j�f��V���q5�p@K�/T
G����4�DM������N9��1���t�0T.j
7�'d��Y�.gv�3o��!:��K�e�j���@x�Ec4�A��KwZ�e�"4��ƿ������SaJ����S.8���հN*µ���沆ȸ��)����r���r�CT����N�1l��!,~5��!�\g�j訹�zUfR��$3>��H9�4�]�����z>ÿ�7���%�jMV�!���X$6�d�M���xF.̠Nz�Nf��_:�s�]Q��e�$r�܌�ki 3��#��x▂�$@�Sw$�vPBvus��/��������jJ�&����&s��^^,&�1?���3Ñ-��Ӛ��'1��˧�������3���x7�e$�g���Ͽ_���YZPx�R�u�Y�l�,j��v�&h�ϖ(|��3ѹ����4�1����ѧ���L��߾��f?ϫ�zѹ��@c���dz�����g�|�NE�ƴ&J���F����F�p}�é��6B����l�������D���M.���r��?�|���)��q!�{~���뷵	���
���>~�1ШyhCS~O�`�O�ę	Y;��lt$ ���G�H-��>F�.+S��nc�B�*��ꑷ7z����K��̹��gfQ��e�l��=(�s{w�� ��� ��L��Ryc�aL�t�ЁA�WfJi ҁS8�^u�|�(�ǒV �Sn�+�[<�^�lxD�QQ�TKpz={�W���I-{�;غ�l
��&|JE F^Fg?xg�`Y�_�r��Ҝ��Bk��㎣2�ʑ*�Oָ>��d8:5,4)�xx�����dУ۪�(�l����<B��18e�;l���-)�2ERj@���8�z:_��x�+'ԧZ�3*a�PrB��_zt��a#O�Q�0�A�jt≋3C�	}�tA߃=� 4mB����|hw߄���(� ��6!:���?�o�a�΋�!�4F����A�䶞����Di� �M(9�;��t�*xB�&$<�Jhґ�t�A��Ԝ�����QlҴ	Q
�f�ZN�^�r��H&ǘ�,nO:L�g*ߦҮ��1�2p�Tk��!W.��O!��{67�����1t�ag��Q�\�e��P�:�Iʕ��&�:t����b�#l�ˠ $���#�jAF�?���E]q��T����3W*�?��:�?��kE��1V�V��QD\��*�Â�6p=�(������`w$ن&Q��Ҝ���.ȣ�.��E�-@�FBHC��dTI��e6���u��X���^����,�9*�(Ao���aiJ+�����H�Lm�RFZ�E���IB)��V��b�2����t�XL�Nzb57lh�)O/�Hgd��{v|=߮1/�O���]L�͑��H�+��&����ۿ.W�i����j�`w�Bt��^��e�N��ӳ4��H�>*0�J7���1>{g]�8����}���U�d��1���-�ҳ=��q(ɡ<��H�R!�]�]{`��b�lCNiD��#M�����2�'w�G���(AQ�l�my�$����թI�9\���a]Jv�{����T�n���l�!\�-ݲ5��+�SG�e������qS�Bo,Yk�B�O�fmB��S��eݸS�*W�NvY�m�c�`���t�@�x)ep�ΐ��D/u�e�������~�P�~~�J
!b�����*^�;���U���^Uˢ������,�c���������˽[f�u�g�k�>���U���z�hw��2t�h���Q��Q�I��d���qB�?�l��|��曾�>�@�Z0
������������5 �1 [J�r����Pў(}����3 �1�XzR�ƃ���ݕ�)v��6�4�"S������8Nw �k`�r�FEw�T�V�+�O�3�ewΩ��\�q(�V����9��lrQ|�\=y���R�ĺ�Ǣ�N�̀�هE���|���������%��
�@ǻ��b��t�����LV{�d�i�ZPb6�9V�{�Ra��[F��=8�"��wբZ,�������t���n\o���<��9t�SZ��\���Ie楷&��+Ӂx�$�`�����vW6S���� o�Ij�)e\V�n�7�m��zTQv�	)w����h4���`����c��MB3:J�C����8'���FB���DQٺ�yM�2.C�	��Q��!�u���m�q��zi����xJ�\.���#�=gV1襛}*g���zΧ��J�Qes}����HZ/8��P�i�rޥÏ9�SrNG�UJm呜�˶�H�U�:���q��2QѽǏ\�o��	��5k����>8�#�"��©�}�G�!�9o��N������|�7�>P�2�����e��Rɰ0G�#q�P�t>����磠���K0�k���Ut�
,����Y�F�c���^�$�r[��C K  ܉ 9f�G�BЩ�z��� T�t�����ya�s��(��r��Sb�s1�Z����w�˗呶�����U����(�n���#wga[�@�2�8��r����qk�8��30t�e�r����2*��ɀ����I?�$��US*�*�`�!�Y�#%��i?cD:d=r��@Br��+�Z���[D#Ql$�R1�6����Tf�M�����.ػ�M�D��縿͢;X��JɎ�i�q������h.ù]�R�[C�0� *��]-��6�"-%[w[��T%�:�x��ݨ���Q	�w��1&5oHg �1jN	�n�S���R�愣}?��u�\�@�z��t��w�Ǫ8�5ģmB s�5I�a���D�ni������䪇�B�\T2ahO�\�c%�����Rn�� �|��
T>2� է鎣�}9�4�K�����_uC��\�B7#��>�(C��*�.�����W�l����:�	�[���1���fɰ�U+�����ȡ��s�J�7U���Ȥ��ȱUA8���Y� =i0�6�=�c�h��ӑ��R��t�v��"Nf(J���A����QT�QQ8�JG�:2�b���6�_�p M�Va���`�@Ǎ�r�xڠ�X�_��r��T�M�W�@��Wou��;ωF��s*OI�OZ�]7�20J��Q� ���F߲T�D�x��Z����7f �\	&���Ƕ�Oپ{��7/Y����2��zzpe�c�Qd�9GP�z\�5]�Gk"CʇC�窌Z'.��zb�$�3��n;��4W&&�FX��Ʀ77 �K;OS�D�v�{��Q��e�ěr�����r�;:�lK���9fR<hHҭ�p��ݣdi�q���6�O=А%Ԃ���W
�;$k�2,��V���́l��&��^�����ǱA��֠4� �Uax��@�I� �+o,e���}�����sU�Z&u�=�]��{{���p�J j�T�w��=z��B4$h�S�X}����=�i�ӵM�P���{j\GO��~��n$'B�����s_[X��mD���Iia��0�x�Tp4$�#��}���ed�2\�Ml����Ⱥo9��9��t�E䛨~��5x�����@�gPY���i��&%���٫޻�h��b�gaS�C�����IF�xa�$�h�-�����SƎ�Z�LMIt������82�5}%�N�=�Á����xN�cZ�B?�o�Jh�j�]���<n�A��ЉX�	-��45\�:���X�O쒱��:Y�R�h�P|j$\T�p��V��Y�-�ws/%���;0/w{k����cuU,삎)2˥��F�ĺ�n���I���gC�6ұ~w�|@.�;T� 2�-��_q�����\�����O��ֽ��>?Kpt�=u���������.�:�V�$�;z�5�O��_?=/+!����Y9.��Q�p:�/�6�Kq���Ɇ����Z������mW���\�j���pYJ9.ԈM>� �s�2�mw,㶴ScW����|=�ؐ�	#g�!]��d�[��I"��ʙA��M�W����v�w��P�z%�˚П���9��3g�f7���� ݂�Fl��ƥ���s��ܛ�����;����?k\��w����Ŵ��3#/9C|�J(�v��psS�ِ��[��F=�7����/��]6����!]k���0?� dT���묲���xf�(^�}v��?���S{���Ꮎ�m��a�\9(j�D�;�E7���%���;M3�:@i�w	�!�R�zص��ε;&�� ґ����2&j�Ut��a�K�
P�*1�N.��=n
��?�8��F�SWk�+�T\d��6�z���S����w ���Ck=]+�a_%pIW>>d�s�"�$�{����s��s��p_NV���Ҙ'¥b�f)�F�t�68�;i�"֡�V��VA�slPWr|�x"�������
;/PI_ys�<5��ԩ+d��%� ���:G@��R��ɒ�K�e(�H8u���VM�aH����O@����55j�����CM�������X��S7��D �O�`�^�;�#S�`/ApMW�ד�7h��bt3-�ͧs\i������7����e�k\��J/ʴ��O�_&sĽ\��mY�]\����ېW;o�1����s:��14��Ѯ�VϮ�j�?Nf�y���)W��y3��h��DVg��uS��Sq^�ĜG����#��4!����"�3�M��-�/�C����s�x��_W�nc�5�{�8c�_�����-�g��)���E�(LH*nB#�ʮ�����#nz��Z�ߏ%9V|d��4Y� �&���ႁ>��'�wOog��
����81pQ�1g!H��v�Dr.L��.5�,|@3��� �k��'|�:���D�!�������vd��١�)���*$t��ؘ^
�Iy���'�?��hA��A�-�@)�[��=n�;;@P����KW;�4���[l+�䐮Q���a��5�(�Kd2������\k���I��n�e����p��á3K�ℯ�����6�c���$�Y��O��	�9�!M�1z�;��i�A�m¿��T�� ��,Ƿ�UCH�Rm��3\�6>(T��ߎ����X:���>\�%�!�-�=�Z"��D7�M���ǋ �O�/)����R�#A��X���R%���	�#��9u���`ӓ-���������5����啊])�ΩH��\i����'j�� .��v�.=i�d8;^�:��K��/�[�SV����m�ujC'=J4�F���Nt�2���K������6�8}c��ykȧ�>,��A'��v8�m>򑑯�=�̷�\�^+��KM�>6�J6J��̀1)	�hw��h����ToM�N��ن���tN�\�mbr*���l���J���kT�F�N ��.]#:�hiE�֩� ��±�4n�Ԇn��˗�t^4��x�v#�e:e�G�;]�D�+ց@����ћ�k�lTfb�vR��[�_�NZ�i�D������{~�p�3�Nz}�8m��%h������J�M�]6� �+�W��ѣ��8��      `   �   x�eOۊ!}6S�޶�/	N�����utKe��kp
�]f�%?aop)7�(Ve�p�̜eIp�`Q�p2^b���L�#��Qji}?��`b��,��y	Ib\6�RT������lGZЯ��6���7�À�б�׏s�Z)`O݋w�P�D�c�{n|�$���֏����<�n^����uߖ� ^A|��      ^   �  x���k��:�gV��!��^�#q��8�v���Kɖ��A~$����C�p:��������OJ)ͽ��zB�����R���0H��<U���{²e0��Su�5���3�F@� ��K��}������ ����\��H�Ҡ��p�:M{?��W8�j����H˃����9U����M��3�"`w�b���G���{u��P[�}�r����Pw�Qw����"n՟p��_�ԡ�aO��,E�Գ���V5�w*���U@�2z)��~��pd�h���N f^j\�~��j�h���d�1�exEш��?�n�7�k�"ΰ�I�f;m�wum.��v}�K�umnu�W_�Q1��0�L�r�Н7>k�r��ĳ��y�/Rm�/�,j�������d�v8���2��������?Ff�����ӓo�*f�� |nA@|\� ����v���)�U�iK�p��*�S2�����c��1~\3�{�maW*�&?6R��F���%�B[K�zu�����$]XC
Ǖ9�n��0���B�:������a��uITXd���	�A]�>��}��mW0�u)��2���t��.���
9�P.�X���O;��e�P�	�%�dS2R"��pmaD\�X"��ǝ��f����I�L��%��{�!��p�`�=a^0N� c٤>�.0;X���іd���є�vSPN-���xf��8M����=��K����A9\�70�%,�I��)<:cƕs�P�`�q[On+Åf\9�A&f�c�[#M;s�"¡\����p�*\Q���h�T%["��6�)\:�i�=��%��k�j�s�P�a�������:gyǢ߰�J���%t���ۅY���K��/����lIL��_&ƃm��� ��-�6���h�R�:��B��E^*�u�"�Ů����;�?�C&cgh��ϸH_�7*M,��[紑:V�o,u7���٤fK�B90:��_����@~�0      |     x����n�0�u�}�D�1i�� �b���f�%;�А�য়��H�����;�_:�>��6G��Z�t�9i�ص%��NT���'�����S��_n<�0�.� V�<�0ϧ<�!�/$�����+�.��SBv�'�CoE(��/n"�5.��P&L�i��<�G_���:o��aC޾�Y�_�d��W�'W�����զN��f+�^7�������꺀�s�BW5a�dU��Ox)�
x�E<*P�?��EY�kVw�E?� �#�c���c`�Y�E�9�����u{3h�A�Z��"�0��=1Y��0���Ga��.S��5��Э4�G�&�L����L��n��v>�x#�Эwk��-��Nq�d���8�B�M �"�k���,!ǰ��&œ݀����fg���l����2oŐ��ٷ�d0����!� ��h�9�9��f�Y�a�^��>+z�,y�����e��A�ȒZt�����mY
-���^^�i���ʾ+T��/�ǿ#���L����b6�� ��     