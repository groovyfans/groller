package com.rainboyan.groller.blog

class Entry {
    static belongsTo = Blog

    Blog blog
    Category category
    User user
    String url
    String title
    String summary
    String content
    String status = "DRAFT"
	String contentType
    Date createDate
    Date publishDate
    Date updateDate

    static constraints = {
        blog(nullable:false)
        category(nullable:true)
        user(nullable:false)
        url(blank:false, nullable:false, maxSize:255)
        title(blank:false, nullable:false, maxSize:255)
        summary(blank:true, nullable:true)
        content(blank:false, nullable:false)
        status(inList:['DRAFT','PUBLISHED'])
        contentType(nullable:true)
        createDate(nullable:true)
        publishDate(nullable:true)
        updateDate(nullable:true)
    }

    static mapping = {
		table "g_entry"
		id column: 'entry_id'
        content type: "text"
        cache 'read-write'
        sort publishDate:'desc'
    }

    static beforeInsert = {
        createDate = new Date()
        updateDate = new Date()
    }

    static beforeUpdate = {
        updateDate = new Date()
    }
}
