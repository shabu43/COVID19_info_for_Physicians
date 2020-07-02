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

        InstructionList objList;
        [HttpPost]
        public JsonResult Add(InstructionDBModel _dbModel)
        {
            int _result = 0;
            objList = new InstructionList();
            _result = objList.Add(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }
        [HttpGet]
        public JsonResult GetAll()
        {
            objList = new InstructionList();
            List<InstructionDBModel> _dbModelList = new List<InstructionDBModel>();

            _dbModelList = objList.GetAllBlogs();
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
            //return Json(1);

        }
        [HttpPost]
        public JsonResult LoadSelectedBlog(InstructionDBModel _dbModel)
        {
            objList = new InstructionList();
            List<InstructionDBModel> _dbModelList = new List<InstructionDBModel>();
            _dbModelList = objList.LoadSelectedBlog(_dbModel);
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteBlog(InstructionDBModel _dbModel)
        {
            int _result = 0;
            objList = new InstructionList();
            _result = objList.DeleteBlog(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }

        [HttpPost]
        public JsonResult Update(InstructionDBModel _dbModel)
        {
            int _result = 0;
            objList = new InstructionList();
            _result = objList.Update(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }

        [HttpGet]

        public ActionResult Detail()
        {
            return View();
        }

    }
}