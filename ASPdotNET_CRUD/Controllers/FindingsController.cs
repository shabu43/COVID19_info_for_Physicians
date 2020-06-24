using BlogDBModel;
using BlogsLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace COVID19_info_for_Physicians.Controllers
{
    public class FindingsController : Controller
    {
        // GET: Blog
        public ActionResult Scientific_Find()
        {
            return View();
        }

        FindingsList objList;
        [HttpPost]
        public JsonResult Add(FindingsDBModel _dbModel)
        {
            int _result = 0;
            objList = new FindingsList();
            _result = objList.Add(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }
        [HttpGet]
        public JsonResult GetAll()
        {
            objList = new FindingsList();
            List<FindingsDBModel> _dbModelList = new List<FindingsDBModel>();

            _dbModelList = objList.GetAllBlogs();
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
            //return Json(1);

        }
        [HttpPost]
        public JsonResult LoadSelectedBlog(FindingsDBModel _dbModel)
        {
            objList = new FindingsList();
            List<FindingsDBModel> _dbModelList = new List<FindingsDBModel>();
            _dbModelList = objList.LoadSelectedBlog(_dbModel);
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteBlog(FindingsDBModel _dbModel)
        {
            int _result = 0;
            objList = new FindingsList();
            _result = objList.DeleteBlog(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }

        [HttpPost]
        public JsonResult Update(FindingsDBModel _dbModel)
        {
            int _result = 0;
            objList = new FindingsList();
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