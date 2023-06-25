//using Microsoft.AspNetCore.Http;
//using Microsoft.AspNetCore.Mvc;
//using Rise_Up_API.Utils;

//namespace Rise_Up_API.Controllers
//{
//    public class Login : Controller
//    {
//        // GET: Login
//        public ActionResult Index()
//        {
//            return View();
//        }
//        public ActionResult Index(TokenManagerRiseUpcs model)
//        {
//            if (!ModelState.IsValid)
//            {
//                return View(model);
//            }

//            // Authenticate user (validate credentials) - replace with your own authentication logic
//            bool isAuthenticated = YourAuthenticationLogic.AuthenticateUser(model.Email, model.Password);

//            if (!isAuthenticated)
//            {
//                ModelState.AddModelError(string.Empty, "Invalid login credentials.");
//                return View(model);
//            }

//            // Generate the token using the TokenManagerRiseUpcs class
//            string token = TokenManagerRiseUpcs.GenerateToken(model.Email);

//            // Store the token in TempData (or any other appropriate storage)
//            TempData["Token"] = token;

//            return RedirectToAction("Index", "Home");
//        }
//    }

//}
//}

