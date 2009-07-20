package com.rainboyan.groller.blog

class User {
    String username
    String passwordHash
    String fullName
    String screenName
    String email
    boolean enabled
    Date createDate
    Date modifiedDate

    String password

    static transients = ['password']
    static hasMany = [roles: Role]
    static belongsTo = [Role]

    static constraints = {
        username(size:2..20, blank:false, unique:true)
        fullName(blank:true, nullable:true)
        screenName(blank:false, nullable:false, maxSize:30)
        password(blank:false, maxSize:20)
        email(email:true)
        createDate(nullable:true)
        modifiedDate(nullable:true)
    }
    
    static mapping = {
		table "g_user"
		id column: 'user_id'
        roles joinTable:[name: "g_userrole", column: 'role_id', key: 'user_id']
	}
    
    static beforeInsert = {
        createDate = new Date()
        modifiedDate = new Date()
    }

    static beforeUpdate = {
        modifiedDate = new Date()
    }
}
