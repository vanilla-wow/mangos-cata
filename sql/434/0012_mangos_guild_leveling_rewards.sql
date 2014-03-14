-- Guild xp for levels
DROP TABLE IF EXISTS `guild_xp_for_level`;
CREATE TABLE `guild_xp_for_level` (
  `lvl` int(11) unsigned NOT NULL,
  `xp_for_next_level` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lvl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `guild_xp_for_level` VALUES
(1,16580000),
(2,18240000),
(3,19900000),
(4,21550000),
(5,23220000),
(6,24880000),
(7,26530000),
(8,28190000),
(9,29850000),
(10,31510000),
(11,33170000),
(12,34820000),
(13,36490000),
(14,38140000),
(15,39800000),
(16,41450000),
(17,43120000),
(18,44780000),
(19,46430000),
(20,48090000),
(21,49750000),
(22,51410000),
(23,53060000),
(24,54730000),
(25,56390000);

-- Guild Rewards
DROP TABLE IF EXISTS `guild_rewards`;
CREATE TABLE `guild_rewards` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `standing` tinyint(3) unsigned DEFAULT '0',
  `racemask` int(11) DEFAULT '0',
  `price` bigint(20) unsigned DEFAULT '0',
  `achievement` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`entry`)
) engine=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `guild_rewards` VALUES
(69209, 4, -1, 1250000, 0),
(69210, 5, -1, 2500000, 0),
(63353, 5, 946, 1500000, 4989),
(63352, 5, 2098253, 1500000, 4989),
(63207, 5, 946, 3000000, 4945),
(63206, 5, 2098253, 3000000, 4945),
(65274, 6, 946, 5000000, 5035),
(65360, 6, 2098253, 5000000, 5035),
(65362, 5, 946, 3000000, 5179),
(65364, 6, 946, 5000000, 5201),
(65361, 5, 2098253, 3000000, 5031),
(65363, 6, 2098253, 5000000, 5201),
(63138, 7, -1, 3000000, 5812),
(63398, 6, 0, 3000000, 5144),
(63359, 5, 2098253, 1500000, 4860),
(64398, 5, 2098253, 2000000, 5143),
(64399, 5, 2098253, 3000000, 5422),
(64400, 5, 946, 1500000, 4860),
(64401, 5, 946, 2000000, 5143),
(64402, 5, 946, 3000000, 5422),
(62800, 5, 0, 1500000, 5036),
(62799, 5, 0, 1500000, 5467),
(65435, 5, 0, 1500000, 5465),
(65498, 5, 0, 1500000, 5024),
(62286, 4, 0, 100000000, 4943),
(68136, 6, 2098253, 200000000, 5152),
(62287, 6, 946, 200000000, 5158),
(69892, 5, 0, 12000000, 4944),
(62038, 5, 0, 12000000, 4944),
(62039, 5, 0, 12000000, 4944),
(62040, 5, 0, 12000000, 4944),
(69887, 5, 0, 15000000, 4946),
(61958, 5, 0, 15000000, 4946),
(61942, 5, 0, 15000000, 4946),
(61937, 5, 0, 15000000, 4946),
(61936, 5, 0, 15000000, 4946),
(61935, 5, 0, 15000000, 4946),
(61931, 5, 0, 15000000, 4946),
(67107, 7, 946, 15000000, 5492),
(62298, 7, 2098253, 15000000, 4912),
(63125, 7, 0, 30000000, 4988),
(71033, 7, 0, 15000000, 5840);

-- Commands
DELETE FROM command WHERE name IN ('guild level', 'guild modxp', 'saveguilds');
INSERT INTO command VALUES
('guild level', 3, 'Syntax: .guild level [#level]\n\nSet the level of guild by #numberoflevels'),
('guild modxp', 3, 'Syntax: .guild modxp [#xp]\n\nSet the xp of guild by #xp'),
('saveguilds', 3, 'Syntax: .saveguilds\n\nSave current guild status');
