dataSource {
	pooled = true
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
            driverClassName = "com.mysql.jdbc.Driver"
			url = "jdbc:mysql://localhost:3306/groller_dev"
            username = "rain"
            password = "rain"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
            driverClassName = "org.hsqldb.jdbcDriver"
			url = "jdbc:hsqldb:mem:testDb"
            username = "sa"
            password = ""
		}
	}
	production {
		dataSource {
			dbCreate = "update"
            driverClassName = "org.hsqldb.jdbcDriver"
			url = "jdbc:hsqldb:file:prodDb;shutdown=true"
            username = "sa"
            password = ""
		}
	}
}