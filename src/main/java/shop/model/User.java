package shop.model;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String username;

    private String password;

    private String email;

    private String phone;

    private String statusid;

    private String truename;

    private String sex;

    private Date birthday;

    private Integer usertype2;

    private Integer usertype1;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getStatusid() {
        return statusid;
    }

    public void setStatusid(String statusid) {
        this.statusid = statusid == null ? null : statusid.trim();
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename == null ? null : truename.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getUsertype2() {
        return usertype2;
    }

    public void setUsertype2(Integer usertype2) {
        this.usertype2 = usertype2;
    }

    public Integer getUsertype1() {
        return usertype1;
    }

    public void setUsertype1(Integer usertype1) {
        this.usertype1 = usertype1;
    }

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", email=" + email + ", phone=" + phone
				+ ", statusid=" + statusid + ", truename=" + truename
				+ ", sex=" + sex + ", birthday=" + birthday + ", usertype2="
				+ usertype2 + ", usertype1=" + usertype1 + "]";
	}
}