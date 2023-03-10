PGDMP         ,                {         
   dbproyecto    15.1    15.1 ?   ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24712 
   dbproyecto    DATABASE     }   CREATE DATABASE dbproyecto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE dbproyecto;
                postgres    false            ?           1255    25979    primer_id_historial_ingres()    FUNCTION     =  CREATE FUNCTION public.primer_id_historial_ingres() RETURNS integer
    LANGUAGE plpgsql
    SET compute_query_id TO 'auto'
    AS $$declare primer_id_historial_ingres integer;

BEGIN

SELECT MIN(id_historial_ingres) into primer_id_historial_ingres from historial_ingres;

return primer_id_historial_ingres;

END;$$;
 3   DROP FUNCTION public.primer_id_historial_ingres();
       public          postgres    false                       0    0 %   FUNCTION primer_id_historial_ingres()    COMMENT     m   COMMENT ON FUNCTION public.primer_id_historial_ingres() IS 'Informacion del ingreso por historial de juego';
          public          postgres    false    418            ?           1255    25983    primer_num_nueva_catg_cadete()    FUNCTION     H  CREATE FUNCTION public.primer_num_nueva_catg_cadete() RETURNS numeric
    LANGUAGE plpgsql
    SET compute_query_id TO 'auto'
    AS $$declare primer_num_nueva_catg_cadete numeric(20);
BEGIN
SELECT MIN(nueva_catg_cadete) into primer_num_nueva_catg_cadete from categoria_inscripcion;
return primer_num_nueva_catg_cadete;
END;$$;
 5   DROP FUNCTION public.primer_num_nueva_catg_cadete();
       public          postgres    false            ?           1255    25981     primer_num_nueva_catg_infantil()    FUNCTION     R  CREATE FUNCTION public.primer_num_nueva_catg_infantil() RETURNS numeric
    LANGUAGE plpgsql
    SET array_nulls TO 'true'
    AS $$
declare primer_num_nueva_catg_infantil numeric(20);

BEGIN

SELECT MIN(nueva_catg_infantil) into primer_num_nueva_catg_infantil from categoria_inscripcion;

return primer_num_nueva_catg_infantil;

END;$$;
 7   DROP FUNCTION public.primer_num_nueva_catg_infantil();
       public          postgres    false            ?           1255    25982    primer_num_nueva_catg_juvenil()    FUNCTION     *  CREATE FUNCTION public.primer_num_nueva_catg_juvenil() RETURNS numeric
    LANGUAGE plpgsql
    AS $$declare primer_num_nueva_catg_juvenil numeric(20);
BEGIN
SELECT MIN(nueva_catg_juvenil) into primer_num_nueva_catg_juvenil from categoria_inscripcion;
return primer_num_nueva_catg_juvenil;
END;$$;
 6   DROP FUNCTION public.primer_num_nueva_catg_juvenil();
       public          postgres    false            ?           1255    25984    ultimo_num_nueva_catg_cadete()    FUNCTION     *  CREATE FUNCTION public.ultimo_num_nueva_catg_cadete() RETURNS numeric
    LANGUAGE plpgsql
    AS $$
declare ultimo_num_nueva_catg_cadete numeric(20);

BEGIN

SELECT MAX(nueva_catg_cadete) into ultimo_num_nueva_catg_cadete from categoria_inscripcion;

return ultimo_num_nueva_catg_cadete;

END;$$;
 5   DROP FUNCTION public.ultimo_num_nueva_catg_cadete();
       public          postgres    false            ?           1255    25980     ultimo_num_nueva_catg_infantil()    FUNCTION     4  CREATE FUNCTION public.ultimo_num_nueva_catg_infantil() RETURNS numeric
    LANGUAGE plpgsql
    AS $$
declare ultimo_num_nueva_catg_infantil numeric(20);

BEGIN

SELECT MAX(nueva_catg_infantil) into ultimo_num_nueva_catg_infantil from categoria_inscripcion;

return ultimo_num_nueva_catg_infantil;

END;$$;
 7   DROP FUNCTION public.ultimo_num_nueva_catg_infantil();
       public          postgres    false            ?           1255    25985    ultimo_num_nueva_catg_juvenil()    FUNCTION     /  CREATE FUNCTION public.ultimo_num_nueva_catg_juvenil() RETURNS numeric
    LANGUAGE plpgsql
    AS $$
declare ultimo_num_nueva_catg_juvenil numeric(20);

BEGIN

SELECT MAX(nueva_catg_juvenil) into ultimo_num_nueva_catg_juvenil from categoria_inscripcion;

return ultimo_num_nueva_catg_juvenil;

END;$$;
 6   DROP FUNCTION public.ultimo_num_nueva_catg_juvenil();
       public          postgres    false            ?           1255    25978    ultimo_num_regist_atleta()    FUNCTION       CREATE FUNCTION public.ultimo_num_regist_atleta() RETURNS numeric
    LANGUAGE plpgsql
    AS $$declare ultimo_num_regist_atleta numeric(20);

BEGIN

SELECT MAX(num_regis_atleta) into ultimo_num_regist_atleta from crear_atleta;

return ultimo_num_regist_atleta;

