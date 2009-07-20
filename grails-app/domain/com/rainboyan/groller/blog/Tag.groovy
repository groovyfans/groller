package com.rainboyan.groller.blog

class Tag {
    Blog blog
	Entry entry
    User user
    String name

    static constraints = {
        name(nullable:false)
    }

    static mapping = {
		table "g_tag"
		id column: 'tag_id'
    }

    String toString() {
        name
    }
}
