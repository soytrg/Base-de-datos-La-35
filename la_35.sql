-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2025 a las 16:58:57
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
