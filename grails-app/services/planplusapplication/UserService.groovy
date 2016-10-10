package planplusapplication

import grails.transaction.Transactional
import planplusapplication.User

@Transactional
class UserService {

   
    def getUsers(){
    	return User.list()
    }

    def createUser(User user){
    	user.save(flush : true)
    }
}
	