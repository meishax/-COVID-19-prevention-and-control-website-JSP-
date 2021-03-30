package JB;
import java.util.HashMap ;
import java.util.Map ;
public class Register {
    private String username;
    private String email;
    private String password;
    private String passwordagain;
    private Map<String,String> errors=null;
    public Register(){
        this.username = "" ;
        this.email = "" ;
        this.password = "" ;
        this.passwordagain = "" ;
        this.errors = new HashMap<String,String>() ;
    }
    public boolean isValidate(){
        boolean flag = true ;
        if(!this.username.matches("\\w{6,16}")){
            flag = false ;
            this.username = "" ;	// 清空原本的name内容
            this.errors.put("errname","用户名是6~16位的字母或数字。") ;
        }
        if(!this.email.matches("\\w+@\\w+\\.\\w+\\.?\\w*")){
            flag = false ;
            this.email = "" ;	// 清空原本的name内容
            this.errors.put("erremail","输入的email地址不合法。") ;
        }
        if(!this.password.matches("[\\d\\D]{4,8}")){
            flag = false ;
            this.password = "" ;	// 清空原本的name内容
            this.errors.put("errpassword","密码为4~8位") ;
        }
        if(!this.passwordagain.matches(this.password)){
            flag = false ;
            this.passwordagain = "" ;	// 清空原本的name内容
            this.errors.put("errpasswordagain","两次密码不一致") ;
        }
        return flag ;
    }





    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordagain() {
        return passwordagain;
    }

    public void setPasswordagain(String passwordagain) {
        this.passwordagain = passwordagain;
    }

    public String getErrorMsg(String key){
        String value = this.errors.get(key) ;
        return value==null?"":value ;
    }




}
