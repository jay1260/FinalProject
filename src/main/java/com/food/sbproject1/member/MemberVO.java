package com.food.sbproject1.member;



import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import lombok.Data;

@Data
public class MemberVO {

	
	private String id;
	@Length(min=8, max=16)
	private String pw;
	private String pw2;
	@Size(min=2)
	private String name;
	@Range(min=0, max=200)
	private int age;
	@Email
	private String email;

	private MemberFileVO memberFileVO;
	
	//private List<MemberRoleVO> role;
}
