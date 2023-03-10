
CREATE SEQUENCE public.crear_atleta_id_crear_atleta_seq;

CREATE SEQUENCE public.crear_atleta_num_regis_atleta_seq;

CREATE SEQUENCE public.crear_atleta_telf_atleta_seq;

CREATE SEQUENCE public.crear_atleta_edad_atleta_seq;

CREATE SEQUENCE public.crear_atleta_fech_nacim_atleta_seq;

CREATE TABLE public.crear_atleta (
                id_crear_atleta INTEGER NOT NULL DEFAULT nextval('public.crear_atleta_id_crear_atleta_seq'),
                num_regis_atleta NUMERIC(20) NOT NULL DEFAULT nextval('public.crear_atleta_num_regis_atleta_seq'),
                nomb_apelld_atleta CHAR(20) NOT NULL,
                telf_atleta NUMERIC(20) NOT NULL DEFAULT nextval('public.crear_atleta_telf_atleta_seq'),
                correo_atleta CHAR(20) NOT NULL,
                edad_atleta NUMERIC(3) NOT NULL DEFAULT nextval('public.crear_atleta_edad_atleta_seq'),
                fech_nacim_atleta NUMERIC(10) NOT NULL DEFAULT nextval('public.crear_atleta_fech_nacim_atleta_seq'),
                sexo_atleta CHAR(10) NOT NULL,
                direccion_atleta CHAR(20) NOT NULL,
                CONSTRAINT id_crear_atleta_pk PRIMARY KEY (id_crear_atleta)
);


ALTER SEQUENCE public.crear_atleta_id_crear_atleta_seq OWNED BY public.crear_atleta.id_crear_atleta;

ALTER SEQUENCE public.crear_atleta_num_regis_atleta_seq OWNED BY public.crear_atleta.num_regis_atleta;

ALTER SEQUENCE public.crear_atleta_telf_atleta_seq OWNED BY public.crear_atleta.telf_atleta;

ALTER SEQUENCE public.crear_atleta_edad_atleta_seq OWNED BY public.crear_atleta.edad_atleta;

ALTER SEQUENCE public.crear_atleta_fech_nacim_atleta_seq OWNED BY public.crear_atleta.fech_nacim_atleta;

CREATE SEQUENCE public.historial_ingres_id_historial_ingres_seq;

CREATE SEQUENCE public.historial_ingres_num_hist_penaltis_seq;

CREATE SEQUENCE public.historial_ingres_num_hist_faltas_seq;

CREATE SEQUENCE public.historial_ingres_num_hist_partd_ganados_seq;

CREATE SEQUENCE public.historial_ingres_num_hist_partd_perdidos_seq;

CREATE SEQUENCE public.historial_ingres_num_hist_partd_empatados_seq;

CREATE SEQUENCE public.historial_ingres_num_partd_goles_seq;

CREATE TABLE public.historial_ingres (
                id_historial_ingres INTEGER NOT NULL DEFAULT nextval('public.historial_ingres_id_historial_ingres_seq'),
                id_crear_atleta INTEGER NOT NULL,
                num_hist_penaltis NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_ingres_num_hist_penaltis_seq'),
                num_hist_faltas NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_ingres_num_hist_faltas_seq'),
                num_hist_partd_ganados NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_ingres_num_hist_partd_ganados_seq'),
                num_hist_partd_perdidos NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_ingres_num_hist_partd_perdidos_seq'),
                num_hist_partd_empatados NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_ingres_num_hist_partd_empatados_seq'),
                num_partd_goles NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_ingres_num_partd_goles_seq'),
                CONSTRAINT id_historial_ingres_pk PRIMARY KEY (id_historial_ingres)
);


ALTER SEQUENCE public.historial_ingres_id_historial_ingres_seq OWNED BY public.historial_ingres.id_historial_ingres;

ALTER SEQUENCE public.historial_ingres_num_hist_penaltis_seq OWNED BY public.historial_ingres.num_hist_penaltis;

ALTER SEQUENCE public.historial_ingres_num_hist_faltas_seq OWNED BY public.historial_ingres.num_hist_faltas;

ALTER SEQUENCE public.historial_ingres_num_hist_partd_ganados_seq OWNED BY public.historial_ingres.num_hist_partd_ganados;

ALTER SEQUENCE public.historial_ingres_num_hist_partd_perdidos_seq OWNED BY public.historial_ingres.num_hist_partd_perdidos;

