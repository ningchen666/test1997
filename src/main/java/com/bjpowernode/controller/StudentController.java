package com.bjpowernode.controller;

import com.bjpowernode.domain.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService service;

    @RequestMapping(value = "/addStudent.do")
    public ModelAndView addStudent(Student student){
        ModelAndView mv = new ModelAndView();
        String tips = "注册失败";
        int num = service.addStudent(student);
        if (num > 0){
            tips = "学生" + student.getName() + "注册成功";
        }
        mv.addObject("tips",tips);

        mv.setViewName("result");
        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "/selectStudents.do")
    public List<Student> selectStudents() {
        List<Student> students = new ArrayList<>();
        students = service.findStudents();
        return students; //会被框架转为json
    }
}
