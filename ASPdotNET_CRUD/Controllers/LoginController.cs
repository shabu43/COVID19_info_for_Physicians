using BlogDBModel;
using BlogsLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace COVID19_info_for_Physicians.Controllers
{
    public class LoginController : Controller
    {
        // GET: Blog
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult Logout()
        {
            Session["name"] = null;
            Session["password"] = null;
            return View();
        }

        LoginList objList;
        [HttpPost]
        public JsonResult Add(LoginDBModel _dbModel)
        {
            int _result = 0;
            objList = new LoginList();
            _result = objList.Add(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }
        [HttpPost]
        public JsonResult GetAll(LoginDBModel _dbModel)
        {
            objList = new LoginList();
            List<LoginDBModel> _dbModelList = new List<LoginDBModel>();

            _dbModelList = objList.GetAllBlogs(_dbModel);
            foreach (var el in _dbModelList)
            {
                Session["name"] = el.name;
                Session["password"] = el.password;
            }

                return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
            //return Json(1);

        }
       

    }
        
}