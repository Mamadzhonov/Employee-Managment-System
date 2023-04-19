package com.relationships.contollers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.relationships.models.Employee;
import com.relationships.models.User;
import com.relationships.models.UserLogin;
import com.relationships.services.EmployeeService;
import com.relationships.services.UserService;

@Controller
public class Homepage {

    @Autowired
    private UserService userServ;

    @Autowired
    private EmployeeService employeeServ;

    @GetMapping("/")
    public String index(Model model, HttpSession session) {
        // model.addAttribute("newUser", new User());
        // model.addAttribute("newLogin", new UserLogin());
        return "Index.jsp";
    }

    @GetMapping("/login")
    public String register(Model model, HttpSession session) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new UserLogin());
        return "LoginPage.jsp";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User user,
            BindingResult result, HttpSession session,
            Model model, RedirectAttributes redirect) {
        model.addAttribute("newLogin", new UserLogin());

        if (result.hasErrors()) {
            return "LoginPage.jsp";
        }
        if (userServ.findByEmail(user.getEmail())) {
            redirect.addFlashAttribute("emailUsed", "Email is already used!");
            return "redirect:/";
        }

        User newUser = userServ.register(user, result);

        if (newUser == null) {
            model.addAttribute("newLogin", new UserLogin());
            return "LoginPage.jsp";
        }

        session.setAttribute("userId", user.getId());
        return "redirect:/shows";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") UserLogin usrLogin,
            HttpSession session, Model model,
            BindingResult result, RedirectAttributes redirect) {

        User user = userServ.login(usrLogin, result);
        if (user == null) {
            model.addAttribute("newUser", new User());
            redirect.addFlashAttribute("loginIssue", "Login or Password is not valid!");
            return "LoginPage.jsp";
        }
        session.setAttribute("userId", user.getId());
        return "redirect:/records";
    }

    @GetMapping("/records")
    public String dashboard(HttpSession session, Model model, RedirectAttributes redirect) {
        if (session.getAttribute("userId") == null) {
            redirect.addFlashAttribute("login", "Need to login to access Shows page");
            return "redirect:/login";
        }
        Long id = (Long) session.getAttribute("userId");
        User loggedUser = userServ.findById(id);
        model.addAttribute("user", loggedUser);
        model.addAttribute("allEmployees", employeeServ.allEmployees());
        return "Records.jsp";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.setAttribute("userId", null);
        return "redirect:/";
    }

    @GetMapping("/employee/new")
    public String newShow(@ModelAttribute("newShow") Employee newShow,
            HttpSession session,
            RedirectAttributes redirect, Model model) {
        if (session.getAttribute("userId") == null) {
            redirect.addFlashAttribute("login", "Need to login to access this page");
            return "redirect:/";
        }
        return "NewEmployee.jsp";
    }

    @PostMapping("/employee/new")
    public String createShow(@Valid @ModelAttribute("newShow") Employee newEmployee,
            BindingResult result, Model model,
            HttpSession session, RedirectAttributes redirect) {
        if (session.getAttribute("userId") == null) {
            redirect.addFlashAttribute("login", "Need to login to access this page");
            return "redirect:/";
        }

        if (employeeServ.findAllByTitle(newEmployee.getPhoneNum())) {
            redirect.addFlashAttribute("existedTitle", "This phone number already exist please choose diferent title!");
            return "redirect:/employee/new";
        }

        if (result.hasErrors()) {
            return "NewShow.jsp";
        }

        Long id = (Long) session.getAttribute("userId");
        User loggedUser = userServ.findById(id);
        model.addAttribute("user", loggedUser);

        employeeServ.create(newEmployee);
        return "redirect:/records";
    }

    // @GetMapping("/show/{id}")
    // public String showDetails(@PathVariable("id") Long id, HttpSession session,
    // Model model,
    // RedirectAttributes redirect) {
    // if (session.getAttribute("userId") == null) {
    // redirect.addFlashAttribute("login", "Need to login to access this page");
    // return "redirect:/";
    // }
    // model.addAttribute("show", showServ.findById(id));
    // return "ShowDetail.jsp";
    // }

    // @GetMapping("/show/edit/{id}")
    // public String edit(@PathVariable("id") Long id, Model model, HttpSession
    // session, RedirectAttributes redirect) {
    // if (session.getAttribute("userId") == null) {
    // redirect.addFlashAttribute("login", "Need to login to edit this post");
    // return "redirect:/";
    // }

    // model.addAttribute("updatedForm", showServ.findById(id));

    // return "EditShow.jsp";
    // }

    // @PostMapping("/show/edit/{id}")
    // public String update(@Valid @ModelAttribute("updatedForm") Employee
    // updatedShow,
    // BindingResult result, @PathVariable("id") Long id,
    // Model model, HttpSession session) {

    // if (result.hasErrors()) {
    // return "EditShow.jsp";
    // }
    // Long idN = (Long) session.getAttribute("userId");
    // User loggedUser = userServ.findById(idN);
    // updatedShow.setPostedBy(loggedUser.getUserName());
    // showServ.update(updatedShow);

    // return "redirect:/shows";
    // }

    // @GetMapping("/show/delete/{id}")
    // public String getMethodName(@PathVariable("id") Long id) {
    // showServ.deleteById(id);
    // return "redirect:/shows";
    // }
}