ALTER SEQUENCE public.historial_ingres_num_hist_partd_empatados_seq OWNED BY public.historial_ingres.num_hist_partd_empatados;

ALTER SEQUENCE public.historial_ingres_num_partd_goles_seq OWNED BY public.historial_ingres.num_partd_goles;

CREATE SEQUENCE public.categ_inscripcion_id_categ_inscripcion_seq;

CREATE TABLE public.categ_inscripcion (
                id_categ_inscripcion INTEGER NOT NULL DEFAULT nextval('public.categ_inscripcion_id_categ_inscripcion_seq'),
                id_historial_ingres INTEGER NOT NULL,
                nueva_catg_infantil CHAR(10) NOT NULL,
                nueva_catg_cadete CHAR(10) NOT NULL,
                nueva_catg_juvenil CHAR(10) NOT NULL,
                CONSTRAINT id_categ_inscripcion_pk PRIMARY KEY (id_categ_inscripcion)
);


ALTER SEQUENCE public.categ_inscripcion_id_categ_inscripcion_seq OWNED BY public.categ_inscripcion.id_categ_inscripcion;

CREATE SEQUENCE public.historial_de_ascenso_id_historial_de_ascenso_seq;

CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_perdido_seq;

CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_ganados_seq;

CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_goles_seq;

CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_empatados_seq;

CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_faltas_seq;

CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_penaltis_seq;

CREATE TABLE public.historial_de_ascenso (
                id_historial_de_ascenso INTEGER NOT NULL DEFAULT nextval('public.historial_de_ascenso_id_historial_de_ascenso_seq'),
                id_categ_inscripcion INTEGER NOT NULL,
                num_hist_ascenso_perdido NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_perdido_seq'),
                num_hist_ascenso_ganados NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_ganados_seq'),
                num_hist_ascenso_goles NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_goles_seq'),
                num_hist_ascenso_empatados NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_empatados_seq'),
                num_hist_ascenso_faltas NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_faltas_seq'),
                num_hist_ascenso_penaltis NUMERIC(20) NOT NULL DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_penaltis_seq'),
                CONSTRAINT id_historial_de_ascenso_pk PRIMARY KEY (id_historial_de_ascenso)
);


ALTER SEQUENCE public.historial_de_ascenso_id_historial_de_ascenso_seq OWNED BY public.historial_de_ascenso.id_historial_de_ascenso;

ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_perdido_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_perdido;

ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_ganados_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_ganados;

ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_goles_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_goles;

ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_empatados_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_empatados;

ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_faltas_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_faltas;

ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_penaltis_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_penaltis;

CREATE SEQUENCE public.crear_instructor_id_crear_instructor_seq;

CREATE SEQUENCE public.crear_instructor_num_regis_instructor_seq;

CREATE SEQUENCE public.crear_instructor_telf_instructor_seq;

CREATE SEQUENCE public.crear_instructor_edad_instructor_seq;

CREATE SEQUENCE public.crear_instructor_fech_nacim_instructor_seq;

CREATE TABLE public.crear_instructor (
                id_crear_instructor INTEGER NOT NULL DEFAULT nextval('public.crear_instructor_id_crear_instructor_seq'),
                num_regis_instructor NUMERIC(20) NOT NULL DEFAULT nextval('public.crear_instructor_num_regis_instructor_seq'),
                nomb_apelld_instructor CHAR(20) NOT NULL,
                telf_instructor NUMERIC(20) NOT NULL DEFAULT nextval('public.crear_instructor_telf_instructor_seq'),
                correo_instructor CHAR(20) NOT NULL,
                edad_instructor NUMERIC(3) NOT NULL DEFAULT nextval('public.crear_instructor_edad_instructor_seq'),
                fech_nacim_instructor NUMERIC(10) NOT NULL DEFAULT nextval('public.crear_instructor_fech_nacim_instructor_seq'),
                sexo_instructor CHAR(10) NOT NULL,
                direccion_instructor CHAR(20) NOT NULL,
                id_historial_de_ascenso INTEGER NOT NULL,
                CONSTRAINT id_crear_instructor_pk PRIMARY KEY (id_crear_instructor)
);


ALTER SEQUENCE public.crear_instructor_id_crear_instructor_seq OWNED BY public.crear_instructor.id_crear_instructor;

ALTER SEQUENCE public.crear_instructor_num_regis_instructor_seq OWNED BY public.crear_instructor.num_regis_instructor;

ALTER SEQUENCE public.crear_instructor_telf_instructor_seq OWNED BY public.crear_instructor.telf_instructor;

