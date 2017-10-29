-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2017 a las 20:46:10
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basetarea3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `RUT` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`RUT`, `Nombre`, `apellido`, `telefono`, `direccion`, `edad`, `sexo`, `email`, `username`, `password`) VALUES
(0, 'sdfdsfsdf', 'dsfsdfsdf', 0, 'dfsdsffds', 0, 'Mujer', 'daadsads@gdigda.com', 'Yanirda', 'dfsdfsdfsdf'),
(18283, 'Juanito', 'Perez', 34535553, 'las mojonas', 33, 'M', 'juanitooz@gmail.com', 'AAA', 'fjnfvjfv'),
(12121212, '211221', '12121221', 211212, '212121', 212112, 'Hombre', 'wanana@gmail.com', '2111', '1121212'),
(69226114, 'Benjamin', 'Vicuña', 987723401, 'Alameda 23', 56, 'M', 'b.vicuna@gmail.com', 'juanito', 'sdsddssdf'),
(69792774, 'Ema', 'Moreno', 94736269, 'Carmen Mena 63', 59, 'F', 'emoreno@gmail.com', 'Emitalinda', 'ricardo_arjona'),
(98764562, 'Catalina', 'Aguilera', 987623467, 'Beauchef 850', 45, 'F', 'c.aguilera@gmail.com', 'catita<3', 'chayanne'),
(106778884, 'Pablo', 'Escobar', 967823456, 'Los Olmos 98', 38, 'M', 'pescobar@gmail.com', 'lamarihuanamedejaloojosrojosloreapoloco', 'ricky_martin'),
(123456789, 'Cristian', 'Ramirez', 912387654, 'Francia 34', 34, 'M', 'cramirez@gmail.com', 'mefui', 'soymediofreerider'),
(145679832, 'Gonzalo', 'Reyes', 923456781, 'Beauchef 851', 29, 'M', 'greyes@gmail.com', 'gonza8', 'abadacadabra'),
(156675342, 'Alexis', 'Sanchez', 92345678, 'Los Pinos 234', 27, 'M', 'a.sanchez@gmail.com', 'ninomaravilla', 'renedelavega'),
(167893457, 'Braulio', 'Molina', 988877723, 'Colombia 47', 25, 'M', 'b.molina@hotmail.com', 'cubano', 'juanantoniolabra'),
(184562836, 'Camilo', 'Briones', 976543218, 'Grecia 87', 24, 'M', 'c.briones@gmail.com', 'milo', 'augusto_pinochet'),
(194085877, 'Mabel', 'Maidana', 984294278, 'Varas Mena 45', 21, 'F', 'm.maidana@gmail.com', 'TiaMabel', 'holii');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `idingredientes` int(11) NOT NULL,
  `Nombre_ingrediente` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`idingredientes`, `Nombre_ingrediente`) VALUES
