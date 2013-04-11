DROP TABLE IF EXISTS `dadu_loc`;

CREATE TABLE `dadu_loc` (
`loc_id` int( 10 ) NOT NULL AUTO_INCREMENT ,
`name` varchar( 32 ) CHARACTER SET utf8 NOT NULL ,
`lat` decimal( 10, 6 ) NOT NULL ,
`lng` decimal( 10, 6 ) NOT NULL ,
`alt` decimal( 10, 2 ) NOT NULL ,
`info` varchar( 200 ) CHARACTER SET utf8 NOT NULL ,
`regtime` datetime NOT NULL ,
PRIMARY KEY ( `loc_id` ) ,
UNIQUE KEY `loc_idx` ( `name` )
);

DROP TABLE IF EXISTS `dadu_spot` ;

CREATE TABLE `dadu_spot` (
`spot_id` int( 10 ) NOT NULL AUTO_INCREMENT ,
`mac` varchar( 20 ) CHARACTER SET utf8 NOT NULL ,
`ssid` varchar( 32 ) CHARACTER SET utf8 NOT NULL ,
`lat` decimal( 10, 6 ) NOT NULL ,
`lng` decimal( 10, 6 ) NOT NULL ,
`alt` decimal( 10, 2 ) NOT NULL ,
`info` varchar( 200 ) CHARACTER SET utf8 NOT NULL ,
`regtime` datetime NOT NULL ,
PRIMARY KEY ( `spot_id` ) ,
UNIQUE KEY `spot_idx` ( `mac` , `ssid` )
);

DROP TABLE IF EXISTS `dadu_rssi_ref` ;

CREATE TABLE `dadu_rssi_ref` (
`loc_id` int( 10 ) NOT NULL ,
`spot_id` int( 10 ) NOT NULL ,
`spot_rssi` decimal( 6, 2 ) NOT NULL ,
`updatetime` datetime NOT NULL ,
UNIQUE KEY `rssi_idx` ( `loc_id` , `spot_id` )
);

DROP TABLE IF EXISTS `dadu_rssi_sample` ;

CREATE TABLE `dadu_rssi_sample` (
`sample_id` int( 10 ) NOT NULL AUTO_INCREMENT ,
`loc_id` int( 10 ) NOT NULL ,
`spot_id` int( 10 ) NOT NULL ,
`rssi_sample` decimal( 6, 2 ) NOT NULL ,
`timestamp` datetime NOT NULL ,
PRIMARY KEY ( `sample_id` )
);
