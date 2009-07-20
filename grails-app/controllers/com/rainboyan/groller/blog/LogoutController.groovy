package com.rainboyan.groller.blog

class LogoutController {

	def index = {
		redirect(uri: '/j_spring_security_logout')
	}
}
