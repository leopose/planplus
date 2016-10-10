package planplusapplication
import grails.converters.JSON


class UserController {
    UserService userService

    def index(Integer max) {
        
        def dados = [:]
        
        try {
            dados.data = userService.getUsers()    
        }
        catch(Exception e) {
            dados.data.status = "500"
            println(e)    
            }
        finally {

                render dados as JSON
            }
        }


        def save(User userInstance) {

            userInstance.validate()
            if (userInstance.hasErrors()) {
                render ("status: NOT_ACCEPTABLE") as JSON
                return
            }

            try {
                userService.createUser(userInstance)
                render ("status: CREATED") as JSON
                return
            }
            catch(Exception e) {
                println(e)   
                render ([status: "500"]) as JSON
            }
            
            
        }

    }