ALTER SEQUENCE public.crear_instructor_edad_instructor_seq OWNED BY public.crear_instructor.edad_instructor;

ALTER SEQUENCE public.crear_instructor_fech_nacim_instructor_seq OWNED BY public.crear_instructor.fech_nacim_instructor;

CREATE SEQUENCE public.tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq;

CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq;

CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq;

CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq;

CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq;

CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq;

CREATE TABLE public.tipos_entrenm_clinicas (
                id_tipos_entrenm_clinicas INTEGER NOT NULL DEFAULT nextval('public.tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq'),
                id_crear_instructor INTEGER NOT NULL,
                num_entrenm_clinicas_practica NUMERIC(20) NOT NULL DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq'),
                num_entrenm_clinicas_tacticas NUMERIC(20) NOT NULL DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq'),
                num_entrenm_clinicas_acond NUMERIC(20) NOT NULL DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq'),
                num_entrenm_clinicas_estratg NUMERIC(20) NOT NULL DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq'),
                num_entrenm_clinicas_fisicas NUMERIC(20) NOT NULL DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq'),
                CONSTRAINT id_tipos_entrenm_clinicas_pk PRIMARY KEY (id_tipos_entrenm_clinicas)
);


ALTER SEQUENCE public.tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq OWNED BY public.tipos_entrenm_clinicas.id_tipos_entrenm_clinicas;

ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_practica;

ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_tacticas;

ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_acond;

ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_estratg;

ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_fisicas;

CREATE SEQUENCE public.equipo_asignado_id_equipo_asignado_seq;

CREATE SEQUENCE public.equipo_asignado_num_tipos_entrenm_seq;

CREATE TABLE public.equipo_asignado (
                id_equipo_asignado INTEGER NOT NULL DEFAULT nextval('public.equipo_asignado_id_equipo_asignado_seq'),
                equipo_infantil CHAR(20) NOT NULL,
                equipo_juvenil CHAR(20) NOT NULL,
                equipo_cadete CHAR(20) NOT NULL,
                num_tipos_entrenm NUMERIC(20) NOT NULL DEFAULT nextval('public.equipo_asignado_num_tipos_entrenm_seq'),
                id_tipos_entrenm_clinicas INTEGER NOT NULL,
                CONSTRAINT id_equipo_asignado__pk PRIMARY KEY (id_equipo_asignado)
);


ALTER SEQUENCE public.equipo_asignado_id_equipo_asignado_seq OWNED BY public.equipo_asignado.id_equipo_asignado;

ALTER SEQUENCE public.equipo_asignado_num_tipos_entrenm_seq OWNED BY public.equipo_asignado.num_tipos_entrenm;

CREATE SEQUENCE public.selecion_equipos_id_selecion_equipos_seq;

CREATE SEQUENCE public.selecion_equipos_num_equipos_cadetes_seq;

CREATE SEQUENCE public.selecion_equipos_num_equipos_infantil_seq;

CREATE SEQUENCE public.selecion_equipos_num_equipos_juvenil_seq;

CREATE TABLE public.selecion_equipos (
                id_selecion_equipos INTEGER NOT NULL DEFAULT nextval('public.selecion_equipos_id_selecion_equipos_seq'),
                num_equipos_cadetes NUMERIC(20) NOT NULL DEFAULT nextval('public.selecion_equipos_num_equipos_cadetes_seq'),
                num_equipos_infantil NUMERIC(20) NOT NULL DEFAULT nextval('public.selecion_equipos_num_equipos_infantil_seq'),
                num_equipos_juvenil NUMERIC(20) NOT NULL DEFAULT nextval('public.selecion_equipos_num_equipos_juvenil_seq'),
                id_equipo_asignado INTEGER NOT NULL,
                CONSTRAINT id_selecion_equipos_pk PRIMARY KEY (id_selecion_equipos)
);


ALTER SEQUENCE public.selecion_equipos_id_selecion_equipos_seq OWNED BY public.selecion_equipos.id_selecion_equipos;

ALTER SEQUENCE public.selecion_equipos_num_equipos_cadetes_seq OWNED BY public.selecion_equipos.num_equipos_cadetes;

ALTER SEQUENCE public.selecion_equipos_num_equipos_infantil_seq OWNED BY public.selecion_equipos.num_equipos_infantil;

ALTER SEQUENCE public.selecion_equipos_num_equipos_juvenil_seq OWNED BY public.selecion_equipos.num_equipos_juvenil;

CREATE SEQUENCE public.categoria_equipo_id_categoria_equipo_seq;

