using BlogDBModel;
using BlogsLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace COVID19_info_for_Physicians.Controllers
{
    public class DealpatientController : Controller
    {
        // GET: Blog
        public ActionResult Deal_patients()
        {
            return View();
        }

        DealpatientList objList;
        [HttpPost]
        public JsonResult Add(DealpatientDBModel _dbModel)
        {
            int _result = 0;
            objList = new DealpatientList();
            _result = objList.Add(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }
        [HttpGet]
        public JsonResult GetAll()
        {
            objList = new DealpatientList();
            List<DealpatientDBModel> _dbModelList = new List<DealpatientDBModel>();

            _dbModelList = objList.GetAllBlogs();
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
            //return Json(1);

        }
        [HttpPost]
        public JsonResult LoadSelectedBlog(DealpatientDBModel _dbModel)
        {
            objList = new DealpatientList();
            List<DealpatientDBModel> _dbModelList = new List<DealpatientDBModel>();
            _dbModelList = objList.LoadSelectedBlog(_dbModel);
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteBlog(DealpatientDBModel _dbModel)
        {
            int _result = 0;
            objList = new DealpatientList();
            _result = objList.DeleteBlog(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }

        [HttpPost]
        public JsonResult Update(DealpatientDBModel _dbModel)
        {
            int _result = 0;
            objList = new DealpatientList();
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