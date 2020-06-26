using BlogDBModel;
using BlogsLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace COVID19_info_for_Physicians.Controllers
{
    public class ReferenceController : Controller
    {
        // GET: Blog
        public ActionResult Reference()
        {
            return View();
        }

        ReferenceList objList;
        [HttpPost]
        public JsonResult Add(ReferenceDBModel _dbModel)
        {
            int _result = 0;
            objList = new ReferenceList();
            _result = objList.Add(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }
        [HttpGet]
        public JsonResult GetAll()
        {
            objList = new ReferenceList();
            List<ReferenceDBModel> _dbModelList = new List<ReferenceDBModel>();

            _dbModelList = objList.GetAllBlogs();
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
            //return Json(1);

        }
        [HttpPost]
        public JsonResult LoadSelectedBlog(ReferenceDBModel _dbModel)
        {
            objList = new ReferenceList();
            List<ReferenceDBModel> _dbModelList = new List<ReferenceDBModel>();
            _dbModelList = objList.LoadSelectedBlog(_dbModel);
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteBlog(ReferenceDBModel _dbModel)
        {
            int _result = 0;
            objList = new ReferenceList();
            _result = objList.DeleteBlog(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }

        [HttpPost]
        public JsonResult Update(ReferenceDBModel _dbModel)
        {
            int _result = 0;
            objList = new ReferenceList();
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