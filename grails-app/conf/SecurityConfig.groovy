security {

	active = true

	loginUserDomainClass = 'com.rainboyan.groller.blog.User'
	userName = 'username'
	password = 'passwordHash'
	enabled = 'enabled'
	relationalAuthorities = 'roles'

	authorityDomainClass = 'com.rainboyan.groller.blog.Role'
	authorityField = 'name'

	authenticationFailureUrl = '/admin/login/login?error=true'
	ajaxAuthenticationFailureUrl = '/admin/login/login?ajax=true'
	defaultTargetUrl = '/admin'
	alwaysUseDefaultTargetUrl = false
	filterProcessesUrl = '/j_security_check'

	key = 'anonymousFilterKey'
	userAttribute = 'anonymousUser,ROLE_ANONYMOUS'

	loginFormUrl = '/admin/login'
	forceHttps = 'false'
	ajaxLoginFormUrl = '/admin/login/loginAjax'

	afterLogoutUrl = '/'

	errorPage = '/admin/login/fail'
	ajaxErrorPage = '/admin/login/failAjax'
	ajaxHeader = 'X-Requested-With'

	algorithm = 'MD5' // Ex. MD5 SHA
	//use Base64 text ( true or false )
	encodeHashAsBase64 = false

	/** rememberMeServices */
	cookieName = 'groller_remember_me'
	alwaysRemember = false
	tokenValiditySeconds = 1209600 //14 days
	parameter = '_security_remember_me'
	rememberMeKey = 'grollerRememberMe'


	useLogger = false

	useRequestMapDomainClass = false

	requestMapString = """
		CONVERT_URL_TO_LOWERCASE_BEFORE_COMPARISON
		PATTERN_TYPE_APACHE_ANT

		/admin/login/**=IS_AUTHENTICATED_ANONYMOUSLY
		/admin/logout/**=IS_AUTHENTICATED_ANONYMOUSLY
		/admin/images/**=IS_AUTHENTICATED_ANONYMOUSLY
		/admin/scripts/**=IS_AUTHENTICATED_ANONYMOUSLY
		/admin/styles/**=IS_AUTHENTICATED_ANONYMOUSLY
		/admin/theme/**=IS_AUTHENTICATED_ANONYMOUSLY
		/admin/**=ROLE_EDITOR
		/**=IS_AUTHENTICATED_ANONYMOUSLY
	"""

	// basic auth
	realmName = 'Groller Realm'

    /**use email notification while registration*/
	useMail = false
	mailHost = 'localhost'
	mailUsername = 'user@localhost'
	mailPassword = 'sungod'
	mailProtocol = 'smtp'
	mailFrom = 'user@localhost'
	mailPort = 25

	/** default user's role for user registration */
	defaultRole = 'ROLE_EDITOR'
	editorRole = 'ROLE_EDITOR'
	adminRole = 'ROLE_ADMIN'

	// user caching
	cacheUsers = true
}