(11, 'tutos pollo'),
(21, 'matequilla'),
(22, 'mostaza'),
(23, 'papa'),
(24, 'cebolla'),
(25, 'perejil'),
(26, 'tomillo'),
(27, 'oregano'),
(28, 'romero'),
(29, 'aceite'),
(30, 'vino'),
(31, 'caldo verdura'),
(32, 'lomo de ciervo'),
(33, 'queso manchego semicurado rallado'),
(34, 'champiñones laminados'),
(35, 'nata'),
(36, 'chorretón de vino blanco afrutado'),
(38, 'pimienta, tomillo'),
(41, ' Masa de hojaldre '),
(42, 'Carne guisada, en esta ocasión de jabalí'),
(43, 'huevo para pintar'),
(51, 'lomo fresco de cerdo'),
(52, 'bote de cerveza'),
(53, 'Pasas'),
(61, 'Pollo Entero'),
(62, 'Mostaza de Dijon'),
(63, 'Hierbas de Provenza'),
(71, 'Carne de Avestruz'),
(72, 'Miel'),
(73, 'Salsa de Soja'),
(74, 'Cardamomo'),
(75, 'Aceite de Oliva'),
(81, 'Bistec'),
(82, 'Dientes de Ajo'),
(83, 'Chiles'),
(84, 'Tomates'),
(91, 'Filetes de Pavo'),
(92, 'Rebanadas de Pan'),
(93, 'Lonchas de Queso'),
(101, 'carne mechada en su salsa'),
(102, 'Lechuga'),
(103, 'Tortillas'),
(104, 'Mayonesa'),
(110, 'Lomo de Cerdo Adobado'),
(111, 'Naranjas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `tipos` varchar(45) DEFAULT NULL,
  `fechaPedido` datetime DEFAULT NULL,
  `tipoEntrega` varchar(45) DEFAULT NULL,
  `cliente_RUT` int(11) NOT NULL,
  `precioTotal` int(11) NOT NULL,
  `pagado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `tipos`, `fechaPedido`, `tipoEntrega`, `cliente_RUT`, `precioTotal`, `pagado`) VALUES
(1, 'normal', '2017-10-07 12:30:30', 'domicilio', 156675342, 6000, 0),
(2, 'Especial', '2017-10-07 16:43:00', 'domicilio', 69226114, 21500, 1),
(3, 'normal', '2017-10-07 18:00:10', 'retiro', 69792774, 6400, 1),
(4, 'normal', '2017-10-07 14:30:00', 'domicilio', 145679832, 6680, 0),
(5, 'normal', '2017-10-08 09:15:00', 'retiro', 194085877, 3740, 1),
(6, 'normal', '2017-10-08 12:45:01', 'domicilio', 106778884, 9600, 0),
(7, 'especial', '2017-10-09 20:00:07', 'domicilio', 98764562, 17240, 1),
(8, 'normal', '2017-10-07 00:00:00', 'domicilio', 184562836, 0, 1),
(9, 'especial', '2017-10-10 21:45:00', 'domicilio', 194085877, 47578, 0),
(10, 'normal', '2017-10-10 23:45:00', 'domicilio', 123456789, 16700, 0),
(11, 'normal', '2017-10-10 00:00:00', 'domicilio', 69792774, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_has_producto`
--

CREATE TABLE `pedido_has_producto` (
  `pedido_idPedido` int(11) NOT NULL,
  `producto_idproducto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido_has_producto`
--

INSERT INTO `pedido_has_producto` (`pedido_idPedido`, `producto_idproducto`, `Cantidad`) VALUES
(1, 12352, 3),
(1, 12354, 2),
(2, 12351, 1),
(2, 12353, 1),
(3, 12346, 4),
(3, 12352, 5),
(3, 12354, 1),
(4, 12347, 2),
(4, 12348, 4),
(4, 12357, 3),
(5, 12345, 1),
(5, 12347, 2),
(6, 12346, 6),
(6, 12352, 2),
(7, 12349, 1),
(8, 12348, 5),
(9, 12353, 2),
(10, 12347, 5),
(10, 12348, 3),
(11, 12346, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tipoProducto` varchar(45) DEFAULT NULL,
  `Procedencia` varchar(45) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `disponibilidad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `nombre`, `tipoProducto`, `Procedencia`, `precio`, `disponibilidad`) VALUES
(12345, 'lomo liso', 'normal', 'vacuno', 3740, '24'),
(12346, 'carne molida', 'normal', 'vacuno', 1600, '26'),
(12347, 'lomo vetado', 'normal', 'vacuno', 3340, '15'),
(12348, 'pechuga de pollo', 'normal', 'pollo', 2399, '44'),
(12349, 'avestruz premiun', 'especial', 'ave', 17240, '0'),
(12351, 'jabali', 'especial', 'jabali', 21500, '16'),
(12352, 'posta paleta', 'normal', 'cerdo', 2000, '13'),
(12353, 'ciervo', 'especial', 'ciervo', 23789, '0'),
(12354, 'filete', 'normal', 'vacuno', 3000, '7'),
(12357, 'tuto pollo', 'normal', 'pollo', 2725, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_has_recetas`
--

CREATE TABLE `producto_has_recetas` (
  `idproducto` int(11) NOT NULL,
  `recetas_idrecetas` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto_has_recetas`
--

INSERT INTO `producto_has_recetas` (`idproducto`, `recetas_idrecetas`, `Cantidad`) VALUES
(12345, 7, 5),
(12346, 9, 5),
(12347, 7, 4),
(12348, 5, 500),
(12349, 6, 300),
(12351, 3, 4),
(12352, 7, 2),
(12353, 2, 350),
(12354, 7, 3),
(12357, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `idrecetas` int(11) NOT NULL,
  `Nombre_receta` varchar(45) DEFAULT NULL,
  `descripcion` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`idrecetas`, `Nombre_receta`, `descripcion`) VALUES
(1, 'Trutros de Pollo Asado con Papas a la Hierbas', 'PASO 1.En un recipiente, poner el pollo y untar con 1 cucharada de mantequilla, mostaza, sal y pimienta. \r\n\r\nPASO 2. En una fuente de horno, poner las papas y la cebolla.\r\n\r\nPASO 3. Sazonar con el perejil, tomillo, orégano, romero, sal y pimienta.\r\n\r\nPASO 4. Distribuir la mantequilla restante y el aceite.\r\n\r\nPASO 5. Poner, sobre la mezcla de papas, el pollo reservado. Bañar con el vino y caldo.\r\n\r\nPASO 6. Cocinar en el horno 30-40 minutos o hasta que el pollo y las papas estén blandas y doradas.\r\n\r\nPASO 7. Si el pollo se dora mucho y las papas no están cocidas, tapar la fuente con papel aluminio y cocinar 10-12 minutos más.'),
(2, 'Lomo de ciervo con champiñones y queso m', 'PASO 1\r\nSe pone a calentar aceite y se echan los champiñones se echa el vino blanco, se da un hervor y se añade el queso.\r\nPASO 2\r\nSe sazona con pimienta y tomillo y se baja el fuego y se añade la nata mezclando todo bien\r\nPASO 3\r\nSe salpimenta el ciervo y se fríe en aceite caliente para sellarlo. Una vez frito, se hornea a 200º 3 ó 4 minutos y se salsea.'),
(3, 'Empanada de jabalí', 'PASO 1\r\nEstiramos la mitad de la masa, forramos un molde con ella y colocamos la carne de jabalí.\r\nPASO 2\r\nEstiramos la otra mitad de la masa y tapamos la carne, recortamos los bordes y sellamos. Adornamos y pintamos con huevo la superficie antes de hornear.\r\nPASO 3\r\nIntroducimos en horno precalentado a 180º y dejamos hornear hasta que este hecha la masa y tenga un color dorado. Yo la suelo sacar cuando al mover el molde, la empanada, se despega del mismo. Se saca del horno y se deja enfriar en el molde.'),
(4, 'Lomo a la cerveza con pasas', 'PASO 1\r\nSalpimentamos la carne y la sellamos en la cubeta con un chorro de aceite, modo cocina rápida. Una vez dorada, la sacamos y la reservamos.\r\nPASO 2\r\nEn el mismo aceite se dora la cebolla también en el programa cocina rápida, después se añade las pasas, la carne y la cerveza. Programamos modo horno, hasta que se haya reducido la cerveza (unos 30 minutos) y movemos de vez en cuando para que no se pegue la cebolla. Para mi gusto la salsa sale un poco concentrada, así que le agrego un poco de agua (eso ya va en gustos) en los últimos minutos del programa.\r\nPASO 3\r\nCortamos en lonchas cuando se haya enfriado y lo servimos junto con la cebolla y las pasas. Espero que os guste.'),
(5, 'Pollo a la Mostaza', 'PASO 1\r\nLavar el pollo. Colocarlo en una fuente de horno y embadurnarlo de mostaza por todos lados.\r\nPaso 2 - Pollo asado a la mostaza con hierbas\r\nEspolvorear hierbas de provenza por encima.\r\nPaso 3 - Pollo asado a la mostaza con hierba\r\nHornear 80 minutos a 180°C.\r\nPaso 4 - Pollo asado a la mostaza con hierbas\r\nY listo!'),
(6, 'Avestruz con miel y cardamomo', 'PASO 1\r\nEn una fuente batimos el zumo de la lima con la miel y añadimos la salsa de soja, las semillas de cardamomo y la pimienta.\r\nPASO 2\r\nPonemos la carne cortada en dados en esta mezcla y marinamos desde 1 hora a toda la noche, dependiendo del tiempo del que dispongamos.\r\nPASO 3\r\nEn la cubeta de nuestra FussionCook ponemos la cucharada de aceite; seleccionamos menú arroz/patatas y esperamos a que el aceite se caliente.\r\nPASO 4\r\nEscurrimos la carne y la sellamos ligeramente. \r\n\r\nCancelamos el programa actual, añadimos la mitad de la marinada, cerramos nuestra FussionCook y seleccionamos menú manual, 180º, 4 minutos.\r\nPASO 5\r\nDejamos despresurizar sola.\r\nPASO 6\r\nEmplatamos la carne regándola levemente con la salsa y la acompañamos de nuestra guranición favorita. En este caso, patatas con tomillo y romero.'),
(7, 'bistec ranchero cortadillo', 'PASO 1\r\nCorta la carne en cuadritos y adóbala con una mezcla de ajo, pimienta, sal y aceite.\r\n\r\nPrimero pico el ajo, añado la pimienta molida, un poco de sal y aceite y lo machaco muy bien\r\nPASO 2\r\nCorta la cebolla en cubos, a mi me gustan no muy picada, y muele el tomate cortado con los chiles en la licuadora con un poquito de agua, no le pongas mucha.\r\nPASO 3\r\nCalienta el aceite y fríe la carne, cuando esté casi dorada agrega la cebolla y sofríela brevemente, y añade la salsa de tomate con chile\r\nPASO 4\r\nDeja que se cocine, agrégale la sal al gusto y apaga el fuego'),
(8, 'Filetes de Pavo Rellenos', 'PASO 1\r\nEn una sartén con un poco de aceite tostamos el pan troceado, echamos orégano y sal. Una vez el pan esté dorado lo retiramos y en el mortero lo picamos. Con la ayuda del rodillo de cocina aplastamos los filetes de pavo y echamos por encima la mezcla de pan y una loncha de queso.\r\nPASO 2\r\nEnrollamos la carne y la sujetamos con la ayuda de un palillo. Marcamos en la sartén con un poco de aceite y los acabamos de hacer en el horno a 200º durante 20 minutos o hasta que estén dorados.'),
(9, 'Burritos de Carne Mechada', 'PASO 1\r\nDesmenuza la carne mechada y mézclala bien con su salsa. Limpia la lechuga y separa sólo las hojas más tiernas. Corta el tomate en finas lonchas. Muele el aguacate y alíñalo sólo con sal.\r\nPASO 2\r\nPara los burritos, coloca dentro de la tortilla una porción de carne y una de queso, mételo al horno por 30 segundos para que el queso se funda, retíralo y agrega el aguacate, enróllalo prensándolo muy bien, corta en forma diagonal y sirve inmediatamente.'),
(10, 'Lomo de cerdo a la naranja', 'PASO 1\r\nExprime el zumo de las 4 naranjas y pásalo por el colador para quitar las semillas y los restos de pulpa, mezcla con la salsa de soja y la miel.\r\nPASO 2\r\nPrecalienta el horno a 180º y en un molde refractario pones el lomo junto con la prearación que has hecho con la naranja, soja y miel, déjalo cocinar por una hora (le das vuelta al lomo cada 20 minutos), una vez asado, pones la salsa que ha quedado en una olla pequeña y la pones a reducir a fuego medio por unos 10 o 12 minutos, hasta que espese un poco y cambie a color caramelo.\r\nPASO 3\r\nCorta el lomo en lonchas finas de unos 4 milímetros de grosor y báñalas con la salsa ya reducida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas_has_ingredientes`
--

CREATE TABLE `recetas_has_ingredientes` (
  `recetas_idrecetas` int(11) NOT NULL,
  `ingredientes_idingredientes` int(11) NOT NULL,
  `Cantidad` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recetas_has_ingredientes`
--

INSERT INTO `recetas_has_ingredientes` (`recetas_idrecetas`, `ingredientes_idingredientes`, `Cantidad`) VALUES
(1, 11, '4'),
(1, 21, '3'),
(1, 22, '1'),
(1, 23, '8'),
(1, 24, '1'),
(1, 25, '1'),
(1, 26, '1'),
(1, 27, '1'),
(1, 28, '1'),
(1, 29, '1'),
(1, 30, '1'),
(1, 31, '0'),
(2, 32, '900'),
(2, 33, '300'),
(2, 34, '200'),
(2, 35, '200'),
(2, 36, '1'),
(2, 38, '1'),
(3, 41, '1'),
(3, 42, '1'),
(3, 43, '1'),
(4, 24, '1'),
(4, 51, '500'),
(4, 52, '1'),
(4, 53, '20'),
(5, 61, '1'),
(5, 62, '5'),
(5, 63, '0'),
(6, 71, '350'),
(6, 72, '2'),
(6, 73, '40'),
(6, 74, '0'),
(6, 75, '2'),
(7, 81, '4'),
(7, 82, '2'),
(7, 83, '4'),
(7, 84, '3'),
(8, 27, '2'),
(8, 29, '2'),
(8, 91, '4'),
(8, 92, '3'),
(8, 93, '2'),
(9, 101, '200'),
(9, 102, '1'),
(9, 103, '8'),
(9, 104, '2'),
(10, 72, '4'),
(10, 73, '4'),
(10, 110, '1200'),
(10, 111, '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventas` int(11) NOT NULL,
  `pedido_idPedido` int(11) NOT NULL,
  `fechaRetiro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventas`, `pedido_idPedido`, `fechaRetiro`) VALUES
(145645, 7, 61017),
(223321, 11, 220917),
(243212, 1, 31017),
(272122, 6, 120917),
(311254, 2, 270917),
(444522, 4, 220917),
(637821, 8, 210917),
(655544, 2, 190917),
(765922, 3, 270917),
(767902, 5, 120917);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`RUT`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`idingredientes`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `fk_pedido_cliente_idx` (`cliente_RUT`);

--
-- Indices de la tabla `pedido_has_producto`
--
ALTER TABLE `pedido_has_producto`
  ADD PRIMARY KEY (`pedido_idPedido`,`producto_idproducto`),
  ADD KEY `fk_pedido_has_producto_producto1_idx` (`producto_idproducto`),
  ADD KEY `fk_pedido_has_producto_pedido1_idx` (`pedido_idPedido`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `producto_has_recetas`
--
ALTER TABLE `producto_has_recetas`
  ADD PRIMARY KEY (`idproducto`,`recetas_idrecetas`),
  ADD KEY `fk_producto_has_recetas_recetas1_idx` (`recetas_idrecetas`),
  ADD KEY `fk_producto_has_recetas_producto1_idx` (`idproducto`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`idrecetas`);

--
-- Indices de la tabla `recetas_has_ingredientes`
--
ALTER TABLE `recetas_has_ingredientes`
  ADD PRIMARY KEY (`recetas_idrecetas`,`ingredientes_idingredientes`),
  ADD KEY `fk_recetas_has_ingredientes_ingredientes1_idx` (`ingredientes_idingredientes`),
  ADD KEY `fk_recetas_has_ingredientes_recetas1_idx` (`recetas_idrecetas`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventas`),
  ADD KEY `fk_ventas_pedido1_idx` (`pedido_idPedido`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`cliente_RUT`) REFERENCES `cliente` (`RUT`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido_has_producto`
--
ALTER TABLE `pedido_has_producto`
  ADD CONSTRAINT `fk_pedido_has_producto_pedido1` FOREIGN KEY (`pedido_idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_has_producto_producto1` FOREIGN KEY (`producto_idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_has_recetas`
--
ALTER TABLE `producto_has_recetas`
  ADD CONSTRAINT `fk_producto_has_recetas_producto1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_has_recetas_recetas1` FOREIGN KEY (`recetas_idrecetas`) REFERENCES `recetas` (`idrecetas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `recetas_has_ingredientes`
--
ALTER TABLE `recetas_has_ingredientes`
  ADD CONSTRAINT `fk_recetas_has_ingredientes_ingredientes1` FOREIGN KEY (`ingredientes_idingredientes`) REFERENCES `ingredientes` (`idingredientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_recetas_has_ingredientes_recetas1` FOREIGN KEY (`recetas_idrecetas`) REFERENCES `recetas` (`idrecetas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_pedido1` FOREIGN KEY (`pedido_idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
