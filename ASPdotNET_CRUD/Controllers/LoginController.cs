using BlogDBModel;
using BlogsLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
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
            Session["id"] = null;
            Session["name"] = null;
            Session["password"] = null;
            return View();
        }

        LoginList objList;
        [HttpPost]
        public JsonResult Add(LoginDBModel _dbModel)
        {
            if (_dbModel.password == null || _dbModel.email == null || _dbModel.name == null)
            {
                return Json(new { success = false });
            }
            else if (_dbModel.password.Length<8)
            {
                return Json(new { success = false });
            }
            objList = new LoginList();
            List<LoginDBModel> _dbModelList = new List<LoginDBModel>();
            _dbModel.password = HashPassword(_dbModel.password, "sha256");


            _dbModelList = objList.Verify(_dbModel);
            if (_dbModelList == null)
            {
                return Json(new { success = false });
            }



            int _result = 0;
            objList = new LoginList();
            _result = objList.Add(_dbModel);
            if (_result > 0)
                return Json(new { success = true });
            else
                return Json(new { success = false });
        }
        public static string HashPassword(string password, string algorithm = "sha256")
        {
            return Hash(Encoding.UTF8.GetBytes(password), algorithm);
        }
        private static string Hash(byte[] input, string algorithm = "sha256")
        {
            using (var hashAlgorithm = HashAlgorithm.Create(algorithm))
            {
                return Convert.ToBase64String(hashAlgorithm.ComputeHash(input));
            }
        }
        [HttpPost]
        public JsonResult GetAll(LoginDBModel _dbModel)
        {
            if (_dbModel.password == null || _dbModel.email==null)
            {
                return Json(new { success = false });
            }
            objList = new LoginList();
            List<LoginDBModel> _dbModelList = new List<LoginDBModel>();
            var count = 0;
            _dbModel.password = HashPassword(_dbModel.password, "sha256");
            if (!IsValidEmailAddress(_dbModel.email))
            {
                return Json(new { success = false });
            }

            _dbModelList = objList.Loginuser(_dbModel);
            foreach (var el in _dbModelList)
            {
                Session["id"] = el.id;
                Session["usertype"] = el.usertype;
                Session["email"] = el.email;
                count = 1;
            }

            if (count == 1)
            {
                return Json(new { success = true });
            } //no need to return
            else
            {
                return Json(new { success = false });
            }
            //return Json(1);

        }

        public JsonResult Verify(LoginDBModel _dbModel)
        {
            objList = new LoginList();
            List<LoginDBModel> _dbModelList = new List<LoginDBModel>();

            _dbModelList = objList.Verify(_dbModel);

            return this.Json(_dbModelList, JsonRequestBehavior.AllowGet);
            //return Json(1);

        }

        private static bool IsValidEmailAddress(string emailAddress)
        {
            return new System.ComponentModel.DataAnnotations
                                .EmailAddressAttribute()
                                .IsValid(emailAddress);
        }

    }
        
}