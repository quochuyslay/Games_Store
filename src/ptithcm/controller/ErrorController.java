package ptithcm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
public class ErrorController {
	@RequestMapping("error")
	public String error() {						
		return "error";
	}
}
