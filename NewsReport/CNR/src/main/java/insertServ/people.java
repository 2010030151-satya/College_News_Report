package insertServ;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="people")
public class people {

	@Id
	@Column(name="name", updatable=false)
	private String name; 
	
	@Column(name = "email", updatable=false)
    private String email;

    
    @Column(name = "password", updatable=false)
    private String password;
    
	public people (String name, String email, String password) {
		super();
		this.name = name;
		this.email = email; 
		this.password = password; 	
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public people() {
		// TODO Auto-generated constructor stub
	}
	
}

