package com.rainboyan.groller.blog

class Comment {
    Entry entry
    String name
	String email
	String url
    String content
	String status = "APPROVED"
	String remoteHost
	String userAgent
	String contentType = "text/plain"
    Date createDate

    static constraints = {
        name(blank:true, nullable:true, maxSize:255)
        email(blank:true, nullable:true, maxSize:255)
        url(blank:true, nullable:true, maxSize:255)
        content(blank:true, nullable:true)
        createDate(nullable:true)
    }

    static belongsTo = Entry

    static mapping = {
		table "g_comment"
		id column: 'comment_id'
        content type: "text"
	}

    static beforeInsert = {
        createDate = new Date()
    }
}
