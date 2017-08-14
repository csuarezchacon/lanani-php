-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-08-2017 a las 21:37:40
-- Versión del servidor: 5.7.15-0ubuntu0.16.04.1
-- Versión de PHP: 5.6.27-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nonodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`) VALUES
(1, 'Amigurumi'),
(2, 'Animales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

CREATE TABLE `image` (
  `imag_id` int(11) NOT NULL,
  `imag_placeholder` varchar(50) DEFAULT NULL,
  `imag_src` varchar(500) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`imag_id`, `imag_placeholder`, `imag_src`, `prod_id`) VALUES
(1, NULL, 'img/teosaurio1_bkg_300x300.png', 1),
(3, NULL, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_description` varchar(3000) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_imag_src` varchar(500) DEFAULT NULL,
  `prod_imag_bkg` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_description`, `prod_price`, `prod_imag_src`, `prod_imag_bkg`) VALUES
(19, 'Jirafa Rafa', 'La jirafa Rafa te encantará con sus colores y estilos infinitos', 14000, NULL, NULL),
(20, 'Jirafa Rachel', 'La jirafa Rachel es coqueta y será tu gran compañera de baile', 14000, NULL, NULL),
(21, 'Dinosaurio Teo', 'Teosaurio, como le dicen sus amigos, te conquistará con su ternura', 14000, 'TEO001/TEO001_1_300X300.PNG', 'TEO001/TEO001_1_BKGND300X300.PNG'),
(22, 'Dinosaurio Terry', 'La dinosaurio Terry es delicada y compartirá contigo sus pasos de ballet', 14000, 'TERRY001/TERRY001_1_300X300.PNG', NULL),
(23, 'Unicornio Lino', 'Lino será un gran compañero lleno de encanto y dulzura', 14000, NULL, NULL),
(24, 'Unicornio Lana', 'Lana te llenará de brillo y colores', 14000, NULL, NULL),
(25, 'Oso Panda Rudy', 'Rudy parece formal y muy ordenado, pero será tu compañero de juegos', 14000, NULL, NULL),
(26, 'Oso Panda Rina', 'Rina es delicada y tierna, te acompañará a donde vayas', 14000, NULL, NULL),
(27, 'Conejo Mateo', 'Mateo es el favorito a la hora de la siesta. Te encantará con su suavidad', 14000, NULL, NULL),
(28, 'Coneja Matilde', 'Matilde será tu compañera a donde quiera que vayas', 14000, NULL, NULL),
(29, 'Mapache Polo', 'Polo te acompañará en todos tus juegos', 14000, NULL, NULL),
(30, 'Zorro Franz Fox', 'Franz Fox promete ser un gran amigo', 14000, NULL, NULL),
(31, 'Lobo Sam Wolf', 'Con Sam Wolf podrás compartir todas tus aventuras', 14000, NULL, NULL),
(32, 'León Leonardo', 'León se cree muy feroz, pero te cautivará con tu ternura', 14000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_prod_cate`
--

CREATE TABLE `rel_prod_cate` (
  `prod_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rel_prod_cate`
--

INSERT INTO `rel_prod_cate` (`prod_id`, `cate_id`) VALUES
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indices de la tabla `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`imag_id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indices de la tabla `rel_prod_cate`
--
ALTER TABLE `rel_prod_cate`
  ADD UNIQUE KEY `id_rel_prod_cate` (`prod_id`,`cate_id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `cate_id` (`cate_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `image`
--
ALTER TABLE `image`
  MODIFY `imag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rel_prod_cate`
--
ALTER TABLE `rel_prod_cate`
  ADD CONSTRAINT `rel_prod_cate_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rel_prod_cate_ibfk_2` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