CREATE TABLE public.categoria_equipo (
                id_categoria_equipo INTEGER NOT NULL DEFAULT nextval('public.categoria_equipo_id_categoria_equipo_seq'),
                Nomb__ctg_equipo CHAR(20) NOT NULL,
                Num_id_ctg_equipo NUMERIC(20) NOT NULL,
                num_ctg_equip_cadete INTEGER NOT NULL,
                num_ctg_equip_juvenil INTEGER NOT NULL,
                num_ctg_equip_infantil INTEGER NOT NULL,
                id_selecion_equipos INTEGER NOT NULL,
                CONSTRAINT id_categoria_equipo_pk PRIMARY KEY (id_categoria_equipo)
);


ALTER SEQUENCE public.categoria_equipo_id_categoria_equipo_seq OWNED BY public.categoria_equipo.id_categoria_equipo;

CREATE SEQUENCE public.equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq;

CREATE SEQUENCE public.equipos_por_tipo_catg_num_reg_equip_catg_seq;

CREATE TABLE public.equipos_por_tipo_catg (
                id_equipos_por_tipo_catg INTEGER NOT NULL DEFAULT nextval('public.equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq'),
                nomb_equip_catg_cadete CHAR(20) NOT NULL,
                nomb_equip_catg_juvenil CHAR(20) NOT NULL,
                nomb_equip_catg_infantil CHAR(20) NOT NULL,
                id_categoria_equipo INTEGER NOT NULL,
                num_reg_equip_catg NUMERIC(20) NOT NULL DEFAULT nextval('public.equipos_por_tipo_catg_num_reg_equip_catg_seq'),
                CONSTRAINT id_equipos_por_tipo_catg_pk PRIMARY KEY (id_equipos_por_tipo_catg)
);


ALTER SEQUENCE public.equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq OWNED BY public.equipos_por_tipo_catg.id_equipos_por_tipo_catg;

ALTER SEQUENCE public.equipos_por_tipo_catg_num_reg_equip_catg_seq OWNED BY public.equipos_por_tipo_catg.num_reg_equip_catg;

CREATE SEQUENCE public.num_juegos_jugados_id_num_juegos_jugados_seq;

CREATE SEQUENCE public.num_juegos_jugados_num_jg_jgados_emptads_seq;

CREATE SEQUENCE public.num_juegos_jugados_num_jg_jgados_ganados_seq;

CREATE SEQUENCE public.num_juegos_jugados_num_jg_jgados_perdidos_seq;

CREATE SEQUENCE public.num_juegos_jugados_num_jg_jugados_penaltis_seq;

CREATE SEQUENCE public.num_juegos_jugados_num_jg_jugados_faltas_seq;

CREATE SEQUENCE public.num_juegos_jugados_selec_ctg_equipo_seq;

CREATE TABLE public.num_juegos_jugados (
                id_num_juegos_jugados INTEGER NOT NULL DEFAULT nextval('public.num_juegos_jugados_id_num_juegos_jugados_seq'),
                num_jg_jgados_emptads NUMERIC(20) NOT NULL DEFAULT nextval('public.num_juegos_jugados_num_jg_jgados_emptads_seq'),
                num_jg_jgados_ganados NUMERIC(20) NOT NULL DEFAULT nextval('public.num_juegos_jugados_num_jg_jgados_ganados_seq'),
                num_jg_jgados_perdidos NUMERIC(20) NOT NULL DEFAULT nextval('public.num_juegos_jugados_num_jg_jgados_perdidos_seq'),
                num_jg_jugados_penaltis NUMERIC(20) NOT NULL DEFAULT nextval('public.num_juegos_jugados_num_jg_jugados_penaltis_seq'),
                num_jg_jugados_faltas NUMERIC(20) NOT NULL DEFAULT nextval('public.num_juegos_jugados_num_jg_jugados_faltas_seq'),
                nomb_equipo CHAR(20) NOT NULL,
                selec_ctg_equipo NUMERIC(20) NOT NULL DEFAULT nextval('public.num_juegos_jugados_selec_ctg_equipo_seq'),
                id_equipos_por_tipo_catg INTEGER NOT NULL,
                CONSTRAINT id_num_juegos_jugados_pk PRIMARY KEY (id_num_juegos_jugados)
);


ALTER SEQUENCE public.num_juegos_jugados_id_num_juegos_jugados_seq OWNED BY public.num_juegos_jugados.id_num_juegos_jugados;