END;$$;
 1   DROP FUNCTION public.ultimo_num_regist_atleta();
       public          postgres    false            ?           1259    25503    calendario_ctg_equipo    TABLE     ?   CREATE TABLE public.calendario_ctg_equipo (
    id_calendario_ctg_equipo integer NOT NULL,
    num_reg_ctg_equipo numeric(20,0) NOT NULL,
    num_selec_calend_ctg numeric(20,0) NOT NULL,
    id_exp_instructor integer NOT NULL
);
 )   DROP TABLE public.calendario_ctg_equipo;
       public         heap    postgres    false            ?           1259    25500 2   calendario_ctg_equipo_id_calendario_ctg_equipo_seq    SEQUENCE     ?   CREATE SEQUENCE public.calendario_ctg_equipo_id_calendario_ctg_equipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.calendario_ctg_equipo_id_calendario_ctg_equipo_seq;
       public          postgres    false    394                       0    0 2   calendario_ctg_equipo_id_calendario_ctg_equipo_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.calendario_ctg_equipo_id_calendario_ctg_equipo_seq OWNED BY public.calendario_ctg_equipo.id_calendario_ctg_equipo;
          public          postgres    false    391            ?           1259    25501 ,   calendario_ctg_equipo_num_reg_ctg_equipo_seq    SEQUENCE     ?   CREATE SEQUENCE public.calendario_ctg_equipo_num_reg_ctg_equipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.calendario_ctg_equipo_num_reg_ctg_equipo_seq;
       public          postgres    false    394                       0    0 ,   calendario_ctg_equipo_num_reg_ctg_equipo_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.calendario_ctg_equipo_num_reg_ctg_equipo_seq OWNED BY public.calendario_ctg_equipo.num_reg_ctg_equipo;
          public          postgres    false    392            ?           1259    25502 .   calendario_ctg_equipo_num_selec_calend_ctg_seq    SEQUENCE     ?   CREATE SEQUENCE public.calendario_ctg_equipo_num_selec_calend_ctg_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.calendario_ctg_equipo_num_selec_calend_ctg_seq;
       public          postgres    false    394                       0    0 .   calendario_ctg_equipo_num_selec_calend_ctg_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.calendario_ctg_equipo_num_selec_calend_ctg_seq OWNED BY public.calendario_ctg_equipo.num_selec_calend_ctg;
          public          postgres    false    393            ?           1259    33186    categ_inscripcion    TABLE       CREATE TABLE public.categ_inscripcion (
    id_categ_inscripcion integer NOT NULL,
    id_historial_ingres integer NOT NULL,
    nueva_catg_infantil character(10) NOT NULL,
    nueva_catg_cadete character(10) NOT NULL,
    nueva_catg_juvenil character(10) NOT NULL
);
 %   DROP TABLE public.categ_inscripcion;
       public         heap    postgres    false            ?           1259    33185 *   categ_inscripcion_id_categ_inscripcion_seq    SEQUENCE     ?   CREATE SEQUENCE public.categ_inscripcion_id_categ_inscripcion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.categ_inscripcion_id_categ_inscripcion_seq;
       public          postgres    false    412                       0    0 *   categ_inscripcion_id_categ_inscripcion_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.categ_inscripcion_id_categ_inscripcion_seq OWNED BY public.categ_inscripcion.id_categ_inscripcion;
          public          postgres    false    411            ?           1259    33180    categoria_equipo    TABLE     y  CREATE TABLE public.categoria_equipo (
    id_categoria_equipo integer NOT NULL,
    nombre_ctg_equipo character(10) NOT NULL,
    num_id_ctg_equipo numeric(10,0) NOT NULL,
    "num_Ctg_equipo_cadete" numeric(10,0) NOT NULL,
    "num_Ctg_equipo_juvenil" numeric(10,0) NOT NULL,
    "num_Ctg_equipo_infantil" numeric(10,0) NOT NULL,
    id_seleccion_equipos integer NOT NULL
);
 $   DROP TABLE public.categoria_equipo;
       public         heap    postgres    false            @           1259    25289    crear_atleta    TABLE     ?  CREATE TABLE public.crear_atleta (
    id_crear_atleta integer NOT NULL,
    num_regis_atleta numeric(20,0) NOT NULL,
    nomb_apelld_atleta character(20) NOT NULL,
    telf_atleta numeric(20,0) NOT NULL,
    correo_atleta character(20) NOT NULL,
    edad_atleta numeric(3,0) NOT NULL,
    fech_nacim_atleta numeric(10,0) NOT NULL,
    sexo_atleta character(10) NOT NULL,
    direccion_atleta character(20) NOT NULL
);
     DROP TABLE public.crear_atleta;
       public         heap    postgres    false            >           1259    25287    crear_atleta_edad_atleta_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_atleta_edad_atleta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.crear_atleta_edad_atleta_seq;
       public          postgres    false    320                       0    0    crear_atleta_edad_atleta_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.crear_atleta_edad_atleta_seq OWNED BY public.crear_atleta.edad_atleta;
          public          postgres    false    318            ?           1259    25288 "   crear_atleta_fech_nacim_atleta_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_atleta_fech_nacim_atleta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.crear_atleta_fech_nacim_atleta_seq;
       public          postgres    false    320                       0    0 "   crear_atleta_fech_nacim_atleta_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.crear_atleta_fech_nacim_atleta_seq OWNED BY public.crear_atleta.fech_nacim_atleta;
          public          postgres    false    319            ;           1259    25284     crear_atleta_id_crear_atleta_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_atleta_id_crear_atleta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crear_atleta_id_crear_atleta_seq;
       public          postgres    false    320            	           0    0     crear_atleta_id_crear_atleta_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crear_atleta_id_crear_atleta_seq OWNED BY public.crear_atleta.id_crear_atleta;
          public          postgres    false    315            <           1259    25285 !   crear_atleta_num_regis_atleta_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_atleta_num_regis_atleta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.crear_atleta_num_regis_atleta_seq;
       public          postgres    false    320            
           0    0 !   crear_atleta_num_regis_atleta_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.crear_atleta_num_regis_atleta_seq OWNED BY public.crear_atleta.num_regis_atleta;
          public          postgres    false    316            =           1259    25286    crear_atleta_telf_atleta_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_atleta_telf_atleta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.crear_atleta_telf_atleta_seq;
       public          postgres    false    320                       0    0    crear_atleta_telf_atleta_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.crear_atleta_telf_atleta_seq OWNED BY public.crear_atleta.telf_atleta;
          public          postgres    false    317            V           1259    25355    crear_instructor    TABLE     ?  CREATE TABLE public.crear_instructor (
    id_crear_instructor integer NOT NULL,
    num_regis_instructor numeric(20,0) NOT NULL,
    nomb_apelld_instructor character(20) NOT NULL,
    telf_instructor numeric(20,0) NOT NULL,
    correo_instructor character(20) NOT NULL,
    edad_instructor numeric(3,0) NOT NULL,
    fech_nacim_instructor numeric(10,0) NOT NULL,
    sexo_instructor character(10) NOT NULL,
    direccion_instructor character(20) NOT NULL,
    id_historial_de_ascenso integer NOT NULL
);
 $   DROP TABLE public.crear_instructor;
       public         heap    postgres    false            T           1259    25353 $   crear_instructor_edad_instructor_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_instructor_edad_instructor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.crear_instructor_edad_instructor_seq;
       public          postgres    false    342                       0    0 $   crear_instructor_edad_instructor_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.crear_instructor_edad_instructor_seq OWNED BY public.crear_instructor.edad_instructor;
          public          postgres    false    340            U           1259    25354 *   crear_instructor_fech_nacim_instructor_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_instructor_fech_nacim_instructor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.crear_instructor_fech_nacim_instructor_seq;
       public          postgres    false    342                       0    0 *   crear_instructor_fech_nacim_instructor_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.crear_instructor_fech_nacim_instructor_seq OWNED BY public.crear_instructor.fech_nacim_instructor;
          public          postgres    false    341            Q           1259    25350 (   crear_instructor_id_crear_instructor_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_instructor_id_crear_instructor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.crear_instructor_id_crear_instructor_seq;
       public          postgres    false    342                       0    0 (   crear_instructor_id_crear_instructor_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.crear_instructor_id_crear_instructor_seq OWNED BY public.crear_instructor.id_crear_instructor;
          public          postgres    false    337            R           1259    25351 )   crear_instructor_num_regis_instructor_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_instructor_num_regis_instructor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.crear_instructor_num_regis_instructor_seq;
       public          postgres    false    342                       0    0 )   crear_instructor_num_regis_instructor_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.crear_instructor_num_regis_instructor_seq OWNED BY public.crear_instructor.num_regis_instructor;
          public          postgres    false    338            S           1259    25352 $   crear_instructor_telf_instructor_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_instructor_telf_instructor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.crear_instructor_telf_instructor_seq;
       public          postgres    false    342                       0    0 $   crear_instructor_telf_instructor_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.crear_instructor_telf_instructor_seq OWNED BY public.crear_instructor.telf_instructor;
          public          postgres    false    339            ~           1259    25471    crear_regis_repre    TABLE     ?  CREATE TABLE public.crear_regis_repre (
    id_crear_regis_repre integer NOT NULL,
    num_regis_repre numeric(20,0) NOT NULL,
    nomb_apelld_repre character(20) NOT NULL,
    telf_repre numeric(20,0) NOT NULL,
    correo_repre character(20) NOT NULL,
    edad_repre numeric(3,0) NOT NULL,
    fech_nacim_repre numeric(10,0) NOT NULL,
    sexo_repre character(10) NOT NULL,
    direccion_repre character(20) NOT NULL,
    id_num_puntaje_juegos integer NOT NULL
);
 %   DROP TABLE public.crear_regis_repre;
       public         heap    postgres    false            |           1259    25469     crear_regis_repre_edad_repre_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_regis_repre_edad_repre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crear_regis_repre_edad_repre_seq;
       public          postgres    false    382                       0    0     crear_regis_repre_edad_repre_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crear_regis_repre_edad_repre_seq OWNED BY public.crear_regis_repre.edad_repre;
          public          postgres    false    380            }           1259    25470 &   crear_regis_repre_fech_nacim_repre_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_regis_repre_fech_nacim_repre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.crear_regis_repre_fech_nacim_repre_seq;
       public          postgres    false    382                       0    0 &   crear_regis_repre_fech_nacim_repre_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.crear_regis_repre_fech_nacim_repre_seq OWNED BY public.crear_regis_repre.fech_nacim_repre;
          public          postgres    false    381            y           1259    25466 *   crear_regis_repre_id_crear_regis_repre_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_regis_repre_id_crear_regis_repre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.crear_regis_repre_id_crear_regis_repre_seq;
       public          postgres    false    382                       0    0 *   crear_regis_repre_id_crear_regis_repre_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.crear_regis_repre_id_crear_regis_repre_seq OWNED BY public.crear_regis_repre.id_crear_regis_repre;
          public          postgres    false    377            z           1259    25467 %   crear_regis_repre_num_regis_repre_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_regis_repre_num_regis_repre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.crear_regis_repre_num_regis_repre_seq;
       public          postgres    false    382                       0    0 %   crear_regis_repre_num_regis_repre_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.crear_regis_repre_num_regis_repre_seq OWNED BY public.crear_regis_repre.num_regis_repre;
          public          postgres    false    378            {           1259    25468     crear_regis_repre_telf_repre_seq    SEQUENCE     ?   CREATE SEQUENCE public.crear_regis_repre_telf_repre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.crear_regis_repre_telf_repre_seq;
       public          postgres    false    382                       0    0     crear_regis_repre_telf_repre_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.crear_regis_repre_telf_repre_seq OWNED BY public.crear_regis_repre.telf_repre;
          public          postgres    false    379            ?           1259    25528    dias_jg_equipo    TABLE     3  CREATE TABLE public.dias_jg_equipo (
    id_dias_jg_equipo integer NOT NULL,
    dias_jg_cadete numeric(20,0) NOT NULL,
    dias_jg_juvenil numeric(20,0) NOT NULL,
    dias_jg_infantil numeric(20,0) NOT NULL,
    nombre_equipo_del_dia character(20) NOT NULL,
    id_seleccion_calend_ctg integer NOT NULL
);
 "   DROP TABLE public.dias_jg_equipo;
       public         heap    postgres    false            ?           1259    25525 !   dias_jg_equipo_dias_jg_cadete_seq    SEQUENCE     ?   CREATE SEQUENCE public.dias_jg_equipo_dias_jg_cadete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.dias_jg_equipo_dias_jg_cadete_seq;
       public          postgres    false    404                       0    0 !   dias_jg_equipo_dias_jg_cadete_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.dias_jg_equipo_dias_jg_cadete_seq OWNED BY public.dias_jg_equipo.dias_jg_cadete;
          public          postgres    false    401            ?           1259    25527 #   dias_jg_equipo_dias_jg_infantil_seq    SEQUENCE     ?   CREATE SEQUENCE public.dias_jg_equipo_dias_jg_infantil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.dias_jg_equipo_dias_jg_infantil_seq;
       public          postgres    false    404                       0    0 #   dias_jg_equipo_dias_jg_infantil_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.dias_jg_equipo_dias_jg_infantil_seq OWNED BY public.dias_jg_equipo.dias_jg_infantil;
          public          postgres    false    403            ?           1259    25526 "   dias_jg_equipo_dias_jg_juvenil_seq    SEQUENCE     ?   CREATE SEQUENCE public.dias_jg_equipo_dias_jg_juvenil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.dias_jg_equipo_dias_jg_juvenil_seq;
       public          postgres    false    404                       0    0 "   dias_jg_equipo_dias_jg_juvenil_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.dias_jg_equipo_dias_jg_juvenil_seq OWNED BY public.dias_jg_equipo.dias_jg_juvenil;
          public          postgres    false    402            ?           1259    25524 $   dias_jg_equipo_id_dias_jg_equipo_seq    SEQUENCE     ?   CREATE SEQUENCE public.dias_jg_equipo_id_dias_jg_equipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.dias_jg_equipo_id_dias_jg_equipo_seq;
       public          postgres    false    404                       0    0 $   dias_jg_equipo_id_dias_jg_equipo_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.dias_jg_equipo_id_dias_jg_equipo_seq OWNED BY public.dias_jg_equipo.id_dias_jg_equipo;
          public          postgres    false    400            `           1259    25384    equipo_asignado    TABLE     0  CREATE TABLE public.equipo_asignado (
    id_equipo_asignado integer NOT NULL,
    equipo_infantil character(20) NOT NULL,
    equipo_juvenil character(20) NOT NULL,
    equipo_cadete character(20) NOT NULL,
    num_tipos_entrenm numeric(20,0) NOT NULL,
    id_tipos_entrenm_clinicas integer NOT NULL
);
 #   DROP TABLE public.equipo_asignado;
       public         heap    postgres    false            ^           1259    25382 &   equipo_asignado_id_equipo_asignado_seq    SEQUENCE     ?   CREATE SEQUENCE public.equipo_asignado_id_equipo_asignado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.equipo_asignado_id_equipo_asignado_seq;
       public          postgres    false    352                       0    0 &   equipo_asignado_id_equipo_asignado_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.equipo_asignado_id_equipo_asignado_seq OWNED BY public.equipo_asignado.id_equipo_asignado;
          public          postgres    false    350            _           1259    25383 %   equipo_asignado_num_tipos_entrenm_seq    SEQUENCE     ?   CREATE SEQUENCE public.equipo_asignado_num_tipos_entrenm_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.equipo_asignado_num_tipos_entrenm_seq;
       public          postgres    false    352                       0    0 %   equipo_asignado_num_tipos_entrenm_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.equipo_asignado_num_tipos_entrenm_seq OWNED BY public.equipo_asignado.num_tipos_entrenm;
          public          postgres    false    351            h           1259    25421    equipos_por_tipo_catg    TABLE     R  CREATE TABLE public.equipos_por_tipo_catg (
    id_equipos_por_tipo_catg integer NOT NULL,
    nomb_equip_catg_cadete character(20) NOT NULL,
    nomb_equip_catg_juvenil character(20) NOT NULL,
    nomb_equip_catg_infantil character(20) NOT NULL,
    id_categoria_equipo integer NOT NULL,
    num_reg_equip_catg numeric(20,0) NOT NULL
);
 )   DROP TABLE public.equipos_por_tipo_catg;
       public         heap    postgres    false            f           1259    25419 2   equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq    SEQUENCE     ?   CREATE SEQUENCE public.equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq;
       public          postgres    false    360                       0    0 2   equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq OWNED BY public.equipos_por_tipo_catg.id_equipos_por_tipo_catg;
          public          postgres    false    358            g           1259    25420 ,   equipos_por_tipo_catg_num_reg_equip_catg_seq    SEQUENCE     ?   CREATE SEQUENCE public.equipos_por_tipo_catg_num_reg_equip_catg_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.equipos_por_tipo_catg_num_reg_equip_catg_seq;
       public          postgres    false    360                       0    0 ,   equipos_por_tipo_catg_num_reg_equip_catg_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.equipos_por_tipo_catg_num_reg_equip_catg_seq OWNED BY public.equipos_por_tipo_catg.num_reg_equip_catg;
          public          postgres    false    359            ?           1259    25488    exp_instructor    TABLE     ?  CREATE TABLE public.exp_instructor (
    id_exp_instructor integer NOT NULL,
    num_exp_trabj_anteriores numeric(20,0) NOT NULL,
    num_exp_curso_realizados numeric(20,0) NOT NULL,
    num_exp_curso_otros numeric(20,0) NOT NULL,
    num_exp_curso_acondim numeric(20,0) NOT NULL,
    num_exp_curso_extratg numeric(20,0) NOT NULL,
    num_exp_curso_fisicos numeric(20,0) NOT NULL,
    id_crear_regis_repre integer NOT NULL
);
 "   DROP TABLE public.exp_instructor;
       public         heap    postgres    false                       1259    25481 $   exp_instructor_id_exp_instructor_seq    SEQUENCE     ?   CREATE SEQUENCE public.exp_instructor_id_exp_instructor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.exp_instructor_id_exp_instructor_seq;
       public          postgres    false    390                       0    0 $   exp_instructor_id_exp_instructor_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.exp_instructor_id_exp_instructor_seq OWNED BY public.exp_instructor.id_exp_instructor;
          public          postgres    false    383            ?           1259    25485 (   exp_instructor_num_exp_curso_acondim_seq    SEQUENCE     ?   CREATE SEQUENCE public.exp_instructor_num_exp_curso_acondim_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.exp_instructor_num_exp_curso_acondim_seq;
       public          postgres    false    390                       0    0 (   exp_instructor_num_exp_curso_acondim_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.exp_instructor_num_exp_curso_acondim_seq OWNED BY public.exp_instructor.num_exp_curso_acondim;
          public          postgres    false    387            ?           1259    25486 (   exp_instructor_num_exp_curso_extratg_seq    SEQUENCE     ?   CREATE SEQUENCE public.exp_instructor_num_exp_curso_extratg_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.exp_instructor_num_exp_curso_extratg_seq;
       public          postgres    false    390                        0    0 (   exp_instructor_num_exp_curso_extratg_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.exp_instructor_num_exp_curso_extratg_seq OWNED BY public.exp_instructor.num_exp_curso_extratg;
          public          postgres    false    388            ?           1259    25487 (   exp_instructor_num_exp_curso_fisicos_seq    SEQUENCE     ?   CREATE SEQUENCE public.exp_instructor_num_exp_curso_fisicos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.exp_instructor_num_exp_curso_fisicos_seq;
       public          postgres    false    390            !           0    0 (   exp_instructor_num_exp_curso_fisicos_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.exp_instructor_num_exp_curso_fisicos_seq OWNED BY public.exp_instructor.num_exp_curso_fisicos;
          public          postgres    false    389            ?           1259    25484 &   exp_instructor_num_exp_curso_otros_seq    SEQUENCE     ?   CREATE SEQUENCE public.exp_instructor_num_exp_curso_otros_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.exp_instructor_num_exp_curso_otros_seq;
       public          postgres    false    390            "           0    0 &   exp_instructor_num_exp_curso_otros_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.exp_instructor_num_exp_curso_otros_seq OWNED BY public.exp_instructor.num_exp_curso_otros;
          public          postgres    false    386            ?           1259    25483 +   exp_instructor_num_exp_curso_realizados_seq    SEQUENCE     ?   CREATE SEQUENCE public.exp_instructor_num_exp_curso_realizados_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.exp_instructor_num_exp_curso_realizados_seq;
       public          postgres    false    390            #           0    0 +   exp_instructor_num_exp_curso_realizados_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.exp_instructor_num_exp_curso_realizados_seq OWNED BY public.exp_instructor.num_exp_curso_realizados;
          public          postgres    false    385            ?           1259    25482 +   exp_instructor_num_exp_trabj_anteriores_seq    SEQUENCE     ?   CREATE SEQUENCE public.exp_instructor_num_exp_trabj_anteriores_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.exp_instructor_num_exp_trabj_anteriores_seq;
       public          postgres    false    390            $           0    0 +   exp_instructor_num_exp_trabj_anteriores_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.exp_instructor_num_exp_trabj_anteriores_seq OWNED BY public.exp_instructor.num_exp_trabj_anteriores;
          public          postgres    false    384            P           1259    25338    historial_de_ascenso    TABLE     ?  CREATE TABLE public.historial_de_ascenso (
    id_historial_de_ascenso integer NOT NULL,
    id_categoria_inscripcion integer NOT NULL,
    num_hist_ascenso_perdido numeric(2,1) NOT NULL,
    num_hist_ascenso_ganados numeric(2,1) NOT NULL,
    num_hist_ascenso_goles numeric(2,1) NOT NULL,
    num_hist_ascenso_empatados numeric(2,1) NOT NULL,
    num_hist_ascenso_faltas numeric(2,1) NOT NULL,
    num_hist_ascenso_penaltis numeric(2,1) NOT NULL
);
 (   DROP TABLE public.historial_de_ascenso;
       public         heap    postgres    false            I           1259    25331 0   historial_de_ascenso_id_historial_de_ascenso_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_de_ascenso_id_historial_de_ascenso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.historial_de_ascenso_id_historial_de_ascenso_seq;
       public          postgres    false    336            %           0    0 0   historial_de_ascenso_id_historial_de_ascenso_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.historial_de_ascenso_id_historial_de_ascenso_seq OWNED BY public.historial_de_ascenso.id_historial_de_ascenso;
          public          postgres    false    329            M           1259    25335 3   historial_de_ascenso_num_hist_ascenso_empatados_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_empatados_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.historial_de_ascenso_num_hist_ascenso_empatados_seq;
       public          postgres    false    336            &           0    0 3   historial_de_ascenso_num_hist_ascenso_empatados_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_empatados_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_empatados;
          public          postgres    false    333            N           1259    25336 0   historial_de_ascenso_num_hist_ascenso_faltas_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_faltas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.historial_de_ascenso_num_hist_ascenso_faltas_seq;
       public          postgres    false    336            '           0    0 0   historial_de_ascenso_num_hist_ascenso_faltas_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_faltas_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_faltas;
          public          postgres    false    334            K           1259    25333 1   historial_de_ascenso_num_hist_ascenso_ganados_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_ganados_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.historial_de_ascenso_num_hist_ascenso_ganados_seq;
       public          postgres    false    336            (           0    0 1   historial_de_ascenso_num_hist_ascenso_ganados_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_ganados_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_ganados;
          public          postgres    false    331            L           1259    25334 /   historial_de_ascenso_num_hist_ascenso_goles_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_goles_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.historial_de_ascenso_num_hist_ascenso_goles_seq;
       public          postgres    false    336            )           0    0 /   historial_de_ascenso_num_hist_ascenso_goles_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_goles_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_goles;
          public          postgres    false    332            O           1259    25337 2   historial_de_ascenso_num_hist_ascenso_penaltis_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_penaltis_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.historial_de_ascenso_num_hist_ascenso_penaltis_seq;
       public          postgres    false    336            *           0    0 2   historial_de_ascenso_num_hist_ascenso_penaltis_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_penaltis_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_penaltis;
          public          postgres    false    335            J           1259    25332 1   historial_de_ascenso_num_hist_ascenso_perdido_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_de_ascenso_num_hist_ascenso_perdido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.historial_de_ascenso_num_hist_ascenso_perdido_seq;
       public          postgres    false    336            +           0    0 1   historial_de_ascenso_num_hist_ascenso_perdido_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.historial_de_ascenso_num_hist_ascenso_perdido_seq OWNED BY public.historial_de_ascenso.num_hist_ascenso_perdido;
          public          postgres    false    330            H           1259    25306    historial_ingres    TABLE     ?  CREATE TABLE public.historial_ingres (
    id_historial_ingres integer NOT NULL,
    id_crear_atleta integer NOT NULL,
    num_hist_penaltis numeric(20,0) NOT NULL,
    num_hist_faltas numeric(20,0) NOT NULL,
    num_hist_partd_ganados numeric(20,0) NOT NULL,
    num_hist_partd_perdidos numeric(20,0) NOT NULL,
    num_hist_partd_empatados numeric(20,0) NOT NULL,
    num_partd_goles numeric(20,0) NOT NULL
);
 $   DROP TABLE public.historial_ingres;
       public         heap    postgres    false            A           1259    25299 (   historial_ingres_id_historial_ingres_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_ingres_id_historial_ingres_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.historial_ingres_id_historial_ingres_seq;
       public          postgres    false    328            ,           0    0 (   historial_ingres_id_historial_ingres_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.historial_ingres_id_historial_ingres_seq OWNED BY public.historial_ingres.id_historial_ingres;
          public          postgres    false    321            C           1259    25301 $   historial_ingres_num_hist_faltas_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_ingres_num_hist_faltas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.historial_ingres_num_hist_faltas_seq;
       public          postgres    false    328            -           0    0 $   historial_ingres_num_hist_faltas_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.historial_ingres_num_hist_faltas_seq OWNED BY public.historial_ingres.num_hist_faltas;
          public          postgres    false    323            F           1259    25304 -   historial_ingres_num_hist_partd_empatados_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_ingres_num_hist_partd_empatados_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.historial_ingres_num_hist_partd_empatados_seq;
       public          postgres    false    328            .           0    0 -   historial_ingres_num_hist_partd_empatados_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.historial_ingres_num_hist_partd_empatados_seq OWNED BY public.historial_ingres.num_hist_partd_empatados;
          public          postgres    false    326            D           1259    25302 +   historial_ingres_num_hist_partd_ganados_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_ingres_num_hist_partd_ganados_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.historial_ingres_num_hist_partd_ganados_seq;
       public          postgres    false    328            /           0    0 +   historial_ingres_num_hist_partd_ganados_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.historial_ingres_num_hist_partd_ganados_seq OWNED BY public.historial_ingres.num_hist_partd_ganados;
          public          postgres    false    324            E           1259    25303 ,   historial_ingres_num_hist_partd_perdidos_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_ingres_num_hist_partd_perdidos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.historial_ingres_num_hist_partd_perdidos_seq;
       public          postgres    false    328            0           0    0 ,   historial_ingres_num_hist_partd_perdidos_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.historial_ingres_num_hist_partd_perdidos_seq OWNED BY public.historial_ingres.num_hist_partd_perdidos;
          public          postgres    false    325            B           1259    25300 &   historial_ingres_num_hist_penaltis_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_ingres_num_hist_penaltis_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.historial_ingres_num_hist_penaltis_seq;
       public          postgres    false    328            1           0    0 &   historial_ingres_num_hist_penaltis_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.historial_ingres_num_hist_penaltis_seq OWNED BY public.historial_ingres.num_hist_penaltis;
          public          postgres    false    322            G           1259    25305 $   historial_ingres_num_partd_goles_seq    SEQUENCE     ?   CREATE SEQUENCE public.historial_ingres_num_partd_goles_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.historial_ingres_num_partd_goles_seq;
       public          postgres    false    328            2           0    0 $   historial_ingres_num_partd_goles_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.historial_ingres_num_partd_goles_seq OWNED BY public.historial_ingres.num_partd_goles;
          public          postgres    false    327            p           1259    25435    num_juegos_jugados    TABLE     ?  CREATE TABLE public.num_juegos_jugados (
    id_num_juegos_jugados integer NOT NULL,
    num_jg_jgados_emptads numeric(20,0) NOT NULL,
    num_jg_jgados_ganados numeric(20,0) NOT NULL,
    num_jg_jgados_perdidos numeric(20,0) NOT NULL,
    num_jg_jugados_penaltis numeric(20,0) NOT NULL,
    num_jg_jugados_faltas numeric(20,0) NOT NULL,
    nomb_equipo character(20) NOT NULL,
    selec_ctg_equipo numeric(20,0) NOT NULL,
    id_equipos_por_tipo_catg integer NOT NULL
);
 &   DROP TABLE public.num_juegos_jugados;
       public         heap    postgres    false            i           1259    25428 ,   num_juegos_jugados_id_num_juegos_jugados_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_juegos_jugados_id_num_juegos_jugados_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.num_juegos_jugados_id_num_juegos_jugados_seq;
       public          postgres    false    368            3           0    0 ,   num_juegos_jugados_id_num_juegos_jugados_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.num_juegos_jugados_id_num_juegos_jugados_seq OWNED BY public.num_juegos_jugados.id_num_juegos_jugados;
          public          postgres    false    361            j           1259    25429 ,   num_juegos_jugados_num_jg_jgados_emptads_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_juegos_jugados_num_jg_jgados_emptads_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.num_juegos_jugados_num_jg_jgados_emptads_seq;
       public          postgres    false    368            4           0    0 ,   num_juegos_jugados_num_jg_jgados_emptads_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.num_juegos_jugados_num_jg_jgados_emptads_seq OWNED BY public.num_juegos_jugados.num_jg_jgados_emptads;
          public          postgres    false    362            k           1259    25430 ,   num_juegos_jugados_num_jg_jgados_ganados_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_juegos_jugados_num_jg_jgados_ganados_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.num_juegos_jugados_num_jg_jgados_ganados_seq;
       public          postgres    false    368            5           0    0 ,   num_juegos_jugados_num_jg_jgados_ganados_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.num_juegos_jugados_num_jg_jgados_ganados_seq OWNED BY public.num_juegos_jugados.num_jg_jgados_ganados;
          public          postgres    false    363            l           1259    25431 -   num_juegos_jugados_num_jg_jgados_perdidos_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_juegos_jugados_num_jg_jgados_perdidos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.num_juegos_jugados_num_jg_jgados_perdidos_seq;
       public          postgres    false    368            6           0    0 -   num_juegos_jugados_num_jg_jgados_perdidos_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.num_juegos_jugados_num_jg_jgados_perdidos_seq OWNED BY public.num_juegos_jugados.num_jg_jgados_perdidos;
          public          postgres    false    364            n           1259    25433 ,   num_juegos_jugados_num_jg_jugados_faltas_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_juegos_jugados_num_jg_jugados_faltas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.num_juegos_jugados_num_jg_jugados_faltas_seq;
       public          postgres    false    368            7           0    0 ,   num_juegos_jugados_num_jg_jugados_faltas_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.num_juegos_jugados_num_jg_jugados_faltas_seq OWNED BY public.num_juegos_jugados.num_jg_jugados_faltas;
          public          postgres    false    366            m           1259    25432 .   num_juegos_jugados_num_jg_jugados_penaltis_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_juegos_jugados_num_jg_jugados_penaltis_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.num_juegos_jugados_num_jg_jugados_penaltis_seq;
       public          postgres    false    368            8           0    0 .   num_juegos_jugados_num_jg_jugados_penaltis_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.num_juegos_jugados_num_jg_jugados_penaltis_seq OWNED BY public.num_juegos_jugados.num_jg_jugados_penaltis;
          public          postgres    false    365            o           1259    25434 '   num_juegos_jugados_selec_ctg_equipo_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_juegos_jugados_selec_ctg_equipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.num_juegos_jugados_selec_ctg_equipo_seq;
       public          postgres    false    368            9           0    0 '   num_juegos_jugados_selec_ctg_equipo_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.num_juegos_jugados_selec_ctg_equipo_seq OWNED BY public.num_juegos_jugados.selec_ctg_equipo;
          public          postgres    false    367            x           1259    25454    num_puntaje_juegos    TABLE     ?  CREATE TABLE public.num_puntaje_juegos (
    id_num_puntaje_juegos integer NOT NULL,
    num_puntj_jgs_ganados numeric(20,0) NOT NULL,
    num_puntj_jgs_perdidos numeric(20,0) NOT NULL,
    num_puntj_jgs_empatados numeric(20,0) NOT NULL,
    num_puntj_jgs_goles numeric(20,0) NOT NULL,
    num_puntj_jgs_faltas numeric(20,0) NOT NULL,
    num_registro_puntj_jgs numeric(20,0) NOT NULL,
    id_num_juegos_jugados integer NOT NULL
);
 &   DROP TABLE public.num_puntaje_juegos;
       public         heap    postgres    false            q           1259    25447 ,   num_puntaje_juegos_id_num_puntaje_juegos_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_puntaje_juegos_id_num_puntaje_juegos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.num_puntaje_juegos_id_num_puntaje_juegos_seq;
       public          postgres    false    376            :           0    0 ,   num_puntaje_juegos_id_num_puntaje_juegos_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.num_puntaje_juegos_id_num_puntaje_juegos_seq OWNED BY public.num_puntaje_juegos.id_num_puntaje_juegos;
          public          postgres    false    369            t           1259    25450 .   num_puntaje_juegos_num_puntj_jgs_empatados_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_empatados_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_empatados_seq;
       public          postgres    false    376            ;           0    0 .   num_puntaje_juegos_num_puntj_jgs_empatados_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_empatados_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_empatados;
          public          postgres    false    372            v           1259    25452 +   num_puntaje_juegos_num_puntj_jgs_faltas_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_faltas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_faltas_seq;
       public          postgres    false    376            <           0    0 +   num_puntaje_juegos_num_puntj_jgs_faltas_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_faltas_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_faltas;
          public          postgres    false    374            r           1259    25448 ,   num_puntaje_juegos_num_puntj_jgs_ganados_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_ganados_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_ganados_seq;
       public          postgres    false    376            =           0    0 ,   num_puntaje_juegos_num_puntj_jgs_ganados_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_ganados_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_ganados;
          public          postgres    false    370            u           1259    25451 *   num_puntaje_juegos_num_puntj_jgs_goles_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_goles_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_goles_seq;
       public          postgres    false    376            >           0    0 *   num_puntaje_juegos_num_puntj_jgs_goles_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_goles_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_goles;
          public          postgres    false    373            s           1259    25449 -   num_puntaje_juegos_num_puntj_jgs_perdidos_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_perdidos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_perdidos_seq;
       public          postgres    false    376            ?           0    0 -   num_puntaje_juegos_num_puntj_jgs_perdidos_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.num_puntaje_juegos_num_puntj_jgs_perdidos_seq OWNED BY public.num_puntaje_juegos.num_puntj_jgs_perdidos;
          public          postgres    false    371            w           1259    25453 -   num_puntaje_juegos_num_registro_puntj_jgs_seq    SEQUENCE     ?   CREATE SEQUENCE public.num_puntaje_juegos_num_registro_puntj_jgs_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.num_puntaje_juegos_num_registro_puntj_jgs_seq;
       public          postgres    false    376            @           0    0 -   num_puntaje_juegos_num_registro_puntj_jgs_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.num_puntaje_juegos_num_registro_puntj_jgs_seq OWNED BY public.num_puntaje_juegos.num_registro_puntj_jgs;
          public          postgres    false    375            ?           1259    25515    seleccion_calend_ctg    TABLE       CREATE TABLE public.seleccion_calend_ctg (
    id_seleccion_calend_ctg integer NOT NULL,
    num_id_ctg_cadete numeric(20,0) NOT NULL,
    num_id_ctg_juvenil numeric(20,0) NOT NULL,
    num_id_ctg_infantil numeric(20,0) NOT NULL,
    id_calendario_ctg_equipo integer NOT NULL
);
 (   DROP TABLE public.seleccion_calend_ctg;
       public         heap    postgres    false            ?           1259    25511 0   seleccion_calend_ctg_id_seleccion_calend_ctg_seq    SEQUENCE     ?   CREATE SEQUENCE public.seleccion_calend_ctg_id_seleccion_calend_ctg_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.seleccion_calend_ctg_id_seleccion_calend_ctg_seq;
       public          postgres    false    399            A           0    0 0   seleccion_calend_ctg_id_seleccion_calend_ctg_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.seleccion_calend_ctg_id_seleccion_calend_ctg_seq OWNED BY public.seleccion_calend_ctg.id_seleccion_calend_ctg;
          public          postgres    false    395            ?           1259    25512 *   seleccion_calend_ctg_num_id_ctg_cadete_seq    SEQUENCE     ?   CREATE SEQUENCE public.seleccion_calend_ctg_num_id_ctg_cadete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.seleccion_calend_ctg_num_id_ctg_cadete_seq;
       public          postgres    false    399            B           0    0 *   seleccion_calend_ctg_num_id_ctg_cadete_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.seleccion_calend_ctg_num_id_ctg_cadete_seq OWNED BY public.seleccion_calend_ctg.num_id_ctg_cadete;
          public          postgres    false    396            ?           1259    25514 ,   seleccion_calend_ctg_num_id_ctg_infantil_seq    SEQUENCE     ?   CREATE SEQUENCE public.seleccion_calend_ctg_num_id_ctg_infantil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.seleccion_calend_ctg_num_id_ctg_infantil_seq;
       public          postgres    false    399            C           0    0 ,   seleccion_calend_ctg_num_id_ctg_infantil_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.seleccion_calend_ctg_num_id_ctg_infantil_seq OWNED BY public.seleccion_calend_ctg.num_id_ctg_infantil;
          public          postgres    false    398            ?           1259    25513 +   seleccion_calend_ctg_num_id_ctg_juvenil_seq    SEQUENCE     ?   CREATE SEQUENCE public.seleccion_calend_ctg_num_id_ctg_juvenil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.seleccion_calend_ctg_num_id_ctg_juvenil_seq;
       public          postgres    false    399            D           0    0 +   seleccion_calend_ctg_num_id_ctg_juvenil_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.seleccion_calend_ctg_num_id_ctg_juvenil_seq OWNED BY public.seleccion_calend_ctg.num_id_ctg_juvenil;
          public          postgres    false    397            e           1259    25395    selecion_equipos    TABLE       CREATE TABLE public.selecion_equipos (
    id_selecion_equipos integer NOT NULL,
    num_equipos_cadetes numeric(20,0) NOT NULL,
    num_equipos_infantil numeric(20,0) NOT NULL,
    num_equipos_juvenil numeric(20,0) NOT NULL,
    id_equipo_asignado integer NOT NULL
);
 $   DROP TABLE public.selecion_equipos;
       public         heap    postgres    false            a           1259    25391 (   selecion_equipos_id_selecion_equipos_seq    SEQUENCE     ?   CREATE SEQUENCE public.selecion_equipos_id_selecion_equipos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.selecion_equipos_id_selecion_equipos_seq;
       public          postgres    false    357            E           0    0 (   selecion_equipos_id_selecion_equipos_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.selecion_equipos_id_selecion_equipos_seq OWNED BY public.selecion_equipos.id_selecion_equipos;
          public          postgres    false    353            b           1259    25392 (   selecion_equipos_num_equipos_cadetes_seq    SEQUENCE     ?   CREATE SEQUENCE public.selecion_equipos_num_equipos_cadetes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.selecion_equipos_num_equipos_cadetes_seq;
       public          postgres    false    357            F           0    0 (   selecion_equipos_num_equipos_cadetes_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.selecion_equipos_num_equipos_cadetes_seq OWNED BY public.selecion_equipos.num_equipos_cadetes;
          public          postgres    false    354            c           1259    25393 )   selecion_equipos_num_equipos_infantil_seq    SEQUENCE     ?   CREATE SEQUENCE public.selecion_equipos_num_equipos_infantil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.selecion_equipos_num_equipos_infantil_seq;
       public          postgres    false    357            G           0    0 )   selecion_equipos_num_equipos_infantil_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.selecion_equipos_num_equipos_infantil_seq OWNED BY public.selecion_equipos.num_equipos_infantil;
          public          postgres    false    355            d           1259    25394 (   selecion_equipos_num_equipos_juvenil_seq    SEQUENCE     ?   CREATE SEQUENCE public.selecion_equipos_num_equipos_juvenil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.selecion_equipos_num_equipos_juvenil_seq;
       public          postgres    false    357            H           0    0 (   selecion_equipos_num_equipos_juvenil_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.selecion_equipos_num_equipos_juvenil_seq OWNED BY public.selecion_equipos.num_equipos_juvenil;
          public          postgres    false    356            ]           1259    25371    tipos_entrenm_clinicas    TABLE     ?  CREATE TABLE public.tipos_entrenm_clinicas (
    id_tipos_entrenm_clinicas integer NOT NULL,
    id_crear_instructor integer NOT NULL,
    num_entrenm_clinicas_practica numeric(20,0) NOT NULL,
    num_entrenm_clinicas_tacticas numeric(20,0) NOT NULL,
    num_entrenm_clinicas_acond numeric(20,0) NOT NULL,
    num_entrenm_clinicas_estratg numeric(20,0) NOT NULL,
    num_entrenm_clinicas_fisicas numeric(20,0) NOT NULL
);
 *   DROP TABLE public.tipos_entrenm_clinicas;
       public         heap    postgres    false            W           1259    25365 4   tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq;
       public          postgres    false    349            I           0    0 4   tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq OWNED BY public.tipos_entrenm_clinicas.id_tipos_entrenm_clinicas;
          public          postgres    false    343            Z           1259    25368 5   tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq;
       public          postgres    false    349            J           0    0 5   tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_acond;
          public          postgres    false    346            [           1259    25369 7   tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq;
       public          postgres    false    349            K           0    0 7   tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_estratg;
          public          postgres    false    347            \           1259    25370 7   tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq;
       public          postgres    false    349            L           0    0 7   tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_fisicas;
          public          postgres    false    348            X           1259    25366 8   tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 O   DROP SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq;
       public          postgres    false    349            M           0    0 8   tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_practica;
          public          postgres    false    344            Y           1259    25367 8   tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 O   DROP SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq;
       public          postgres    false    349            N           0    0 8   tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq OWNED BY public.tipos_entrenm_clinicas.num_entrenm_clinicas_tacticas;
          public          postgres    false    345            ?           1259    26010    vw_calendario_ctg_equipo    VIEW       CREATE VIEW public.vw_calendario_ctg_equipo AS
 SELECT calendario_ctg_equipo.id_calendario_ctg_equipo,
    calendario_ctg_equipo.num_reg_ctg_equipo,
    calendario_ctg_equipo.num_selec_calend_ctg,
    calendario_ctg_equipo.id_exp_instructor
   FROM public.calendario_ctg_equipo;
 +   DROP VIEW public.vw_calendario_ctg_equipo;
       public          postgres    false    394    394    394    394            ?           1259    25994    vw_crear_atleta    VIEW     q  CREATE VIEW public.vw_crear_atleta AS
 SELECT crear_atleta.id_crear_atleta,
    crear_atleta.num_regis_atleta,
    crear_atleta.nomb_apelld_atleta,
    crear_atleta.telf_atleta,
    crear_atleta.correo_atleta,
    crear_atleta.edad_atleta,
    crear_atleta.fech_nacim_atleta,
    crear_atleta.sexo_atleta,
    crear_atleta.direccion_atleta
   FROM public.crear_atleta;
 "   DROP VIEW public.vw_crear_atleta;
       public          postgres    false    320    320    320    320    320    320    320    320    320            ?           1259    26018    vw_crear_instructor    VIEW     ?  CREATE VIEW public.vw_crear_instructor AS
 SELECT crear_instructor.id_crear_instructor,
    crear_instructor.num_regis_instructor,
    crear_instructor.nomb_apelld_instructor,
    crear_instructor.telf_instructor,
    crear_instructor.correo_instructor,
    crear_instructor.edad_instructor,
    crear_instructor.fech_nacim_instructor,
    crear_instructor.sexo_instructor,
    crear_instructor.direccion_instructor,
    crear_instructor.id_historial_de_ascenso
   FROM public.crear_instructor;
 &   DROP VIEW public.vw_crear_instructor;
       public          postgres    false    342    342    342    342    342    342    342    342    342    342            ?           1259    26014    vw_dias_jg_equipo    VIEW     2  CREATE VIEW public.vw_dias_jg_equipo AS
 SELECT dias_jg_equipo.id_dias_jg_equipo,
    dias_jg_equipo.dias_jg_cadete,
    dias_jg_equipo.dias_jg_juvenil,
    dias_jg_equipo.dias_jg_infantil,
    dias_jg_equipo.nombre_equipo_del_dia,
    dias_jg_equipo.id_seleccion_calend_ctg
   FROM public.dias_jg_equipo;
 $   DROP VIEW public.vw_dias_jg_equipo;
       public          postgres    false    404    404    404    404    404    404            ?           1259    25998    vw_historial_ingres    VIEW     ?  CREATE VIEW public.vw_historial_ingres AS
 SELECT historial_ingres.id_historial_ingres,
    historial_ingres.id_crear_atleta,
    historial_ingres.num_hist_penaltis,
    historial_ingres.num_hist_faltas,
    historial_ingres.num_hist_partd_ganados,
    historial_ingres.num_hist_partd_perdidos,
    historial_ingres.num_hist_partd_empatados,
    historial_ingres.num_partd_goles
   FROM public.historial_ingres;
 &   DROP VIEW public.vw_historial_ingres;
       public          postgres    false    328    328    328    328    328    328    328    328            ?           2604    25506 .   calendario_ctg_equipo id_calendario_ctg_equipo    DEFAULT     ?   ALTER TABLE ONLY public.calendario_ctg_equipo ALTER COLUMN id_calendario_ctg_equipo SET DEFAULT nextval('public.calendario_ctg_equipo_id_calendario_ctg_equipo_seq'::regclass);
 ]   ALTER TABLE public.calendario_ctg_equipo ALTER COLUMN id_calendario_ctg_equipo DROP DEFAULT;
       public          postgres    false    391    394    394            ?           2604    25507 (   calendario_ctg_equipo num_reg_ctg_equipo    DEFAULT     ?   ALTER TABLE ONLY public.calendario_ctg_equipo ALTER COLUMN num_reg_ctg_equipo SET DEFAULT nextval('public.calendario_ctg_equipo_num_reg_ctg_equipo_seq'::regclass);
 W   ALTER TABLE public.calendario_ctg_equipo ALTER COLUMN num_reg_ctg_equipo DROP DEFAULT;
       public          postgres    false    394    392    394            ?           2604    25508 *   calendario_ctg_equipo num_selec_calend_ctg    DEFAULT     ?   ALTER TABLE ONLY public.calendario_ctg_equipo ALTER COLUMN num_selec_calend_ctg SET DEFAULT nextval('public.calendario_ctg_equipo_num_selec_calend_ctg_seq'::regclass);
 Y   ALTER TABLE public.calendario_ctg_equipo ALTER COLUMN num_selec_calend_ctg DROP DEFAULT;
       public          postgres    false    393    394    394            ?           2604    33189 &   categ_inscripcion id_categ_inscripcion    DEFAULT     ?   ALTER TABLE ONLY public.categ_inscripcion ALTER COLUMN id_categ_inscripcion SET DEFAULT nextval('public.categ_inscripcion_id_categ_inscripcion_seq'::regclass);
 U   ALTER TABLE public.categ_inscripcion ALTER COLUMN id_categ_inscripcion DROP DEFAULT;
       public          postgres    false    412    411    412            ?           2604    25292    crear_atleta id_crear_atleta    DEFAULT     ?   ALTER TABLE ONLY public.crear_atleta ALTER COLUMN id_crear_atleta SET DEFAULT nextval('public.crear_atleta_id_crear_atleta_seq'::regclass);
 K   ALTER TABLE public.crear_atleta ALTER COLUMN id_crear_atleta DROP DEFAULT;
       public          postgres    false    320    315    320            ?           2604    25293    crear_atleta num_regis_atleta    DEFAULT     ?   ALTER TABLE ONLY public.crear_atleta ALTER COLUMN num_regis_atleta SET DEFAULT nextval('public.crear_atleta_num_regis_atleta_seq'::regclass);
 L   ALTER TABLE public.crear_atleta ALTER COLUMN num_regis_atleta DROP DEFAULT;
       public          postgres    false    316    320    320            ?           2604    25294    crear_atleta telf_atleta    DEFAULT     ?   ALTER TABLE ONLY public.crear_atleta ALTER COLUMN telf_atleta SET DEFAULT nextval('public.crear_atleta_telf_atleta_seq'::regclass);
 G   ALTER TABLE public.crear_atleta ALTER COLUMN telf_atleta DROP DEFAULT;
       public          postgres    false    320    317    320            ?           2604    25295    crear_atleta edad_atleta    DEFAULT     ?   ALTER TABLE ONLY public.crear_atleta ALTER COLUMN edad_atleta SET DEFAULT nextval('public.crear_atleta_edad_atleta_seq'::regclass);
 G   ALTER TABLE public.crear_atleta ALTER COLUMN edad_atleta DROP DEFAULT;
       public          postgres    false    320    318    320            ?           2604    25296    crear_atleta fech_nacim_atleta    DEFAULT     ?   ALTER TABLE ONLY public.crear_atleta ALTER COLUMN fech_nacim_atleta SET DEFAULT nextval('public.crear_atleta_fech_nacim_atleta_seq'::regclass);
 M   ALTER TABLE public.crear_atleta ALTER COLUMN fech_nacim_atleta DROP DEFAULT;
       public          postgres    false    319    320    320            ?           2604    25358 $   crear_instructor id_crear_instructor    DEFAULT     ?   ALTER TABLE ONLY public.crear_instructor ALTER COLUMN id_crear_instructor SET DEFAULT nextval('public.crear_instructor_id_crear_instructor_seq'::regclass);
 S   ALTER TABLE public.crear_instructor ALTER COLUMN id_crear_instructor DROP DEFAULT;
       public          postgres    false    342    337    342            ?           2604    25359 %   crear_instructor num_regis_instructor    DEFAULT     ?   ALTER TABLE ONLY public.crear_instructor ALTER COLUMN num_regis_instructor SET DEFAULT nextval('public.crear_instructor_num_regis_instructor_seq'::regclass);
 T   ALTER TABLE public.crear_instructor ALTER COLUMN num_regis_instructor DROP DEFAULT;
       public          postgres    false    342    338    342            ?           2604    25360     crear_instructor telf_instructor    DEFAULT     ?   ALTER TABLE ONLY public.crear_instructor ALTER COLUMN telf_instructor SET DEFAULT nextval('public.crear_instructor_telf_instructor_seq'::regclass);
 O   ALTER TABLE public.crear_instructor ALTER COLUMN telf_instructor DROP DEFAULT;
       public          postgres    false    342    339    342            ?           2604    25361     crear_instructor edad_instructor    DEFAULT     ?   ALTER TABLE ONLY public.crear_instructor ALTER COLUMN edad_instructor SET DEFAULT nextval('public.crear_instructor_edad_instructor_seq'::regclass);
 O   ALTER TABLE public.crear_instructor ALTER COLUMN edad_instructor DROP DEFAULT;
       public          postgres    false    340    342    342            ?           2604    25362 &   crear_instructor fech_nacim_instructor    DEFAULT     ?   ALTER TABLE ONLY public.crear_instructor ALTER COLUMN fech_nacim_instructor SET DEFAULT nextval('public.crear_instructor_fech_nacim_instructor_seq'::regclass);
 U   ALTER TABLE public.crear_instructor ALTER COLUMN fech_nacim_instructor DROP DEFAULT;
       public          postgres    false    341    342    342            ?           2604    25474 &   crear_regis_repre id_crear_regis_repre    DEFAULT     ?   ALTER TABLE ONLY public.crear_regis_repre ALTER COLUMN id_crear_regis_repre SET DEFAULT nextval('public.crear_regis_repre_id_crear_regis_repre_seq'::regclass);
 U   ALTER TABLE public.crear_regis_repre ALTER COLUMN id_crear_regis_repre DROP DEFAULT;
       public          postgres    false    382    377    382            ?           2604    25475 !   crear_regis_repre num_regis_repre    DEFAULT     ?   ALTER TABLE ONLY public.crear_regis_repre ALTER COLUMN num_regis_repre SET DEFAULT nextval('public.crear_regis_repre_num_regis_repre_seq'::regclass);
 P   ALTER TABLE public.crear_regis_repre ALTER COLUMN num_regis_repre DROP DEFAULT;
       public          postgres    false    382    378    382            ?           2604    25476    crear_regis_repre telf_repre    DEFAULT     ?   ALTER TABLE ONLY public.crear_regis_repre ALTER COLUMN telf_repre SET DEFAULT nextval('public.crear_regis_repre_telf_repre_seq'::regclass);
 K   ALTER TABLE public.crear_regis_repre ALTER COLUMN telf_repre DROP DEFAULT;
       public          postgres    false    379    382    382            ?           2604    25477    crear_regis_repre edad_repre    DEFAULT     ?   ALTER TABLE ONLY public.crear_regis_repre ALTER COLUMN edad_repre SET DEFAULT nextval('public.crear_regis_repre_edad_repre_seq'::regclass);
 K   ALTER TABLE public.crear_regis_repre ALTER COLUMN edad_repre DROP DEFAULT;
       public          postgres    false    380    382    382            ?           2604    25478 "   crear_regis_repre fech_nacim_repre    DEFAULT     ?   ALTER TABLE ONLY public.crear_regis_repre ALTER COLUMN fech_nacim_repre SET DEFAULT nextval('public.crear_regis_repre_fech_nacim_repre_seq'::regclass);
 Q   ALTER TABLE public.crear_regis_repre ALTER COLUMN fech_nacim_repre DROP DEFAULT;
       public          postgres    false    382    381    382            ?           2604    25531     dias_jg_equipo id_dias_jg_equipo    DEFAULT     ?   ALTER TABLE ONLY public.dias_jg_equipo ALTER COLUMN id_dias_jg_equipo SET DEFAULT nextval('public.dias_jg_equipo_id_dias_jg_equipo_seq'::regclass);
 O   ALTER TABLE public.dias_jg_equipo ALTER COLUMN id_dias_jg_equipo DROP DEFAULT;
       public          postgres    false    400    404    404            ?           2604    25532    dias_jg_equipo dias_jg_cadete    DEFAULT     ?   ALTER TABLE ONLY public.dias_jg_equipo ALTER COLUMN dias_jg_cadete SET DEFAULT nextval('public.dias_jg_equipo_dias_jg_cadete_seq'::regclass);
 L   ALTER TABLE public.dias_jg_equipo ALTER COLUMN dias_jg_cadete DROP DEFAULT;
       public          postgres    false    404    401    404            ?           2604    25533    dias_jg_equipo dias_jg_juvenil    DEFAULT     ?   ALTER TABLE ONLY public.dias_jg_equipo ALTER COLUMN dias_jg_juvenil SET DEFAULT nextval('public.dias_jg_equipo_dias_jg_juvenil_seq'::regclass);
 M   ALTER TABLE public.dias_jg_equipo ALTER COLUMN dias_jg_juvenil DROP DEFAULT;
       public          postgres    false    402    404    404            ?           2604    25534    dias_jg_equipo dias_jg_infantil    DEFAULT     ?   ALTER TABLE ONLY public.dias_jg_equipo ALTER COLUMN dias_jg_infantil SET DEFAULT nextval('public.dias_jg_equipo_dias_jg_infantil_seq'::regclass);
 N   ALTER TABLE public.dias_jg_equipo ALTER COLUMN dias_jg_infantil DROP DEFAULT;
       public          postgres    false    403    404    404            ?           2604    25387 "   equipo_asignado id_equipo_asignado    DEFAULT     ?   ALTER TABLE ONLY public.equipo_asignado ALTER COLUMN id_equipo_asignado SET DEFAULT nextval('public.equipo_asignado_id_equipo_asignado_seq'::regclass);
 Q   ALTER TABLE public.equipo_asignado ALTER COLUMN id_equipo_asignado DROP DEFAULT;
       public          postgres    false    352    350    352            ?           2604    25388 !   equipo_asignado num_tipos_entrenm    DEFAULT     ?   ALTER TABLE ONLY public.equipo_asignado ALTER COLUMN num_tipos_entrenm SET DEFAULT nextval('public.equipo_asignado_num_tipos_entrenm_seq'::regclass);
 P   ALTER TABLE public.equipo_asignado ALTER COLUMN num_tipos_entrenm DROP DEFAULT;
       public          postgres    false    352    351    352            ?           2604    25424 .   equipos_por_tipo_catg id_equipos_por_tipo_catg    DEFAULT     ?   ALTER TABLE ONLY public.equipos_por_tipo_catg ALTER COLUMN id_equipos_por_tipo_catg SET DEFAULT nextval('public.equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq'::regclass);
 ]   ALTER TABLE public.equipos_por_tipo_catg ALTER COLUMN id_equipos_por_tipo_catg DROP DEFAULT;
       public          postgres    false    358    360    360            ?           2604    25425 (   equipos_por_tipo_catg num_reg_equip_catg    DEFAULT     ?   ALTER TABLE ONLY public.equipos_por_tipo_catg ALTER COLUMN num_reg_equip_catg SET DEFAULT nextval('public.equipos_por_tipo_catg_num_reg_equip_catg_seq'::regclass);
 W   ALTER TABLE public.equipos_por_tipo_catg ALTER COLUMN num_reg_equip_catg DROP DEFAULT;
       public          postgres    false    359    360    360            ?           2604    25491     exp_instructor id_exp_instructor    DEFAULT     ?   ALTER TABLE ONLY public.exp_instructor ALTER COLUMN id_exp_instructor SET DEFAULT nextval('public.exp_instructor_id_exp_instructor_seq'::regclass);
 O   ALTER TABLE public.exp_instructor ALTER COLUMN id_exp_instructor DROP DEFAULT;
       public          postgres    false    383    390    390            ?           2604    25492 '   exp_instructor num_exp_trabj_anteriores    DEFAULT     ?   ALTER TABLE ONLY public.exp_instructor ALTER COLUMN num_exp_trabj_anteriores SET DEFAULT nextval('public.exp_instructor_num_exp_trabj_anteriores_seq'::regclass);
 V   ALTER TABLE public.exp_instructor ALTER COLUMN num_exp_trabj_anteriores DROP DEFAULT;
       public          postgres    false    390    384    390            ?           2604    25493 '   exp_instructor num_exp_curso_realizados    DEFAULT     ?   ALTER TABLE ONLY public.exp_instructor ALTER COLUMN num_exp_curso_realizados SET DEFAULT nextval('public.exp_instructor_num_exp_curso_realizados_seq'::regclass);
 V   ALTER TABLE public.exp_instructor ALTER COLUMN num_exp_curso_realizados DROP DEFAULT;
       public          postgres    false    385    390    390            ?           2604    25494 "   exp_instructor num_exp_curso_otros    DEFAULT     ?   ALTER TABLE ONLY public.exp_instructor ALTER COLUMN num_exp_curso_otros SET DEFAULT nextval('public.exp_instructor_num_exp_curso_otros_seq'::regclass);
 Q   ALTER TABLE public.exp_instructor ALTER COLUMN num_exp_curso_otros DROP DEFAULT;
       public          postgres    false    390    386    390            ?           2604    25495 $   exp_instructor num_exp_curso_acondim    DEFAULT     ?   ALTER TABLE ONLY public.exp_instructor ALTER COLUMN num_exp_curso_acondim SET DEFAULT nextval('public.exp_instructor_num_exp_curso_acondim_seq'::regclass);
 S   ALTER TABLE public.exp_instructor ALTER COLUMN num_exp_curso_acondim DROP DEFAULT;
       public          postgres    false    390    387    390            ?           2604    25496 $   exp_instructor num_exp_curso_extratg    DEFAULT     ?   ALTER TABLE ONLY public.exp_instructor ALTER COLUMN num_exp_curso_extratg SET DEFAULT nextval('public.exp_instructor_num_exp_curso_extratg_seq'::regclass);
 S   ALTER TABLE public.exp_instructor ALTER COLUMN num_exp_curso_extratg DROP DEFAULT;
       public          postgres    false    388    390    390            ?           2604    25497 $   exp_instructor num_exp_curso_fisicos    DEFAULT     ?   ALTER TABLE ONLY public.exp_instructor ALTER COLUMN num_exp_curso_fisicos SET DEFAULT nextval('public.exp_instructor_num_exp_curso_fisicos_seq'::regclass);
 S   ALTER TABLE public.exp_instructor ALTER COLUMN num_exp_curso_fisicos DROP DEFAULT;
       public          postgres    false    390    389    390            ?           2604    25341 ,   historial_de_ascenso id_historial_de_ascenso    DEFAULT     ?   ALTER TABLE ONLY public.historial_de_ascenso ALTER COLUMN id_historial_de_ascenso SET DEFAULT nextval('public.historial_de_ascenso_id_historial_de_ascenso_seq'::regclass);
 [   ALTER TABLE public.historial_de_ascenso ALTER COLUMN id_historial_de_ascenso DROP DEFAULT;
       public          postgres    false    336    329    336            ?           2604    33117 -   historial_de_ascenso num_hist_ascenso_perdido    DEFAULT     ?   ALTER TABLE ONLY public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_perdido SET DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_perdido_seq'::regclass);
 \   ALTER TABLE public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_perdido DROP DEFAULT;
       public          postgres    false    336    330    336            ?           2604    33122 -   historial_de_ascenso num_hist_ascenso_ganados    DEFAULT     ?   ALTER TABLE ONLY public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_ganados SET DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_ganados_seq'::regclass);
 \   ALTER TABLE public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_ganados DROP DEFAULT;
       public          postgres    false    336    331    336            ?           2604    33127 +   historial_de_ascenso num_hist_ascenso_goles    DEFAULT     ?   ALTER TABLE ONLY public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_goles SET DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_goles_seq'::regclass);
 Z   ALTER TABLE public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_goles DROP DEFAULT;
       public          postgres    false    336    332    336            ?           2604    33132 /   historial_de_ascenso num_hist_ascenso_empatados    DEFAULT     ?   ALTER TABLE ONLY public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_empatados SET DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_empatados_seq'::regclass);
 ^   ALTER TABLE public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_empatados DROP DEFAULT;
       public          postgres    false    336    333    336            ?           2604    33137 ,   historial_de_ascenso num_hist_ascenso_faltas    DEFAULT     ?   ALTER TABLE ONLY public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_faltas SET DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_faltas_seq'::regclass);
 [   ALTER TABLE public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_faltas DROP DEFAULT;
       public          postgres    false    334    336    336            ?           2604    33142 .   historial_de_ascenso num_hist_ascenso_penaltis    DEFAULT     ?   ALTER TABLE ONLY public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_penaltis SET DEFAULT nextval('public.historial_de_ascenso_num_hist_ascenso_penaltis_seq'::regclass);
 ]   ALTER TABLE public.historial_de_ascenso ALTER COLUMN num_hist_ascenso_penaltis DROP DEFAULT;
       public          postgres    false    336    335    336            ?           2604    25309 $   historial_ingres id_historial_ingres    DEFAULT     ?   ALTER TABLE ONLY public.historial_ingres ALTER COLUMN id_historial_ingres SET DEFAULT nextval('public.historial_ingres_id_historial_ingres_seq'::regclass);
 S   ALTER TABLE public.historial_ingres ALTER COLUMN id_historial_ingres DROP DEFAULT;
       public          postgres    false    328    321    328            ?           2604    25310 "   historial_ingres num_hist_penaltis    DEFAULT     ?   ALTER TABLE ONLY public.historial_ingres ALTER COLUMN num_hist_penaltis SET DEFAULT nextval('public.historial_ingres_num_hist_penaltis_seq'::regclass);
 Q   ALTER TABLE public.historial_ingres ALTER COLUMN num_hist_penaltis DROP DEFAULT;
       public          postgres    false    328    322    328            ?           2604    25311     historial_ingres num_hist_faltas    DEFAULT     ?   ALTER TABLE ONLY public.historial_ingres ALTER COLUMN num_hist_faltas SET DEFAULT nextval('public.historial_ingres_num_hist_faltas_seq'::regclass);
 O   ALTER TABLE public.historial_ingres ALTER COLUMN num_hist_faltas DROP DEFAULT;
       public          postgres    false    323    328    328            ?           2604    25312 '   historial_ingres num_hist_partd_ganados    DEFAULT     ?   ALTER TABLE ONLY public.historial_ingres ALTER COLUMN num_hist_partd_ganados SET DEFAULT nextval('public.historial_ingres_num_hist_partd_ganados_seq'::regclass);
 V   ALTER TABLE public.historial_ingres ALTER COLUMN num_hist_partd_ganados DROP DEFAULT;
       public          postgres    false    328    324    328            ?           2604    25313 (   historial_ingres num_hist_partd_perdidos    DEFAULT     ?   ALTER TABLE ONLY public.historial_ingres ALTER COLUMN num_hist_partd_perdidos SET DEFAULT nextval('public.historial_ingres_num_hist_partd_perdidos_seq'::regclass);
 W   ALTER TABLE public.historial_ingres ALTER COLUMN num_hist_partd_perdidos DROP DEFAULT;
       public          postgres    false    328    325    328            ?           2604    25314 )   historial_ingres num_hist_partd_empatados    DEFAULT     ?   ALTER TABLE ONLY public.historial_ingres ALTER COLUMN num_hist_partd_empatados SET DEFAULT nextval('public.historial_ingres_num_hist_partd_empatados_seq'::regclass);
 X   ALTER TABLE public.historial_ingres ALTER COLUMN num_hist_partd_empatados DROP DEFAULT;
       public          postgres    false    326    328    328            ?           2604    25315     historial_ingres num_partd_goles    DEFAULT     ?   ALTER TABLE ONLY public.historial_ingres ALTER COLUMN num_partd_goles SET DEFAULT nextval('public.historial_ingres_num_partd_goles_seq'::regclass);
 O   ALTER TABLE public.historial_ingres ALTER COLUMN num_partd_goles DROP DEFAULT;
       public          postgres    false    328    327    328            ?           2604    25438 (   num_juegos_jugados id_num_juegos_jugados    DEFAULT     ?   ALTER TABLE ONLY public.num_juegos_jugados ALTER COLUMN id_num_juegos_jugados SET DEFAULT nextval('public.num_juegos_jugados_id_num_juegos_jugados_seq'::regclass);
 W   ALTER TABLE public.num_juegos_jugados ALTER COLUMN id_num_juegos_jugados DROP DEFAULT;
       public          postgres    false    361    368    368            ?           2604    25439 (   num_juegos_jugados num_jg_jgados_emptads    DEFAULT     ?   ALTER TABLE ONLY public.num_juegos_jugados ALTER COLUMN num_jg_jgados_emptads SET DEFAULT nextval('public.num_juegos_jugados_num_jg_jgados_emptads_seq'::regclass);
 W   ALTER TABLE public.num_juegos_jugados ALTER COLUMN num_jg_jgados_emptads DROP DEFAULT;
       public          postgres    false    368    362    368            ?           2604    25440 (   num_juegos_jugados num_jg_jgados_ganados    DEFAULT     ?   ALTER TABLE ONLY public.num_juegos_jugados ALTER COLUMN num_jg_jgados_ganados SET DEFAULT nextval('public.num_juegos_jugados_num_jg_jgados_ganados_seq'::regclass);
 W   ALTER TABLE public.num_juegos_jugados ALTER COLUMN num_jg_jgados_ganados DROP DEFAULT;
       public          postgres    false    363    368    368            ?           2604    25441 )   num_juegos_jugados num_jg_jgados_perdidos    DEFAULT     ?   ALTER TABLE ONLY public.num_juegos_jugados ALTER COLUMN num_jg_jgados_perdidos SET DEFAULT nextval('public.num_juegos_jugados_num_jg_jgados_perdidos_seq'::regclass);
 X   ALTER TABLE public.num_juegos_jugados ALTER COLUMN num_jg_jgados_perdidos DROP DEFAULT;
       public          postgres    false    368    364    368            ?           2604    25442 *   num_juegos_jugados num_jg_jugados_penaltis    DEFAULT     ?   ALTER TABLE ONLY public.num_juegos_jugados ALTER COLUMN num_jg_jugados_penaltis SET DEFAULT nextval('public.num_juegos_jugados_num_jg_jugados_penaltis_seq'::regclass);
 Y   ALTER TABLE public.num_juegos_jugados ALTER COLUMN num_jg_jugados_penaltis DROP DEFAULT;
       public          postgres    false    365    368    368            ?           2604    25443 (   num_juegos_jugados num_jg_jugados_faltas    DEFAULT     ?   ALTER TABLE ONLY public.num_juegos_jugados ALTER COLUMN num_jg_jugados_faltas SET DEFAULT nextval('public.num_juegos_jugados_num_jg_jugados_faltas_seq'::regclass);
 W   ALTER TABLE public.num_juegos_jugados ALTER COLUMN num_jg_jugados_faltas DROP DEFAULT;
       public          postgres    false    366    368    368            ?           2604    25444 #   num_juegos_jugados selec_ctg_equipo    DEFAULT     ?   ALTER TABLE ONLY public.num_juegos_jugados ALTER COLUMN selec_ctg_equipo SET DEFAULT nextval('public.num_juegos_jugados_selec_ctg_equipo_seq'::regclass);
 R   ALTER TABLE public.num_juegos_jugados ALTER COLUMN selec_ctg_equipo DROP DEFAULT;
       public          postgres    false    367    368    368            ?           2604    25457 (   num_puntaje_juegos id_num_puntaje_juegos    DEFAULT     ?   ALTER TABLE ONLY public.num_puntaje_juegos ALTER COLUMN id_num_puntaje_juegos SET DEFAULT nextval('public.num_puntaje_juegos_id_num_puntaje_juegos_seq'::regclass);
 W   ALTER TABLE public.num_puntaje_juegos ALTER COLUMN id_num_puntaje_juegos DROP DEFAULT;
       public          postgres    false    376    369    376            ?           2604    25458 (   num_puntaje_juegos num_puntj_jgs_ganados    DEFAULT     ?   ALTER TABLE ONLY public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_ganados SET DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_ganados_seq'::regclass);
 W   ALTER TABLE public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_ganados DROP DEFAULT;
       public          postgres    false    376    370    376            ?           2604    25459 )   num_puntaje_juegos num_puntj_jgs_perdidos    DEFAULT     ?   ALTER TABLE ONLY public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_perdidos SET DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_perdidos_seq'::regclass);
 X   ALTER TABLE public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_perdidos DROP DEFAULT;
       public          postgres    false    376    371    376            ?           2604    25460 *   num_puntaje_juegos num_puntj_jgs_empatados    DEFAULT     ?   ALTER TABLE ONLY public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_empatados SET DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_empatados_seq'::regclass);
 Y   ALTER TABLE public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_empatados DROP DEFAULT;
       public          postgres    false    376    372    376            ?           2604    25461 &   num_puntaje_juegos num_puntj_jgs_goles    DEFAULT     ?   ALTER TABLE ONLY public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_goles SET DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_goles_seq'::regclass);
 U   ALTER TABLE public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_goles DROP DEFAULT;
       public          postgres    false    373    376    376            ?           2604    25462 '   num_puntaje_juegos num_puntj_jgs_faltas    DEFAULT     ?   ALTER TABLE ONLY public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_faltas SET DEFAULT nextval('public.num_puntaje_juegos_num_puntj_jgs_faltas_seq'::regclass);
 V   ALTER TABLE public.num_puntaje_juegos ALTER COLUMN num_puntj_jgs_faltas DROP DEFAULT;
       public          postgres    false    374    376    376            ?           2604    25463 )   num_puntaje_juegos num_registro_puntj_jgs    DEFAULT     ?   ALTER TABLE ONLY public.num_puntaje_juegos ALTER COLUMN num_registro_puntj_jgs SET DEFAULT nextval('public.num_puntaje_juegos_num_registro_puntj_jgs_seq'::regclass);
 X   ALTER TABLE public.num_puntaje_juegos ALTER COLUMN num_registro_puntj_jgs DROP DEFAULT;
       public          postgres    false    375    376    376            ?           2604    25518 ,   seleccion_calend_ctg id_seleccion_calend_ctg    DEFAULT     ?   ALTER TABLE ONLY public.seleccion_calend_ctg ALTER COLUMN id_seleccion_calend_ctg SET DEFAULT nextval('public.seleccion_calend_ctg_id_seleccion_calend_ctg_seq'::regclass);
 [   ALTER TABLE public.seleccion_calend_ctg ALTER COLUMN id_seleccion_calend_ctg DROP DEFAULT;
       public          postgres    false    395    399    399            ?           2604    25519 &   seleccion_calend_ctg num_id_ctg_cadete    DEFAULT     ?   ALTER TABLE ONLY public.seleccion_calend_ctg ALTER COLUMN num_id_ctg_cadete SET DEFAULT nextval('public.seleccion_calend_ctg_num_id_ctg_cadete_seq'::regclass);
 U   ALTER TABLE public.seleccion_calend_ctg ALTER COLUMN num_id_ctg_cadete DROP DEFAULT;
       public          postgres    false    396    399    399            ?           2604    25520 '   seleccion_calend_ctg num_id_ctg_juvenil    DEFAULT     ?   ALTER TABLE ONLY public.seleccion_calend_ctg ALTER COLUMN num_id_ctg_juvenil SET DEFAULT nextval('public.seleccion_calend_ctg_num_id_ctg_juvenil_seq'::regclass);
 V   ALTER TABLE public.seleccion_calend_ctg ALTER COLUMN num_id_ctg_juvenil DROP DEFAULT;
       public          postgres    false    397    399    399            ?           2604    25521 (   seleccion_calend_ctg num_id_ctg_infantil    DEFAULT     ?   ALTER TABLE ONLY public.seleccion_calend_ctg ALTER COLUMN num_id_ctg_infantil SET DEFAULT nextval('public.seleccion_calend_ctg_num_id_ctg_infantil_seq'::regclass);
 W   ALTER TABLE public.seleccion_calend_ctg ALTER COLUMN num_id_ctg_infantil DROP DEFAULT;
       public          postgres    false    399    398    399            ?           2604    25398 $   selecion_equipos id_selecion_equipos    DEFAULT     ?   ALTER TABLE ONLY public.selecion_equipos ALTER COLUMN id_selecion_equipos SET DEFAULT nextval('public.selecion_equipos_id_selecion_equipos_seq'::regclass);
 S   ALTER TABLE public.selecion_equipos ALTER COLUMN id_selecion_equipos DROP DEFAULT;
       public          postgres    false    357    353    357            ?           2604    25399 $   selecion_equipos num_equipos_cadetes    DEFAULT     ?   ALTER TABLE ONLY public.selecion_equipos ALTER COLUMN num_equipos_cadetes SET DEFAULT nextval('public.selecion_equipos_num_equipos_cadetes_seq'::regclass);
 S   ALTER TABLE public.selecion_equipos ALTER COLUMN num_equipos_cadetes DROP DEFAULT;
       public          postgres    false    354    357    357            ?           2604    25400 %   selecion_equipos num_equipos_infantil    DEFAULT     ?   ALTER TABLE ONLY public.selecion_equipos ALTER COLUMN num_equipos_infantil SET DEFAULT nextval('public.selecion_equipos_num_equipos_infantil_seq'::regclass);
 T   ALTER TABLE public.selecion_equipos ALTER COLUMN num_equipos_infantil DROP DEFAULT;
       public          postgres    false    357    355    357            ?           2604    25401 $   selecion_equipos num_equipos_juvenil    DEFAULT     ?   ALTER TABLE ONLY public.selecion_equipos ALTER COLUMN num_equipos_juvenil SET DEFAULT nextval('public.selecion_equipos_num_equipos_juvenil_seq'::regclass);
 S   ALTER TABLE public.selecion_equipos ALTER COLUMN num_equipos_juvenil DROP DEFAULT;
       public          postgres    false    356    357    357            ?           2604    25374 0   tipos_entrenm_clinicas id_tipos_entrenm_clinicas    DEFAULT     ?   ALTER TABLE ONLY public.tipos_entrenm_clinicas ALTER COLUMN id_tipos_entrenm_clinicas SET DEFAULT nextval('public.tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq'::regclass);
 _   ALTER TABLE public.tipos_entrenm_clinicas ALTER COLUMN id_tipos_entrenm_clinicas DROP DEFAULT;
       public          postgres    false    343    349    349            ?           2604    25375 4   tipos_entrenm_clinicas num_entrenm_clinicas_practica    DEFAULT     ?   ALTER TABLE ONLY public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_practica SET DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq'::regclass);
 c   ALTER TABLE public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_practica DROP DEFAULT;
       public          postgres    false    349    344    349            ?           2604    25376 4   tipos_entrenm_clinicas num_entrenm_clinicas_tacticas    DEFAULT     ?   ALTER TABLE ONLY public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_tacticas SET DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq'::regclass);
 c   ALTER TABLE public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_tacticas DROP DEFAULT;
       public          postgres    false    345    349    349            ?           2604    25377 1   tipos_entrenm_clinicas num_entrenm_clinicas_acond    DEFAULT     ?   ALTER TABLE ONLY public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_acond SET DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq'::regclass);
 `   ALTER TABLE public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_acond DROP DEFAULT;
       public          postgres    false    349    346    349            ?           2604    25378 3   tipos_entrenm_clinicas num_entrenm_clinicas_estratg    DEFAULT     ?   ALTER TABLE ONLY public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_estratg SET DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq'::regclass);
 b   ALTER TABLE public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_estratg DROP DEFAULT;
       public          postgres    false    349    347    349            ?           2604    25379 3   tipos_entrenm_clinicas num_entrenm_clinicas_fisicas    DEFAULT     ?   ALTER TABLE ONLY public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_fisicas SET DEFAULT nextval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq'::regclass);
 b   ALTER TABLE public.tipos_entrenm_clinicas ALTER COLUMN num_entrenm_clinicas_fisicas DROP DEFAULT;
       public          postgres    false    349    348    349            ?          0    25503    calendario_ctg_equipo 
   TABLE DATA           ?   COPY public.calendario_ctg_equipo (id_calendario_ctg_equipo, num_reg_ctg_equipo, num_selec_calend_ctg, id_exp_instructor) FROM stdin;
    public          postgres    false    394   ?$      ?          0    33186    categ_inscripcion 
   TABLE DATA           ?   COPY public.categ_inscripcion (id_categ_inscripcion, id_historial_ingres, nueva_catg_infantil, nueva_catg_cadete, nueva_catg_juvenil) FROM stdin;
    public          postgres    false    412   %      ?          0    33180    categoria_equipo 
   TABLE DATA           ?   COPY public.categoria_equipo (id_categoria_equipo, nombre_ctg_equipo, num_id_ctg_equipo, "num_Ctg_equipo_cadete", "num_Ctg_equipo_juvenil", "num_Ctg_equipo_infantil", id_seleccion_equipos) FROM stdin;
    public          postgres    false    410   '      ?          0    25289    crear_atleta 
   TABLE DATA           ?   COPY public.crear_atleta (id_crear_atleta, num_regis_atleta, nomb_apelld_atleta, telf_atleta, correo_atleta, edad_atleta, fech_nacim_atleta, sexo_atleta, direccion_atleta) FROM stdin;
    public          postgres    false    320   )      ?          0    25355    crear_instructor 
   TABLE DATA           ?   COPY public.crear_instructor (id_crear_instructor, num_regis_instructor, nomb_apelld_instructor, telf_instructor, correo_instructor, edad_instructor, fech_nacim_instructor, sexo_instructor, direccion_instructor, id_historial_de_ascenso) FROM stdin;
    public          postgres    false    342   ?-      ?          0    25471    crear_regis_repre 
   TABLE DATA           ?   COPY public.crear_regis_repre (id_crear_regis_repre, num_regis_repre, nomb_apelld_repre, telf_repre, correo_repre, edad_repre, fech_nacim_repre, sexo_repre, direccion_repre, id_num_puntaje_juegos) FROM stdin;
    public          postgres    false    382   \-      ?          0    25528    dias_jg_equipo 
   TABLE DATA           ?   COPY public.dias_jg_equipo (id_dias_jg_equipo, dias_jg_cadete, dias_jg_juvenil, dias_jg_infantil, nombre_equipo_del_dia, id_seleccion_calend_ctg) FROM stdin;
    public          postgres    false    404   y-      ?          0    25384    equipo_asignado 
   TABLE DATA           ?   COPY public.equipo_asignado (id_equipo_asignado, equipo_infantil, equipo_juvenil, equipo_cadete, num_tipos_entrenm, id_tipos_entrenm_clinicas) FROM stdin;
    public          postgres    false    352   ?-      ?          0    25421    equipos_por_tipo_catg 
   TABLE DATA           ?   COPY public.equipos_por_tipo_catg (id_equipos_por_tipo_catg, nomb_equip_catg_cadete, nomb_equip_catg_juvenil, nomb_equip_catg_infantil, id_categoria_equipo, num_reg_equip_catg) FROM stdin;
    public          postgres    false    360   ?-      ?          0    25488    exp_instructor 
   TABLE DATA           ?   COPY public.exp_instructor (id_exp_instructor, num_exp_trabj_anteriores, num_exp_curso_realizados, num_exp_curso_otros, num_exp_curso_acondim, num_exp_curso_extratg, num_exp_curso_fisicos, id_crear_regis_repre) FROM stdin;
    public          postgres    false    390   ?-      ?          0    25338    historial_de_ascenso 
   TABLE DATA           ?   COPY public.historial_de_ascenso (id_historial_de_ascenso, id_categoria_inscripcion, num_hist_ascenso_perdido, num_hist_ascenso_ganados, num_hist_ascenso_goles, num_hist_ascenso_empatados, num_hist_ascenso_faltas, num_hist_ascenso_penaltis) FROM stdin;
    public          postgres    false    336   ?-      ?          0    25306    historial_ingres 
   TABLE DATA           ?   COPY public.historial_ingres (id_historial_ingres, id_crear_atleta, num_hist_penaltis, num_hist_faltas, num_hist_partd_ganados, num_hist_partd_perdidos, num_hist_partd_empatados, num_partd_goles) FROM stdin;
    public          postgres    false    328   
