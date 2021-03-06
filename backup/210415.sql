PGDMP         #                y            remo    12.4    12.4 9   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    34198    remo    DATABASE     �   CREATE DATABASE remo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE remo;
                admin    false                        1259    41623    api_calendario_salidas_de_campo    TABLE     �   CREATE TABLE public.api_calendario_salidas_de_campo (
    id integer NOT NULL,
    fecha_fin date,
    observaciones text,
    estacion_id integer,
    tipo_de_salida_id integer,
    fecha_inicio date
);
 3   DROP TABLE public.api_calendario_salidas_de_campo;
       public         heap    admin    false            �            1259    41621 &   api_calendario_salidas_de_campo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_calendario_salidas_de_campo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.api_calendario_salidas_de_campo_id_seq;
       public          admin    false    256            �           0    0 &   api_calendario_salidas_de_campo_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.api_calendario_salidas_de_campo_id_seq OWNED BY public.api_calendario_salidas_de_campo.id;
          public          admin    false    255            �            1259    34348    api_categoria_componente    TABLE       CREATE TABLE public.api_categoria_componente (
    id integer NOT NULL,
    categoria character varying(100) NOT NULL,
    requerimientos character varying(100) NOT NULL,
    color character varying(100) NOT NULL,
    simbolo character varying(100) NOT NULL
);
 ,   DROP TABLE public.api_categoria_componente;
       public         heap    admin    false                       1259    41676    api_categoria_sensor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_categoria_sensor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.api_categoria_sensor_id_seq;
       public          admin    false            �            1259    34353    api_categoria_sensor    TABLE     A  CREATE TABLE public.api_categoria_sensor (
    id integer DEFAULT nextval('public.api_categoria_sensor_id_seq'::regclass) NOT NULL,
    categoria character varying(200) NOT NULL,
    requerimientos character varying(100) NOT NULL,
    color character varying(100) NOT NULL,
    simbolo character varying(100) NOT NULL
);
 (   DROP TABLE public.api_categoria_sensor;
       public         heap    admin    false    259                       1259    41918    api_codigo_sensor    TABLE     �   CREATE TABLE public.api_codigo_sensor (
    id integer NOT NULL,
    id_sensor character varying(10) NOT NULL,
    componente_id integer,
    estacion_id integer,
    sensor_id integer
);
 %   DROP TABLE public.api_codigo_sensor;
       public         heap    admin    false                       1259    41916    api_codigo_sensor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_codigo_sensor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.api_codigo_sensor_id_seq;
       public          admin    false    263            �           0    0    api_codigo_sensor_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.api_codigo_sensor_id_seq OWNED BY public.api_codigo_sensor.id;
          public          admin    false    262            �            1259    34360    api_componente    TABLE     �  CREATE TABLE public.api_componente (
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
          public          admin    false    253                       1259    41694    api_data    TABLE     �   CREATE TABLE public.api_data (
    id integer NOT NULL,
    fecha timestamp with time zone NOT NULL,
    sensor_id integer,
    valor double precision NOT NULL
);
    DROP TABLE public.api_data;
       public         heap    admin    false                       1259    41692    api_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.api_data_id_seq;
       public          admin    false    261            �           0    0    api_data_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.api_data_id_seq OWNED BY public.api_data.id;
          public          admin    false    260            �            1259    34379    api_estacion    TABLE     I  CREATE TABLE public.api_estacion (
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
    foto character varying(100),
    color character varying(200),
    tipo_id integer
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
          public          admin    false    249                       1259    41668    api_tipo_estacion    TABLE     �   CREATE TABLE public.api_tipo_estacion (
    id integer NOT NULL,
    tipo character varying(200) NOT NULL,
    simbolo character varying(100) NOT NULL
);
 %   DROP TABLE public.api_tipo_estacion;
       public         heap    admin    false                       1259    41666    api_tipo_estacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_tipo_estacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.api_tipo_estacion_id_seq;
       public          admin    false    258            �           0    0    api_tipo_estacion_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.api_tipo_estacion_id_seq OWNED BY public.api_tipo_estacion.id;
          public          admin    false    257            �            1259    41464    api_tipo_salida_de_campo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_tipo_salida_de_campo_id_seq
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
       public         heap    admin    false            _           2604    41626 "   api_calendario_salidas_de_campo id    DEFAULT     �   ALTER TABLE ONLY public.api_calendario_salidas_de_campo ALTER COLUMN id SET DEFAULT nextval('public.api_calendario_salidas_de_campo_id_seq'::regclass);
 Q   ALTER TABLE public.api_calendario_salidas_de_campo ALTER COLUMN id DROP DEFAULT;
       public          admin    false    256    255    256            b           2604    41968    api_codigo_sensor id    DEFAULT     |   ALTER TABLE ONLY public.api_codigo_sensor ALTER COLUMN id SET DEFAULT nextval('public.api_codigo_sensor_id_seq'::regclass);
 C   ALTER TABLE public.api_codigo_sensor ALTER COLUMN id DROP DEFAULT;
       public          admin    false    262    263    263            O           2604    41597    api_componente id    DEFAULT     v   ALTER TABLE ONLY public.api_componente ALTER COLUMN id SET DEFAULT nextval('public.api_componente_id_seq'::regclass);
 @   ALTER TABLE public.api_componente ALTER COLUMN id DROP DEFAULT;
       public          admin    false    222    223    223            P           2604    41598    api_componente_estacion id    DEFAULT     �   ALTER TABLE ONLY public.api_componente_estacion ALTER COLUMN id SET DEFAULT nextval('public.api_componente_estacion_id_seq'::regclass);
 I   ALTER TABLE public.api_componente_estacion ALTER COLUMN id DROP DEFAULT;
       public          admin    false    225    224    225            V           2604    41599 #   api_componente_estacion_sensores id    DEFAULT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores ALTER COLUMN id SET DEFAULT nextval('public.api_componente_estacion_sensores_id_seq'::regclass);
 R   ALTER TABLE public.api_componente_estacion_sensores ALTER COLUMN id DROP DEFAULT;
       public          admin    false    236    237    237            ]           2604    41600 "   api_componente_salidas_de_campo id    DEFAULT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo ALTER COLUMN id SET DEFAULT nextval('public.api_componente_salidas_de_campo_id_seq'::regclass);
 Q   ALTER TABLE public.api_componente_salidas_de_campo ALTER COLUMN id DROP DEFAULT;
       public          admin    false    251    252    252            ^           2604    41601 ,   api_componente_salidas_de_campo_operarios id    DEFAULT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios ALTER COLUMN id SET DEFAULT nextval('public.api_componente_salidas_de_campo_operarios_id_seq'::regclass);
 [   ALTER TABLE public.api_componente_salidas_de_campo_operarios ALTER COLUMN id DROP DEFAULT;
       public          admin    false    254    253    254            a           2604    41697    api_data id    DEFAULT     j   ALTER TABLE ONLY public.api_data ALTER COLUMN id SET DEFAULT nextval('public.api_data_id_seq'::regclass);
 :   ALTER TABLE public.api_data ALTER COLUMN id DROP DEFAULT;
       public          admin    false    261    260    261            Q           2604    41602    api_estacion id    DEFAULT     r   ALTER TABLE ONLY public.api_estacion ALTER COLUMN id SET DEFAULT nextval('public.api_estacion_id_seq'::regclass);
 >   ALTER TABLE public.api_estacion ALTER COLUMN id DROP DEFAULT;
       public          admin    false    227    226    227            R           2604    41603    api_estacion_componentes id    DEFAULT     �   ALTER TABLE ONLY public.api_estacion_componentes ALTER COLUMN id SET DEFAULT nextval('public.api_estacion_componentes_id_seq'::regclass);
 J   ALTER TABLE public.api_estacion_componentes ALTER COLUMN id DROP DEFAULT;
       public          admin    false    228    229    229            U           2604    41604    api_estacion_sensores id    DEFAULT     �   ALTER TABLE ONLY public.api_estacion_sensores ALTER COLUMN id SET DEFAULT nextval('public.api_estacion_sensores_id_seq'::regclass);
 G   ALTER TABLE public.api_estacion_sensores ALTER COLUMN id DROP DEFAULT;
       public          admin    false    234    235    235            X           2604    41605    api_salidas_de_campo id    DEFAULT     �   ALTER TABLE ONLY public.api_salidas_de_campo ALTER COLUMN id SET DEFAULT nextval('public.api_salidas_de_campo_id_seq'::regclass);
 F   ALTER TABLE public.api_salidas_de_campo ALTER COLUMN id DROP DEFAULT;
       public          admin    false    239    240    240            Y           2604    41606 !   api_salidas_de_campo_operarios id    DEFAULT     �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios ALTER COLUMN id SET DEFAULT nextval('public.api_salidas_de_campo_investigadores_id_seq'::regclass);
 P   ALTER TABLE public.api_salidas_de_campo_operarios ALTER COLUMN id DROP DEFAULT;
       public          admin    false    241    242    242            T           2604    41607    api_sensor_estacion id    DEFAULT     �   ALTER TABLE ONLY public.api_sensor_estacion ALTER COLUMN id SET DEFAULT nextval('public.api_sensor_estacion_id_seq'::regclass);
 E   ALTER TABLE public.api_sensor_estacion ALTER COLUMN id DROP DEFAULT;
       public          admin    false    232    231    232            [           2604    41608    api_sensor_salidas_de_campo id    DEFAULT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo ALTER COLUMN id SET DEFAULT nextval('public.api_sensor_salidas_de_campo_id_seq'::regclass);
 M   ALTER TABLE public.api_sensor_salidas_de_campo ALTER COLUMN id DROP DEFAULT;
       public          admin    false    247    248    248            \           2604    41609 (   api_sensor_salidas_de_campo_operarios id    DEFAULT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios ALTER COLUMN id SET DEFAULT nextval('public.api_sensor_salidas_de_campo_operarios_id_seq'::regclass);
 W   ALTER TABLE public.api_sensor_salidas_de_campo_operarios ALTER COLUMN id DROP DEFAULT;
       public          admin    false    249    250    250            `           2604    41671    api_tipo_estacion id    DEFAULT     |   ALTER TABLE ONLY public.api_tipo_estacion ALTER COLUMN id SET DEFAULT nextval('public.api_tipo_estacion_id_seq'::regclass);
 C   ALTER TABLE public.api_tipo_estacion ALTER COLUMN id DROP DEFAULT;
       public          admin    false    257    258    258            G           2604    41610    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          admin    false    208    209    209            H           2604    41611    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    211    210    211            F           2604    41612    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          admin    false    206    207    207            I           2604    41613    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          admin    false    212    213    213            J           2604    41614    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          admin    false    214    215    215            K           2604    41615    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    217    216    217            L           2604    41616    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          admin    false    219    218    219            E           2604    41617    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          admin    false    204    205    205            D           2604    41618    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          admin    false    202    203    203            �          0    41623    api_calendario_salidas_de_campo 
   TABLE DATA           �   COPY public.api_calendario_salidas_de_campo (id, fecha_fin, observaciones, estacion_id, tipo_de_salida_id, fecha_inicio) FROM stdin;
    public          admin    false    256   �      �          0    34348    api_categoria_componente 
   TABLE DATA           a   COPY public.api_categoria_componente (id, categoria, requerimientos, color, simbolo) FROM stdin;
    public          admin    false    220    �      �          0    34353    api_categoria_sensor 
   TABLE DATA           ]   COPY public.api_categoria_sensor (id, categoria, requerimientos, color, simbolo) FROM stdin;
    public          admin    false    221   $�      �          0    41918    api_codigo_sensor 
   TABLE DATA           a   COPY public.api_codigo_sensor (id, id_sensor, componente_id, estacion_id, sensor_id) FROM stdin;
    public          admin    false    263   �      �          0    34360    api_componente 
   TABLE DATA           �   COPY public.api_componente (id, nombre, funcion, referencia, descripcion, frecuencia_calibracion, frecuencia_mantenimiento, voltaje, corriente, rango_medicion, rango_operacion, exactitud, resolucion, protocolo_comunicacion, datasheet) FROM stdin;
    public          admin    false    223   N�      �          0    34371    api_componente_estacion 
   TABLE DATA           �   COPY public.api_componente_estacion (id, serial, numero_inventario, protocolo_comunicacion_uso, componente_id, estado_id, ubicacion_id, frecuencia_muestreo, foto, observaciones, responsable) FROM stdin;
    public          admin    false    225   T�      �          0    34532     api_componente_estacion_sensores 
   TABLE DATA           j   COPY public.api_componente_estacion_sensores (id, componente_estacion_id, sensor_estacion_id) FROM stdin;
    public          admin    false    237   ��      �          0    41551    api_componente_salidas_de_campo 
   TABLE DATA           u   COPY public.api_componente_salidas_de_campo (id, fecha, observaciones, componente_id, tipo_de_salida_id) FROM stdin;
    public          admin    false    252   s�      �          0    41562 )   api_componente_salidas_de_campo_operarios 
   TABLE DATA           x   COPY public.api_componente_salidas_de_campo_operarios (id, componente_salidas_de_campo_id, investigador_id) FROM stdin;
    public          admin    false    254   ��      �          0    41694    api_data 
   TABLE DATA           ?   COPY public.api_data (id, fecha, sensor_id, valor) FROM stdin;
    public          admin    false    261   ��      �          0    34379    api_estacion 
   TABLE DATA           �   COPY public.api_estacion (id, id_estacion, nombre, latitud, longitud, altura, sitio, descripcion, responsable, protocolo_comunicacion, fecha_inicio_registro, estado_id, observaciones, foto, color, tipo_id) FROM stdin;
    public          admin    false    227   ��      �          0    34390    api_estacion_componentes 
   TABLE DATA           [   COPY public.api_estacion_componentes (id, estacion_id, componente_estacion_id) FROM stdin;
    public          admin    false    229   ��      �          0    34510    api_estacion_sensores 
   TABLE DATA           T   COPY public.api_estacion_sensores (id, estacion_id, sensor_estacion_id) FROM stdin;
    public          admin    false    235   ��      �          0    41397    api_investigador 
   TABLE DATA           =   COPY public.api_investigador (id, nombre, cargo) FROM stdin;
    public          admin    false    238   ��      �          0    41404    api_salidas_de_campo 
   TABLE DATA           h   COPY public.api_salidas_de_campo (id, fecha, observaciones, estacion_id, tipo_de_salida_id) FROM stdin;
    public          admin    false    240   ��      �          0    41415    api_salidas_de_campo_operarios 
   TABLE DATA           b   COPY public.api_salidas_de_campo_operarios (id, salidas_de_campo_id, investigador_id) FROM stdin;
    public          admin    false    242    �      �          0    34398 
   api_sensor 
   TABLE DATA           R   COPY public.api_sensor (id, nombre, abreviatura, descripcion, unidad) FROM stdin;
    public          admin    false    230   ��      �          0    34409    api_sensor_estacion 
   TABLE DATA           s   COPY public.api_sensor_estacion (id, componente_id, estado_id, sensor_id, ubicacion_id, observaciones) FROM stdin;
    public          admin    false    232   ��      �          0    41506    api_sensor_salidas_de_campo 
   TABLE DATA           m   COPY public.api_sensor_salidas_de_campo (id, fecha, observaciones, sensor_id, tipo_de_salida_id) FROM stdin;
    public          admin    false    248   �       �          0    41517 %   api_sensor_salidas_de_campo_operarios 
   TABLE DATA           p   COPY public.api_sensor_salidas_de_campo_operarios (id, sensor_salidas_de_campo_id, investigador_id) FROM stdin;
    public          admin    false    250   �       �          0    41668    api_tipo_estacion 
   TABLE DATA           >   COPY public.api_tipo_estacion (id, tipo, simbolo) FROM stdin;
    public          admin    false    258         �          0    41421    api_tipo_salida_de_campo 
   TABLE DATA           d   COPY public.api_tipo_salida_de_campo (id, tipo, color, simbolo, color2, requerimientos) FROM stdin;
    public          admin    false    243   `      �          0    34230 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          admin    false    209   c      �          0    34240    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          admin    false    211   �      �          0    34222    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          admin    false    207   �      �          0    34248 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          admin    false    213   �      �          0    34258    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          admin    false    215   �      �          0    34266    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          admin    false    217         �          0    34326    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          admin    false    219   ,      �          0    34212    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          admin    false    205   �.      �          0    34201    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          admin    false    203   �/      �          0    34486    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          admin    false    233   �5      �           0    0 &   api_calendario_salidas_de_campo_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.api_calendario_salidas_de_campo_id_seq', 23, true);
          public          admin    false    255            �           0    0    api_categoria_sensor_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.api_categoria_sensor_id_seq', 5, true);
          public          admin    false    259            �           0    0    api_codigo_sensor_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.api_codigo_sensor_id_seq', 3, true);
          public          admin    false    262            �           0    0    api_componente_estacion_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.api_componente_estacion_id_seq', 69, true);
          public          admin    false    224            �           0    0 '   api_componente_estacion_sensores_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.api_componente_estacion_sensores_id_seq', 35, true);
          public          admin    false    236            �           0    0    api_componente_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.api_componente_id_seq', 57, true);
          public          admin    false    222            �           0    0 &   api_componente_salidas_de_campo_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.api_componente_salidas_de_campo_id_seq', 38, true);
          public          admin    false    251            �           0    0 0   api_componente_salidas_de_campo_operarios_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.api_componente_salidas_de_campo_operarios_id_seq', 2, true);
          public          admin    false    253            �           0    0    api_data_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.api_data_id_seq', 35980, true);
          public          admin    false    260            �           0    0    api_estacion_componentes_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.api_estacion_componentes_id_seq', 66, true);
          public          admin    false    228            �           0    0    api_estacion_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.api_estacion_id_seq', 10, true);
          public          admin    false    226            �           0    0    api_estacion_sensores_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.api_estacion_sensores_id_seq', 44, true);
          public          admin    false    234            �           0    0    api_investigador_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.api_investigador_id_seq', 6, true);
          public          admin    false    244            �           0    0    api_salidas_de_campo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.api_salidas_de_campo_id_seq', 60, true);
          public          admin    false    239            �           0    0 *   api_salidas_de_campo_investigadores_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.api_salidas_de_campo_investigadores_id_seq', 32, true);
          public          admin    false    241                        0    0    api_sensor_estacion_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.api_sensor_estacion_id_seq', 27, true);
          public          admin    false    231                       0    0    api_sensor_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.api_sensor_id_seq', 17, true);
          public          admin    false    246                       0    0 "   api_sensor_salidas_de_campo_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.api_sensor_salidas_de_campo_id_seq', 19, true);
          public          admin    false    247                       0    0 ,   api_sensor_salidas_de_campo_operarios_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.api_sensor_salidas_de_campo_operarios_id_seq', 2, true);
          public          admin    false    249                       0    0    api_tipo_estacion_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.api_tipo_estacion_id_seq', 2, true);
          public          admin    false    257                       0    0    api_tipo_salida_de_campo_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.api_tipo_salida_de_campo_id_seq', 6, true);
          public          admin    false    245                       0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          admin    false    208                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          admin    false    210                       0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 104, true);
          public          admin    false    206            	           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          admin    false    214            
           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          admin    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          admin    false    216                       0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 507, true);
          public          admin    false    218                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 26, true);
          public          admin    false    204                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 74, true);
          public          admin    false    202            �           2606    41631 D   api_calendario_salidas_de_campo api_calendario_salidas_de_campo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_calendario_salidas_de_campo
    ADD CONSTRAINT api_calendario_salidas_de_campo_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.api_calendario_salidas_de_campo DROP CONSTRAINT api_calendario_salidas_de_campo_pkey;
       public            admin    false    256            �           2606    34352 6   api_categoria_componente api_categoria_componente_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.api_categoria_componente
    ADD CONSTRAINT api_categoria_componente_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.api_categoria_componente DROP CONSTRAINT api_categoria_componente_pkey;
       public            admin    false    220            �           2606    41675 .   api_categoria_sensor api_categoria_sensor_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.api_categoria_sensor
    ADD CONSTRAINT api_categoria_sensor_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.api_categoria_sensor DROP CONSTRAINT api_categoria_sensor_pkey;
       public            admin    false    221            �           2606    41970 (   api_codigo_sensor api_codigo_sensor_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.api_codigo_sensor
    ADD CONSTRAINT api_codigo_sensor_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.api_codigo_sensor DROP CONSTRAINT api_codigo_sensor_pkey;
       public            admin    false    263            �           2606    34549 `   api_componente_estacion_sensores api_componente_estacion__componente_estacion_id_s_66aef67e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores
    ADD CONSTRAINT api_componente_estacion__componente_estacion_id_s_66aef67e_uniq UNIQUE (componente_estacion_id, sensor_estacion_id);
 �   ALTER TABLE ONLY public.api_componente_estacion_sensores DROP CONSTRAINT api_componente_estacion__componente_estacion_id_s_66aef67e_uniq;
       public            admin    false    237    237            �           2606    34376 4   api_componente_estacion api_componente_estacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.api_componente_estacion
    ADD CONSTRAINT api_componente_estacion_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.api_componente_estacion DROP CONSTRAINT api_componente_estacion_pkey;
       public            admin    false    225            �           2606    34537 F   api_componente_estacion_sensores api_componente_estacion_sensores_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores
    ADD CONSTRAINT api_componente_estacion_sensores_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.api_componente_estacion_sensores DROP CONSTRAINT api_componente_estacion_sensores_pkey;
       public            admin    false    237            �           2606    34368 "   api_componente api_componente_pkey 
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
       public            admin    false    252            �           2606    41699    api_data api_data_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.api_data
    ADD CONSTRAINT api_data_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.api_data DROP CONSTRAINT api_data_pkey;
       public            admin    false    261            �           2606    34444 X   api_estacion_componentes api_estacion_componentes_estacion_id_componente_e_745580b2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_componentes
    ADD CONSTRAINT api_estacion_componentes_estacion_id_componente_e_745580b2_uniq UNIQUE (estacion_id, componente_estacion_id);
 �   ALTER TABLE ONLY public.api_estacion_componentes DROP CONSTRAINT api_estacion_componentes_estacion_id_componente_e_745580b2_uniq;
       public            admin    false    229    229            �           2606    34395 6   api_estacion_componentes api_estacion_componentes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.api_estacion_componentes
    ADD CONSTRAINT api_estacion_componentes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.api_estacion_componentes DROP CONSTRAINT api_estacion_componentes_pkey;
       public            admin    false    229            �           2606    34387    api_estacion api_estacion_pkey 
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
       public            admin    false    248            �           2606    41673 (   api_tipo_estacion api_tipo_estacion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.api_tipo_estacion
    ADD CONSTRAINT api_tipo_estacion_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.api_tipo_estacion DROP CONSTRAINT api_tipo_estacion_pkey;
       public            admin    false    258            �           2606    41463 6   api_tipo_salida_de_campo api_tipo_salida_de_campo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.api_tipo_salida_de_campo
    ADD CONSTRAINT api_tipo_salida_de_campo_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.api_tipo_salida_de_campo DROP CONSTRAINT api_tipo_salida_de_campo_pkey;
       public            admin    false    243            p           2606    34484    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            admin    false    209            u           2606    34292 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            admin    false    211    211            x           2606    34245 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            admin    false    211            r           2606    34235    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            admin    false    209            k           2606    34278 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            admin    false    207    207            m           2606    34227 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            admin    false    207            �           2606    34263 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            admin    false    215            �           2606    34307 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            admin    false    215    215            z           2606    34253    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            admin    false    213            �           2606    34271 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            admin    false    217            �           2606    34321 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            admin    false    217    217            }           2606    34478     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            admin    false    213            �           2606    34335 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            admin    false    219            f           2606    34219 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            admin    false    205    205            h           2606    34217 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            admin    false    205            d           2606    34209 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            admin    false    203            �           2606    34493 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            admin    false    233            �           1259    41650 4   api_calendario_salidas_de_campo_estacion_id_b299736a    INDEX     �   CREATE INDEX api_calendario_salidas_de_campo_estacion_id_b299736a ON public.api_calendario_salidas_de_campo USING btree (estacion_id);
 H   DROP INDEX public.api_calendario_salidas_de_campo_estacion_id_b299736a;
       public            admin    false    256            �           1259    41651 :   api_calendario_salidas_de_campo_tipo_de_salida_id_4c8a818c    INDEX     �   CREATE INDEX api_calendario_salidas_de_campo_tipo_de_salida_id_4c8a818c ON public.api_calendario_salidas_de_campo USING btree (tipo_de_salida_id);
 N   DROP INDEX public.api_calendario_salidas_de_campo_tipo_de_salida_id_4c8a818c;
       public            admin    false    256            �           1259    41939 (   api_codigo_sensor_componente_id_327781fa    INDEX     o   CREATE INDEX api_codigo_sensor_componente_id_327781fa ON public.api_codigo_sensor USING btree (componente_id);
 <   DROP INDEX public.api_codigo_sensor_componente_id_327781fa;
       public            admin    false    263            �           1259    41940 &   api_codigo_sensor_estacion_id_18cdd6b4    INDEX     k   CREATE INDEX api_codigo_sensor_estacion_id_18cdd6b4 ON public.api_codigo_sensor USING btree (estacion_id);
 :   DROP INDEX public.api_codigo_sensor_estacion_id_18cdd6b4;
       public            admin    false    263            �           1259    41941 $   api_codigo_sensor_sensor_id_25dd65e5    INDEX     g   CREATE INDEX api_codigo_sensor_sensor_id_25dd65e5 ON public.api_codigo_sensor USING btree (sensor_id);
 8   DROP INDEX public.api_codigo_sensor_sensor_id_25dd65e5;
       public            admin    false    263            �           1259    34425 .   api_componente_estacion_componente_id_2d1793e0    INDEX     {   CREATE INDEX api_componente_estacion_componente_id_2d1793e0 ON public.api_componente_estacion USING btree (componente_id);
 B   DROP INDEX public.api_componente_estacion_componente_id_2d1793e0;
       public            admin    false    225            �           1259    34426 *   api_componente_estacion_estado_id_29582af6    INDEX     s   CREATE INDEX api_componente_estacion_estado_id_29582af6 ON public.api_componente_estacion USING btree (estado_id);
 >   DROP INDEX public.api_componente_estacion_estado_id_29582af6;
       public            admin    false    225            �           1259    34550 :   api_componente_estacion_se_componente_estacion_id_cf1d440c    INDEX     �   CREATE INDEX api_componente_estacion_se_componente_estacion_id_cf1d440c ON public.api_componente_estacion_sensores USING btree (componente_estacion_id);
 N   DROP INDEX public.api_componente_estacion_se_componente_estacion_id_cf1d440c;
       public            admin    false    237            �           1259    34551 <   api_componente_estacion_sensores_sensor_estacion_id_d898540f    INDEX     �   CREATE INDEX api_componente_estacion_sensores_sensor_estacion_id_d898540f ON public.api_componente_estacion_sensores USING btree (sensor_estacion_id);
 P   DROP INDEX public.api_componente_estacion_sensores_sensor_estacion_id_d898540f;
       public            admin    false    237            �           1259    34471 -   api_componente_estacion_ubicacion_id_63e569c1    INDEX     y   CREATE INDEX api_componente_estacion_ubicacion_id_63e569c1 ON public.api_componente_estacion USING btree (ubicacion_id);
 A   DROP INDEX public.api_componente_estacion_ubicacion_id_63e569c1;
       public            admin    false    225            �           1259    41592 >   api_componente_salidas_de__componente_salidas_de_camp_12506ea7    INDEX     �   CREATE INDEX api_componente_salidas_de__componente_salidas_de_camp_12506ea7 ON public.api_componente_salidas_de_campo_operarios USING btree (componente_salidas_de_campo_id);
 R   DROP INDEX public.api_componente_salidas_de__componente_salidas_de_camp_12506ea7;
       public            admin    false    254            �           1259    41593 3   api_componente_salidas_de__investigador_id_ad579cff    INDEX     �   CREATE INDEX api_componente_salidas_de__investigador_id_ad579cff ON public.api_componente_salidas_de_campo_operarios USING btree (investigador_id);
 G   DROP INDEX public.api_componente_salidas_de__investigador_id_ad579cff;
       public            admin    false    254            �           1259    41578 6   api_componente_salidas_de_campo_componente_id_1eccb488    INDEX     �   CREATE INDEX api_componente_salidas_de_campo_componente_id_1eccb488 ON public.api_componente_salidas_de_campo USING btree (componente_id);
 J   DROP INDEX public.api_componente_salidas_de_campo_componente_id_1eccb488;
       public            admin    false    252            �           1259    41579 :   api_componente_salidas_de_campo_tipo_de_salida_id_93c7cfe3    INDEX     �   CREATE INDEX api_componente_salidas_de_campo_tipo_de_salida_id_93c7cfe3 ON public.api_componente_salidas_de_campo USING btree (tipo_de_salida_id);
 N   DROP INDEX public.api_componente_salidas_de_campo_tipo_de_salida_id_93c7cfe3;
       public            admin    false    252            �           1259    42011    api_data_variable_id_4138ec7f    INDEX     W   CREATE INDEX api_data_variable_id_4138ec7f ON public.api_data USING btree (sensor_id);
 1   DROP INDEX public.api_data_variable_id_4138ec7f;
       public            admin    false    261            �           1259    34446 8   api_estacion_componentes_componente_estacion_id_8098dfbc    INDEX     �   CREATE INDEX api_estacion_componentes_componente_estacion_id_8098dfbc ON public.api_estacion_componentes USING btree (componente_estacion_id);
 L   DROP INDEX public.api_estacion_componentes_componente_estacion_id_8098dfbc;
       public            admin    false    229            �           1259    34445 -   api_estacion_componentes_estacion_id_dee2c2aa    INDEX     y   CREATE INDEX api_estacion_componentes_estacion_id_dee2c2aa ON public.api_estacion_componentes USING btree (estacion_id);
 A   DROP INDEX public.api_estacion_componentes_estacion_id_dee2c2aa;
       public            admin    false    229            �           1259    34432    api_estacion_estado_id_ebd57e4e    INDEX     ]   CREATE INDEX api_estacion_estado_id_ebd57e4e ON public.api_estacion USING btree (estado_id);
 3   DROP INDEX public.api_estacion_estado_id_ebd57e4e;
       public            admin    false    227            �           1259    34528 *   api_estacion_sensores_estacion_id_59e96ed6    INDEX     s   CREATE INDEX api_estacion_sensores_estacion_id_59e96ed6 ON public.api_estacion_sensores USING btree (estacion_id);
 >   DROP INDEX public.api_estacion_sensores_estacion_id_59e96ed6;
       public            admin    false    235            �           1259    34529 1   api_estacion_sensores_sensor_estacion_id_6f81e86b    INDEX     �   CREATE INDEX api_estacion_sensores_sensor_estacion_id_6f81e86b ON public.api_estacion_sensores USING btree (sensor_estacion_id);
 E   DROP INDEX public.api_estacion_sensores_sensor_estacion_id_6f81e86b;
       public            admin    false    235            �           1259    41685    api_estacion_tipo_id_279e2227    INDEX     Y   CREATE INDEX api_estacion_tipo_id_279e2227 ON public.api_estacion USING btree (tipo_id);
 1   DROP INDEX public.api_estacion_tipo_id_279e2227;
       public            admin    false    227            �           1259    41431 )   api_salidas_de_campo_estacion_id_204bb50c    INDEX     q   CREATE INDEX api_salidas_de_campo_estacion_id_204bb50c ON public.api_salidas_de_campo USING btree (estacion_id);
 =   DROP INDEX public.api_salidas_de_campo_estacion_id_204bb50c;
       public            admin    false    240            �           1259    41444 7   api_salidas_de_campo_inves_salidas_de_campo_id_5c0169b4    INDEX     �   CREATE INDEX api_salidas_de_campo_inves_salidas_de_campo_id_5c0169b4 ON public.api_salidas_de_campo_operarios USING btree (salidas_de_campo_id);
 K   DROP INDEX public.api_salidas_de_campo_inves_salidas_de_campo_id_5c0169b4;
       public            admin    false    242            �           1259    41445 <   api_salidas_de_campo_investigadores_investigador_id_07b3dd5c    INDEX     �   CREATE INDEX api_salidas_de_campo_investigadores_investigador_id_07b3dd5c ON public.api_salidas_de_campo_operarios USING btree (investigador_id);
 P   DROP INDEX public.api_salidas_de_campo_investigadores_investigador_id_07b3dd5c;
       public            admin    false    242            �           1259    41467 /   api_salidas_de_campo_tipo_de_salida_id_0d73d95a    INDEX     }   CREATE INDEX api_salidas_de_campo_tipo_de_salida_id_0d73d95a ON public.api_salidas_de_campo USING btree (tipo_de_salida_id);
 C   DROP INDEX public.api_salidas_de_campo_tipo_de_salida_id_0d73d95a;
       public            admin    false    240            �           1259    34467 *   api_sensor_estacion_componente_id_58de8fc4    INDEX     s   CREATE INDEX api_sensor_estacion_componente_id_58de8fc4 ON public.api_sensor_estacion USING btree (componente_id);
 >   DROP INDEX public.api_sensor_estacion_componente_id_58de8fc4;
       public            admin    false    232            �           1259    41679 &   api_sensor_estacion_estado_id_c8830485    INDEX     k   CREATE INDEX api_sensor_estacion_estado_id_c8830485 ON public.api_sensor_estacion USING btree (estado_id);
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
       public            admin    false    248            n           1259    34485    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            admin    false    209            s           1259    34293 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            admin    false    211            v           1259    34294 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            admin    false    211            i           1259    34279 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            admin    false    207            ~           1259    34309 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            admin    false    215            �           1259    34308 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            admin    false    215            �           1259    34323 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            admin    false    217            �           1259    34322 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            admin    false    217            {           1259    34479     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            admin    false    213            �           1259    34346 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            admin    false    219            �           1259    34347 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            admin    false    219            �           1259    34495 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            admin    false    233            �           1259    34494 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            admin    false    233                       2606    41640 V   api_calendario_salidas_de_campo api_calendario_salid_estacion_id_b299736a_fk_api_estac    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_calendario_salidas_de_campo
    ADD CONSTRAINT api_calendario_salid_estacion_id_b299736a_fk_api_estac FOREIGN KEY (estacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_calendario_salidas_de_campo DROP CONSTRAINT api_calendario_salid_estacion_id_b299736a_fk_api_estac;
       public          admin    false    256    2971    227                       2606    41645 \   api_calendario_salidas_de_campo api_calendario_salid_tipo_de_salida_id_4c8a818c_fk_api_tipo_    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_calendario_salidas_de_campo
    ADD CONSTRAINT api_calendario_salid_tipo_de_salida_id_4c8a818c_fk_api_tipo_ FOREIGN KEY (tipo_de_salida_id) REFERENCES public.api_tipo_salida_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_calendario_salidas_de_campo DROP CONSTRAINT api_calendario_salid_tipo_de_salida_id_4c8a818c_fk_api_tipo_;
       public          admin    false    256    3016    243                       2606    41924 G   api_codigo_sensor api_codigo_sensor_componente_id_327781fa_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_codigo_sensor
    ADD CONSTRAINT api_codigo_sensor_componente_id_327781fa_fk_api_compo FOREIGN KEY (componente_id) REFERENCES public.api_componente_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.api_codigo_sensor DROP CONSTRAINT api_codigo_sensor_componente_id_327781fa_fk_api_compo;
       public          admin    false    2967    263    225                       2606    41929 K   api_codigo_sensor api_codigo_sensor_estacion_id_18cdd6b4_fk_api_estacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_codigo_sensor
    ADD CONSTRAINT api_codigo_sensor_estacion_id_18cdd6b4_fk_api_estacion_id FOREIGN KEY (estacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.api_codigo_sensor DROP CONSTRAINT api_codigo_sensor_estacion_id_18cdd6b4_fk_api_estacion_id;
       public          admin    false    2971    263    227                       2606    41934 P   api_codigo_sensor api_codigo_sensor_sensor_id_25dd65e5_fk_api_sensor_estacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_codigo_sensor
    ADD CONSTRAINT api_codigo_sensor_sensor_id_25dd65e5_fk_api_sensor_estacion_id FOREIGN KEY (sensor_id) REFERENCES public.api_sensor_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.api_codigo_sensor DROP CONSTRAINT api_codigo_sensor_sensor_id_25dd65e5_fk_api_sensor_estacion_id;
       public          admin    false    232    263    2984                       2606    34538 `   api_componente_estacion_sensores api_componente_estac_componente_estacion__cf1d440c_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores
    ADD CONSTRAINT api_componente_estac_componente_estacion__cf1d440c_fk_api_compo FOREIGN KEY (componente_estacion_id) REFERENCES public.api_componente_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_estacion_sensores DROP CONSTRAINT api_componente_estac_componente_estacion__cf1d440c_fk_api_compo;
       public          admin    false    2967    225    237            �           2606    34557 P   api_componente_estacion api_componente_estac_componente_id_2d1793e0_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion
    ADD CONSTRAINT api_componente_estac_componente_id_2d1793e0_fk_api_compo FOREIGN KEY (componente_id) REFERENCES public.api_componente(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.api_componente_estacion DROP CONSTRAINT api_componente_estac_componente_id_2d1793e0_fk_api_compo;
       public          admin    false    225    223    2963            �           2606    34562 L   api_componente_estacion api_componente_estac_estado_id_29582af6_fk_api_categ    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion
    ADD CONSTRAINT api_componente_estac_estado_id_29582af6_fk_api_categ FOREIGN KEY (estado_id) REFERENCES public.api_categoria_componente(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.api_componente_estacion DROP CONSTRAINT api_componente_estac_estado_id_29582af6_fk_api_categ;
       public          admin    false    2959    225    220                       2606    34543 ^   api_componente_estacion_sensores api_componente_estac_sensor_estacion_id_d898540f_fk_api_senso    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion_sensores
    ADD CONSTRAINT api_componente_estac_sensor_estacion_id_d898540f_fk_api_senso FOREIGN KEY (sensor_estacion_id) REFERENCES public.api_sensor_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_estacion_sensores DROP CONSTRAINT api_componente_estac_sensor_estacion_id_d898540f_fk_api_senso;
       public          admin    false    237    2984    232            �           2606    34552 O   api_componente_estacion api_componente_estac_ubicacion_id_63e569c1_fk_api_estac    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_estacion
    ADD CONSTRAINT api_componente_estac_ubicacion_id_63e569c1_fk_api_estac FOREIGN KEY (ubicacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.api_componente_estacion DROP CONSTRAINT api_componente_estac_ubicacion_id_63e569c1_fk_api_estac;
       public          admin    false    227    225    2971                       2606    41568 X   api_componente_salidas_de_campo api_componente_salid_componente_id_1eccb488_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo
    ADD CONSTRAINT api_componente_salid_componente_id_1eccb488_fk_api_compo FOREIGN KEY (componente_id) REFERENCES public.api_componente_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo DROP CONSTRAINT api_componente_salid_componente_id_1eccb488_fk_api_compo;
       public          admin    false    252    2967    225                       2606    41580 i   api_componente_salidas_de_campo_operarios api_componente_salid_componente_salidas_d_12506ea7_fk_api_compo    FK CONSTRAINT       ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios
    ADD CONSTRAINT api_componente_salid_componente_salidas_d_12506ea7_fk_api_compo FOREIGN KEY (componente_salidas_de_campo_id) REFERENCES public.api_componente_salidas_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios DROP CONSTRAINT api_componente_salid_componente_salidas_d_12506ea7_fk_api_compo;
       public          admin    false    254    252    3029                       2606    41585 d   api_componente_salidas_de_campo_operarios api_componente_salid_investigador_id_ad579cff_fk_api_inves    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios
    ADD CONSTRAINT api_componente_salid_investigador_id_ad579cff_fk_api_inves FOREIGN KEY (investigador_id) REFERENCES public.api_investigador(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo_operarios DROP CONSTRAINT api_componente_salid_investigador_id_ad579cff_fk_api_inves;
       public          admin    false    254    238    3004                       2606    41573 \   api_componente_salidas_de_campo api_componente_salid_tipo_de_salida_id_93c7cfe3_fk_api_tipo_    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_componente_salidas_de_campo
    ADD CONSTRAINT api_componente_salid_tipo_de_salida_id_93c7cfe3_fk_api_tipo_ FOREIGN KEY (tipo_de_salida_id) REFERENCES public.api_tipo_salida_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_componente_salidas_de_campo DROP CONSTRAINT api_componente_salid_tipo_de_salida_id_93c7cfe3_fk_api_tipo_;
       public          admin    false    3016    243    252                       2606    42022 <   api_data api_data_sensor_id_7d2e8321_fk_api_codigo_sensor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_data
    ADD CONSTRAINT api_data_sensor_id_7d2e8321_fk_api_codigo_sensor_id FOREIGN KEY (sensor_id) REFERENCES public.api_codigo_sensor(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.api_data DROP CONSTRAINT api_data_sensor_id_7d2e8321_fk_api_codigo_sensor_id;
       public          admin    false    261    263    3049            �           2606    34592 X   api_estacion_componentes api_estacion_compone_componente_estacion__8098dfbc_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_componentes
    ADD CONSTRAINT api_estacion_compone_componente_estacion__8098dfbc_fk_api_compo FOREIGN KEY (componente_estacion_id) REFERENCES public.api_componente_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_estacion_componentes DROP CONSTRAINT api_estacion_compone_componente_estacion__8098dfbc_fk_api_compo;
       public          admin    false    229    2967    225            �           2606    34597 O   api_estacion_componentes api_estacion_compone_estacion_id_dee2c2aa_fk_api_estac    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_componentes
    ADD CONSTRAINT api_estacion_compone_estacion_id_dee2c2aa_fk_api_estac FOREIGN KEY (estacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.api_estacion_componentes DROP CONSTRAINT api_estacion_compone_estacion_id_dee2c2aa_fk_api_estac;
       public          admin    false    2971    227    229            �           2606    34567 K   api_estacion api_estacion_estado_id_ebd57e4e_fk_api_categoria_componente_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion
    ADD CONSTRAINT api_estacion_estado_id_ebd57e4e_fk_api_categoria_componente_id FOREIGN KEY (estado_id) REFERENCES public.api_categoria_componente(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.api_estacion DROP CONSTRAINT api_estacion_estado_id_ebd57e4e_fk_api_categoria_componente_id;
       public          admin    false    227    220    2959            �           2606    34602 S   api_estacion_sensores api_estacion_sensore_sensor_estacion_id_6f81e86b_fk_api_senso    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_sensores
    ADD CONSTRAINT api_estacion_sensore_sensor_estacion_id_6f81e86b_fk_api_senso FOREIGN KEY (sensor_estacion_id) REFERENCES public.api_sensor_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.api_estacion_sensores DROP CONSTRAINT api_estacion_sensore_sensor_estacion_id_6f81e86b_fk_api_senso;
       public          admin    false    232    235    2984                        2606    34607 S   api_estacion_sensores api_estacion_sensores_estacion_id_59e96ed6_fk_api_estacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion_sensores
    ADD CONSTRAINT api_estacion_sensores_estacion_id_59e96ed6_fk_api_estacion_id FOREIGN KEY (estacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.api_estacion_sensores DROP CONSTRAINT api_estacion_sensores_estacion_id_59e96ed6_fk_api_estacion_id;
       public          admin    false    235    2971    227            �           2606    42027 B   api_estacion api_estacion_tipo_id_279e2227_fk_api_tipo_estacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_estacion
    ADD CONSTRAINT api_estacion_tipo_id_279e2227_fk_api_tipo_estacion_id FOREIGN KEY (tipo_id) REFERENCES public.api_tipo_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.api_estacion DROP CONSTRAINT api_estacion_tipo_id_279e2227_fk_api_tipo_estacion_id;
       public          admin    false    258    227    3042                       2606    41426 Q   api_salidas_de_campo api_salidas_de_campo_estacion_id_204bb50c_fk_api_estacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo
    ADD CONSTRAINT api_salidas_de_campo_estacion_id_204bb50c_fk_api_estacion_id FOREIGN KEY (estacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.api_salidas_de_campo DROP CONSTRAINT api_salidas_de_campo_estacion_id_204bb50c_fk_api_estacion_id;
       public          admin    false    227    2971    240                       2606    41473 Y   api_salidas_de_campo_operarios api_salidas_de_campo_investigador_id_08865c2f_fk_api_inves    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios
    ADD CONSTRAINT api_salidas_de_campo_investigador_id_08865c2f_fk_api_inves FOREIGN KEY (investigador_id) REFERENCES public.api_investigador(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios DROP CONSTRAINT api_salidas_de_campo_investigador_id_08865c2f_fk_api_inves;
       public          admin    false    3004    238    242                       2606    41478 ]   api_salidas_de_campo_operarios api_salidas_de_campo_salidas_de_campo_id_ac4b32a2_fk_api_salid    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios
    ADD CONSTRAINT api_salidas_de_campo_salidas_de_campo_id_ac4b32a2_fk_api_salid FOREIGN KEY (salidas_de_campo_id) REFERENCES public.api_salidas_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_salidas_de_campo_operarios DROP CONSTRAINT api_salidas_de_campo_salidas_de_campo_id_ac4b32a2_fk_api_salid;
       public          admin    false    242    3007    240                       2606    41468 G   api_salidas_de_campo api_salidas_de_campo_tipo_de_salida_id_0d73d95a_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_salidas_de_campo
    ADD CONSTRAINT api_salidas_de_campo_tipo_de_salida_id_0d73d95a_fk FOREIGN KEY (tipo_de_salida_id) REFERENCES public.api_tipo_salida_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.api_salidas_de_campo DROP CONSTRAINT api_salidas_de_campo_tipo_de_salida_id_0d73d95a_fk;
       public          admin    false    243    3016    240            �           2606    34572 K   api_sensor_estacion api_sensor_estacion_componente_id_58de8fc4_fk_api_compo    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_estacion
    ADD CONSTRAINT api_sensor_estacion_componente_id_58de8fc4_fk_api_compo FOREIGN KEY (componente_id) REFERENCES public.api_componente_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.api_sensor_estacion DROP CONSTRAINT api_sensor_estacion_componente_id_58de8fc4_fk_api_compo;
       public          admin    false    2967    232    225            �           2606    41680 =   api_sensor_estacion api_sensor_estacion_estado_id_c8830485_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_estacion
    ADD CONSTRAINT api_sensor_estacion_estado_id_c8830485_fk FOREIGN KEY (estado_id) REFERENCES public.api_categoria_sensor(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.api_sensor_estacion DROP CONSTRAINT api_sensor_estacion_estado_id_c8830485_fk;
       public          admin    false    221    232    2961            �           2606    41499 =   api_sensor_estacion api_sensor_estacion_sensor_id_b2d253a5_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_estacion
    ADD CONSTRAINT api_sensor_estacion_sensor_id_b2d253a5_fk FOREIGN KEY (sensor_id) REFERENCES public.api_sensor(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.api_sensor_estacion DROP CONSTRAINT api_sensor_estacion_sensor_id_b2d253a5_fk;
       public          admin    false    2980    232    230            �           2606    34587 P   api_sensor_estacion api_sensor_estacion_ubicacion_id_7552e4b2_fk_api_estacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_estacion
    ADD CONSTRAINT api_sensor_estacion_ubicacion_id_7552e4b2_fk_api_estacion_id FOREIGN KEY (ubicacion_id) REFERENCES public.api_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.api_sensor_estacion DROP CONSTRAINT api_sensor_estacion_ubicacion_id_7552e4b2_fk_api_estacion_id;
       public          admin    false    227    2971    232            
           2606    41540 `   api_sensor_salidas_de_campo_operarios api_sensor_salidas_d_investigador_id_5a73bed9_fk_api_inves    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios
    ADD CONSTRAINT api_sensor_salidas_d_investigador_id_5a73bed9_fk_api_inves FOREIGN KEY (investigador_id) REFERENCES public.api_investigador(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios DROP CONSTRAINT api_sensor_salidas_d_investigador_id_5a73bed9_fk_api_inves;
       public          admin    false    250    3004    238                       2606    41523 P   api_sensor_salidas_de_campo api_sensor_salidas_d_sensor_id_e3de913e_fk_api_senso    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo
    ADD CONSTRAINT api_sensor_salidas_d_sensor_id_e3de913e_fk_api_senso FOREIGN KEY (sensor_id) REFERENCES public.api_sensor_estacion(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.api_sensor_salidas_de_campo DROP CONSTRAINT api_sensor_salidas_d_sensor_id_e3de913e_fk_api_senso;
       public          admin    false    2984    248    232            	           2606    41535 e   api_sensor_salidas_de_campo_operarios api_sensor_salidas_d_sensor_salidas_de_ca_65cfb01b_fk_api_senso    FK CONSTRAINT       ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios
    ADD CONSTRAINT api_sensor_salidas_d_sensor_salidas_de_ca_65cfb01b_fk_api_senso FOREIGN KEY (sensor_salidas_de_campo_id) REFERENCES public.api_sensor_salidas_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo_operarios DROP CONSTRAINT api_sensor_salidas_d_sensor_salidas_de_ca_65cfb01b_fk_api_senso;
       public          admin    false    3018    250    248                       2606    41528 X   api_sensor_salidas_de_campo api_sensor_salidas_d_tipo_de_salida_id_24eb6120_fk_api_tipo_    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo
    ADD CONSTRAINT api_sensor_salidas_d_tipo_de_salida_id_24eb6120_fk_api_tipo_ FOREIGN KEY (tipo_de_salida_id) REFERENCES public.api_tipo_salida_de_campo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_sensor_salidas_de_campo DROP CONSTRAINT api_sensor_salidas_d_tipo_de_salida_id_24eb6120_fk_api_tipo_;
       public          admin    false    248    3016    243            �           2606    34286 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          admin    false    207    2925    211            �           2606    34281 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          admin    false    209    2930    211            �           2606    34272 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          admin    false    205    2920    207            �           2606    34301 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          admin    false    2930    209    215            �           2606    34296 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          admin    false    213    2938    215            �           2606    34315 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          admin    false    2925    217    207            �           2606    34310 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          admin    false    213    2938    217            �           2606    34336 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          admin    false    219    2920    205            �           2606    34341 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          admin    false    2938    213    219            �     x�UQAr�0<K������k.*6-b:6�m~�7�	�X�L��M�ZI+��@�L��0G�����m�4L�[Y��>)���t��L�������Tp<�7�u�����ѻ+	Y�8q����VѩV��a�z5�Q(�ࢲnQ��[V3_$Ū/. ��u�nФ�$�_�,�L�9V����������-u~8�]\�n�m�4١��̶;_Y���e����iE� ���WrX$��d���R#�I�!{͂�t�䯩V~rzB�?`�v�      �   �   x���MN1���)| �@�e���3X$�4?��
�s1Ҫi�Ă�����KwWY���bpk���*�Tt���D����J�9�3�8���@�(��u��|���c�'�8�2�A�8u]���_�k���6�V��Z��S�C@����l�>�{Ǵ�	�A#�f:�$���4��L�D��g&�������Ov�������.`�q<�V�ǰ������X1�C)��:1���o����� �>�J      �   �   x�u�MJ1�ur�\�� � ��v󦺺-L*ZIf�[�G��ي�޸����U��+������mr0~i��AE� �㧺҈�7��	=2=$F������cv�7������z�J������]��J֚C^A�w�.�+E$T�:T�e�����*~��EY���{S����ԟ��kl#��¯HB�]'D���I���������~�      �   8   x�5ȹ  ����'���s �h�8���$!���ےM$�o��H^7�B� �9%      �   �
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
���s]=�1�#�����uV�����<z��񩲷��?l�s+      �   f  x��W�n�6>�O�c��)��}t�[4m�.6�(��YH�KI)�o���<�_�Ñdvn[�p�����������/�O�$rO���O/�(%�$��֫��=�g�<�z��Ĝ�d��G��7�c�E�Dh�ie��]morS�M��V=*x�kS߬��㗿��>�x������X⣥^DB�f �Ew���e	��Jߍ*U���K�
�t�1����ua� I������;}�g��n83�P�_i��ġhA|�����[@ܔyl�o�w*Ӆa���) ��:�@�)T&�4��vX������3]����A(/��e���:S�q��R�
A���U_dÞ�{�5��%S%۔�)��v��Ɍd&���9i(����*�"�
�$�4��j/�O/Z`�a��[�L*�d������24J*Y�At��U���<Dj�
�Oj���%"�%q("�%I("�%�
�(�}Z}|�g���Ǳ�z~��a�z����,�Io� ���@\��`'�S��	6���YF�J䃈���҆�=��a�a��Tir]Ȃ՚�z+ٓ��\��!�(Nǐ<~�%z��n) �b<y 	�2��̱�����ث'8̧�c�����ٙ�3ba�,&�Y� F��x�p����4CE���]�[`a�P��^�쭪�����tLV�Z�'N����� �|'���W3�v�����U,{{];"�nk{���r����R�,����9XTs5pi%�F��B�H��ɦ��9d��ד��Fao߭���u5�(�-�y�!h [1��3ՓzH�nG5�iU����k�Z��X	��g�T�e�pJ�K���Ik��6��D�BW���^�j
��8�=��<�Mp�/iX�.i�B���PS���G�����0��f+�
�Tn�ڸv)e����Ʋ��Qa� ��
��/:��"��yX`�Fx�""yt��3�F�^I����JIJ����js�"����8B��MgAӰ�)��IR8���܅
.L���pW���d�26J�,�o���������VWX1���+[#3���]�N�3>|�f�ڷ�<}�E%�EGJ�yё���8.7R2q"��H	���%G��z:��$ܗ      �   �   x��ɑ�0�@0[�L�q,���B�AK�P�̈́�%{��
�B���������v���{�Z�mj?8�A��=�P}߿���~I>pR�3=�0p趼OߨW�եY��uF���d���1ӯN�7rZ#g�c���x)�      �     x�MPKN�0];��4(�t�!ز�8�Ԓ�1�	n�z�\�q�����VuM��mS7�z#���|�W �df��̀�\(e�w�8�4��(�I��Q�~(&�8�ݣz^ic�xFu�P�������%�4!��X��q�e�u;��3%�>KR����(��K<m���'����=XN����3��ע�o)!�R/��)
bN�t<���������D_b��-ƃ�Z�X��z��_JGB��!DδP���������~ ��}�      �      x�3�4�4�2�F\1z\\\ 	      �      x���[��(D��V1�2�^���7BW�p7�>F"9B\�J%��O�B���O��s]��?W�'���u��Oo�/��L@�-ٍ�@�-9�,@fBV !����F�h ٷd���rl�h$d�]FBFa�Q+FBFa���2
��|��Q�g�cBFa����Q�g���}F>O�(�3�2AFa�Q52���d�udk)AF��Q��"���f�©�}�:��+r��(���O=��gr���~ ɵ�Hr�9 IzH�@��������@�ק]{.@�ק��\�ܮ��2����2�����CF�b����C���=�I���C�
dt�!NBF�b��@F�����C����2:�'!�C1�BF�2��V˨[�	�z����<�L@���d��{-@�z�HR�I�v ɞ� �kɞ��<�dt�3X�2:Ի���zo�ѡ���CF�z�+����w	2:Ի��ѡ�-���VH����>lo�!�}��2:Ի�u��P�NBFl�п՟�h��
$�g�ͳ��9�$�>. �k�rHR�#I��#�_K���ޝ���;��~� �}���b@F�z�Ǆ���nd� �C�G#!�C�#!#�/��P��H���|oFBFdG/Ȉ�{� �C��_����e4~�,��1\@�y�9�Cn�i����yއD?gx��Z���v-�dr��n��]K�磟3<�v-�cv �k�VH����=F���|��!�C�[�2:Ի�3BF��]{��X�G��P�NBF�z�FBF�z�FBF�L FȈ�	��3�� #r&dt�w'�~w��结HR� I�R�@�������d�W�i y~��|y�+��$k)G �kɪ8CF�z�*ΐѡޭ/e�谟��̐�a?�cBF�z��̐���z/�ѡ��.��P�>&dt�w2:Իu���Ǆ���$dt�w��OF����k�ݟGv�����%��5o�/I�i�/I֒�3�$YKv��d-�9�K�ג�%;gx��Z򧡝3������dt8���T!��~�Ǆ�X�7��P��dt�w'!�C�;	�ݮ�AF�.6Ȉ=�d���2b����I��P�6����oF�'t�|�H��	���{���~�2���~�j�W ��y{���7��;���d��~?o���� �����&!�����9 �C�;	��8 #V�2:Ի�	���8 �C�[�2:�������|� �C�;	���tAF������t�}v�����W �<����Ձd�@�����S��<�{
���o
��y]
	��Z�k��~>Ȉ��� ��|
��M?Ȉ��S����q)BF���"dD��R���y]��9�K2"�ǥ��|���ϧ�ݯ2:��e�7���8�������<����ܟ�u##����02��w3��w��T�ܟ�YF��?��1�����ԁ�?��~BF���3CF�z�43dt�w��2�׻_{�����e�h_�~�2���}E�Ѿ�mg�2d��������Ye���{��2�׻?�
d��������塚�����ϒ�����R)@���dr?O'���|*���|*���|�����T����T#���^!�����BF���T!#��{��yO2"��T!#r^�*dtx�ۘ2"�����2j�ѡ�m�2"�����I��P�NBF�zw�2
�]�w?gxH���s�����H?gx��<�@�����������!���dr_�B���!��r$?gxH�n�!#V�2"�ǥ����z���Ȉ������4 �C���j@F��}@F�����������nki@F�z�������=_��O+.���|g���|g������U��;[�U_�;��U��Ϭ�B��j��F�ö������J��`��N�Y�A}��a-ᠾ��Q���[}g����<[����>_��������}g���k���[}5D�徳6ߨ��wֲ���}g}���}g�>D���V�Q}����Y����׵8~��_����8�o��u�����Z�J�{��>$�E�<�M�_������w�竾�w�砾��U��;ku�����z���~g��f���4����砾�Y���̪/�gV}�?������Y���<�������ԣ�����=ߕ\ԗ�F�q����7���2 ���[Q ��L �w�z*��{r�}�2�.>�r��w��0�U��T�=�M+?�C��^%U9N_%Uy>�Fe
8{?%��|�2��vZYF��{XU���Ro�0��
M���ݽ�g�b�r|�{�#p����\�w��Ʀ|��gޔS`t�3܏�W`�o������sv�+����)וc�t��ݕg`t���+���u����7�yg��90�&O�+����(��C�+��BG���F��r����c(��mIe"���[�P6���;e$�<��PV�7I[SC�	��F��������Pp:�3Q�����kj(S�}�-�r���r)[�=!(���5R�
/�|��T�������X�Y�,�o��R����7���0��]�]�%��𾽖����U�<�0̬��7�����M=�{��0�Q�3�|g���h�*8*�a��QY�=��k��M�3�܆�>(��=�(Q�ӸI3���.���Ӂ���`碞qR����w�r������0�W���KA+��|\�<|χKV��{VT���d�=LW����锬܇�|�de?̬�fV�����с���YYӾ�(b�(bW���ŢeCL;��|�gOR�1�颌K�HeD��e��cg�{����&��"��W��\YUf�K*3bzRU�F̬�#fV��S�*Cbz�T��kpVYS�6�ILu֔)1���\��?6eKLk�)_������)cb�ߦ��g�5�LL��1[N���u��&��ԕ91�q�r'��veOL�u�OL{���i�ҕCᬭ��,�y\�Q�,�v�w��ʥ���P6��*��Y[C�ʩ��m(�bWy��ʬ�Y�VL5�5`�v��}��+��|�P/eX8ۍU�Ż���,޽@��g��|��i��f�R����\�w/]/e[����N�q��W���w5Ԡ��iܠ��i�Ay�}ʼ��U���*�b���/�oK5(���9-�So0R�ޥF�`LU����6*�Y���L�7XMD�b|��5*�}�רl�wTec�\m�<����xGU>��?��1޽fM��x�sM����5����e�����	kRf�|m�͘�sRv�| �SO0R�����֬��ݧf�h�3P��t��4fVyS
Y�3�\�i%LF��֘��Y��j,�ؘ*�(g�}��EY�j(�ۘ�YQ憏k��(wcZeE��*+�ޘ�
���$�.(���Aת����VeqLw�*��UyS�Ter̬r9��zU6Ǵn��9l�ف<�l�TetLlSNǴi��p��۔�1����+M�3���"�Λ�;�gpS���&�α3�����,�i=v�yL��+���5uezLݼ+�c��]��~�+�cʷ+��4�r}ᮞ�������Y�}���%=Ŀ����ŏ��?�����xW?��_��r��-����E៍���/�������.�|�����`n�<Өs	d��vq	Y.�<����-�e`H��Z�5��[ �{ _�r�� �M��*v�YF�2�22�A�����}=����\���"7B�+!ЌZ�N4����̭��ȵX��k!OQe���C~�^d-1r1N\A��!8��͐�j΂�!���y*�I\��K�Y`��Ќ�] q?k5sAd��!�E�� �嗹��\Y`n�<���A��!�v`OK��:s1��{!8r�Z���V��O�K!Ϝ}�	Y`.����p'd�\	��=�i.�|�ds���>P���Z��O�ʕ��F�s!�F�>�sd�;�Ǧ�0�A�դ5�@'h��Y4.�8��^>�`�h\yV����-��m�4��UU��+�<Ƕq���g����\ �[׹�}�s_.;�?`ӹ�� �  ������X۝�����9v����yp��<�������9�,07@�K ؏�@��dp�}�S۰ް.��˹_\A�� �r���&�6��_\���/�,��2�22�A�)v�x�V�_�A8p!d����WB�;!̥�=p+����,0�B�L�4z�f�!��[���9r9�5r9��=r;�v�2c��,0�C�\Q��=rC��%�F��k�U��sQd��)�嚸*���Y�0}A��"����"X���"�;G��A��"_�Yf.��[D������˙K#Pڙk#�3���=#so�pq�ps6]�pyd��#���	�������?��I/�"A�r�d��G�m�r�+�r�{F�*	�k�.	��]�e`��<�-����$ώ�a.�</6�ƍ��ƕ�ed�,#s�d��U��q�Yn���Zo\+Yf���޸X��9�靛%p��;WK��t�,0�K�tn�,0�K�it�`��\0����A�K�s������wL�i.��	]�2�:�fE5�h�,M�h�n����4A��&p'��U����&��\6YF�	�길n���7�ZN�;'P�U!~:.��n`.�@���'��\=Y`���h� ���E#p�d�17P����

�o��-���Ex-��(8��U��M��s�.��ҏ\Fy΍�6�3g��Q����3"�Q�\Q":v��ȝ��Rp�%�,0S�PWS�PwS�Yp9e��)����~
�F�
*Ϣ��3WTp�g���푹��-&sIe�������
���E��
΂�*xy��*�3
wU�g.�`(�WY`.��S�pc��pee����pke�k+0p��
v�ʽ,��ŕ����>g��<�>g�`�T.�@�T.�,s{NF��
��7X�+,��5��`gn�c���ѸȂo��,�aWY�i4n�,0�Y��t�L��߿���v,�      �   �  x��V�n�8]�_A`6 �^�gg+v�F�Ng� �����I)��Q]�	���W��t�E��bPC�D���\��CF$򄓉�D�5��Jk��Ǎ�]��V��M�n�%<��0	Ҕ��xL�\�����򠗮-��t�F���d���_]x�w�VJx���g�x������B��p��Εԕ��^]]�J�1c�����ZiJ����v'r�[Q������GL���=���Z��&��[SA.�\	��#̃(��� �R�u�v}}/�w�*UR"��j8P1�܈�Ҁ+@0!�Ә�|�ѝr�a)�P��p[�[��1�5��9���\�e3�/G�������\��S��C�az��Ą�_���c��xCv�5�����4��b��( �#?��0M�-��a��V4Hr��xG� �K�q����>h����o<o
QB�?YZ�#d�<�����i�ƏY��
�A���t��p�;Hy�C��s�� ����֒^4S)Jx�j����tȥq0���H>��jaPH�"�@�ޝe|��YYIk��CkY�C$6�@���(ɾW
��Q*�,	H�[Y��Ř�x� g��%2�Q��SF�^�h#��#���o��[��x8�0I?�~��!`�U�RnZ5��ۮ[���H��������Fȵh5��ᜩ���D��,xD?Wo6�2�k\��.vl?���/a���TJ�C3��C1&�+[�L��-@��Ӕ�q��J!�������݁�47��J��9���8P<΍;�s�
���n��4��w�ݡ}~��G��Xe�X��n��NY��Ac(�7����̎����D���o8�0�[�/�g�囧�G�?P0����W��곸=c�5���|������?9�G��GɃ� ��������7D4BĂ�8�sw�N���ϒ>O3�^3&0����z� �Q~3      �   �   x��� D�3���@/鿎xr�'�<۲e���AN&5Y�ds&w��&�5�1����S��K�����Ŏ��;��?9�o���]&�𔍫��>�����ꋍ�+�'[a2	�E�l"�!J^��#Θ��҈��{�J'MΎ\&�ȔM�<d�K��;�&�4J}��,yUP�zUQ����~�9�l�塎�ԕ�z�jz�C����G�؛NitI�[��$G%      �   `   x���D1Bѵ)f������_���XB��j�q��fܦ�c<^��s�iD3��E����qA'n�FW^���o��Htz:=6��?��      �   �   x�}�;�0Dk�{$��AEJD-�*�D+,/r>"܈��3�b,�f��ffn
nz
�b�YJ�a���&�&��7�%��)vӫ�J�9,��4=[8&/�<~#KS`�T/)����Õ#����$T�)��ԲD�	�MF�k��ԫp�r��90&��6+�ݘC�g�����̬��vc<      �   T  x��[�n9]K_A̦g YP�$?�NtHҁ��E6T��`�d��o��E=�n���s/YINƘ�h�Ē����K�&��tr69?K��KY,��Y)��]��0�Xk�E�k#ֲ�����`:L��	$��;%2���*�lE��p�KΦ����h��J�|%sV���Cƿ���5z��}���v��x����`:H��R�����YrE��g��`,s)��Tz-�,v�UNgR�_k%��c�ڐVi��w�x���v,^��_k���CT�����u	���S^
�&��F����ڐ��b�-d=,%�U	�J!7�i��c��}(�,�YU�0K�����S�n.+i�j�����e�ddʅKi���<<�s�kC>�(a*��#�k���YRP*پ���!t
���P��V0�u���G���?�K�cKD��٨R����E�7FZ|�+6��◐]f��E����T��4~�<���ݿ�x�0"
 �@��h̃����mt�bQ�J/L�߱��u�\ ��y��A/�ﷳ1�����]�*˴--�X�RUd��*D�ԙ%&��>�n��B&� q@�Ewy��� 1&҂�w*��|SKPQ�U0Y.Tܪ ���r���V:L'o�b��Kq�&۠!f��c@Ȥ *�jb�A`�)d����Co��`s�F��/��{BL��k�E�#���@X�*��}D��W�Ƃ+�D�1FP"D+���P,��E#�ı� BJ�V��H��˭��u�����'u<�(m��g5� �K�萌�`�[�c!��y��X��\� ʂ�u�֖p��c��[�HD�
8�-ql h]�_��"6:���R���،�F��:侄��k$����V�\�T�6���2�^s6�W��N|ç6��8���*k^P8s=�'����m��b�N�`�f��f+=U(�-�
r�2䌫(�C������J�k���P4���4@~�t��Y9B���&F��&���ڷ�3nԘ�(Q��*�C�g`܀���55�mE*ًU��3�$����R�`�]>��x�Q��L����Zr9�T}n��i:>$s�c^ô�F���WM��d{th�<j�B�URd�s�.!��p��2=�L����d��Ċވ�����ex�5K.�x��(Sp�Lp��v��r��@�֢�<*�VO�#�Y~@�Ea�ed�A�E�0��K_h/W�=h[�}�QO��̨���1n������G@-bh|]�2PW��o�%ħ��s� �~����kCˎ�Rq�;۰ܗ��l�B�B�sE���K2\���ڙ��=�#�@u."1a��nC�3':�,��?�;Ui��%a����wX�Bz�YCK���7�ޝ5��`�r��J����
�����>�ζ�����Kn�ZՎ�}4�����r�ˉ/����ė_N|y6_f'���r�˳�2=��ė_�͗�ė_N|y6_���t:�6H�l��kM�/кF\�K�
z`�*���سx<�����S1#J6��!/�V�Q*^.� K�y 9�V|��w�ѼGH�C.8L��e�ygj��B�^���f�sN�媖��#f�\���xLN���xX�LC�K�P���
L'���<�ܟ��7��2C �F�VMp:�5l�Kے�߻��xdQo{o)7�~Y{IH r?}n�4�=~{�<5�ƨYN(�xi��\���>��׀qs_J-ENWuE�V+{z���V����%�D���� ��N2F��#B� J�7W����k�W��%M'i]�5.�������ۻP%@b�����a���^E��a#��|b�a�tA��!.�\"���%>��˂/;�"�<20� xN�k�2�Ǟ��H�(�!p�*mG�lA�i@&����ZF7!w���?m��477g]z	�����rq�����5��A�0��w/D,8*��pc����$�'%~��T�o�Gs���R��͍��#|�������le+��+6=d�U*+c�l�}l.������n.��5)�Z��W�-���tR��E����E�}aC�����v2�bg�n��Bf�����R��%�	��]�ڤS�tj���&]��r�ˉ/���|z0��������n� �N���*ܴ��b ��y�A�/�Y�j�]�t��N�j��N���=O������i���ҵ���8������yŭ�`��������S����z�QTK{&gxhb�`�;���j��潋�t��sb�����<�*L�@���{O��^�lm�'��޾�k�o��\�2}
�P��Ln�ޜy��kٌ���o�ESh*D� �^��T;��R�dD�@�rU{����hͭ �n�G��/G���!���e�]�9U�L�?�/[����3��VT5)�@�q6#JG�	� �������XPs�D5��M�eDkfYOQ[��=4�A��D'�
�߷GX{�h�ʷ�e�64�G�K�����]qۍT�U/Cp�[���ƞ��[�����H��V�b�m�S���'�<Ge��^�����O���V�\ l���)�(y�!#���Hؽ�h/��k9f��~�6�"C��=���6��ٰ��o�{��P`b��[�K�xi3�zS�r+ޡ�L���+���r"�*���?މ��t6�����ɟ���t<�/������nS�#�� �|8���8K�;')x�QF{����-V�Q<�+dw��2��).��bQ�zԜ-u0���}�>��a�o���L� zE]6��[�<�
�y��OI^f��I���������u������HK:� �֌ڥ�������F �����Gl<��a<���"      �   �   x����0�@17&	����8���JL*�����rl.��,Բ�`�Em[=�b�Éw�Y�r�
�.}�;�;9�T�E�=I�~y�
���@
��N����e��P��J�<P����N���G�@!�      �     x�e��N�0����HaN�ti�6����v��GN\o�	�7 /��T�PɃ}ι��N�����넺ʴ��l'lد��j�hJ�Ѯ�)���|�#�!�U�:�!�m�g(�6\	~B''%�����9�O��j�h?bKB��5�,��xBn,�a/c���;Ҫ�a7H)֟��Q�&�uR{�b=x#4y8�1A��5�	� M��Z8ީӀl}�BV���9Kq�XD����X:F�����߀U����]%C[��	�����+AA����K�@���������      �   �   x�-�1� �ٜ"'����\�S�,����H�X�Ћ��;B?�G%cT|�=aq���z���B�,����CX*�RydU.��_�MT΅�*�
���ꢍ�S��ϩgUy�u������a;�����gʳ�����;_�P)#����Y5P	+۠R�؛i�[J�k_3�      �   ?   x�3�4202�54�52�t�Q(N�+�/R��W(H-��,IUHN��L*J,*N�44�4����� ��?      �      x�3�4�4�2�F\1z\\\ 	      �   B   x�3�t-.IL�<�9O!7�$5�(?������D�T�D~�^A^:����Ģ̼DΤ��D��=... ��      �   �   x�]�MN�0F��)r�"�{ fłb=O�F�S9IK��8�\���b�β����^$N�_���N3�:K�C�6T<�C:�Lp:�{xEI$<2I
�T�%�,��үh��O�q��A����{�Bއ�=�3~�m��G�䂴�eOYrl�[�^�T�8�9TrBM�]�I�z��h�'Pj+�Tez�laR�z&�W�{���|S�סz��ŸӋ��a��H����f�-^��E��5�Ӎ1����w      �      x������ � �      �      x������ � �      �     x��V[��0�F��	RH<߹F�\�PU6����> �43������4����n:u}�Ϸ�0���ζ��������\�t�m`(������>��XZ��8�e�}AUP�^�qY�yʌ��������cXH�JdH���ڠ���?�Ya��J�T��] �T������VlA��2���
�*]���.<�*�t ����gö}��<�'_�iݾ�i����*��}E�
�� ��[�+>�79ʌ�V.��z�W��`��;���N;�@^���� �*@�_�u�ͯ��$?����{�2������8(�߸X�4��}��
ΗaZ�W�D�ݲ*r�q`%n=Q�N1q�Frh�;O*Ho�w�Bg�P��12��+�z�5m	��@�YPz9��]�ú�}�[�hd���!Z�/���e.����0!c ��}�aa@a`�,(�#�D�Y���HNٳ��=ae�c�CBL9ԙ��G��r�����@H9D��� ��@��9�I%D�j�D��Ml�ӈ!B�N}t�51>��̙v7)[Tk؄ �"�ۄf"i߄a}Dx�⥻�}�\�^����}�ݕ�w�=�uU����#%\ֻ2���[�����S%<��u|� 3����6�"�5�
�Y.���M0/!�}rL�q���x���mݰ@�T͒"��W�`�3�g����G�i"���Jr�b��uxҤ��đK��IK	$�i�����R<T����z鍝�<�E�J�wxZR�X�
ƷzZ��5�}���5�b5��b|���^Bߔ�Ϸ%�xz\���зap}S.J�p����&WJ����4K)�&(r��L�cR���e�MQ�oհd�� �!Xzs�|~��p��t��[�~߇̸y��W-2
%�d9E���$�(�*CM�~�mg�%�]GJ�%)+�GD�#%����,R$AD::��L%Y�Rm�Λ���6j�Ν�������c��)9�y:�û��A�un${H�����!��
�2��j�~(����&�      �      x�m�]k�0���W�»a�SaЕ�Q��Ygu0VSfj�����m����w���y������9��A�sf�N�m}����Y�%i�s�Mf�p*´��d��~i�$�t��
�N�,1r!v@@@`�(�.����e�ݡ:/��h,�O4���Py���q0���k��ؐnRj��-2{Y��K���p9>=�����nJn�8�E�N6�߿e�����Ԇ��j��` 
�G���"/��t%���M��J�6��/r1 d��>��}�m��jq      �      x������ � �      �      x������ � �      �      x��}]�[9��s֯
؅�!��|�]U.��e���n�l�!g�.�(S�2��Ճ�1�����q��6��U^��н���F��]:��eF���>3���J?6a��9�m�U�<V�L�=�[\�g?�]_,����Ϳ���������������?���c�T
l�qL��i�x�����3�:�����Ow��fo���db� 2n�F�ʶ� TAGԖ���w��9�\��޵o���(�@?��]~Y�^�sB /�\�JaP>�!.?�W��ugK't��
����o�s���g�������>��F3�&}/ȃ��z��z ��@��C�7�	@K <7�r�o�о�,n�_�v=��^�o>~��fy1�ӆ�Zs�Mht���-�j>�X��P�?���f6�[W9��h���xw���_��.Vs�~��Զ��W�2��W������7�/7�^(9���XEg��{��\�Y~�|����v��"�)n�MXxp������|���i��Ð��0�[FZ�1.~�ٙQ���\�.o�������vMf������5}o6�o�e�f`�U�m�LO�g�~Z_/��k #JS 8ׁKy��.�� "��J� Dpkj6U��w׷�����׿^w�h��B0H�Ũ`��aM��;��[.m��J;�����)y�Mú�Ly��+MK�l]�f+��Q��cmEl8��
���i���&�&!_,?/o���g��I ���j��Bw��b��X��\.V�/���m�Yg8߆Ӻ�N��֟}GS��ty/^h�ђጋ�3^8{;�\�>�nִ@�B�(69R��~\o�7<���C��:M�w���G�D�A��,-�C [|�ǯ��n����n��#0Ʉ*����.���?��ڿF�t˿O����w��˯�S/�Ah��LY���j�Y\�z�)h�i�i�3Z�bϞ��/��C�֜&�#�ДO�vD����ZrRū�ҨlQ���	ႜ2_���P�7d�w������v~��Z�YR���o������*���ݯ��&�I�t�
�F m�9�ʒ�kt^��̯�O�f�~��lo��?=�b����'o{�wLD��Q��ʡŬ*�7�뛫��z3���.V�/�٣w�[���f�lf������?�Q���g��D2B�������zqKùZ\ܒ�ӂL��l��|�����̮曋����?���I?��D�ܚ��ݩ���)u`���$����OZ�'������u5���'�=��]�p�n�i9{d�R��
j�p���S)r�@gQ*��߼�=z�z���WO_~ߋ�ӳ��.���P����*�3F�`�y�Z^-6�?���W�?�]�yVϯ>��������{�&ZAmiv��(t���=�^\m�����j�ߗח�?�,6_�ً��;fM~�J"�h(2�fu�e��C?����%O��B{	�9Ή��"�o�4����K����������?}��������)+��t��n�6��E���:�ډl��^ǅ$�$4�)4 A����ƌ��3�RH�m�{�},������� d=铬q��F�xӄh�T�q�(�9
"U���K�h%���BP&��B�ƁJ�c%դ��ok�8LipƳ�O��Ҩq���M O�)]vq��ّμ��F蠪��2�:}ۑ�N��
��G��C�v�'m�#Z�s��(�m��;P��Vup�S��5W�R`F2�Y"|���`ik�L���yn��,�48B%� 5��w.�A���W>x���:��ƶZZ�;$�Y4Œ4�����#�Ao|C��������~�hl8i�ċȫ
�g�YN&��`�ت
L�96�gZ��1�9W��{]�m�uL�l���C�}��a����R �v Z�'L���-�pl��;6ІxC������}�Z_��<_q���Y�.�������f�9�O�?RϨe7���c��$�?D����/��Y|�Pr� ��v�����П����R�PqxLV��YSOYR���r-i�qC���!v�F$t)]H�i�!��@}��o����_��׿͞��E�ʅ�mw���,2��o�2���|��&JR�مB޲�?����� �Gύ��*cK�����_W�mRqlR$4����=]�6��)1y��+�c1�>
�l{G7�	I�K�ކ�W�>y�1rQІ��=���?��0"^����H ���GX[-��z�B�~9\N�����9�\$�V�Mp7y��
�*ַY6��v?�a/Xxg�U�٣1eo�>�!?=n1��K�M�N�ě�	:
h��l�-@>p�g�o�g��&*�c�##���ֵ�;{���g������KQ��mk����Y��p��������&|ފ ��,?xp�`�lA_�r�5�BI�x ���ǸӨ���,���j��dLN0���P�A�e��XC{M$�6�䶚8���WS�	A6!r����ք�J㎕r�a+��l�'8N��Zo�-�*%	�u:�R�A�$�d�U ��B�=��U�<!B$7!����0=DI��[�x����ж	)Z�cˡݩ	�$�W�~�o�ۄ�8ux��&��}P�C�4V��kP� tzWg y���d-� �ԄZ�s�*�!4mBv����X��6!)�K�d�j����?QkDشm�ZT
f�:I��^Ez��D&/�ұ,MO>L>1UhS�����0���0��F�>���¡?��޳��TRV8z���`��Q�RX�2RP����&�Jq�i�w�ܦ��ؤ�P��B��6�0x"��b���V'6u#E���=��y81�bE�t���%U�p�Ge�C�JQ9�H�	�"�c��xXpަ�#�7�i����N$k(�I��,�$�Q�wp�&�� g\Z1Olo�q&�����j��d�����������5�]:ֶr��P�������E;�ԉ����z�Pi&ƑlC�_֫����|��,�OzR674�Җ�JP��:���==>�o�͛���fq}��7[��-��rA۲�m�^}����r5kp>�-�#4�$���k2S�l߉~��,w)
R�s�sg����.�/�8?{���޾x�����Π��i���[(�g{p���PZB>�HV����9�NIpi��a��l�ҙ�c�>b��OYv�g���ͼ)f�#�D��%� �/nA�Q�A��Ge�q%:���`��ؗ�%\�E�a�.�'9?`*+���m�#�uڃ��/%�@��ң�7H���=�R6l�.��zG2�.�KF��[�T�ϑD�f`^ٍ�=�G�L�{	:E\y���}��/)N �����͚~����g4��{��R)��j}���=���5�n�_�������W}����D{L�JZ�biO/��՗�1��o׀vj �o~��bq[��*-[e���^ZevZu�'�F�VX�B8�lh`>�o�Mołl@dw/Z9x�`��Gc�<ܓ`;�h�%m���D8�OU!RL��i��h@J^�9���0�o۸��v�t;�)�9���d\+t�(�[��E2���qڞ�le�`a���IK-�wo��/��΢6hzwC߮��������`�	-�d�K�?/d�ʬ������;P�_�n���񻷳�лV8��n�I�	�&8J�J�t���ba=�[����dN9�A��Z�p�N�T� ��X�l��|3�l85�ю������|�k�&�q�,.�^y���Ҳ��o��o~����^gs����Gu�+��|k���q�w�,^��6����2�i0n��.�J���E� ��o�ݭ�Q} �
�Ū9�x�z\'P��>T6�N��o	g7��Lt��1\�!'�,�Hdoǘ���΅���y�l�̭��T�K�ńQ��$�IA/�4e/�����w�|��VS����]��G�%i�z�(;7~�q�Zrz>�2*��Gr�N��-ٕs�R%��u�н��<���[�.��럋Z|�����@{^[��1_Y5��(
(y�UYrB �6��`:����J�ȩCu>S9n�'ڣӵ�ae�0�Z��-�    !bI�.��"�Vp�t4XL�-nl����Ztw/����*�.���h��1�w"j��n��1gǐA��5�*�S������k[G�o��Hݩ(%9<��&��֢��=��\{��=J��I��|Oh�ܟV�]���e�Uޗ�ޞSǍ����O��a�%ʍ;�?jQ��M���z;�A:/'���@0�;(�tLk�1J�Vش�g��ǴG�~[UHiI�"yC��M��;�E�#Zb����E�fY�	wQ$��$���?�� ��=	���=gv~���(�h'�2h��(�V������lbk���+��,C�9����%�(�k|��KP��Ōnݯ=�֍���0%��X����(�\�� �H�SP��4J
�Vi�U�>#i�>jܴT'���������T��R� Π���Qv03�T$��[/���L�/�,9{��rv���%��C���D
(�ߦK��AR|��"�g��S��h�7�wB�94;|�t�WmhO(Y1|;B�eI6�s�8�钓�iUR�z������Ƨ��o�-�c.��f�r(�3�.���ʡ�����TuV�\�\:�8vR)���i���2��Y(7
��IΘ2F�\���^���+p��O����@�Y��B$W'ʛ�D���SyN��eK~H:���V!��@>�c���b'��nK�W.�9}p��~����Vo�h�I'��a�Ct�'M��$U�m�UȪN����D%�"�dS�O�h��T�T�RlT9>�<���oJ@6ޤ�بs}.��+~�
���������Z�:eI�z��H1�Tt���}�	�-����j�c�Q���U�4N��-��N(ok��u G|i)6m*�Ѡ���77QZ;'ps	��tĽn�A��m�m=K�N��B=�N"۱n>�N{1�u�����I ��4�2ZŴK�#�����IŅ�r�J��2�B�f��Z2G^���1'���f�>JEJ˓rg���zd�GD��	g$F��q���� �]l:�c����p�6%y7�7��We8+�,'xRڜX��e;&��I��Z���%��{��A�����6 �S�2���d�N�|W�Y�N���\Xt_iZ��mU�������qn�خXiഐ������ߗ�)D�J˶�\E��\b�i9n6Xi����5�܆S���㸫��q�C�t��f�M�N��/{�W�ӧ������#=�ѝ��0��8I���4[F:1�)��LU�A��(خ�8r"x�\*�(�9��y8��ݙ )1�E9�Cy�qdWb����}�����qJ:�gj5)\��:���ԥ�ٵ`7�|��6��D� ���#�������3��;O�RV�ޱ�e����TWjw��Օ�0��Ȝ�z)2�m޾,��HK�O�D�ڋ�{�|@iԐ�d�:/�;��_I�����ܮ���ߚ������>�4K�|��+���`7��
H��CZ,���,>�Q7�F����'o��J��?���KEϹ��c9�$5�Kqp�q�R��<OSE�H��=F�>y��i��:��k80U���R�5���q}��v�RY�و�[�K� l~�BE���N`�-%�?���zp�Z6"�\ءeq�]�	�V2�1U�r�MIa�2%_��ہ��;���%������N�x/�,�T�S%�������lA�9>W��G[���K��0߄�۸|g�|�Rq��{|?�|�*l��M�ڵzw3{~}�����ң�%Cz�K(;����}3�ٲ�&8_�Z=���A�/��!w$@��}��/Z�^��O
�N�F䊛�%�G�=�J�^�~������ ͟K�P��|�\�w��Kq0\>�k���*�>�~o7�@j�A������M;wQ�Y�w�R������@��I�g$ы�{C� %�X�Ť8>��n��.Di�|6�ʧ����TR�����A��	�H&i���	�p;��j�ڊ踯������Rx�<��^]�|i�|N�#,�ߴ�w)�ȎH+��<U��ݝ��#{to�Z�̸T~��*�먍���N�X��:U>Q|�1�Nv^�Ҙ^��<%
\},x��5N ���a@�����uo�D�S�8Sn$u��1.h�-�1�5�~j,54R.�Ԥ*�����.!�����ׂߦ�7꺅�'i}r���߫��u�U���ו&_-?��"􄢛���z�����|���e�;z��F���Р�k�:��w�՗�p/7_�r3{��\f�Ãې����#i3���g|�5�4��A_q�j_O�տ-�go���������$�� U������:�����ŗe�C�Bt	�KĔ�@�6���^�y�Y��Zo6�/�f��)' ��̓��Lc��>s��3�b�%��O�?�tӋ�H+�H&MB��)��ٳ���,�*�|CN|?��X��jT�d���P ��G�|�z�&��ݽ������u�sf�&b��J)����ȥ1�kFX!�u|�e&sK�u^��Ź��LݰVw�&g��i@�c��z�U����"�к��]��~�r���mF��ڧv�"o��n�3���֤�d�*�3]*r7�l[*n��D��ٿ�v7+�i#-0��T�����+� ��l$��H����О���o����E��_uKm���K]���k£���d��J���Þr#�$Rs�5	�-��{rb"��+9��·���\�{���m|0$���vG�K� |~Ԗ���)�Gڿ�fZ�U<A��e�!]� t{��4�[V�.6 �~ҩ�Z���Zq������G��t��ّ�$͜덨JAt��ŝ=�#�/����'�{|p����ɐ�R�V�8������X/@/���U`u�g�KW�IK�|M�r��]=Z�NG�cֹ���U���Cf:��rr���.��z�º*�������ֈ����0���b�6������r�k���~������ѦgB#Ep��R����'<�v=Hz��m~I;�67�t�m8���]����S����<��6�PbܻO��٢�6*p�U�vt���KD�#j�r��X//N}y�9Rm�k���A�/x����e;m)$�{�0��)c�0�`�)�Mw͐Ffa!v�d�u~�����Ւ�/^�;�Y<����-4��y�Hsj�fh����ǃ~%l˗W5��J��a���,����_�Q(��b��)&`]')}�r����2s}L��	l��M���Gzȼú�f�f�c���������dX��ҿvص�>B�C����s��t�>A#?q�-�gu�=%t�E�%����GPa�-��l�Idݚ�"^��u#�d��L��[K�R���=��X�n9�%ܕ�#q|*��nA���� ��o�:��W�}7���V~νl�뮗(������nu����R�+�ʂǱuK�'�%�A�3��n-�F�w���`�M�nA��))��n�t�Q5{T��6�F��I�'[K�v���
Pd]��{�iY���"��:��J���[� ���t)L�*�-�W�k{%)�RH
����|w��c��Ԍu�:ut����df��wI�H!U�e��]��Q3����T'��0����c�$�0�2��朸KR-jB��G-�풔����/O���K�G ���[5��H�8�����ʔ-��FJafl�FH��<ͣ<����]�T�*m[���-U�apCz?��Hő�16���T�]|)5~��@��՝1�R�r�߰%�Y�i�<�QX#(���ֳ��+���u�uf�CtW�G�5��B����w����O� rf*��﨤r*M�x]��^���n�����w8�Z*)Eu��W���u\���)�Ir�Q�U�([��)Y����tP��+S��T���GT��Y�o��O�Z�ᴢ.�:�'�c��t#�\LnL)��5~xHӔ�
��{2�	8���l�v�Y���Q�sy��<4��H�g��7{H��VR#��{�\��96?1uZ�-1��b�&��"[*�mH�{s���qY^m*-����f��lN՜�0 �_�o� M  �i������w�+�i��=WC�m:�<��s&�r�kr�1cMu�\��m��7�M�����x1@��']L�C��ƿ��X�<_��h.�	S�L�Ϥ��{>���/su	.�Nu�x�^m+���
mV~H
��9Qp�Kv	9�W�FW�����ɹ3�Z��S�Ґ���������I$�o�_j�rR}�=}Iڄ�W��;�'Kɑ�Q�t��gG�$IH�r�^��3�=W#0ѕ���ص�eL��$9���r�.1s7�M���(���ѷ��띱�Z�ޗb����)�I�V�u���*բ�mJ��k<�H�(�������r-�Q}j�B��-�#����|���p5W)>�P�xc�����e�@)$'6�¤�`��V���0o�o�:S3�nC��,����aH�M��cz�>�5޸\�n�;2A�Xk�3����z�^��op�@6	9c�⢼��@N���-��X�q ����d�M�$@:k���IN6�r��Wu���w�|�I�T�;�U�F�l'kR�Mr���ն������M҆K�j�+���dUG��������@�Oi�����6>*��Cy ����Y}8�)je剖�8=K��#�x~��Y\\�#r�;��$,�X��K�+�E��;��L!.x��#�h,W��VJ�����k;pC~l��\�_��߳W���^H׆�P���>�O�/ƀW<��Cx��G���6L�!!av��(�Ab�T�/��I>mHg�� ZU�A��Z�(�sf�a��3>ջț�o�������[4_*/^F��Q�ޞ˘-[I��R*�����n�Z^o'� k�	\�F�M��R��JP�m�g����״:��9��m?8T)o�~X^�Z�)au޳)X-k��lb,E�I���$����e5��MLYv�$����6��jH�ܮ��RC�
�Rl��p�4b��m8�g.Z�\����1AzՆ�\]Ҫ�I�"8Y 3���.U�Ǩ�97���̨��ʥF���9YG�dF�6"׃3�ԃcA�$�۰��	��o�R�a��I�2�$�|뚕q�\fL�Ƥ��j�A��d��оɿ
�8���̨-;J�
�W"7J53\ˎB*+cMȷ�X��fB-s
���*���T���-k
|-5���@��Όֲ��J�Z��s�DNUόܲ&~p��7��aV����vm�8>o�h��M]$� ����\�]�mvE�����_Y򘠮������)f��f���ҕ��m��q���<w�
�nfL"Ww�d&�m"�O�p���O��N.���My���$�g��2*ɚ�锏hz�{w�C�9�J�ӮNL�7?&����3J�����܆��i��Ai9]��K�D�&�ƚv:B+��挩�ﻗ���6?�ΚXѵD�t�RQ8_��l}��п>��R��L��Z�tw��#�
�.M4���N'�T�VI��w���+m�>��� �,?f�)�)Ni�}�&H��& ��I����N��y��I�P���t����c�Hq�+N&/�އM��������ml(�~�V�w�%>�×���*:�u��a�e��Kb�,��%����X|n&�_�7�|��w��T      �   �   x�mP�n� |�3�dݿL��`e���T�ߏ�lAi߸��·Vhgvj��\
0
���<��cdqp)�d���D
ЪA\ʲ��k ������>zV&%0���^\\O�H.J��B{����������fû��T�5=�z8Ϝ-t[vqb������@w��K_�լ�cw��<�]3�u�ݹ�����D�b`y�����k���bB0��-��{"0�ky����W�LW��o~��/��      �   �  x����n�8�����T�8$�,B�MؖW����wH��Ni
�����9^ކ˽��￯���M��}{zA����w�� j#5�J��ƾ�K�����p�Y�H�K�~�/_#^�E�� 6��C�9�n��<��=}h���������1�kڷ{?\�O�G��c����G��3c�K{����TF����۩����M������0��!�P~���t���ڍ��v�o�|sn5����uJl �����P�����m�*
M?�(`�0����������7�c�e�S{��d�����Xer,�T��E���я��I�&�vċ�����MW�ٞ���>���n��9w�[�qh� @~����:_���5)��#��F�B@��RB��B}����wa�=淹94��J�5�q��{a�c}D{�����M��eA9c��*�PJs��n }`�5�J�(�M�i��p���3R
�{X�p6���|2��a��}mH�B.4��F����d*v�0�r���
��&����|�-�������21Y��[�=�[�k�ʡժN���h�"�P;$X������ds����]nZ���Vr�6�f|L�����n\�Ks��ԀKLm��Xi�lnBT���qc�X3j�{�<����0^�T���<C�	*���1ք<a�

L⬤:�b.��IX��jrU`��$4s�[��o�QT���fp�m�"T�~+8�b5�(��A�\60��%��i�X��^$�\̅f�Fm��6.�%�\̅�3Θ���fL�@9�qi�t�b.\�K-�Yz
���jm�B6�����v���5��T�,[6.�B�ø�1>�5)�\��v�bذdj�6��$�xe���V��Kg�^\��+o�MM��$�ú��n`m�v�v���|.������~k�u=h���(�Z�J�lP{����d�v��u���Чa�ME�����md��č�'ݞ�\��jK�� �e)�#P\��{;���/�\^*-��S�bFZ�Qb<�'̱p���ߐ�i�.f$����o�k`7�O�/CIN�iF8�[\J��pI�M(�Kltn��-���kՆ+�NpСY�
ʩ���ZZ��b/f*0�^�C+�B��em�ki�Z������(�*@in	IH}��Ҳ#������ak4U�}|:����cV�����*��OO����xm�dO��X���n�h&ϺF�T'���֯`���V}�t�@:Y��0���j+x�t$��q���M�,>��aL;xތf8uU�L_#��k���Km|%�&��ϯ�ۓ�I�����b����៰���4��Z�ۡ�1b�)�&�b���.(�a�{�0�7Oy��a
�e�)�X�W���;LK]՞'��6i����������"�f�1u�تSU9�,[8-)��7���9�n��L''����0U	����`��!�wǇ�RX	-aM���m�&k�S����[�nU      �   �  x���A��8������M{�RJ2�;^����ƫBf�@mQ��G\L2����]'�'�=M����
v���Txh�nmS��-^��#"����H�y��?T����\9X� ��$R?L��(��w�#��d�*�ep�[��/�͋c��z�Em�%޲S��2�7Ej����}Z}�6�F�J~����)|�t�("�tjV��_��s�K�=l���ǟ���Y��
�9��O�#��f���E����Ϙ\G ��T�7@�'&�}`�Q��"W�̝ ��v��V7n�(ʮ֞z�)���A�7�r�K��uN��ic_��nL�d��V�#�����}9_Q���n������2�!Z����������F�J����ø�ufB�UF�����@���G�)��3<�������ޖ@��@�;�1�}�T��e7��v�xԙ:	JF�A�5���-O��U����1qձ}�M��i��C|
�a.���)����N9n�+��*�k��kT�����q�G�)�	�2�N8�羸2�|������M��n���h7vVx�{ȝe�y�ݐ�����0��p8v��R���/�	�,>0��b�
.F;u��9_��g���T��5/+��+mݗ�h��G𣶏��xv��������5�     