ALTER SEQUENCE public.num_juegos_jugados_num_jg_jgados_emptads_seq OWNED BY public.num_juegos_jugados.num_jg_jgados_emptads;

ALTER SEQUENCE public.num_juegos_jugados_num_jg_jgados_ganados_seq OWNED BY public.num_juegos_jugados.num_jg_jgados_ganados;

ALTER SEQUENCE public.num_juegos_jugados_num_jg_jgados_perdidos_seq OWNED BY public.num_juegos_jugados.num_jg_jgados_perdidos;

ALTER SEQUENCE public.num_juegos_jugados_num_jg_jugados_penaltis_seq OWNED BY public.num_juegos_jugados.num_jg_jugados_penaltis;

ALTER SEQUENCE public.num_juegos_jugados_num_jg_jugados_faltas_seq OWNED BY public.num_juegos_jugados.num_jg_jugados_faltas;

ALTER SEQUENCE public.num_juegos_jugados_selec_ctg_equipo_seq OWNED BY public.num_juegos_jugados.selec_ctg_equipo;

CREATE SEQUENCE public.num_puntaje_juegos_id_num_puntaje_juegos_seq;

CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_ganados_seq;

CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_perdidos_seq;

CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_empatados_seq;

CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_goles_seq;

CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_faltas_seq;

CREATE SEQUENCE public.num_puntaje_juegos_num_registro_puntj_jgs_seq;

CREATE TABLE public.num_puntaje_juegos (
                id_num_puntaje_juegos INTEGER NOT NULL DEFAULT nextval('public.num_puntaje_juegos_id_num_puntaje_juegos_seq'),
                num_puntj_jgs_ganados NUMERIC(20) NOT NULL DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_ganados_seq'),
                num_puntj_jgs_perdidos NUMERIC(20) NOT NULL DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_perdidos_seq'),
                num_puntj_jgs_empatados NUMERIC(20) NOT NULL DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_empatados_seq'),
                num_puntj_jgs_goles NUMERIC(20) NOT NULL DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_goles_seq'),
                num_puntj_jgs_faltas NUMERIC(20) NOT NULL DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_faltas_seq'),
                num_registro_puntj_jgs NUMERIC(20) NOT NULL DEFAULT nextval('public.num_puntaje_juegos_num_registro_puntj_jgs_seq'),
                id_num_juegos_jugados INTEGER NOT NULL,
                CONSTRAINT id_num_puntaje_juegos_pk PRIMARY KEY (id_num_puntaje_juegos)
);


ALTER SEQUENCE public.num_puntaje_juegos_id_num_puntaje_juegos_seq OWNED BY public.num_puntaje_juegos.id_num_puntaje_juegos;

ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_ganados_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_ganados;

ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_perdidos_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_perdidos;

ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_empatados_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_empatados;

ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_goles_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_goles;

ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_faltas_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_faltas;

ALTER SEQUENCE public.num_puntaje_juegos_num_registro_puntj_jgs_seq OWNED BY public.num_puntaje_juegos.num_registro_puntj_jgs;

CREATE SEQUENCE public.crear_regis_repre_id_crear_regis_repre_seq;

CREATE SEQUENCE public.crear_regis_repre_num_regis_repre_seq;

CREATE SEQUENCE public.crear_regis_repre_telf_repre_seq;

CREATE SEQUENCE public.crear_regis_repre_edad_repre_seq;

CREATE SEQUENCE public.crear_regis_repre_fech_nacim_repre_seq;

CREATE TABLE public.crear_regis_repre (
                id_crear_regis_repre INTEGER NOT NULL DEFAULT nextval('public.crear_regis_repre_id_crear_regis_repre_seq'),
                num_regis_repre NUMERIC(20) NOT NULL DEFAULT nextval('public.crear_regis_repre_num_regis_repre_seq'),
                nomb_apelld_repre CHAR(20) NOT NULL,
                telf_repre NUMERIC(20) NOT NULL DEFAULT nextval('public.crear_regis_repre_telf_repre_seq'),
                correo_repre CHAR(20) NOT NULL,
                edad_repre NUMERIC(3) NOT NULL DEFAULT nextval('public.crear_regis_repre_edad_repre_seq'),
                fech_nacim_repre NUMERIC(10) NOT NULL DEFAULT nextval('public.crear_regis_repre_fech_nacim_repre_seq'),
                sexo_repre CHAR(10) NOT NULL,
                direccion_repre CHAR(20) NOT NULL,
                id_num_puntaje_juegos INTEGER NOT NULL,
                CONSTRAINT id_crear_regis_repre_pk PRIMARY KEY (id_crear_regis_repre)
);


