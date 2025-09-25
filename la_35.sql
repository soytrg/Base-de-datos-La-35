-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2025 a las 17:20:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `la_35`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Legajo` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `DivisionActual` varchar(50) DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `LibroMatriz` varchar(20) DEFAULT NULL,
  `Folio` varchar(20) DEFAULT NULL,
  `DNI` varchar(20) DEFAULT NULL,
  `Nacionalidad` varchar(30) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Observaciones` text DEFAULT NULL,
  `MailAlumno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `division`
--

CREATE TABLE `division` (
  `Anio` int(11) NOT NULL,
  `Division` varchar(10) NOT NULL,
  `Preceptor` varchar(50) DEFAULT NULL,
  `Turno` varchar(20) DEFAULT NULL,
  `Especialidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisiones_anteriores`
--

CREATE TABLE `divisiones_anteriores` (
  `Legajo` int(11) NOT NULL,
  `Division` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `Persona` int(11) NOT NULL,
  `Localidad` varchar(50) DEFAULT NULL,
  `CodigoPostal` varchar(10) DEFAULT NULL,
  `Calle` varchar(50) DEFAULT NULL,
  `Barrio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE `escuela` (
  `Nombre` varchar(50) NOT NULL,
  `Jurisdiccion` varchar(50) DEFAULT NULL,
  `Gestion` varchar(50) DEFAULT NULL,
  `Certificado` varchar(50) DEFAULT NULL,
  `EscuelaN` int(11) DEFAULT NULL,
  `De` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `Nombre` varchar(50) NOT NULL,
  `Anio` int(11) NOT NULL,
  `Docente` varchar(50) DEFAULT NULL,
  `Horario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `previaspendientesacompaniante`
--

CREATE TABLE `previaspendientesacompaniante` (
  `Materia` varchar(50) NOT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Anio_Materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `primeraño`
--

CREATE TABLE `primeraño` (
  `Legajo` int(11) NOT NULL,
  `Escuela` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsablealumno`
--

CREATE TABLE `responsablealumno` (
  `Alumno` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `DNI` varchar(20) NOT NULL,
  `Parentesco` varchar(30) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `TelCel` varchar(30) DEFAULT NULL,
  `Ocupacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segundoaño`
--

CREATE TABLE `segundoaño` (
  `Legajo` int(11) NOT NULL,
  `DivisionAnterior` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terceraño`
--

CREATE TABLE `terceraño` (
  `Legajo` int(11) NOT NULL,
  `EstadoMateria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_alumnos_y_sus_materias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_alumnos_y_sus_materias` (
`Legajo` int(11)
,`Nombre` varchar(50)
,`Apellidos` varchar(50)
,`Materia` varchar(50)
,`AnioMateria` int(11)
,`Estado` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_alumnos_y_su_division`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_alumnos_y_su_division` (
`Legajo` int(11)
,`Nombre` varchar(50)
,`Apellidos` varchar(50)
,`DivisionActual` varchar(50)
,`Anio` int(11)
,`Turno` varchar(20)
,`Especialidad` varchar(50)
,`Preceptor` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_alumnos_y_su_domicilio`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_alumnos_y_su_domicilio` (
`Legajo` int(11)
,`Nombre` varchar(50)
,`Apellidos` varchar(50)
,`Localidad` varchar(50)
,`Calle` varchar(50)
,`Barrio` varchar(50)
,`CodigoPostal` varchar(10)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_alumno_informacion_completa`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_alumno_informacion_completa` (
`Legajo` int(11)
,`Nombre` varchar(50)
,`Apellidos` varchar(50)
,`DNI` varchar(20)
,`Sexo` varchar(10)
,`Nacionalidad` varchar(30)
,`FechaNacimiento` date
,`MailAlumno` varchar(100)
,`Localidad` varchar(50)
,`Calle` varchar(50)
,`Barrio` varchar(50)
,`CodigoPostal` varchar(10)
,`ResponsableNombre` varchar(50)
,`ResponsableApellido` varchar(50)
,`Parentesco` varchar(30)
,`ResponsableTel` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_historial_divisiones_anteriores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_historial_divisiones_anteriores` (
`Legajo` int(11)
,`Nombre` varchar(50)
,`Apellidos` varchar(50)
,`Division` varchar(10)
,`Anio` int(11)
,`Turno` varchar(20)
,`Especialidad` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_responsables_de_alumnos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_responsables_de_alumnos` (
`Legajo` int(11)
,`NombreAlumno` varchar(50)
,`ApellidoAlumno` varchar(50)
,`NombreResponsable` varchar(50)
,`ApellidoResponsable` varchar(50)
,`Parentesco` varchar(30)
,`TelCel` varchar(30)
,`Mail` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_alumnos_y_sus_materias`
--
DROP TABLE IF EXISTS `vista_alumnos_y_sus_materias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_alumnos_y_sus_materias`  AS SELECT `a`.`Legajo` AS `Legajo`, `a`.`Nombre` AS `Nombre`, `a`.`Apellidos` AS `Apellidos`, `m`.`Nombre` AS `Materia`, `m`.`Anio` AS `AnioMateria`, `p`.`Estado` AS `Estado` FROM (((`alumno` `a` join `terceraño` `t` on(`a`.`Legajo` = `t`.`Legajo`)) join `previaspendientesacompaniante` `p` on(`t`.`Legajo` = `p`.`Materia`)) join `materia` `m` on(`p`.`Materia` = `m`.`Nombre`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_alumnos_y_su_division`
--
DROP TABLE IF EXISTS `vista_alumnos_y_su_division`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_alumnos_y_su_division`  AS SELECT `a`.`Legajo` AS `Legajo`, `a`.`Nombre` AS `Nombre`, `a`.`Apellidos` AS `Apellidos`, `a`.`DivisionActual` AS `DivisionActual`, `d`.`Anio` AS `Anio`, `d`.`Turno` AS `Turno`, `d`.`Especialidad` AS `Especialidad`, `d`.`Preceptor` AS `Preceptor` FROM (`alumno` `a` left join `division` `d` on(`a`.`DivisionActual` = `d`.`Division`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_alumnos_y_su_domicilio`
--
DROP TABLE IF EXISTS `vista_alumnos_y_su_domicilio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_alumnos_y_su_domicilio`  AS SELECT `a`.`Legajo` AS `Legajo`, `a`.`Nombre` AS `Nombre`, `a`.`Apellidos` AS `Apellidos`, `d`.`Localidad` AS `Localidad`, `d`.`Calle` AS `Calle`, `d`.`Barrio` AS `Barrio`, `d`.`CodigoPostal` AS `CodigoPostal` FROM (`alumno` `a` join `domicilio` `d` on(`a`.`Legajo` = `d`.`Persona`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_alumno_informacion_completa`
--
DROP TABLE IF EXISTS `vista_alumno_informacion_completa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_alumno_informacion_completa`  AS SELECT `a`.`Legajo` AS `Legajo`, `a`.`Nombre` AS `Nombre`, `a`.`Apellidos` AS `Apellidos`, `a`.`DNI` AS `DNI`, `a`.`Sexo` AS `Sexo`, `a`.`Nacionalidad` AS `Nacionalidad`, `a`.`FechaNacimiento` AS `FechaNacimiento`, `a`.`MailAlumno` AS `MailAlumno`, `d`.`Localidad` AS `Localidad`, `d`.`Calle` AS `Calle`, `d`.`Barrio` AS `Barrio`, `d`.`CodigoPostal` AS `CodigoPostal`, `r`.`Nombre` AS `ResponsableNombre`, `r`.`Apellido` AS `ResponsableApellido`, `r`.`Parentesco` AS `Parentesco`, `r`.`TelCel` AS `ResponsableTel` FROM ((`alumno` `a` left join `domicilio` `d` on(`a`.`Legajo` = `d`.`Persona`)) left join `responsablealumno` `r` on(`a`.`Legajo` = `r`.`Alumno`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_historial_divisiones_anteriores`
--
DROP TABLE IF EXISTS `vista_historial_divisiones_anteriores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historial_divisiones_anteriores`  AS SELECT `a`.`Legajo` AS `Legajo`, `a`.`Nombre` AS `Nombre`, `a`.`Apellidos` AS `Apellidos`, `da`.`Division` AS `Division`, `d`.`Anio` AS `Anio`, `d`.`Turno` AS `Turno`, `d`.`Especialidad` AS `Especialidad` FROM ((`alumno` `a` join `divisiones_anteriores` `da` on(`a`.`Legajo` = `da`.`Legajo`)) join `division` `d` on(`da`.`Division` = `d`.`Division`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_responsables_de_alumnos`
--
DROP TABLE IF EXISTS `vista_responsables_de_alumnos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_responsables_de_alumnos`  AS SELECT `a`.`Legajo` AS `Legajo`, `a`.`Nombre` AS `NombreAlumno`, `a`.`Apellidos` AS `ApellidoAlumno`, `r`.`Nombre` AS `NombreResponsable`, `r`.`Apellido` AS `ApellidoResponsable`, `r`.`Parentesco` AS `Parentesco`, `r`.`TelCel` AS `TelCel`, `r`.`Mail` AS `Mail` FROM (`alumno` `a` join `responsablealumno` `r` on(`a`.`Legajo` = `r`.`Alumno`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Legajo`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- Indices de la tabla `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`Anio`,`Division`);

--
-- Indices de la tabla `divisiones_anteriores`
--
ALTER TABLE `divisiones_anteriores`
  ADD PRIMARY KEY (`Legajo`,`Division`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`Persona`);

--
-- Indices de la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`Nombre`,`Anio`);

--
-- Indices de la tabla `previaspendientesacompaniante`
--
ALTER TABLE `previaspendientesacompaniante`
  ADD PRIMARY KEY (`Materia`,`Anio_Materia`);

--
-- Indices de la tabla `primeraño`
--
ALTER TABLE `primeraño`
  ADD PRIMARY KEY (`Legajo`);

--
-- Indices de la tabla `responsablealumno`
--
ALTER TABLE `responsablealumno`
  ADD PRIMARY KEY (`Alumno`,`DNI`);

--
-- Indices de la tabla `segundoaño`
--
ALTER TABLE `segundoaño`
  ADD PRIMARY KEY (`Legajo`,`DivisionAnterior`);

--
-- Indices de la tabla `terceraño`
--
ALTER TABLE `terceraño`
  ADD PRIMARY KEY (`Legajo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `divisiones_anteriores`
--
ALTER TABLE `divisiones_anteriores`
  ADD CONSTRAINT `divisiones_anteriores_ibfk_1` FOREIGN KEY (`Legajo`) REFERENCES `alumno` (`Legajo`);

--
-- Filtros para la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD CONSTRAINT `domicilio_ibfk_1` FOREIGN KEY (`Persona`) REFERENCES `alumno` (`Legajo`);

--
-- Filtros para la tabla `previaspendientesacompaniante`
--
ALTER TABLE `previaspendientesacompaniante`
  ADD CONSTRAINT `previaspendientesacompaniante_ibfk_1` FOREIGN KEY (`Materia`,`Anio_Materia`) REFERENCES `materia` (`Nombre`, `Anio`);

--
-- Filtros para la tabla `primeraño`
--
ALTER TABLE `primeraño`
  ADD CONSTRAINT `primeraño_ibfk_1` FOREIGN KEY (`Legajo`) REFERENCES `alumno` (`Legajo`);

--
-- Filtros para la tabla `responsablealumno`
--
ALTER TABLE `responsablealumno`
  ADD CONSTRAINT `responsablealumno_ibfk_1` FOREIGN KEY (`Alumno`) REFERENCES `alumno` (`Legajo`);

--
-- Filtros para la tabla `segundoaño`
--
ALTER TABLE `segundoaño`
  ADD CONSTRAINT `segundoaño_ibfk_1` FOREIGN KEY (`Legajo`) REFERENCES `alumno` (`Legajo`);

--
-- Filtros para la tabla `terceraño`
--
ALTER TABLE `terceraño`
  ADD CONSTRAINT `terceraño_ibfk_1` FOREIGN KEY (`Legajo`) REFERENCES `alumno` (`Legajo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
