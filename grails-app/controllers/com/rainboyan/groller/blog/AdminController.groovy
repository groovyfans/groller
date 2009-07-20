package com.rainboyan.groller.blog

import org.grails.plugins.springsecurity.service.AuthenticateService

class AdminController {
    def authenticateService

	def index = {
		def user = User.findByUsername(authenticateService.principal().username)
        def blogs = Blog.findAllByUser(user)

		[blogs: blogs]
	}
}