.      ?          0    25435    num_juegos_jugados 
   TABLE DATA           ?   COPY public.num_juegos_jugados (id_num_juegos_jugados, num_jg_jgados_emptads, num_jg_jgados_ganados, num_jg_jgados_perdidos, num_jg_jugados_penaltis, num_jg_jugados_faltas, nomb_equipo, selec_ctg_equipo, id_equipos_por_tipo_catg) FROM stdin;
    public          postgres    false    368   '.      ?          0    25454    num_puntaje_juegos 
   TABLE DATA           ?   COPY public.num_puntaje_juegos (id_num_puntaje_juegos, num_puntj_jgs_ganados, num_puntj_jgs_perdidos, num_puntj_jgs_empatados, num_puntj_jgs_goles, num_puntj_jgs_faltas, num_registro_puntj_jgs, id_num_juegos_jugados) FROM stdin;
    public          postgres    false    376   D.      ?          0    25515    seleccion_calend_ctg 
   TABLE DATA           ?   COPY public.seleccion_calend_ctg (id_seleccion_calend_ctg, num_id_ctg_cadete, num_id_ctg_juvenil, num_id_ctg_infantil, id_calendario_ctg_equipo) FROM stdin;
    public          postgres    false    399   a.      ?          0    25395    selecion_equipos 
   TABLE DATA           ?   COPY public.selecion_equipos (id_selecion_equipos, num_equipos_cadetes, num_equipos_infantil, num_equipos_juvenil, id_equipo_asignado) FROM stdin;
    public          postgres    false    357   ~.      ?          0    25371    tipos_entrenm_clinicas 
   TABLE DATA           ?   COPY public.tipos_entrenm_clinicas (id_tipos_entrenm_clinicas, id_crear_instructor, num_entrenm_clinicas_practica, num_entrenm_clinicas_tacticas, num_entrenm_clinicas_acond, num_entrenm_clinicas_estratg, num_entrenm_clinicas_fisicas) FROM stdin;
    public          postgres    false    349   ?.      O           0    0 2   calendario_ctg_equipo_id_calendario_ctg_equipo_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.calendario_ctg_equipo_id_calendario_ctg_equipo_seq', 1, false);
          public          postgres    false    391            P           0    0 ,   calendario_ctg_equipo_num_reg_ctg_equipo_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.calendario_ctg_equipo_num_reg_ctg_equipo_seq', 1, false);
          public          postgres    false    392            Q           0    0 .   calendario_ctg_equipo_num_selec_calend_ctg_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.calendario_ctg_equipo_num_selec_calend_ctg_seq', 1, false);
          public          postgres    false    393            R           0    0 *   categ_inscripcion_id_categ_inscripcion_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.categ_inscripcion_id_categ_inscripcion_seq', 1, false);
          public          postgres    false    411            S           0    0    crear_atleta_edad_atleta_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.crear_atleta_edad_atleta_seq', 1, false);
          public          postgres    false    318            T           0    0 "   crear_atleta_fech_nacim_atleta_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.crear_atleta_fech_nacim_atleta_seq', 1, false);
          public          postgres    false    319            U           0    0     crear_atleta_id_crear_atleta_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crear_atleta_id_crear_atleta_seq', 1, false);
          public          postgres    false    315            V           0    0 !   crear_atleta_num_regis_atleta_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.crear_atleta_num_regis_atleta_seq', 1, false);
          public          postgres    false    316            W           0    0    crear_atleta_telf_atleta_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.crear_atleta_telf_atleta_seq', 1, false);
          public          postgres    false    317            X           0    0 $   crear_instructor_edad_instructor_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.crear_instructor_edad_instructor_seq', 1, false);
          public          postgres    false    340            Y           0    0 *   crear_instructor_fech_nacim_instructor_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.crear_instructor_fech_nacim_instructor_seq', 1, false);
          public          postgres    false    341            Z           0    0 (   crear_instructor_id_crear_instructor_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.crear_instructor_id_crear_instructor_seq', 1, false);
          public          postgres    false    337            [           0    0 )   crear_instructor_num_regis_instructor_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.crear_instructor_num_regis_instructor_seq', 1, false);
          public          postgres    false    338            \           0    0 $   crear_instructor_telf_instructor_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.crear_instructor_telf_instructor_seq', 1, false);
          public          postgres    false    339            ]           0    0     crear_regis_repre_edad_repre_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crear_regis_repre_edad_repre_seq', 1, false);
          public          postgres    false    380            ^           0    0 &   crear_regis_repre_fech_nacim_repre_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.crear_regis_repre_fech_nacim_repre_seq', 1, false);
          public          postgres    false    381            _           0    0 *   crear_regis_repre_id_crear_regis_repre_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.crear_regis_repre_id_crear_regis_repre_seq', 1, false);
          public          postgres    false    377            `           0    0 %   crear_regis_repre_num_regis_repre_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.crear_regis_repre_num_regis_repre_seq', 1, false);
          public          postgres    false    378            a           0    0     crear_regis_repre_telf_repre_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.crear_regis_repre_telf_repre_seq', 1, false);
          public          postgres    false    379            b           0    0 !   dias_jg_equipo_dias_jg_cadete_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.dias_jg_equipo_dias_jg_cadete_seq', 1, false);
          public          postgres    false    401            c           0    0 #   dias_jg_equipo_dias_jg_infantil_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.dias_jg_equipo_dias_jg_infantil_seq', 1, false);
          public          postgres    false    403            d           0    0 "   dias_jg_equipo_dias_jg_juvenil_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.dias_jg_equipo_dias_jg_juvenil_seq', 1, false);
          public          postgres    false    402            e           0    0 $   dias_jg_equipo_id_dias_jg_equipo_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.dias_jg_equipo_id_dias_jg_equipo_seq', 1, false);
          public          postgres    false    400            f           0    0 &   equipo_asignado_id_equipo_asignado_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.equipo_asignado_id_equipo_asignado_seq', 1, false);
          public          postgres    false    350            g           0    0 %   equipo_asignado_num_tipos_entrenm_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.equipo_asignado_num_tipos_entrenm_seq', 1, false);
          public          postgres    false    351            h           0    0 2   equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.equipos_por_tipo_catg_id_equipos_por_tipo_catg_seq', 1, false);
          public          postgres    false    358            i           0    0 ,   equipos_por_tipo_catg_num_reg_equip_catg_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.equipos_por_tipo_catg_num_reg_equip_catg_seq', 1, false);
          public          postgres    false    359            j           0    0 $   exp_instructor_id_exp_instructor_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.exp_instructor_id_exp_instructor_seq', 1, false);
          public          postgres    false    383            k           0    0 (   exp_instructor_num_exp_curso_acondim_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.exp_instructor_num_exp_curso_acondim_seq', 1, false);
          public          postgres    false    387            l           0    0 (   exp_instructor_num_exp_curso_extratg_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.exp_instructor_num_exp_curso_extratg_seq', 1, false);
          public          postgres    false    388            m           0    0 (   exp_instructor_num_exp_curso_fisicos_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.exp_instructor_num_exp_curso_fisicos_seq', 1, false);
          public          postgres    false    389            n           0    0 &   exp_instructor_num_exp_curso_otros_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.exp_instructor_num_exp_curso_otros_seq', 1, false);
          public          postgres    false    386            o           0    0 +   exp_instructor_num_exp_curso_realizados_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.exp_instructor_num_exp_curso_realizados_seq', 1, false);
          public          postgres    false    385            p           0    0 +   exp_instructor_num_exp_trabj_anteriores_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.exp_instructor_num_exp_trabj_anteriores_seq', 1, false);
          public          postgres    false    384            q           0    0 0   historial_de_ascenso_id_historial_de_ascenso_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.historial_de_ascenso_id_historial_de_ascenso_seq', 1, false);
          public          postgres    false    329            r           0    0 3   historial_de_ascenso_num_hist_ascenso_empatados_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.historial_de_ascenso_num_hist_ascenso_empatados_seq', 1, false);
          public          postgres    false    333            s           0    0 0   historial_de_ascenso_num_hist_ascenso_faltas_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.historial_de_ascenso_num_hist_ascenso_faltas_seq', 1, false);
          public          postgres    false    334            t           0    0 1   historial_de_ascenso_num_hist_ascenso_ganados_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.historial_de_ascenso_num_hist_ascenso_ganados_seq', 1, false);
          public          postgres    false    331            u           0    0 /   historial_de_ascenso_num_hist_ascenso_goles_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.historial_de_ascenso_num_hist_ascenso_goles_seq', 1, false);
          public          postgres    false    332            v           0    0 2   historial_de_ascenso_num_hist_ascenso_penaltis_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.historial_de_ascenso_num_hist_ascenso_penaltis_seq', 1, false);
          public          postgres    false    335            w           0    0 1   historial_de_ascenso_num_hist_ascenso_perdido_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.historial_de_ascenso_num_hist_ascenso_perdido_seq', 1, false);
          public          postgres    false    330            x           0    0 (   historial_ingres_id_historial_ingres_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.historial_ingres_id_historial_ingres_seq', 1, false);
          public          postgres    false    321            y           0    0 $   historial_ingres_num_hist_faltas_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.historial_ingres_num_hist_faltas_seq', 1, false);
          public          postgres    false    323            z           0    0 -   historial_ingres_num_hist_partd_empatados_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.historial_ingres_num_hist_partd_empatados_seq', 1, false);
          public          postgres    false    326            {           0    0 +   historial_ingres_num_hist_partd_ganados_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.historial_ingres_num_hist_partd_ganados_seq', 1, false);
          public          postgres    false    324            |           0    0 ,   historial_ingres_num_hist_partd_perdidos_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.historial_ingres_num_hist_partd_perdidos_seq', 1, false);
          public          postgres    false    325            }           0    0 &   historial_ingres_num_hist_penaltis_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.historial_ingres_num_hist_penaltis_seq', 1, false);
          public          postgres    false    322            ~           0    0 $   historial_ingres_num_partd_goles_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.historial_ingres_num_partd_goles_seq', 1, false);
          public          postgres    false    327                       0    0 ,   num_juegos_jugados_id_num_juegos_jugados_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.num_juegos_jugados_id_num_juegos_jugados_seq', 1, false);
          public          postgres    false    361            ?           0    0 ,   num_juegos_jugados_num_jg_jgados_emptads_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.num_juegos_jugados_num_jg_jgados_emptads_seq', 1, false);
          public          postgres    false    362            ?           0    0 ,   num_juegos_jugados_num_jg_jgados_ganados_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.num_juegos_jugados_num_jg_jgados_ganados_seq', 1, false);
          public          postgres    false    363            ?           0    0 -   num_juegos_jugados_num_jg_jgados_perdidos_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.num_juegos_jugados_num_jg_jgados_perdidos_seq', 1, false);
          public          postgres    false    364            ?           0    0 ,   num_juegos_jugados_num_jg_jugados_faltas_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.num_juegos_jugados_num_jg_jugados_faltas_seq', 1, false);
          public          postgres    false    366            ?           0    0 .   num_juegos_jugados_num_jg_jugados_penaltis_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.num_juegos_jugados_num_jg_jugados_penaltis_seq', 1, false);
          public          postgres    false    365            ?           0    0 '   num_juegos_jugados_selec_ctg_equipo_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.num_juegos_jugados_selec_ctg_equipo_seq', 1, false);
          public          postgres    false    367            ?           0    0 ,   num_puntaje_juegos_id_num_puntaje_juegos_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.num_puntaje_juegos_id_num_puntaje_juegos_seq', 1, false);
          public          postgres    false    369            ?           0    0 .   num_puntaje_juegos_num_puntj_jgs_empatados_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.num_puntaje_juegos_num_puntj_jgs_empatados_seq', 1, false);
          public          postgres    false    372            ?           0    0 +   num_puntaje_juegos_num_puntj_jgs_faltas_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.num_puntaje_juegos_num_puntj_jgs_faltas_seq', 1, false);
          public          postgres    false    374            ?           0    0 ,   num_puntaje_juegos_num_puntj_jgs_ganados_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.num_puntaje_juegos_num_puntj_jgs_ganados_seq', 1, false);
          public          postgres    false    370            ?           0    0 *   num_puntaje_juegos_num_puntj_jgs_goles_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.num_puntaje_juegos_num_puntj_jgs_goles_seq', 1, false);
          public          postgres    false    373            ?           0    0 -   num_puntaje_juegos_num_puntj_jgs_perdidos_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.num_puntaje_juegos_num_puntj_jgs_perdidos_seq', 1, false);
          public          postgres    false    371            ?           0    0 -   num_puntaje_juegos_num_registro_puntj_jgs_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.num_puntaje_juegos_num_registro_puntj_jgs_seq', 1, false);
          public          postgres    false    375            ?           0    0 0   seleccion_calend_ctg_id_seleccion_calend_ctg_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.seleccion_calend_ctg_id_seleccion_calend_ctg_seq', 1, false);
          public          postgres    false    395            ?           0    0 *   seleccion_calend_ctg_num_id_ctg_cadete_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.seleccion_calend_ctg_num_id_ctg_cadete_seq', 1, false);
          public          postgres    false    396            ?           0    0 ,   seleccion_calend_ctg_num_id_ctg_infantil_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.seleccion_calend_ctg_num_id_ctg_infantil_seq', 1, false);
          public          postgres    false    398            ?           0    0 +   seleccion_calend_ctg_num_id_ctg_juvenil_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.seleccion_calend_ctg_num_id_ctg_juvenil_seq', 1, false);
          public          postgres    false    397            ?           0    0 (   selecion_equipos_id_selecion_equipos_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.selecion_equipos_id_selecion_equipos_seq', 1, false);
          public          postgres    false    353            ?           0    0 (   selecion_equipos_num_equipos_cadetes_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.selecion_equipos_num_equipos_cadetes_seq', 1, false);
          public          postgres    false    354            ?           0    0 )   selecion_equipos_num_equipos_infantil_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.selecion_equipos_num_equipos_infantil_seq', 1, false);
          public          postgres    false    355            ?           0    0 (   selecion_equipos_num_equipos_juvenil_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.selecion_equipos_num_equipos_juvenil_seq', 1, false);
          public          postgres    false    356            ?           0    0 4   tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.tipos_entrenm_clinicas_id_tipos_entrenm_clinicas_seq', 1, false);
          public          postgres    false    343            ?           0    0 5   tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_acond_seq', 1, false);
          public          postgres    false    346            ?           0    0 7   tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_estratg_seq', 1, false);
          public          postgres    false    347            ?           0    0 7   tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_fisicas_seq', 1, false);
          public          postgres    false    348            ?           0    0 8   tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_practica_seq', 1, false);
          public          postgres    false    344            ?           0    0 8   tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.tipos_entrenm_clinicas_num_entrenm_clinicas_tacticas_seq', 1, false);
          public          postgres    false    345            ?           2606    33184 &   categoria_equipo categoria_equipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.categoria_equipo
    ADD CONSTRAINT categoria_equipo_pkey PRIMARY KEY (id_categoria_equipo);
 P   ALTER TABLE ONLY public.categoria_equipo DROP CONSTRAINT categoria_equipo_pkey;
       public            postgres    false    410            ?           2606    25510 1   calendario_ctg_equipo id_calendario_ctg_equipo_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.calendario_ctg_equipo
    ADD CONSTRAINT id_calendario_ctg_equipo_pk PRIMARY KEY (id_calendario_ctg_equipo);
 [   ALTER TABLE ONLY public.calendario_ctg_equipo DROP CONSTRAINT id_calendario_ctg_equipo_pk;
       public            postgres    false    394                        2606    33191 )   categ_inscripcion id_categ_inscripcion_pk 
   CONSTRAINT     y   ALTER TABLE ONLY public.categ_inscripcion
    ADD CONSTRAINT id_categ_inscripcion_pk PRIMARY KEY (id_categ_inscripcion);
 S   ALTER TABLE ONLY public.categ_inscripcion DROP CONSTRAINT id_categ_inscripcion_pk;
       public            postgres    false    412            ?           2606    25298    crear_atleta id_crear_atleta_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.crear_atleta
    ADD CONSTRAINT id_crear_atleta_pk PRIMARY KEY (id_crear_atleta);
 I   ALTER TABLE ONLY public.crear_atleta DROP CONSTRAINT id_crear_atleta_pk;
       public            postgres    false    320            ?           2606    25364 '   crear_instructor id_crear_instructor_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.crear_instructor
    ADD CONSTRAINT id_crear_instructor_pk PRIMARY KEY (id_crear_instructor);
 Q   ALTER TABLE ONLY public.crear_instructor DROP CONSTRAINT id_crear_instructor_pk;
       public            postgres    false    342            ?           2606    25480 )   crear_regis_repre id_crear_regis_repre_pk 
   CONSTRAINT     y   ALTER TABLE ONLY public.crear_regis_repre
    ADD CONSTRAINT id_crear_regis_repre_pk PRIMARY KEY (id_crear_regis_repre);
 S   ALTER TABLE ONLY public.crear_regis_repre DROP CONSTRAINT id_crear_regis_repre_pk;
       public            postgres    false    382            ?           2606    25536 #   dias_jg_equipo id_dias_jg_equipo_pk 
   CONSTRAINT     p   ALTER TABLE ONLY public.dias_jg_equipo
    ADD CONSTRAINT id_dias_jg_equipo_pk PRIMARY KEY (id_dias_jg_equipo);
 M   ALTER TABLE ONLY public.dias_jg_equipo DROP CONSTRAINT id_dias_jg_equipo_pk;
       public            postgres    false    404            ?           2606    25390 &   equipo_asignado id_equipo_asignado__pk 
   CONSTRAINT     t   ALTER TABLE ONLY public.equipo_asignado
    ADD CONSTRAINT id_equipo_asignado__pk PRIMARY KEY (id_equipo_asignado);
 P   ALTER TABLE ONLY public.equipo_asignado DROP CONSTRAINT id_equipo_asignado__pk;
       public            postgres    false    352            ?           2606    25427 1   equipos_por_tipo_catg id_equipos_por_tipo_catg_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.equipos_por_tipo_catg
    ADD CONSTRAINT id_equipos_por_tipo_catg_pk PRIMARY KEY (id_equipos_por_tipo_catg);
 [   ALTER TABLE ONLY public.equipos_por_tipo_catg DROP CONSTRAINT id_equipos_por_tipo_catg_pk;
       public            postgres    false    360            ?           2606    25499 #   exp_instructor id_exp_instructor_pk 
   CONSTRAINT     p   ALTER TABLE ONLY public.exp_instructor
    ADD CONSTRAINT id_exp_instructor_pk PRIMARY KEY (id_exp_instructor);
 M   ALTER TABLE ONLY public.exp_instructor DROP CONSTRAINT id_exp_instructor_pk;
       public            postgres    false    390            ?           2606    25349 /   historial_de_ascenso id_historial_de_ascenso_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.historial_de_ascenso
    ADD CONSTRAINT id_historial_de_ascenso_pk PRIMARY KEY (id_historial_de_ascenso);
 Y   ALTER TABLE ONLY public.historial_de_ascenso DROP CONSTRAINT id_historial_de_ascenso_pk;
       public            postgres    false    336            ?           2606    25317 '   historial_ingres id_historial_ingres_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.historial_ingres
    ADD CONSTRAINT id_historial_ingres_pk PRIMARY KEY (id_historial_ingres);
 Q   ALTER TABLE ONLY public.historial_ingres DROP CONSTRAINT id_historial_ingres_pk;
       public            postgres    false    328            ?           2606    25446 +   num_juegos_jugados id_num_juegos_jugados_pk 
   CONSTRAINT     |   ALTER TABLE ONLY public.num_juegos_jugados
    ADD CONSTRAINT id_num_juegos_jugados_pk PRIMARY KEY (id_num_juegos_jugados);
 U   ALTER TABLE ONLY public.num_juegos_jugados DROP CONSTRAINT id_num_juegos_jugados_pk;
       public            postgres    false    368            ?           2606    25465 +   num_puntaje_juegos id_num_puntaje_juegos_pk 
   CONSTRAINT     |   ALTER TABLE ONLY public.num_puntaje_juegos
    ADD CONSTRAINT id_num_puntaje_juegos_pk PRIMARY KEY (id_num_puntaje_juegos);
 U   ALTER TABLE ONLY public.num_puntaje_juegos DROP CONSTRAINT id_num_puntaje_juegos_pk;
       public            postgres    false    376            ?           2606    25523 /   seleccion_calend_ctg id_seleccion_calend_ctg_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.seleccion_calend_ctg
    ADD CONSTRAINT id_seleccion_calend_ctg_pk PRIMARY KEY (id_seleccion_calend_ctg);
 Y   ALTER TABLE ONLY public.seleccion_calend_ctg DROP CONSTRAINT id_seleccion_calend_ctg_pk;
       public            postgres    false    399            ?           2606    25403 '   selecion_equipos id_selecion_equipos_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.selecion_equipos
    ADD CONSTRAINT id_selecion_equipos_pk PRIMARY KEY (id_selecion_equipos);
 Q   ALTER TABLE ONLY public.selecion_equipos DROP CONSTRAINT id_selecion_equipos_pk;
       public            postgres    false    357            ?           2606    25381 3   tipos_entrenm_clinicas id_tipos_entrenm_clinicas_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.tipos_entrenm_clinicas
    ADD CONSTRAINT id_tipos_entrenm_clinicas_pk PRIMARY KEY (id_tipos_entrenm_clinicas);
 ]   ALTER TABLE ONLY public.tipos_entrenm_clinicas DROP CONSTRAINT id_tipos_entrenm_clinicas_pk;
       public            postgres    false    349            
           2606    25607 B   seleccion_calend_ctg calendario_ctg_equipo_seleccion_calend_ctg_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.seleccion_calend_ctg
    ADD CONSTRAINT calendario_ctg_equipo_seleccion_calend_ctg_fk FOREIGN KEY (id_calendario_ctg_equipo) REFERENCES public.calendario_ctg_equipo(id_calendario_ctg_equipo);
 l   ALTER TABLE ONLY public.seleccion_calend_ctg DROP CONSTRAINT calendario_ctg_equipo_seleccion_calend_ctg_fk;
       public          postgres    false    399    3576    394                       2606    25557 A   tipos_entrenm_clinicas crear_instructor_tipos_entrenm_clinicas_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tipos_entrenm_clinicas
    ADD CONSTRAINT crear_instructor_tipos_entrenm_clinicas_fk FOREIGN KEY (id_crear_instructor) REFERENCES public.crear_instructor(id_crear_instructor);
 k   ALTER TABLE ONLY public.tipos_entrenm_clinicas DROP CONSTRAINT crear_instructor_tipos_entrenm_clinicas_fk;
       public          postgres    false    342    3558    349                       2606    25597 2   exp_instructor crear_regis_repre_exp_instructor_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.exp_instructor
    ADD CONSTRAINT crear_regis_repre_exp_instructor_fk FOREIGN KEY (id_crear_regis_repre) REFERENCES public.crear_regis_repre(id_crear_regis_repre);
 \   ALTER TABLE ONLY public.exp_instructor DROP CONSTRAINT crear_regis_repre_exp_instructor_fk;
       public          postgres    false    390    3572    382                       2606    25567 4   selecion_equipos equipo_asignado_selecion_equipos_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.selecion_equipos
    ADD CONSTRAINT equipo_asignado_selecion_equipos_fk FOREIGN KEY (id_equipo_asignado) REFERENCES public.equipo_asignado(id_equipo_asignado);
 ^   ALTER TABLE ONLY public.selecion_equipos DROP CONSTRAINT equipo_asignado_selecion_equipos_fk;
       public          postgres    false    357    3562    352                       2606    25582 >   num_juegos_jugados equipos_por_tipo_catg_num_juegos_jugados_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.num_juegos_jugados
    ADD CONSTRAINT equipos_por_tipo_catg_num_juegos_jugados_fk FOREIGN KEY (id_equipos_por_tipo_catg) REFERENCES public.equipos_por_tipo_catg(id_equipos_por_tipo_catg);
 h   ALTER TABLE ONLY public.num_juegos_jugados DROP CONSTRAINT equipos_por_tipo_catg_num_juegos_jugados_fk;
       public          postgres    false    360    368    3566            	           2606    25602 =   calendario_ctg_equipo exp_instructor_calendario_ctg_equipo_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.calendario_ctg_equipo
    ADD CONSTRAINT exp_instructor_calendario_ctg_equipo_fk FOREIGN KEY (id_exp_instructor) REFERENCES public.exp_instructor(id_exp_instructor);
 g   ALTER TABLE ONLY public.calendario_ctg_equipo DROP CONSTRAINT exp_instructor_calendario_ctg_equipo_fk;
       public          postgres    false    3574    394    390                       2606    25552 9   crear_instructor historial_de_ascenso_crear_instructor_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.crear_instructor
    ADD CONSTRAINT historial_de_ascenso_crear_instructor_fk FOREIGN KEY (id_historial_de_ascenso) REFERENCES public.historial_de_ascenso(id_historial_de_ascenso);
 c   ALTER TABLE ONLY public.crear_instructor DROP CONSTRAINT historial_de_ascenso_crear_instructor_fk;
       public          postgres    false    342    3556    336                       2606    25587 ;   num_puntaje_juegos num_juegos_jugados_num_puntaje_juegos_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.num_puntaje_juegos
    ADD CONSTRAINT num_juegos_jugados_num_puntaje_juegos_fk FOREIGN KEY (id_num_juegos_jugados) REFERENCES public.num_juegos_jugados(id_num_juegos_jugados);
 e   ALTER TABLE ONLY public.num_puntaje_juegos DROP CONSTRAINT num_juegos_jugados_num_puntaje_juegos_fk;
       public          postgres    false    368    3568    376                       2606    25592 9   crear_regis_repre num_puntaje_juegos_crear_regis_repre_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.crear_regis_repre
    ADD CONSTRAINT num_puntaje_juegos_crear_regis_repre_fk FOREIGN KEY (id_num_puntaje_juegos) REFERENCES public.num_puntaje_juegos(id_num_puntaje_juegos);
 c   ALTER TABLE ONLY public.crear_regis_repre DROP CONSTRAINT num_puntaje_juegos_crear_regis_repre_fk;
       public          postgres    false    382    376    3570                       2606    25612 5   dias_jg_equipo seleccion_calend_ctg_dias_jg_equipo_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dias_jg_equipo
    ADD CONSTRAINT seleccion_calend_ctg_dias_jg_equipo_fk FOREIGN KEY (id_seleccion_calend_ctg) REFERENCES public.seleccion_calend_ctg(id_seleccion_calend_ctg);
 _   ALTER TABLE ONLY public.dias_jg_equipo DROP CONSTRAINT seleccion_calend_ctg_dias_jg_equipo_fk;
       public          postgres    false    399    3578    404                       2606    25562 9   equipo_asignado tipos_entrenm_clinicas_equipo_asignado_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.equipo_asignado
    ADD CONSTRAINT tipos_entrenm_clinicas_equipo_asignado_fk FOREIGN KEY (id_tipos_entrenm_clinicas) REFERENCES public.tipos_entrenm_clinicas(id_tipos_entrenm_clinicas);
 c   ALTER TABLE ONLY public.equipo_asignado DROP CONSTRAINT tipos_entrenm_clinicas_equipo_asignado_fk;
       public          postgres    false    349    3560    352            ?      x?????? ? ?      ?   ?  x???;jA????*?qߏ?81	???U???>??ܠ???~???????㇗ϟ??????o/??????=????9?zR ?'%?zR??'5?z?`?'-?z?
