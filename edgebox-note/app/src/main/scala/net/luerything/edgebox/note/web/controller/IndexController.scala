package net.luerything.edgebox.note.web.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.{RequestMethod, RequestMapping}
import org.springframework.web.servlet.ModelAndView
import java.util.Properties
import org.springframework.beans.factory.annotation.{Qualifier, Autowired}

/**
 * @author keke
 */
@Controller
@RequestMapping(value = Array("/"))
class IndexController {

  private var globalProps: Properties = _

  @Autowired
  @Qualifier("globalProps")
  def setGlobalProperties(p: Properties) {
    globalProps = p
  }

  @RequestMapping(method = Array(RequestMethod.GET))
  def page = {
    new ModelAndView("index").addObject("debug", globalProps.getProperty("debug", "false").toBoolean).
      addObject("staticPath", globalProps.getProperty("static.path"))
  }
}