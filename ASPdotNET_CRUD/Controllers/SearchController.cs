using BlogDBModel;
using BlogsLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace COVID19_info_for_Physicians.Controllers
{
    public class SearchController : Controller
    {
        // GET: Blog
        public ActionResult Search()
        {
            return View();
        }

        SearchList objList;

        [HttpPost]
        public JsonResult SearchALL(SearchDBModel _dbModel)
        {
            objList = new SearchList();
            List<SearchDBModel> _dbModelList = new List<SearchDBModel>();

            _dbModelList = objList.SearchALL(_dbModel);
            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
            //return Json(1);

        }
        

    }
}