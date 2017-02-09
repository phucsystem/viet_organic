-- Create syntax for TABLE 'oc_tltblog'
CREATE TABLE IF NOT EXISTS `oc_tltblog` (
  `tltblog_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `bottom` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `show_description` tinyint(1) NOT NULL DEFAULT '0',
  `show_title` tinyint(1) NOT NULL DEFAULT '0',  
  PRIMARY KEY (`tltblog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'oc_tltblog_description'
CREATE TABLE IF NOT EXISTS `oc_tltblog_description` (
  `tltblog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`tltblog_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'oc_tltblog_related'
CREATE TABLE IF NOT EXISTS `oc_tltblog_related` (
  `tltblog_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`tltblog_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'oc_tltblog_to_layout'
CREATE TABLE IF NOT EXISTS `oc_tltblog_to_layout` (
  `tltblog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`tltblog_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'oc_tltblog_to_store'
CREATE TABLE IF NOT EXISTS `oc_tltblog_to_store` (
  `tltblog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tltblog_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'oc_tltblog_to_tag'
CREATE TABLE IF NOT EXISTS `oc_tltblog_to_tag` (
  `tltblog_id` int(11) NOT NULL,
  `tlttag_id` int(11) NOT NULL,
  PRIMARY KEY (`tltblog_id`,`tlttag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'oc_tlttag'
CREATE TABLE IF NOT EXISTS `oc_tlttag` (
  `tlttag_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`tlttag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'oc_tlttag_description'
CREATE TABLE IF NOT EXISTS `oc_tlttag_description` (
  `tlttag_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`tlttag_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'oc_tlttag_to_store'
CREATE TABLE IF NOT EXISTS `oc_tlttag_to_store` (
  `tlttag_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tlttag_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `oc_tltblog_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
