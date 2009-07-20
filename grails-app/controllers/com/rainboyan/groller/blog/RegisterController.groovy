package com.rainboyan.groller.blog

import org.grails.plugins.springsecurity.service.AuthenticateService
import org.springframework.security.providers.UsernamePasswordAuthenticationToken as AuthToken
import org.springframework.security.context.SecurityContextHolder as SCH

class RegisterController {
    def authenticateService
    def daoAuthenticationProvider

	def index = {
        def user = new User()
        user.properties = params
        return [user: user]

	}

    def save = {
		// skip if already logged in
		if (authenticateService.isLoggedIn()) {
			redirect controller: 'entry', action: 'create'
			return
		}
        
        def user = new User()
        user.properties = params

		def config = authenticateService.securityConfig
		def editorRole = config.security.editorRole
		def adminRole = config.security.adminRole
		def editor = Role.findByName(editorRole)
		def admin = Role.findByName(adminRole)

        if (params.password != params.passwordConfirm) {
			user.password = ''
			flash.error = 'user.password.not.match'
			render view: 'index', model: [user: user]
			return
		}
		def passwordHash = authenticateService.encodePassword(params.password)
		user.passwordHash = passwordHash
		user.enabled = true
		if (!user.hasErrors() && user.save()) {
			if (User.count() == 1) {
				admin.addToUsers(user)
			}

			editor.addToUsers(user)


            user.save(flush: true)

			render view:'success'
        }
        else {
			user.password = ''
			render view: 'index', model: [user: user]
		}
    }
}