ALTER SEQUENCE public.crear_regis_repre_id_crear_regis_repre_seq OWNED BY public.crear_regis_repre.id_crear_regis_repre;

ALTER SEQUENCE public.crear_regis_repre_num_regis_repre_seq OWNED BY public.crear_regis_repre.num_regis_repre;

ALTER SEQUENCE public.crear_regis_repre_telf_repre_seq OWNED BY public.crear_regis_repre.telf_repre;

ALTER SEQUENCE public.crear_regis_repre_edad_repre_seq OWNED BY public.crear_regis_repre.edad_repre;

ALTER SEQUENCE public.crear_regis_repre_fech_nacim_repre_seq OWNED BY public.crear_regis_repre.fech_nacim_repre;

CREATE SEQUENCE public.exp_instructor_id_exp_instructor_seq;

CREATE SEQUENCE public.exp_instructor_num_exp_trabj_anteriores_seq;

CREATE SEQUENCE public.exp_instructor_num_exp_curso_realizados_seq;

CREATE SEQUENCE public.exp_instructor_num_exp_curso_otros_seq;

CREATE SEQUENCE public.exp_instructor_num_exp_curso_acondim_seq;

CREATE SEQUENCE public.exp_instructor_num_exp_curso_extratg_seq;

CREATE SEQUENCE public.exp_instructor_num_exp_curso_fisicos_seq;

CREATE TABLE public.exp_instructor (
                id_exp_instructor INTEGER NOT NULL DEFAULT nextval('public.exp_instructor_id_exp_instructor_seq'),
                num_exp_trabj_anteriores NUMERIC(20) NOT NULL DEFAULT nextval('public.exp_instructor_num_exp_trabj_anteriores_seq'),
                num_exp_curso_realizados NUMERIC(20) NOT NULL DEFAULT nextval('public.exp_instructor_num_exp_curso_realizados_seq'),
                num_exp_curso_otros NUMERIC(20) NOT NULL DEFAULT nextval('public.exp_instructor_num_exp_curso_otros_seq'),
                num_exp_curso_acondim NUMERIC(20) NOT NULL DEFAULT nextval('public.exp_instructor_num_exp_curso_acondim_seq'),
                num_exp_curso_extratg NUMERIC(20) NOT NULL DEFAULT nextval('public.exp_instructor_num_exp_curso_extratg_seq'),
                num_exp_curso_fisicos NUMERIC(20) NOT NULL DEFAULT nextval('public.exp_instructor_num_exp_curso_fisicos_seq'),
                id_crear_regis_repre INTEGER NOT NULL,
                CONSTRAINT id_exp_instructor_pk PRIMARY KEY (id_exp_instructor)
);


ALTER SEQUENCE public.exp_instructor_id_exp_instructor_seq OWNED BY public.exp_instructor.id_exp_instructor;

ALTER SEQUENCE public.exp_instructor_num_exp_trabj_anteriores_seq OWNED BY public.exp_instructor.num_exp_trabj_anteriores;

ALTER SEQUENCE public.exp_instructor_num_exp_curso_realizados_seq OWNED BY public.exp_instructor.num_exp_curso_realizados;

ALTER SEQUENCE public.exp_instructor_num_exp_curso_otros_seq OWNED BY public.exp_instructor.num_exp_curso_otros;

ALTER SEQUENCE public.exp_instructor_num_exp_curso_acondim_seq OWNED BY public.exp_instructor.num_exp_curso_acondim;

ALTER SEQUENCE public.exp_instructor_num_exp_curso_extratg_seq OWNED BY public.exp_instructor.num_exp_curso_extratg;

ALTER SEQUENCE public.exp_instructor_num_exp_curso_fisicos_seq OWNED BY public.exp_instructor.num_exp_curso_fisicos;

CREATE SEQUENCE public.calendario_ctg_equipo_id_calendario_ctg_equipo_seq;

CREATE SEQUENCE public.calendario_ctg_equipo_num_reg_ctg_equipo_seq;

CREATE SEQUENCE public.calendario_ctg_equipo_num_selec_calend_ctg_seq;

