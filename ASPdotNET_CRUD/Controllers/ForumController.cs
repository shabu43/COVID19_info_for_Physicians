using BlogDBModel;
using BlogsLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace COVID19_info_for_Physicians.Controllers
{
    public class ForumController : Controller
    {
        // GET: Blog
        public ActionResult Forum()
        {
            return View();
        }

        ForumList objList;

        [HttpPost]
        public JsonResult Add(ForumDBModel _dbModel)
        {
            int _result = 0;
            
            if (Session["id"] == null)
            {
                return Json(new { success = false });
            }
            _dbModel.userid = (int)Session["id"];
            objList = new ForumList();
            _result = objList.Add(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }

        [HttpPost]
        public JsonResult SearchALL(ForumDBModel _dbModel)
        {
            objList = new ForumList();
            List<ForumDBModel> _dbModelList = new List<ForumDBModel>();

            _dbModelList = objList.SearchALL(_dbModel);
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
            //return Json(1);

        }
        

    }
}