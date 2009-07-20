DROP DATABASE IF EXISTS groller_dev;

CREATE DATABASE groller_dev DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

GRANT ALL ON groller_dev.* to rain@'%' IDENTIFIED BY 'rain';
GRANT ALL ON groller_dev.* to rain@'localhost' IDENTIFIED BY 'rain';

USE groller_dev;

CREATE TABLE g_user (
  user_id         bigint(20) NOT NULL auto_increment,
  version         bigint(20) NOT NULL,
  username        varchar(20) NOT NULL,
  screen_name     varchar(30) NOT NULL,
  full_name       varchar(255) NULL,
  email           varchar(255) NOT NULL,
  password_hash   varchar(255) NOT NULL,
  enabled         bit(1) NOT NULL,
  create_date     datetime NULL,
  modified_date   datetime NULL,
  PRIMARY KEY  ( user_id ),
  UNIQUE KEY username ( username )
) ENGINE = InnoDB CHARACTER SET utf8;

ALTER TABLE g_user ADD CONSTRAINT user_username_uq UNIQUE ( username(20) );

CREATE TABLE g_role (
  role_id       bigint(20) NOT NULL auto_increment,
  version       bigint(20) NOT NULL,
  name          varchar(100) NOT NULL,
  description   varchar(255) NULL,
  PRIMARY KEY  ( role_id )
) ENGINE = InnoDB CHARACTER SET utf8;

ALTER TABLE g_role ADD CONSTRAINT role_name_uq UNIQUE ( name(20) );

CREATE TABLE g_userrole (
  user_id      bigint(20) NOT NULL,
  role_id      bigint(20) NOT NULL,
  PRIMARY KEY  ( user_id , role_id )
) ENGINE = InnoDB CHARACTER SET utf8;

CREATE TABLE g_blog (
  blog_id         bigint(20) NOT NULL auto_increment,
  version         bigint(20) NOT NULL,
  user_id         bigint(20) NOT NULL,
  name            varchar(255) NULL,
  handle          varchar(255) NOT NULL,
  active          bit(1) NOT NULL,
  enabled         bit(1) NOT NULL,
  description     varchar(255) NULL,
  about           varchar(255) NULL,
  allow_comments  bit(1) NOT NULL,
  create_date     datetime NULL,
  modified_date   datetime NULL,
  PRIMARY KEY  (blog_id)
) ENGINE = InnoDB CHARACTER SET utf8;

ALTER TABLE g_blog ADD CONSTRAINT blog_handle_uq UNIQUE ( handle(40) );
CREATE INDEX gb_blogid_idx ON g_blog(blog_id);
CREATE INDEX gb_userid_idx ON g_blog(user_id);
CREATE INDEX gb_handle_idx ON g_blog(handle);

CREATE TABLE g_category (
  category_id     bigint(20) NOT NULL auto_increment,
  version         bigint(20) NOT NULL,
  blog_id         bigint(20) NOT NULL,
  name            varchar(100) NOT NULL,
  description     varchar(255) NULL,
  PRIMARY KEY  ( category_id )
) ENGINE = InnoDB CHARACTER SET utf8;

CREATE INDEX gc_blogid_idx ON g_category( blog_id );

CREATE TABLE g_entry (
  entry_id        bigint(20) NOT NULL auto_increment,
  version         bigint(20) NOT NULL,
  blog_id         bigint(20) NOT NULL,
  user_id         bigint(20) NOT NULL,
  category_id     bigint(20) NOT NULL,
  title           varchar(255) NOT NULL,
  url             varchar(255) NOT NULL,
  summary         varchar(255) NULL,
  content         longtext NULL,
  status          varchar(20) NOT NULL,
  create_date     datetime NULL,
  publish_date    datetime NULL,
  update_date     datetime NULL,
  PRIMARY KEY  ( entry_id )
) ENGINE = InnoDB CHARACTER SET utf8;

CREATE INDEX ge_blogid_idx ON g_entry(blog_id);
CREATE INDEX ge_userid_idx ON g_entry(user_id);
CREATE INDEX ge_categoryid_idx ON g_entry(category_id);
CREATE INDEX ge_status_idx ON g_entry(status);
CREATE INDEX ge_publish_date_idx ON g_entry(publish_date);
CREATE INDEX ge_url_idx ON g_entry(url);

CREATE TABLE g_comment (
  comment_id      bigint(20) NOT NULL auto_increment,
  version         bigint(20) NOT NULL,
  entry_id        bigint(20) NOT NULL,
  name            varchar(20) NOT NULL,
  email           varchar(20) NOT NULL,
  url             varchar(20) NOT NULL,
  content         longtext NULL,
  status          varchar(20) NOT NULL,
  remoteHost      varchar(128) NOT NULL,
  userAgent       varchar(255) NOT NULL,
  contentType     varchar(128) NOT NULL,
  create_date     datetime NULL,
  PRIMARY KEY  ( comment_id )
) ENGINE = InnoDB CHARACTER SET utf8;

CREATE TABLE g_tag (
  tag_id          bigint(20) NOT NULL auto_increment,
  version         bigint(20) NOT NULL,
  blog_id         bigint(20) NOT NULL,
  entry_id        bigint(20) NOT NULL,
  user_id         bigint(20) NOT NULL,
  name            varchar(255) NOT NULL,
  PRIMARY KEY  ( tag_id )
) ENGINE = InnoDB CHARACTER SET utf8;

CREATE INDEX gt_blogid_idx ON g_tag(blog_id);
CREATE INDEX gt_entryid_idx ON g_tag(entry_id);
CREATE INDEX gt_userid_idx ON g_tag(user_id);
CREATE INDEX gt_name_idx ON g_tag(name);

ALTER TABLE g_userrole ADD CONSTRAINT gu_userid_fk FOREIGN KEY ( user_id ) REFERENCES g_user ( user_id );

ALTER TABLE g_userrole ADD CONSTRAINT gu_roleid_fk FOREIGN KEY ( role_id ) REFERENCES g_role ( role_id );

ALTER TABLE g_blog ADD CONSTRAINT gb_userid_fk FOREIGN KEY ( user_id ) REFERENCES g_user ( user_id );

ALTER TABLE g_category ADD CONSTRAINT gc_blogid_fk FOREIGN KEY ( blog_id ) REFERENCES g_blog ( blog_id );

ALTER TABLE g_entry ADD CONSTRAINT ge_blogid_fk FOREIGN KEY ( blog_id ) REFERENCES g_blog ( blog_id );

ALTER TABLE g_entry ADD CONSTRAINT ge_userid_fk FOREIGN KEY ( user_id ) REFERENCES g_user ( user_id );

ALTER TABLE g_entry ADD CONSTRAINT ge_categoryid_fk FOREIGN KEY ( category_id ) REFERENCES g_category ( category_id );

ALTER TABLE g_comment ADD CONSTRAINT gc_entryid_fk FOREIGN KEY ( entry_id ) REFERENCES g_entry ( entry_id );

ALTER TABLE g_tag ADD CONSTRAINT gt_blogid_fk FOREIGN KEY ( blog_id ) REFERENCES g_blog ( blog_id );

ALTER TABLE g_tag ADD CONSTRAINT gt_entryid_fk FOREIGN KEY ( entry_id ) REFERENCES g_entry ( entry_id );

ALTER TABLE g_tag ADD CONSTRAINT gt_userid_fk FOREIGN KEY ( user_id ) REFERENCES g_user ( user_id );


#
INSERT INTO g_role(version,name,description) VALUES(0,'ROLE_ADMIN','');
INSERT INTO g_role(version,name,description) VALUES(0,'ROLE_EDITOR','');