CREATE TABLE public.calendario_ctg_equipo (
                id_calendario_ctg_equipo INTEGER NOT NULL DEFAULT nextval('public.calendario_ctg_equipo_id_calendario_ctg_equipo_seq'),
                num_reg_ctg_equipo NUMERIC(20) NOT NULL DEFAULT nextval('public.calendario_ctg_equipo_num_reg_ctg_equipo_seq'),
                num_selec_calend_ctg NUMERIC(20) NOT NULL DEFAULT nextval('public.calendario_ctg_equipo_num_selec_calend_ctg_seq'),
                id_exp_instructor INTEGER NOT NULL,
                CONSTRAINT id_calendario_ctg_equipo_pk PRIMARY KEY (id_calendario_ctg_equipo)
);


ALTER SEQUENCE public.calendario_ctg_equipo_id_calendario_ctg_equipo_seq OWNED BY public.calendario_ctg_equipo.id_calendario_ctg_equipo;

ALTER SEQUENCE public.calendario_ctg_equipo_num_reg_ctg_equipo_seq OWNED BY public.calendario_ctg_equipo.num_reg_ctg_equipo;

ALTER SEQUENCE public.calendario_ctg_equipo_num_selec_calend_ctg_seq OWNED BY public.calendario_ctg_equipo.num_selec_calend_ctg;

CREATE SEQUENCE public.seleccion_calend_ctg_id_seleccion_calend_ctg_seq;

CREATE SEQUENCE public.seleccion_calend_ctg_num_id_ctg_cadete_seq;

CREATE SEQUENCE public.seleccion_calend_ctg_num_id_ctg_juvenil_seq;

CREATE SEQUENCE public.seleccion_calend_ctg_num_id_ctg_infantil_seq;

CREATE TABLE public.seleccion_calend_ctg (
                id_seleccion_calend_ctg INTEGER NOT NULL DEFAULT nextval('public.seleccion_calend_ctg_id_seleccion_calend_ctg_seq'),
                num_id_ctg_cadete NUMERIC(20) NOT NULL DEFAULT nextval('public.seleccion_calend_ctg_num_id_ctg_cadete_seq'),
                num_id_ctg_juvenil NUMERIC(20) NOT NULL DEFAULT nextval('public.seleccion_calend_ctg_num_id_ctg_juvenil_seq'),
                num_id_ctg_infantil NUMERIC(20) NOT NULL DEFAULT nextval('public.seleccion_calend_ctg_num_id_ctg_infantil_seq'),
                id_calendario_ctg_equipo INTEGER NOT NULL,
                CONSTRAINT id_seleccion_calend_ctg_pk PRIMARY KEY (id_seleccion_calend_ctg)
);


ALTER SEQUENCE public.seleccion_calend_ctg_id_seleccion_calend_ctg_seq OWNED BY public.seleccion_calend_ctg.id_seleccion_calend_ctg;

ALTER SEQUENCE public.seleccion_calend_ctg_num_id_ctg_cadete_seq OWNED BY public.seleccion_calend_ctg.num_id_ctg_cadete;

ALTER SEQUENCE public.seleccion_calend_ctg_num_id_ctg_juvenil_seq OWNED BY public.seleccion_calend_ctg.num_id_ctg_juvenil;

ALTER SEQUENCE public.seleccion_calend_ctg_num_id_ctg_infantil_seq OWNED BY public.seleccion_calend_ctg.num_id_ctg_infantil;

CREATE SEQUENCE public.dias_jg_equipo_id_dias_jg_equipo_seq;

CREATE SEQUENCE public.dias_jg_equipo_dias_jg_cadete_seq;

CREATE SEQUENCE public.dias_jg_equipo_dias_jg_juvenil_seq;

CREATE SEQUENCE public.dias_jg_equipo_dias_jg_infantil_seq;

CREATE TABLE public.dias_jg_equipo (
                id_dias_jg_equipo INTEGER NOT NULL DEFAULT nextval('public.dias_jg_equipo_id_dias_jg_equipo_seq'),
                dias_jg_cadete NUMERIC(20) NOT NULL DEFAULT nextval('public.dias_jg_equipo_dias_jg_cadete_seq'),
                dias_jg_juvenil NUMERIC(20) NOT NULL DEFAULT nextval('public.dias_jg_equipo_dias_jg_juvenil_seq'),
                dias_jg_infantil NUMERIC(20) NOT NULL DEFAULT nextval('public.dias_jg_equipo_dias_jg_infantil_seq'),
                nombre_equipo_del_dia CHAR(20) NOT NULL,
                id_seleccion_calend_ctg INTEGER NOT NULL,
                CONSTRAINT id_dias_jg_equipo_pk PRIMARY KEY (id_dias_jg_equipo)
);


