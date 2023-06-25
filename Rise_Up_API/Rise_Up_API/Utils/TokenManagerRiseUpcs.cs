//using Microsoft.IdentityModel.Tokens;
//using System.IdentityModel.Tokens.Jwt;
//using System.Security.Claims;

//namespace Rise_Up_API.Utils
//{
//    public class TokenManagerRiseUpcs
//    {
//        private static string Secret = "QjTpBIuht5angEnEWTdy3ZRbFGrYFxUwluKcHoCh4cWSixECorpfQfonQtm1GaCLlojhHiGm";

//        public static string GenerateToken(string e_mail)
//        {
//            byte[] key = Convert.FromBase64String(Secret);
//            SymmetricSecurityKey securityKey = new SymmetricSecurityKey(key);
//            SecurityTokenDescriptor descriptor = new SecurityTokenDescriptor
//            {
//                Subject = new ClaimsIdentity(new[] {
//                      new Claim(ClaimTypes.Name, e_mail)}),
//                Expires = DateTime.UtcNow.AddDays(1),
//                SigningCredentials = new SigningCredentials(securityKey,
//                SecurityAlgorithms.HmacSha256Signature)
//            };

//            JwtSecurityTokenHandler handler = new JwtSecurityTokenHandler();
//            JwtSecurityToken token = handler.CreateJwtSecurityToken(descriptor);
//            return handler.WriteToken(token);
//        }

//        public static ClaimsPrincipal GetPrincipal(string token)
//        {
//            try
//            {
//                JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();
//                JwtSecurityToken jwtToken = (JwtSecurityToken)tokenHandler.ReadToken(token);
//                if (jwtToken == null)
//                    return null;
//                byte[] key = Convert.FromBase64String(Secret);
//                TokenValidationParameters parameters = new TokenValidationParameters()
//                {
//                    RequireExpirationTime = true,
//                    ValidateIssuer = false,
//                    ValidateAudience = false,
//                    IssuerSigningKey = new SymmetricSecurityKey(key)
//                };
//                SecurityToken securityToken;
//                ClaimsPrincipal principal = tokenHandler.ValidateToken(token,
//                      parameters, out securityToken);
//                return principal;
//            }
//            catch (Exception e)
//            {
//                return null;
//            }
//        }

//        public static string ValidateToken(string token)
//        {
//            string user_name_ = null;
//            ClaimsPrincipal principal = GetPrincipal(token);
//            if (principal == null)
//                return null;
//            ClaimsIdentity identity = null;
//            try
//            {
//                identity = (ClaimsIdentity)principal.Identity;
//            }
//            catch (NullReferenceException)
//            {
//                return null;
//            }
//            Claim user_name_Claim = identity.FindFirst(ClaimTypes.Name);
//            user_name_ = user_name_Claim.Value;
//            return user_name_;
//        }

//        public TokenManagerRiseUpcs()
//        {
//        }
//    }
//}

