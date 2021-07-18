package ptithcm.controller;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/")
public class MailerController {
	@Autowired
	JavaMailSender mailer;
	
	public String detail_order(){
		return "admin/detail_order";
	}
	
	@RequestMapping("send")
	public String send(ModelMap model,
			@RequestParam("from") String from,
			@RequestParam("to") String to,
			@RequestParam("subject") String subject,
			@RequestParam("body") String body){
		try{
			//Tao mail
			MimeMessage mail = mailer.createMimeMessage();
			//Su dung lop tro giup
			MimeMessageHelper helper = new MimeMessageHelper(mail);
			helper.setFrom(from,from);
			helper.setTo(to);
			helper.setReplyTo(from,from);
			helper.setSubject(subject);
			helper.setText(body,true);
			
			//Gui mail
			mailer.send(mail);
			model.addAttribute("message","Gửi mail thành công !");		
		}
		catch(Exception ex){
			model.addAttribute("message","Gửi mail thất bại !");
		}
		return "admin/selling";
	}
}
