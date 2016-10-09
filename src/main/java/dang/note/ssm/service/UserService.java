package dang.note.ssm.service;

import dang.note.ssm.mapper.UserMapper;
import dang.note.ssm.pojo.User;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component
public class UserService {
		
		@Resource
	    private UserMapper userMapper;

	public User login(User user){
		return userMapper.login(user);
	}
	public int add(User user) {
		return userMapper.insert(user);
	}
	    
//	    public User getUserById(int id) {
//	        // TODO Auto-generated method stub
//	    	System.out.println(id+this.userDao.selectId(id).getUsername());
//
//	        return this.userDao.selectId(id);
//	    }
//
//
//
//
//		public Boolean getLoginUser(User userLogin) {
//			// TODO Auto-generated method stub
//		if(userLogin.getUsername().equals("")||(userLogin.getPassword().equals(""))){
//			return false;
//		}else{
//
//			User user=new User();
//			if(this.userDao.selectLogin(userLogin.getUsername())!=null){
//
//				user=userDao.selectLogin(userLogin.getUsername());
//
//				if(user.toString().isEmpty()){
//
//					return false;
//				}else{
//
//					if(user.getPassword().equals(userLogin.getPassword())){
//						return true;
//					}else{
//						return false;
//				}
//				}
//			}else{
//				return false;
//			}
//		  }
//		}
//
//
//
//
//		public User user(User user) {
//			// TODO Auto-generated method stub
//			return null;
//		}
//
//
//
//
//		public User selectLogin(String username) {
//			// TODO Auto-generated method stub
//			return this.userDao.selectLogin(username);
//		}
//
//
//
//
//		public User selectByPrimaryKey(int i) {
//			// TODO Auto-generated method stub
//			return this.userDao.selectByPrimaryKey(i);
//		}
//
//
//
//
//		public User getUserByusername(String username) {
//			// TODO Auto-generated method stub
//			return this.userDao.selectLogin(username);
//		}
//
//
//		public int inster(User user) {
//			// TODO Auto-generated method stub
//			int i=this.userDao.insert(user);
//			return i;
//		}



}

