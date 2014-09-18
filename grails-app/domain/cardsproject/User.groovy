package cardsproject

class User {

	transient springSecurityService
    static belongsTo = [company: Company]
    static hasMany = [card: Card]

    String e_mail
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
        e_mail(unique: true)
        company(nullable: true)
		password blank: false
	}

	static mapping = {
		password column: '`password`'
	}

	//Set<Role> getAuthorities() {
//		UserRole.findAllByuser(this).collect { it.userRole }
//	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
