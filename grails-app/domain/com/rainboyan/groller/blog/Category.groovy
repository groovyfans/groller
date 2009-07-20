package com.rainboyan.groller.blog

class Category {
    Blog blog
	String name
	String description

    static constraints = {
        name(nullable:false, blank:false, maxSize:100)
        description(nullable:true, blank:true)
    }

    static belongsTo = Blog

    static mapping = {
		table "g_category"
		id column: 'category_id'
        description type: "text"
        cache 'read-write'
    }

    String toString() {
        name
    }
}
