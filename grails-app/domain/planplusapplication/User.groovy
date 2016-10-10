package planplusapplication

//Defaulf private atribute and defaulf get and set
class User {
 
     long id
     String firstName
     String lastName
    
    
    static mapping =  {
        table "TB_user"
        version false
        id column: "Id"
        firstName column: "First_Name"
        lastName column: "Last_Name"
    }
    
    
}
