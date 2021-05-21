package spring5_webmvc_beanvalidation_study.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/register")
public class RegistController {

	@Autowired
	private MemberRegisterService memberRegisterService;

	@RequestMapping("/step1")
	public String handleStep1() {
		return "register/step1";
	}

	@PostMapping("/step2")
	public String handleStep2Post(@RequestParam(value = "agree", defaultValue = "false") Boolean agree, RegistRequest registRequest) {

		if (!agree) {
			return "register/step1";
		}
		return "register/step2";
	}

	@GetMapping("/step2")
	public String handleStep2Get() {
		return "redirect:/register/step1";
	}

	@PostMapping("/step3")
	public String handleStep3(RegistRequest request) {
		try {
			memberRegisterService.regist(request);
			return "register/step3";
		} catch (DuplicateMemberException e) {
			return "register/step2";
		}
	}
}
