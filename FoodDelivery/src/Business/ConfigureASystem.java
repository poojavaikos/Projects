package Business;

import Business.Employee.Employee;
import Business.Role.SystemAdminRole;
import Business.UserAccount.UserAccount;

/**
 *
 * Pooja Vaikos
 */
public class ConfigureASystem {
    
    public static EcoSystem configure(){
        
        EcoSystem system = EcoSystem.getInstance();
        Employee employee = system.getEmployeeDirectory().createEmployee("RRH");
        
        UserAccount ua = system.getUserAccountDirectory().createUserAccount("sysadmin", "sysadmin", employee, new SystemAdminRole());
        
        return system;
    }
    
}