ALTER SEQUENCE public.dias_jg_equipo_id_dias_jg_equipo_seq OWNED BY public.dias_jg_equipo.id_dias_jg_equipo;

ALTER SEQUENCE public.dias_jg_equipo_dias_jg_cadete_seq OWNED BY public.dias_jg_equipo.dias_jg_cadete;

ALTER SEQUENCE public.dias_jg_equipo_dias_jg_juvenil_seq OWNED BY public.dias_jg_equipo.dias_jg_juvenil;

ALTER SEQUENCE public.dias_jg_equipo_dias_jg_infantil_seq OWNED BY public.dias_jg_equipo.dias_jg_infantil;

ALTER TABLE public.historial_ingres ADD CONSTRAINT crear_atleta_historial_ingres_fk
FOREIGN KEY (id_crear_atleta)
REFERENCES public.crear_atleta (id_crear_atleta)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.categ_inscripcion ADD CONSTRAINT historial_ingres_categoria_inscripcion_fk
FOREIGN KEY (id_historial_ingres)
REFERENCES public.historial_ingres (id_historial_ingres)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.historial_de_ascenso ADD CONSTRAINT categoria_inscripcion_historial_de_ascenso_fk
FOREIGN KEY (id_categ_inscripcion)
REFERENCES public.categ_inscripcion (id_categ_inscripcion)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.crear_instructor ADD CONSTRAINT historial_de_ascenso_crear_instructor_fk
FOREIGN KEY (id_historial_de_ascenso)
REFERENCES public.historial_de_ascenso (id_historial_de_ascenso)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.tipos_entrenm_clinicas ADD CONSTRAINT crear_instructor_tipos_entrenm_clinicas_fk
FOREIGN KEY (id_crear_instructor)
REFERENCES public.crear_instructor (id_crear_instructor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.equipo_asignado ADD CONSTRAINT tipos_entrenm_clinicas_equipo_asignado_fk
FOREIGN KEY (id_tipos_entrenm_clinicas)
REFERENCES public.tipos_entrenm_clinicas (id_tipos_entrenm_clinicas)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.selecion_equipos ADD CONSTRAINT equipo_asignado_selecion_equipos_fk
FOREIGN KEY (id_equipo_asignado)
REFERENCES public.equipo_asignado (id_equipo_asignado)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.categoria_equipo ADD CONSTRAINT selecion_equipos_categoria_equipo_fk
FOREIGN KEY (id_selecion_equipos)
REFERENCES public.selecion_equipos (id_selecion_equipos)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.equipos_por_tipo_catg ADD CONSTRAINT categoria_equipo_equipos_por_tipo_catg_fk
FOREIGN KEY (id_categoria_equipo)
REFERENCES public.categoria_equipo (id_categoria_equipo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.num_juegos_jugados ADD CONSTRAINT equipos_por_tipo_catg_num_juegos_jugados_fk
FOREIGN KEY (id_equipos_por_tipo_catg)
REFERENCES public.equipos_por_tipo_catg (id_equipos_por_tipo_catg)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.num_puntaje_juegos ADD CONSTRAINT num_juegos_jugados_num_puntaje_juegos_fk
FOREIGN KEY (id_num_juegos_jugados)
REFERENCES public.num_juegos_jugados (id_num_juegos_jugados)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.crear_regis_repre ADD CONSTRAINT num_puntaje_juegos_crear_regis_repre_fk
FOREIGN KEY (id_num_puntaje_juegos)
REFERENCES public.num_puntaje_juegos (id_num_puntaje_juegos)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.exp_instructor ADD CONSTRAINT crear_regis_repre_exp_instructor_fk
FOREIGN KEY (id_crear_regis_repre)
REFERENCES public.crear_regis_repre (id_crear_regis_repre)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.calendario_ctg_equipo ADD CONSTRAINT exp_instructor_calendario_ctg_equipo_fk
FOREIGN KEY (id_exp_instructor)
REFERENCES public.exp_instructor (id_exp_instructor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.seleccion_calend_ctg ADD CONSTRAINT calendario_ctg_equipo_seleccion_calend_ctg_fk
FOREIGN KEY (id_calendario_ctg_equipo)
REFERENCES public.calendario_ctg_equipo (id_calendario_ctg_equipo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.dias_jg_equipo ADD CONSTRAINT seleccion_calend_ctg_dias_jg_equipo_fk
FOREIGN KEY (id_seleccion_calend_ctg)
REFERENCES public.seleccion_calend_ctg (id_seleccion_calend_ctg)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
