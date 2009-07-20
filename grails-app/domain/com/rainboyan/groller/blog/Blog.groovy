package com.rainboyan.groller.blog

class Blog {
    User user
    String name
    String handle
    String description
	String about
    String locale
    String timeZone
    String editorTheme
    boolean enabled = true
    boolean active = true
    boolean allowComments = true
    Date createDate
    Date updateDate

    static constraints = {
        user(nullable:false)
        name(blank:true, nullable:true)
        handle(blank:false, nullable:false, unique:true)
        description(blank:true, nullable:true)
        about(blank:true, nullable:true)
        createDate(nullable:true)
        updateDate(nullable:true)
    }

    static hasMany = [entries : Entry]

    static belongsTo = User

	static mapping = {
		table "g_blog"
		id column: 'blog_id'
	}

    static beforeInsert = {
        createDate = new Date()
        updateDate = new Date()
    }

    static beforeUpdate = {
        updateDate = new Date()
    }
}