??r?*?Xu5(???Pb?5???kB??ׂ??%t???.?P0?
?0???/??`#,`??%?P??
?0B?F(??8??
'???7?|?8??	'????7?P??
?pB!A(?"?0??`???
?B!
A(D#??? R??B*?PHC
?HB!???gS&???B6?P?A
?HB?E(???2?P?"*P?B%?9???P?"jP?B-?PhA
?hB?M(??	?4?Љ&????R	?4?Ћ&F0??(?P?
?BaC(Lb?)?0?aZ???0?!V???*?PX?
?XBaK(lb	?-,???%v?L??h???O?1?&'܄)79?&L?ɉ7a?MN?	?orN????p?4??????d?0''䄐??|?ݾ Fp?.      ?   ?  x?u?;nAD?xj\?????(l?a0??~5??0i 氧?????????v?]z??v?|?u?ߞ??y(??????????????	$?$?E
?"?a????B???*??B??ԠNS?
h?TB??
?4?С??.M-L?#????gl,es?rX?T???V4U????Mlij?BU
\Y?Ny??́;???S??p??N?{?)u8??CT{(?jCP?q??T{?j?DP?Q?=A?? ??X$՞???S?T{?jOGR?y?5?=I?g!??l$՞???sQT{	?j/EQ?e(??E?W???:w:??E?W????^???[?T{+?joCS??h??M?w???>?3??M?????^?>???G1T??j?P??}C?Oa??9?r?}C??b??,վ???װT?:?j??R??X?}K?oc??=;?????fʜ-#|??Y3?猜=#|??Y4?'??M#|??Y5?g??]#|??Y6§??m#|???????.`      ?     x????n?6???W??"?d??!??g??????P????-???ƔU???M????Ǐ???????o????ӷ???׌wX-a?????????|??v??????__?????9/?????v???̯P???̂??Ϗ/??ﱝ޷???????UT??d??X?)?>$?Q?wt??0A??e???'&˾
?O$˾	??=??7?1?C!????]?+V?B?5?;~-`L?T??-3<?m????Pl?O?cK?<?W?I?
?np&yJ???&?$O?d?p&y*${?3?S!??$?B??֙?TH?g?S!?'?IN?dO8??
?+??$?Br5T&9???2?)y?^?Lr*$׆?$?BrT"9?Br??Dr??:P??(
?u??Q?k??Q??>?E!??E!?9?E!?U4"9???x??Q?[?1ɦ???z?'?Br?E?U????z?a($?\?eV?B??L?)$???
??L?)$GE0ɦ??$??s?@0ɮ??$?Br??
?1L?+$G"?dWH^?:??
??ЙdWH???$?Br??L?+$???$?Brt&?J>???LrUH??I?
?}?3?U!?':?\?ש>?䪐<?I?
??1?䪐<*?\?G?`??B?&?)$???$7??O?In
?cb0?M!y$???י8?䦐<?In
??1?䦐<+&???g?d??B?L&9?g?d?C!yL&9$?%OL&9?gb2ɡ??rH&9?ӐLr($?#??PHΊd?C!9?I??$????&?$w??H&?+$?D2?]?.$?Lr׬ٳ)k?????U????kꪈ}?A)?????????*???????z?
q??9uU?b??????t:_?p??a{=???3??SWe?K?yC?8کq	?7TѰ????_!??P?~??p?.????*?|??F?K??????p???X?U???<?(??b???p????W~?q?Q??n?????wj???e???̏_?? ?}	??{U??W??q?WGp??f??qI?AǾl?ý?x????8ܫq??Rn?x??8~?vww?7h??      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     