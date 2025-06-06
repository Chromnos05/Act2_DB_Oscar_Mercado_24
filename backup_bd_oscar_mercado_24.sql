PGDMP  8                    }            bd_oscar_mercado_24    17.4    17.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16561    bd_oscar_mercado_24    DATABASE     y   CREATE DATABASE bd_oscar_mercado_24 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';
 #   DROP DATABASE bd_oscar_mercado_24;
                     user_oscar_mercado    false            �            1259    16649 
   citamedica    TABLE     �   CREATE TABLE public.citamedica (
    id_cita integer NOT NULL,
    fecha date,
    hora time without time zone,
    id_paciente integer,
    id_medico integer,
    id_consultorio integer
);
    DROP TABLE public.citamedica;
       public         heap r       user_oscar_mercado    false            �            1259    16648    citamedica_id_cita_seq    SEQUENCE     �   CREATE SEQUENCE public.citamedica_id_cita_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.citamedica_id_cita_seq;
       public               user_oscar_mercado    false    232            �           0    0    citamedica_id_cita_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.citamedica_id_cita_seq OWNED BY public.citamedica.id_cita;
          public               user_oscar_mercado    false    231            �            1259    16640    consultorio    TABLE     Z   CREATE TABLE public.consultorio (
    id_consultorio integer NOT NULL,
    nombre text
);
    DROP TABLE public.consultorio;
       public         heap r       user_oscar_mercado    false            �            1259    16639    consultorio_id_consultorio_seq    SEQUENCE     �   CREATE SEQUENCE public.consultorio_id_consultorio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.consultorio_id_consultorio_seq;
       public               user_oscar_mercado    false    230            �           0    0    consultorio_id_consultorio_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.consultorio_id_consultorio_seq OWNED BY public.consultorio.id_consultorio;
          public               user_oscar_mercado    false    229            �            1259    16783    contraindicacion    TABLE     _   CREATE TABLE public.contraindicacion (
    id_contra integer NOT NULL,
    descripcion text
);
 $   DROP TABLE public.contraindicacion;
       public         heap r       user_oscar_mercado    false            �            1259    16782    contraindicacion_id_contra_seq    SEQUENCE     �   CREATE SEQUENCE public.contraindicacion_id_contra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.contraindicacion_id_contra_seq;
       public               user_oscar_mercado    false    250            �           0    0    contraindicacion_id_contra_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.contraindicacion_id_contra_seq OWNED BY public.contraindicacion.id_contra;
          public               user_oscar_mercado    false    249            �            1259    16704    diagnostico    TABLE     �   CREATE TABLE public.diagnostico (
    id_diagnostico integer NOT NULL,
    nombre text,
    descripcion text,
    id_cita integer,
    id_enfermedad integer
);
    DROP TABLE public.diagnostico;
       public         heap r       user_oscar_mercado    false            �            1259    16703    diagnostico_id_diagnostico_seq    SEQUENCE     �   CREATE SEQUENCE public.diagnostico_id_diagnostico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.diagnostico_id_diagnostico_seq;
       public               user_oscar_mercado    false    239            �           0    0    diagnostico_id_diagnostico_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.diagnostico_id_diagnostico_seq OWNED BY public.diagnostico.id_diagnostico;
          public               user_oscar_mercado    false    238            �            1259    16598    empleado    TABLE        CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre text,
    direccion text,
    telefono text,
    poblacion text,
    provincia text,
    codigo_postal text,
    nif text,
    num_seguridad_social text,
    tipo_empleado text
);
    DROP TABLE public.empleado;
       public         heap r       user_oscar_mercado    false            �            1259    16597    empleado_id_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.empleado_id_empleado_seq;
       public               user_oscar_mercado    false    224            �           0    0    empleado_id_empleado_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;
          public               user_oscar_mercado    false    223            �            1259    16671 
   enfermedad    TABLE     n   CREATE TABLE public.enfermedad (
    id_enfermedad integer NOT NULL,
    nombre text,
    descripcion text
);
    DROP TABLE public.enfermedad;
       public         heap r       user_oscar_mercado    false            �            1259    16670    enfermedad_id_enfermedad_seq    SEQUENCE     �   CREATE SEQUENCE public.enfermedad_id_enfermedad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enfermedad_id_enfermedad_seq;
       public               user_oscar_mercado    false    234            �           0    0    enfermedad_id_enfermedad_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enfermedad_id_enfermedad_seq OWNED BY public.enfermedad.id_enfermedad;
          public               user_oscar_mercado    false    233            �            1259    16688    enfermedad_sintoma    TABLE     p   CREATE TABLE public.enfermedad_sintoma (
    id_enfermedad integer NOT NULL,
    id_sintoma integer NOT NULL
);
 &   DROP TABLE public.enfermedad_sintoma;
       public         heap r       user_oscar_mercado    false            �            1259    16584    horarioconsulta    TABLE     �   CREATE TABLE public.horarioconsulta (
    id_horario integer NOT NULL,
    dia_semana text,
    hora_inicio time without time zone,
    hora_fin time without time zone,
    id_medico integer
);
 #   DROP TABLE public.horarioconsulta;
       public         heap r       user_oscar_mercado    false            �            1259    16583    horarioconsulta_id_horario_seq    SEQUENCE     �   CREATE SEQUENCE public.horarioconsulta_id_horario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.horarioconsulta_id_horario_seq;
       public               user_oscar_mercado    false    222            �           0    0    horarioconsulta_id_horario_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.horarioconsulta_id_horario_seq OWNED BY public.horarioconsulta.id_horario;
          public               user_oscar_mercado    false    221            �            1259    16736    laboratorio    TABLE     n   CREATE TABLE public.laboratorio (
    id_laboratorio integer NOT NULL,
    nombre text,
    direccion text
);
    DROP TABLE public.laboratorio;
       public         heap r       user_oscar_mercado    false            �            1259    16735    laboratorio_id_laboratorio_seq    SEQUENCE     �   CREATE SEQUENCE public.laboratorio_id_laboratorio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.laboratorio_id_laboratorio_seq;
       public               user_oscar_mercado    false    243            �           0    0    laboratorio_id_laboratorio_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.laboratorio_id_laboratorio_seq OWNED BY public.laboratorio.id_laboratorio;
          public               user_oscar_mercado    false    242            �            1259    16745    medicamento    TABLE     P  CREATE TABLE public.medicamento (
    id_medicamento integer NOT NULL,
    nombre_comercial text,
    nombre_generico text,
    presentacion text,
    es_generico boolean,
    dosis_adulto text,
    dosis_nino text,
    necesita_receta boolean,
    cobertura_pos boolean,
    unidades_disponibles integer,
    id_laboratorio integer
);
    DROP TABLE public.medicamento;
       public         heap r       user_oscar_mercado    false            �            1259    16791    medicamento_contraindicacion    TABLE     z   CREATE TABLE public.medicamento_contraindicacion (
    id_medicamento integer NOT NULL,
    id_contra integer NOT NULL
);
 0   DROP TABLE public.medicamento_contraindicacion;
       public         heap r       user_oscar_mercado    false            �            1259    16744    medicamento_id_medicamento_seq    SEQUENCE     �   CREATE SEQUENCE public.medicamento_id_medicamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.medicamento_id_medicamento_seq;
       public               user_oscar_mercado    false    245            �           0    0    medicamento_id_medicamento_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.medicamento_id_medicamento_seq OWNED BY public.medicamento.id_medicamento;
          public               user_oscar_mercado    false    244            �            1259    16767    medicamento_principio    TABLE     v   CREATE TABLE public.medicamento_principio (
    id_medicamento integer NOT NULL,
    id_principio integer NOT NULL
);
 )   DROP TABLE public.medicamento_principio;
       public         heap r       user_oscar_mercado    false            �            1259    16806    medicamento_receta    TABLE     �   CREATE TABLE public.medicamento_receta (
    id_receta integer NOT NULL,
    id_medicamento integer NOT NULL,
    cantidad integer,
    dosis text
);
 &   DROP TABLE public.medicamento_receta;
       public         heap r       user_oscar_mercado    false            �            1259    16563    medico    TABLE       CREATE TABLE public.medico (
    id_medico integer NOT NULL,
    nombre text,
    direccion text,
    telefono text,
    poblacion text,
    provincia text,
    codigo_postal text,
    nif text,
    num_seguridad_social text,
    num_colegiado text,
    categoria text
);
    DROP TABLE public.medico;
       public         heap r       user_oscar_mercado    false            �            1259    16562    medico_id_medico_seq    SEQUENCE     �   CREATE SEQUENCE public.medico_id_medico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.medico_id_medico_seq;
       public               user_oscar_mercado    false    218            �           0    0    medico_id_medico_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.medico_id_medico_seq OWNED BY public.medico.id_medico;
          public               user_oscar_mercado    false    217            �            1259    16626    paciente    TABLE     �   CREATE TABLE public.paciente (
    id_paciente integer NOT NULL,
    nombre text,
    direccion text,
    telefono text,
    codigo_postal text,
    nif text,
    num_seguridad_social text,
    id_medico_asignado integer
);
    DROP TABLE public.paciente;
       public         heap r       user_oscar_mercado    false            �            1259    16625    paciente_id_paciente_seq    SEQUENCE     �   CREATE SEQUENCE public.paciente_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.paciente_id_paciente_seq;
       public               user_oscar_mercado    false    228            �           0    0    paciente_id_paciente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.paciente_id_paciente_seq OWNED BY public.paciente.id_paciente;
          public               user_oscar_mercado    false    227            �            1259    16759    principioactivo    TABLE     \   CREATE TABLE public.principioactivo (
    id_principio integer NOT NULL,
    nombre text
);
 #   DROP TABLE public.principioactivo;
       public         heap r       user_oscar_mercado    false            �            1259    16758     principioactivo_id_principio_seq    SEQUENCE     �   CREATE SEQUENCE public.principioactivo_id_principio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.principioactivo_id_principio_seq;
       public               user_oscar_mercado    false    247            �           0    0     principioactivo_id_principio_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.principioactivo_id_principio_seq OWNED BY public.principioactivo.id_principio;
          public               user_oscar_mercado    false    246            �            1259    16723    receta    TABLE     �   CREATE TABLE public.receta (
    id_receta integer NOT NULL,
    fecha_inicio date,
    fecha_fin date,
    id_diagnostico integer
);
    DROP TABLE public.receta;
       public         heap r       user_oscar_mercado    false            �            1259    16722    receta_id_receta_seq    SEQUENCE     �   CREATE SEQUENCE public.receta_id_receta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.receta_id_receta_seq;
       public               user_oscar_mercado    false    241            �           0    0    receta_id_receta_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.receta_id_receta_seq OWNED BY public.receta.id_receta;
          public               user_oscar_mercado    false    240            �            1259    16680    sintoma    TABLE     W   CREATE TABLE public.sintoma (
    id_sintoma integer NOT NULL,
    descripcion text
);
    DROP TABLE public.sintoma;
       public         heap r       user_oscar_mercado    false            �            1259    16679    sintoma_id_sintoma_seq    SEQUENCE     �   CREATE SEQUENCE public.sintoma_id_sintoma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.sintoma_id_sintoma_seq;
       public               user_oscar_mercado    false    236            �           0    0    sintoma_id_sintoma_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.sintoma_id_sintoma_seq OWNED BY public.sintoma.id_sintoma;
          public               user_oscar_mercado    false    235            �            1259    16572    sustitucion    TABLE     �   CREATE TABLE public.sustitucion (
    id_sustitucion integer NOT NULL,
    fecha_alta date NOT NULL,
    fecha_baja date,
    id_medico integer
);
    DROP TABLE public.sustitucion;
       public         heap r       user_oscar_mercado    false            �            1259    16571    sustitucion_id_sustitucion_seq    SEQUENCE     �   CREATE SEQUENCE public.sustitucion_id_sustitucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.sustitucion_id_sustitucion_seq;
       public               user_oscar_mercado    false    220            �           0    0    sustitucion_id_sustitucion_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.sustitucion_id_sustitucion_seq OWNED BY public.sustitucion.id_sustitucion;
          public               user_oscar_mercado    false    219            �            1259    16607    vacacion    TABLE     �   CREATE TABLE public.vacacion (
    id_vacacion integer NOT NULL,
    fecha_inicio date,
    fecha_fin date,
    tipo text,
    id_medico integer,
    id_empleado integer
);
    DROP TABLE public.vacacion;
       public         heap r       user_oscar_mercado    false            �            1259    16606    vacacion_id_vacacion_seq    SEQUENCE     �   CREATE SEQUENCE public.vacacion_id_vacacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.vacacion_id_vacacion_seq;
       public               user_oscar_mercado    false    226            �           0    0    vacacion_id_vacacion_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.vacacion_id_vacacion_seq OWNED BY public.vacacion.id_vacacion;
          public               user_oscar_mercado    false    225            �           2604    16652    citamedica id_cita    DEFAULT     x   ALTER TABLE ONLY public.citamedica ALTER COLUMN id_cita SET DEFAULT nextval('public.citamedica_id_cita_seq'::regclass);
 A   ALTER TABLE public.citamedica ALTER COLUMN id_cita DROP DEFAULT;
       public               user_oscar_mercado    false    231    232    232            �           2604    16643    consultorio id_consultorio    DEFAULT     �   ALTER TABLE ONLY public.consultorio ALTER COLUMN id_consultorio SET DEFAULT nextval('public.consultorio_id_consultorio_seq'::regclass);
 I   ALTER TABLE public.consultorio ALTER COLUMN id_consultorio DROP DEFAULT;
       public               user_oscar_mercado    false    229    230    230            �           2604    16786    contraindicacion id_contra    DEFAULT     �   ALTER TABLE ONLY public.contraindicacion ALTER COLUMN id_contra SET DEFAULT nextval('public.contraindicacion_id_contra_seq'::regclass);
 I   ALTER TABLE public.contraindicacion ALTER COLUMN id_contra DROP DEFAULT;
       public               user_oscar_mercado    false    249    250    250            �           2604    16707    diagnostico id_diagnostico    DEFAULT     �   ALTER TABLE ONLY public.diagnostico ALTER COLUMN id_diagnostico SET DEFAULT nextval('public.diagnostico_id_diagnostico_seq'::regclass);
 I   ALTER TABLE public.diagnostico ALTER COLUMN id_diagnostico DROP DEFAULT;
       public               user_oscar_mercado    false    238    239    239            �           2604    16601    empleado id_empleado    DEFAULT     |   ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);
 C   ALTER TABLE public.empleado ALTER COLUMN id_empleado DROP DEFAULT;
       public               user_oscar_mercado    false    224    223    224            �           2604    16674    enfermedad id_enfermedad    DEFAULT     �   ALTER TABLE ONLY public.enfermedad ALTER COLUMN id_enfermedad SET DEFAULT nextval('public.enfermedad_id_enfermedad_seq'::regclass);
 G   ALTER TABLE public.enfermedad ALTER COLUMN id_enfermedad DROP DEFAULT;
       public               user_oscar_mercado    false    234    233    234            �           2604    16587    horarioconsulta id_horario    DEFAULT     �   ALTER TABLE ONLY public.horarioconsulta ALTER COLUMN id_horario SET DEFAULT nextval('public.horarioconsulta_id_horario_seq'::regclass);
 I   ALTER TABLE public.horarioconsulta ALTER COLUMN id_horario DROP DEFAULT;
       public               user_oscar_mercado    false    221    222    222            �           2604    16739    laboratorio id_laboratorio    DEFAULT     �   ALTER TABLE ONLY public.laboratorio ALTER COLUMN id_laboratorio SET DEFAULT nextval('public.laboratorio_id_laboratorio_seq'::regclass);
 I   ALTER TABLE public.laboratorio ALTER COLUMN id_laboratorio DROP DEFAULT;
       public               user_oscar_mercado    false    243    242    243            �           2604    16748    medicamento id_medicamento    DEFAULT     �   ALTER TABLE ONLY public.medicamento ALTER COLUMN id_medicamento SET DEFAULT nextval('public.medicamento_id_medicamento_seq'::regclass);
 I   ALTER TABLE public.medicamento ALTER COLUMN id_medicamento DROP DEFAULT;
       public               user_oscar_mercado    false    244    245    245            �           2604    16566    medico id_medico    DEFAULT     t   ALTER TABLE ONLY public.medico ALTER COLUMN id_medico SET DEFAULT nextval('public.medico_id_medico_seq'::regclass);
 ?   ALTER TABLE public.medico ALTER COLUMN id_medico DROP DEFAULT;
       public               user_oscar_mercado    false    217    218    218            �           2604    16629    paciente id_paciente    DEFAULT     |   ALTER TABLE ONLY public.paciente ALTER COLUMN id_paciente SET DEFAULT nextval('public.paciente_id_paciente_seq'::regclass);
 C   ALTER TABLE public.paciente ALTER COLUMN id_paciente DROP DEFAULT;
       public               user_oscar_mercado    false    228    227    228            �           2604    16762    principioactivo id_principio    DEFAULT     �   ALTER TABLE ONLY public.principioactivo ALTER COLUMN id_principio SET DEFAULT nextval('public.principioactivo_id_principio_seq'::regclass);
 K   ALTER TABLE public.principioactivo ALTER COLUMN id_principio DROP DEFAULT;
       public               user_oscar_mercado    false    246    247    247            �           2604    16726    receta id_receta    DEFAULT     t   ALTER TABLE ONLY public.receta ALTER COLUMN id_receta SET DEFAULT nextval('public.receta_id_receta_seq'::regclass);
 ?   ALTER TABLE public.receta ALTER COLUMN id_receta DROP DEFAULT;
       public               user_oscar_mercado    false    240    241    241            �           2604    16683    sintoma id_sintoma    DEFAULT     x   ALTER TABLE ONLY public.sintoma ALTER COLUMN id_sintoma SET DEFAULT nextval('public.sintoma_id_sintoma_seq'::regclass);
 A   ALTER TABLE public.sintoma ALTER COLUMN id_sintoma DROP DEFAULT;
       public               user_oscar_mercado    false    235    236    236            �           2604    16575    sustitucion id_sustitucion    DEFAULT     �   ALTER TABLE ONLY public.sustitucion ALTER COLUMN id_sustitucion SET DEFAULT nextval('public.sustitucion_id_sustitucion_seq'::regclass);
 I   ALTER TABLE public.sustitucion ALTER COLUMN id_sustitucion DROP DEFAULT;
       public               user_oscar_mercado    false    220    219    220            �           2604    16610    vacacion id_vacacion    DEFAULT     |   ALTER TABLE ONLY public.vacacion ALTER COLUMN id_vacacion SET DEFAULT nextval('public.vacacion_id_vacacion_seq'::regclass);
 C   ALTER TABLE public.vacacion ALTER COLUMN id_vacacion DROP DEFAULT;
       public               user_oscar_mercado    false    226    225    226            �          0    16649 
   citamedica 
   TABLE DATA           b   COPY public.citamedica (id_cita, fecha, hora, id_paciente, id_medico, id_consultorio) FROM stdin;
    public               user_oscar_mercado    false    232   {�       �          0    16640    consultorio 
   TABLE DATA           =   COPY public.consultorio (id_consultorio, nombre) FROM stdin;
    public               user_oscar_mercado    false    230   ��       �          0    16783    contraindicacion 
   TABLE DATA           B   COPY public.contraindicacion (id_contra, descripcion) FROM stdin;
    public               user_oscar_mercado    false    250   ��       �          0    16704    diagnostico 
   TABLE DATA           b   COPY public.diagnostico (id_diagnostico, nombre, descripcion, id_cita, id_enfermedad) FROM stdin;
    public               user_oscar_mercado    false    239   ��       �          0    16598    empleado 
   TABLE DATA           �   COPY public.empleado (id_empleado, nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, tipo_empleado) FROM stdin;
    public               user_oscar_mercado    false    224   ��       �          0    16671 
   enfermedad 
   TABLE DATA           H   COPY public.enfermedad (id_enfermedad, nombre, descripcion) FROM stdin;
    public               user_oscar_mercado    false    234   �       �          0    16688    enfermedad_sintoma 
   TABLE DATA           G   COPY public.enfermedad_sintoma (id_enfermedad, id_sintoma) FROM stdin;
    public               user_oscar_mercado    false    237   )�       �          0    16584    horarioconsulta 
   TABLE DATA           c   COPY public.horarioconsulta (id_horario, dia_semana, hora_inicio, hora_fin, id_medico) FROM stdin;
    public               user_oscar_mercado    false    222   F�       �          0    16736    laboratorio 
   TABLE DATA           H   COPY public.laboratorio (id_laboratorio, nombre, direccion) FROM stdin;
    public               user_oscar_mercado    false    243   c�       �          0    16745    medicamento 
   TABLE DATA           �   COPY public.medicamento (id_medicamento, nombre_comercial, nombre_generico, presentacion, es_generico, dosis_adulto, dosis_nino, necesita_receta, cobertura_pos, unidades_disponibles, id_laboratorio) FROM stdin;
    public               user_oscar_mercado    false    245   ��       �          0    16791    medicamento_contraindicacion 
   TABLE DATA           Q   COPY public.medicamento_contraindicacion (id_medicamento, id_contra) FROM stdin;
    public               user_oscar_mercado    false    251   ��       �          0    16767    medicamento_principio 
   TABLE DATA           M   COPY public.medicamento_principio (id_medicamento, id_principio) FROM stdin;
    public               user_oscar_mercado    false    248   ��       �          0    16806    medicamento_receta 
   TABLE DATA           X   COPY public.medicamento_receta (id_receta, id_medicamento, cantidad, dosis) FROM stdin;
    public               user_oscar_mercado    false    252   ��       �          0    16563    medico 
   TABLE DATA           �   COPY public.medico (id_medico, nombre, direccion, telefono, poblacion, provincia, codigo_postal, nif, num_seguridad_social, num_colegiado, categoria) FROM stdin;
    public               user_oscar_mercado    false    218   ��       �          0    16626    paciente 
   TABLE DATA           �   COPY public.paciente (id_paciente, nombre, direccion, telefono, codigo_postal, nif, num_seguridad_social, id_medico_asignado) FROM stdin;
    public               user_oscar_mercado    false    228   �       �          0    16759    principioactivo 
   TABLE DATA           ?   COPY public.principioactivo (id_principio, nombre) FROM stdin;
    public               user_oscar_mercado    false    247   .�       �          0    16723    receta 
   TABLE DATA           T   COPY public.receta (id_receta, fecha_inicio, fecha_fin, id_diagnostico) FROM stdin;
    public               user_oscar_mercado    false    241   K�       �          0    16680    sintoma 
   TABLE DATA           :   COPY public.sintoma (id_sintoma, descripcion) FROM stdin;
    public               user_oscar_mercado    false    236   h�       �          0    16572    sustitucion 
   TABLE DATA           X   COPY public.sustitucion (id_sustitucion, fecha_alta, fecha_baja, id_medico) FROM stdin;
    public               user_oscar_mercado    false    220   ��       �          0    16607    vacacion 
   TABLE DATA           f   COPY public.vacacion (id_vacacion, fecha_inicio, fecha_fin, tipo, id_medico, id_empleado) FROM stdin;
    public               user_oscar_mercado    false    226   ��       �           0    0    citamedica_id_cita_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.citamedica_id_cita_seq', 1, false);
          public               user_oscar_mercado    false    231            �           0    0    consultorio_id_consultorio_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.consultorio_id_consultorio_seq', 1, false);
          public               user_oscar_mercado    false    229            �           0    0    contraindicacion_id_contra_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.contraindicacion_id_contra_seq', 1, false);
          public               user_oscar_mercado    false    249            �           0    0    diagnostico_id_diagnostico_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.diagnostico_id_diagnostico_seq', 1, false);
          public               user_oscar_mercado    false    238            �           0    0    empleado_id_empleado_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 1, false);
          public               user_oscar_mercado    false    223            �           0    0    enfermedad_id_enfermedad_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enfermedad_id_enfermedad_seq', 1, false);
          public               user_oscar_mercado    false    233            �           0    0    horarioconsulta_id_horario_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.horarioconsulta_id_horario_seq', 1, false);
          public               user_oscar_mercado    false    221            �           0    0    laboratorio_id_laboratorio_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.laboratorio_id_laboratorio_seq', 1, false);
          public               user_oscar_mercado    false    242            �           0    0    medicamento_id_medicamento_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.medicamento_id_medicamento_seq', 1, false);
          public               user_oscar_mercado    false    244            �           0    0    medico_id_medico_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.medico_id_medico_seq', 1, false);
          public               user_oscar_mercado    false    217            �           0    0    paciente_id_paciente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.paciente_id_paciente_seq', 1, false);
          public               user_oscar_mercado    false    227            �           0    0     principioactivo_id_principio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.principioactivo_id_principio_seq', 1, false);
          public               user_oscar_mercado    false    246            �           0    0    receta_id_receta_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.receta_id_receta_seq', 1, false);
          public               user_oscar_mercado    false    240            �           0    0    sintoma_id_sintoma_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.sintoma_id_sintoma_seq', 1, false);
          public               user_oscar_mercado    false    235            �           0    0    sustitucion_id_sustitucion_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.sustitucion_id_sustitucion_seq', 1, false);
          public               user_oscar_mercado    false    219            �           0    0    vacacion_id_vacacion_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vacacion_id_vacacion_seq', 1, false);
          public               user_oscar_mercado    false    225            �           2606    16654    citamedica citamedica_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.citamedica
    ADD CONSTRAINT citamedica_pkey PRIMARY KEY (id_cita);
 D   ALTER TABLE ONLY public.citamedica DROP CONSTRAINT citamedica_pkey;
       public                 user_oscar_mercado    false    232            �           2606    16647    consultorio consultorio_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.consultorio
    ADD CONSTRAINT consultorio_pkey PRIMARY KEY (id_consultorio);
 F   ALTER TABLE ONLY public.consultorio DROP CONSTRAINT consultorio_pkey;
       public                 user_oscar_mercado    false    230            �           2606    16790 &   contraindicacion contraindicacion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.contraindicacion
    ADD CONSTRAINT contraindicacion_pkey PRIMARY KEY (id_contra);
 P   ALTER TABLE ONLY public.contraindicacion DROP CONSTRAINT contraindicacion_pkey;
       public                 user_oscar_mercado    false    250            �           2606    16711    diagnostico diagnostico_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.diagnostico
    ADD CONSTRAINT diagnostico_pkey PRIMARY KEY (id_diagnostico);
 F   ALTER TABLE ONLY public.diagnostico DROP CONSTRAINT diagnostico_pkey;
       public                 user_oscar_mercado    false    239            �           2606    16605    empleado empleado_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public                 user_oscar_mercado    false    224            �           2606    16678    enfermedad enfermedad_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.enfermedad
    ADD CONSTRAINT enfermedad_pkey PRIMARY KEY (id_enfermedad);
 D   ALTER TABLE ONLY public.enfermedad DROP CONSTRAINT enfermedad_pkey;
       public                 user_oscar_mercado    false    234            �           2606    16692 *   enfermedad_sintoma enfermedad_sintoma_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.enfermedad_sintoma
    ADD CONSTRAINT enfermedad_sintoma_pkey PRIMARY KEY (id_enfermedad, id_sintoma);
 T   ALTER TABLE ONLY public.enfermedad_sintoma DROP CONSTRAINT enfermedad_sintoma_pkey;
       public                 user_oscar_mercado    false    237    237            �           2606    16591 $   horarioconsulta horarioconsulta_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.horarioconsulta
    ADD CONSTRAINT horarioconsulta_pkey PRIMARY KEY (id_horario);
 N   ALTER TABLE ONLY public.horarioconsulta DROP CONSTRAINT horarioconsulta_pkey;
       public                 user_oscar_mercado    false    222            �           2606    16743    laboratorio laboratorio_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.laboratorio
    ADD CONSTRAINT laboratorio_pkey PRIMARY KEY (id_laboratorio);
 F   ALTER TABLE ONLY public.laboratorio DROP CONSTRAINT laboratorio_pkey;
       public                 user_oscar_mercado    false    243            �           2606    16795 >   medicamento_contraindicacion medicamento_contraindicacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_contraindicacion
    ADD CONSTRAINT medicamento_contraindicacion_pkey PRIMARY KEY (id_medicamento, id_contra);
 h   ALTER TABLE ONLY public.medicamento_contraindicacion DROP CONSTRAINT medicamento_contraindicacion_pkey;
       public                 user_oscar_mercado    false    251    251            �           2606    16752    medicamento medicamento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT medicamento_pkey PRIMARY KEY (id_medicamento);
 F   ALTER TABLE ONLY public.medicamento DROP CONSTRAINT medicamento_pkey;
       public                 user_oscar_mercado    false    245            �           2606    16771 0   medicamento_principio medicamento_principio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_principio
    ADD CONSTRAINT medicamento_principio_pkey PRIMARY KEY (id_medicamento, id_principio);
 Z   ALTER TABLE ONLY public.medicamento_principio DROP CONSTRAINT medicamento_principio_pkey;
       public                 user_oscar_mercado    false    248    248            �           2606    16812 *   medicamento_receta medicamento_receta_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.medicamento_receta
    ADD CONSTRAINT medicamento_receta_pkey PRIMARY KEY (id_receta, id_medicamento);
 T   ALTER TABLE ONLY public.medicamento_receta DROP CONSTRAINT medicamento_receta_pkey;
       public                 user_oscar_mercado    false    252    252            �           2606    16570    medico medico_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (id_medico);
 <   ALTER TABLE ONLY public.medico DROP CONSTRAINT medico_pkey;
       public                 user_oscar_mercado    false    218            �           2606    16633    paciente paciente_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id_paciente);
 @   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_pkey;
       public                 user_oscar_mercado    false    228            �           2606    16766 $   principioactivo principioactivo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.principioactivo
    ADD CONSTRAINT principioactivo_pkey PRIMARY KEY (id_principio);
 N   ALTER TABLE ONLY public.principioactivo DROP CONSTRAINT principioactivo_pkey;
       public                 user_oscar_mercado    false    247            �           2606    16728    receta receta_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.receta
    ADD CONSTRAINT receta_pkey PRIMARY KEY (id_receta);
 <   ALTER TABLE ONLY public.receta DROP CONSTRAINT receta_pkey;
       public                 user_oscar_mercado    false    241            �           2606    16687    sintoma sintoma_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sintoma
    ADD CONSTRAINT sintoma_pkey PRIMARY KEY (id_sintoma);
 >   ALTER TABLE ONLY public.sintoma DROP CONSTRAINT sintoma_pkey;
       public                 user_oscar_mercado    false    236            �           2606    16577    sustitucion sustitucion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.sustitucion
    ADD CONSTRAINT sustitucion_pkey PRIMARY KEY (id_sustitucion);
 F   ALTER TABLE ONLY public.sustitucion DROP CONSTRAINT sustitucion_pkey;
       public                 user_oscar_mercado    false    220            �           2606    16614    vacacion vacacion_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.vacacion
    ADD CONSTRAINT vacacion_pkey PRIMARY KEY (id_vacacion);
 @   ALTER TABLE ONLY public.vacacion DROP CONSTRAINT vacacion_pkey;
       public                 user_oscar_mercado    false    226            �           2606    16665 )   citamedica citamedica_id_consultorio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.citamedica
    ADD CONSTRAINT citamedica_id_consultorio_fkey FOREIGN KEY (id_consultorio) REFERENCES public.consultorio(id_consultorio);
 S   ALTER TABLE ONLY public.citamedica DROP CONSTRAINT citamedica_id_consultorio_fkey;
       public               user_oscar_mercado    false    230    4815    232            �           2606    16660 $   citamedica citamedica_id_medico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.citamedica
    ADD CONSTRAINT citamedica_id_medico_fkey FOREIGN KEY (id_medico) REFERENCES public.medico(id_medico);
 N   ALTER TABLE ONLY public.citamedica DROP CONSTRAINT citamedica_id_medico_fkey;
       public               user_oscar_mercado    false    232    218    4803            �           2606    16655 &   citamedica citamedica_id_paciente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.citamedica
    ADD CONSTRAINT citamedica_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente);
 P   ALTER TABLE ONLY public.citamedica DROP CONSTRAINT citamedica_id_paciente_fkey;
       public               user_oscar_mercado    false    4813    228    232            �           2606    16712 $   diagnostico diagnostico_id_cita_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diagnostico
    ADD CONSTRAINT diagnostico_id_cita_fkey FOREIGN KEY (id_cita) REFERENCES public.citamedica(id_cita);
 N   ALTER TABLE ONLY public.diagnostico DROP CONSTRAINT diagnostico_id_cita_fkey;
       public               user_oscar_mercado    false    239    4817    232            �           2606    16717 *   diagnostico diagnostico_id_enfermedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diagnostico
    ADD CONSTRAINT diagnostico_id_enfermedad_fkey FOREIGN KEY (id_enfermedad) REFERENCES public.enfermedad(id_enfermedad);
 T   ALTER TABLE ONLY public.diagnostico DROP CONSTRAINT diagnostico_id_enfermedad_fkey;
       public               user_oscar_mercado    false    4819    234    239            �           2606    16693 8   enfermedad_sintoma enfermedad_sintoma_id_enfermedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enfermedad_sintoma
    ADD CONSTRAINT enfermedad_sintoma_id_enfermedad_fkey FOREIGN KEY (id_enfermedad) REFERENCES public.enfermedad(id_enfermedad);
 b   ALTER TABLE ONLY public.enfermedad_sintoma DROP CONSTRAINT enfermedad_sintoma_id_enfermedad_fkey;
       public               user_oscar_mercado    false    4819    237    234            �           2606    16698 5   enfermedad_sintoma enfermedad_sintoma_id_sintoma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enfermedad_sintoma
    ADD CONSTRAINT enfermedad_sintoma_id_sintoma_fkey FOREIGN KEY (id_sintoma) REFERENCES public.sintoma(id_sintoma);
 _   ALTER TABLE ONLY public.enfermedad_sintoma DROP CONSTRAINT enfermedad_sintoma_id_sintoma_fkey;
       public               user_oscar_mercado    false    236    4821    237            �           2606    16828    citamedica fk_cita_paciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.citamedica
    ADD CONSTRAINT fk_cita_paciente FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente) ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.citamedica DROP CONSTRAINT fk_cita_paciente;
       public               user_oscar_mercado    false    4813    228    232            �           2606    16838 &   medicamento fk_medicamento_laboratorio    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT fk_medicamento_laboratorio FOREIGN KEY (id_laboratorio) REFERENCES public.laboratorio(id_laboratorio) ON UPDATE CASCADE ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.medicamento DROP CONSTRAINT fk_medicamento_laboratorio;
       public               user_oscar_mercado    false    245    243    4829            �           2606    16823    paciente fk_paciente_medico    FK CONSTRAINT     �   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT fk_paciente_medico FOREIGN KEY (id_medico_asignado) REFERENCES public.medico(id_medico) ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.paciente DROP CONSTRAINT fk_paciente_medico;
       public               user_oscar_mercado    false    4803    218    228            �           2606    16833    receta fk_receta_diagnostico    FK CONSTRAINT     �   ALTER TABLE ONLY public.receta
    ADD CONSTRAINT fk_receta_diagnostico FOREIGN KEY (id_diagnostico) REFERENCES public.diagnostico(id_diagnostico) ON UPDATE CASCADE ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.receta DROP CONSTRAINT fk_receta_diagnostico;
       public               user_oscar_mercado    false    241    239    4825            �           2606    16592 .   horarioconsulta horarioconsulta_id_medico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.horarioconsulta
    ADD CONSTRAINT horarioconsulta_id_medico_fkey FOREIGN KEY (id_medico) REFERENCES public.medico(id_medico);
 X   ALTER TABLE ONLY public.horarioconsulta DROP CONSTRAINT horarioconsulta_id_medico_fkey;
       public               user_oscar_mercado    false    222    4803    218            �           2606    16801 H   medicamento_contraindicacion medicamento_contraindicacion_id_contra_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_contraindicacion
    ADD CONSTRAINT medicamento_contraindicacion_id_contra_fkey FOREIGN KEY (id_contra) REFERENCES public.contraindicacion(id_contra);
 r   ALTER TABLE ONLY public.medicamento_contraindicacion DROP CONSTRAINT medicamento_contraindicacion_id_contra_fkey;
       public               user_oscar_mercado    false    4837    251    250            �           2606    16796 M   medicamento_contraindicacion medicamento_contraindicacion_id_medicamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_contraindicacion
    ADD CONSTRAINT medicamento_contraindicacion_id_medicamento_fkey FOREIGN KEY (id_medicamento) REFERENCES public.medicamento(id_medicamento);
 w   ALTER TABLE ONLY public.medicamento_contraindicacion DROP CONSTRAINT medicamento_contraindicacion_id_medicamento_fkey;
       public               user_oscar_mercado    false    251    4831    245            �           2606    16753 +   medicamento medicamento_id_laboratorio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT medicamento_id_laboratorio_fkey FOREIGN KEY (id_laboratorio) REFERENCES public.laboratorio(id_laboratorio);
 U   ALTER TABLE ONLY public.medicamento DROP CONSTRAINT medicamento_id_laboratorio_fkey;
       public               user_oscar_mercado    false    243    245    4829            �           2606    16772 ?   medicamento_principio medicamento_principio_id_medicamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_principio
    ADD CONSTRAINT medicamento_principio_id_medicamento_fkey FOREIGN KEY (id_medicamento) REFERENCES public.medicamento(id_medicamento);
 i   ALTER TABLE ONLY public.medicamento_principio DROP CONSTRAINT medicamento_principio_id_medicamento_fkey;
       public               user_oscar_mercado    false    245    4831    248            �           2606    16777 =   medicamento_principio medicamento_principio_id_principio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_principio
    ADD CONSTRAINT medicamento_principio_id_principio_fkey FOREIGN KEY (id_principio) REFERENCES public.principioactivo(id_principio);
 g   ALTER TABLE ONLY public.medicamento_principio DROP CONSTRAINT medicamento_principio_id_principio_fkey;
       public               user_oscar_mercado    false    4833    248    247                        2606    16818 9   medicamento_receta medicamento_receta_id_medicamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_receta
    ADD CONSTRAINT medicamento_receta_id_medicamento_fkey FOREIGN KEY (id_medicamento) REFERENCES public.medicamento(id_medicamento);
 c   ALTER TABLE ONLY public.medicamento_receta DROP CONSTRAINT medicamento_receta_id_medicamento_fkey;
       public               user_oscar_mercado    false    245    252    4831                       2606    16813 4   medicamento_receta medicamento_receta_id_receta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_receta
    ADD CONSTRAINT medicamento_receta_id_receta_fkey FOREIGN KEY (id_receta) REFERENCES public.receta(id_receta);
 ^   ALTER TABLE ONLY public.medicamento_receta DROP CONSTRAINT medicamento_receta_id_receta_fkey;
       public               user_oscar_mercado    false    4827    252    241            �           2606    16634 )   paciente paciente_id_medico_asignado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_id_medico_asignado_fkey FOREIGN KEY (id_medico_asignado) REFERENCES public.medico(id_medico);
 S   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_id_medico_asignado_fkey;
       public               user_oscar_mercado    false    218    228    4803            �           2606    16729 !   receta receta_id_diagnostico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receta
    ADD CONSTRAINT receta_id_diagnostico_fkey FOREIGN KEY (id_diagnostico) REFERENCES public.diagnostico(id_diagnostico);
 K   ALTER TABLE ONLY public.receta DROP CONSTRAINT receta_id_diagnostico_fkey;
       public               user_oscar_mercado    false    239    4825    241            �           2606    16578 &   sustitucion sustitucion_id_medico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sustitucion
    ADD CONSTRAINT sustitucion_id_medico_fkey FOREIGN KEY (id_medico) REFERENCES public.medico(id_medico);
 P   ALTER TABLE ONLY public.sustitucion DROP CONSTRAINT sustitucion_id_medico_fkey;
       public               user_oscar_mercado    false    218    220    4803            �           2606    16620 "   vacacion vacacion_id_empleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vacacion
    ADD CONSTRAINT vacacion_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 L   ALTER TABLE ONLY public.vacacion DROP CONSTRAINT vacacion_id_empleado_fkey;
       public               user_oscar_mercado    false    226    224    4809            �           2606    16615     vacacion vacacion_id_medico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vacacion
    ADD CONSTRAINT vacacion_id_medico_fkey FOREIGN KEY (id_medico) REFERENCES public.medico(id_medico);
 J   ALTER TABLE ONLY public.vacacion DROP CONSTRAINT vacacion_id_medico_fkey;
       public               user_oscar_mercado    false    4803    226    218            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     