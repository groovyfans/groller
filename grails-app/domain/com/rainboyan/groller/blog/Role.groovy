package com.rainboyan.groller.blog

class Role {

    String name
    String description

    static hasMany = [users: User]

    static constraints = {
        name(blank: false, unique: true, maxSize:100)
        description(blank: true, nullable: true, maxSize:255)
    }

    static mapping = {
        table "g_role"
        id column: 'role_id'
        cache usage:"read-write"
        users joinTable:[name: "g_userrole", column: 'user_id', key: 'role_id']
    }
}
