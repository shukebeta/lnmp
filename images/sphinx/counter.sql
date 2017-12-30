CREATE TABLE `sph_counter` (
  `counter_id` bigint(1) NOT NULL DEFAULT '0',
  `max_doc_id` bigint(1) NOT NULL DEFAULT '0',
  `delta_doc_id` bigint(1) NOT NULL DEFAULT '0',
  `max_upd_id` bigint(1) NOT NULL DEFAULT '0',
  `delta_upd_id` bigint(1) NOT NULL DEFAULT '0',
  `comment` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`counter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
