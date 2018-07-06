using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Web;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{


    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);

        strmsg = Convert.ToBase64String(encode);

        return strmsg;
    }

    private string Decryptdata(string encryptpwd)
    {
        string decryptpwd = string.Empty;
        UTF8Encoding encodepwd = new UTF8Encoding();
        Decoder Decode = encodepwd.GetDecoder();
        byte[] todecode_byte = Convert.FromBase64String(encryptpwd);
        int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
        char[] decoded_char = new char[charCount];
        Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
        decryptpwd = new String(decoded_char);
        return decryptpwd;
    }

    public void SendMail(string Email, string PageName)
    {
        //string vc;
        //DateTime now = DateTime.Now;
        //vc = now.ToString();
        //vc = vc.GetHashCode().ToString().Trim('-');
        MailMessage Msg = new MailMessage("noreply.dainex@gmail.com", Email);
        Msg.Subject = "DA-InEx Email Verification";
        //Msg.Body = "<html><head></head><body><table><tr><td>Your E-Mail :</td><td>" + Email + "</td></tr><tr><td>Your Code :</td><td>" + vc + "</td></tr></table></body></html>";
        Msg.Body = "<!DOCTYPE html><html><head><title>DA-InEx</title> <meta charset=\"utf - 8\"><meta name=\"viewport\" content=\"width = device - width, initial - scale = 1\"><meta http-equiv=\"X - UA - Compatible\" content=\"IE = edge\" /><style type=\"text / css\"> /* CLIENT-SPECIFIC STYLES */ body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} /* Prevent WebKit and Windows mobile changing default text sizes */ table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} /* Remove spacing between tables in Outlook 2007 and up */ img{-ms-interpolation-mode: bicubic;} /* Allow smoother rendering of resized image in Internet Explorer */ /* RESET STYLES */ img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;} table{border-collapse: collapse !important;} body{height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important;} /* iOS BLUE LINKS */ a[x-apple-data-detectors] { color: inherit !important; text-decoration: none !important; font-size: inherit !important; font-family: inherit !important; font-weight: inherit !important; line-height: inherit !important; } /* MOBILE STYLES */ @media screen and (max-width: 525px) { /* ALLOWS FOR FLUID TABLES */ .wrapper { width: 100% !important; max-width: 100% !important; } /* ADJUSTS LAYOUT OF LOGO IMAGE */ .logo img { margin: 0 auto !important; } /* USE THESE CLASSES TO HIDE CONTENT ON MOBILE */ .mobile-hide { display: none !important; } .img-max { max-width: 100% !important; width: 100% !important; height: auto !important; } /* FULL-WIDTH TABLES */ .responsive-table { width: 100% !important; } /* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE */ .padding { padding: 10px 5% 15px 5% !important; } .padding-meta { padding: 30px 5% 0px 5% !important; text-align: center; } .no-padding { padding: 0 !important; } .section-padding { padding: 50px 15px 50px 15px !important; } /* ADJUST BUTTONS ON MOBILE */ .mobile-button-container { margin: 0 auto; width: 100% !important; } .mobile-button { padding: 15px !important; border: 0 !important; font-size: 16px !important; display: block !important; } } /* ANDROID CENTER FIX */ div[style*=\"margin: 16px 0; \"] { margin: 0 !important; }</style></head><body style=\"margin: 0 !important; padding: 0 !important; \"><!-- HIDDEN PREHEADER TEXT --><div style=\"display: none; font - size: 1px; color: #fefefe; line-height: 1px; font-family: Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\"> Entice the open with some amazing preheader text. Use a little mystery and get those subscribers to read through...</div><!-- HEADER --><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> <tr> <td align=\"center\" style=\" background:#008bff;\"> <!--[if (gte mso 9)|(IE)]> <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"500\"> <tr> <td align=\"center\" valign=\"top\" width=\"500\"> <![endif]--> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 500px;\" class=\"wrapper\"> <tr style=\" background:#008bff;\"> <td align=\"center\" valign=\"top\" style=\"padding: 15px 0;\" class=\"logo\"> <h1 style=\"color:white; background:#008bff; font-family:calibri; font-size:40px;\"><img src='https://jqnp.stripocdn.email/content/guids/8e035efa-21cc-4a64-9e8b-6da49e122106/images/78591523214970261.png' width='300'></h1> </td> </tr> </table> <!--[if (gte mso 9)|(IE)]> </td> </tr> </table> <![endif]--> </td> </tr> <tr> <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 70px 15px 70px 15px;\" class=\"section-padding\"> <!--[if (gte mso 9)|(IE)]> <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"500\"> <tr> <td align=\"center\" valign=\"top\" width=\"500\"> <![endif]--> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 500px;\" class=\"responsive-table\"> <tr> <td> <!-- HERO IMAGE --> <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"> <tr> <td> <!-- COPY --> <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"> <tr> <td align=\"center\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" class=\"padding\">Your Email id is</td> </tr> <tr> <td align=\"center\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding\">" + Email + "</td> </tr> <tr> <td align=\"center\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" class=\"padding\">Your Verification Code is</td> </tr> <tr> <td align=\"center\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding\"><a href=\"" + PageName + "\">" + PageName + "</a></td> </tr> </table> </td> </tr> </table> </td> </tr> </table> <!--[if (gte mso 9)|(IE)]> </td> </tr> </table> <![endif]--> </td> </tr> <tr> <td align=\"center\" style=\"padding: 20px 0px; background:#424242; color:white;\"> <!--[if (gte mso 9)|(IE)]> <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"500\"> <tr> <td align=\"center\" valign=\"top\" width=\"500\"> <![endif]--> <!-- UNSUBSCRIBE COPY --> <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"max-width: 500px;\" class=\"responsive-table\"> <tr> <td align=\"center\" style=\"font-size: 12px; line-height: 18px; font-family: Helvetica, Arial, sans-serif; color:white;\"> <b>DA-InIx</b> by:- Renown Infosys <span style=\"font-family: Arial, sans-serif; font-size: 12px; color:white;\">&nbsp;&nbsp;</span> </td> </tr> </table> <!--[if (gte mso 9)|(IE)]> </td> </tr> </table> <![endif]--> </td> </tr></table></body></html>";
        //Msg.Body = "<html><head></head><body><table><tr><td>Your E-Mail :</td><td>" + Email + "</td></tr><tr><td>Please Click This Link :</td><td><a href='" + PageName + "'>" + PageName + "</a></td></tr></table></body></html>";
        //Msg.Body = "<html><body><div bgcolor='#F4CF95' style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;height:100%;background-color:#f1f1f1;width:100%!important;margin:0;padding:0'><table  style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;background-color:#f1f1f1;width:100%;margin:0;padding:0' cellspacing='0' cellpadding='0' border='0' bgcolor='#f1f1f1'><tbody><tr style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'><td style='height:50px;font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'></td></tr><tr style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'><td style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'></td><td  style='border-radius:5px;font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;display:block!important;max-width:600px!important;clear:both!important;margin:0 auto;padding:0;border:1px solid #dcdcdc' bgcolor='#FFFFFF'><div style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;max-width:600px;display:block;margin:0 auto;padding:0 9% 30px'><table style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;width:100%;margin:0;padding:0' width='100%' cellspacing='0' cellpadding='0' border='0'><tbody><tr style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'><td style='height:50px;font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'></td></tr><tr style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'><td style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'><img src='https://jqnp.stripocdn.email/content/guids/8e035efa-21cc-4a64-9e8b-6da49e122106/images/78591523214970261.png' style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;max-width: 400px;display:block;margin:0;padding:0' alt='Da-InEx Logo' ></td></tr><tr style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'><td style='height:26px;font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'></td></tr><tr style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'><td style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;margin:0;padding:0'><p style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.6em;color:#424951;margin:0 0 12px;padding:0'>Hi Chirag,</p><p style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.6em;color:#424951;margin:0 0 12px;padding:0'>Thank you for registering on website! Click on the Below link to verify your Account. Welcome to Da-InEx Family.</p><p style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.6em;color:#424951;margin:0 0 12px;padding:0'><a href='"+ PageName + "' style='font-family:'Helvetica Neue','Helvetica',Helvetica,Arial,sans-serif;color:white;display:block;border-radius:2px;font-size:16px;background-color:#3498db;text-decoration:none;text-align:center;margin:0 auto;padding:12px 20px' target='_blank' data-saferedirecturl='https://www.google.com/url?hl=en&amp;q=https://u3432876.ct.sendgrid.net/wf/click?upn%3DBzIl5cRgWgIw5aWuDqYaT0oC78Nuw8KrvL-2Fi0tT510xNXFHSE0zls4cQGWmXZZSHMFVUYSuvxRdfzBP5fV9H7Q-3D-3D_SBiXVEkZKS3GrohFyOGzunPS72Z5yzLEMjzcF3UjLIgcx14I1d04P72-2BL7Pah0R0zogukmbqqqOQ0QkYYc-2FsEptKzAN2h3ebZbpvo5JqgTGq8zihGug4TvlQjkggO4RpUM7OtCBqE4HatGYL-2FCFJpY24vExtTkpN6Ib4VqMAw3EcpcbNZULuiAia4mkoIRMC3NEGb7Pg7xs2NMGfL-2F1vn49x-2BIQTP3IXtgOb981Kz-2BEEGy3QAjSIXbOdQzDhfnjCzxlVfc0ZV3W43nF6qdLAl0W3-2BJUgoDqwj3jpVu43lqs-3D&amp;source=gmail&amp;ust=1523298949284000&amp;usg=AFQjCNGvhimqtTqRpalVxc9JgXDbq_DrKg'>Verify Me!</a></p></td></tr></tbody></table></div></tbody></table></div></body></html>";
        Msg.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

        NetworkCredential MyCredentials = new NetworkCredential("noreply.dainex@gmail.com", "Da-InEx@Merakii");
        smtp.Credentials = MyCredentials;
        smtp.Send(Msg);
    }


    public string BindCBy(int AdminID)
    {
        var DC = new DataClassesDataContext();
        var CreatedBy = (from obj in DC.tblAdmins
                         where obj.AdminID == AdminID
                         select obj).FirstOrDefault();
        string AdminName = CreatedBy.FirstName + " " + CreatedBy.LastName;
        return AdminName;
    }

    public string BindCByUser(int StudentID)
    {
        var DC = new DataClassesDataContext();
        var CreatedBy = (from obj in DC.tblStudents
                         where obj.StudentID == StudentID
                         select obj).FirstOrDefault();
        string AdminName = CreatedBy.FirstName + " " + CreatedBy.LastName;
        return AdminName;
    }

    public IList<string> GetAdminDetail(int AdminID)
    {
        var DC = new DataClassesDataContext();
        tblAdmin Data = DC.tblAdmins.SingleOrDefault(ob => ob.AdminID == AdminID);
        IList<string> list = new string[] { Data.FirstName, Data.LastName, Data.UserName, Data.EmailID, Data.ContactNo };
        return list;
    }

    // Admin Login.aspx
    public IList<int> AdminLogin(string Email, string Pwd)
    {

        var DC = new DataClassesDataContext();
        var st = (from ob in DC.tblAdmins
                  where ((ob.EmailID == Email.ToLower() || ob.UserName == Email) && ob.Password == Encryptdata(Pwd))
                  select ob).Count();

        var st1 = (from ob in DC.tblAdmins
                   where ((ob.EmailID == Email.ToLower() || ob.UserName == Email) && ob.Password == Encryptdata(Pwd))
                   select ob).FirstOrDefault();
        IList<int> Login = new int[] { st, st1.AdminID };

        return Login;
    }

    public int SendLink(string Email, string PageName, string userType)
    {
        int cnt = 0;
        if (userType == "admin")
        {
            var DC = new DataClassesDataContext();
            cnt = (from obj in DC.tblAdmins
                   where obj.EmailID == Email.ToLower() || obj.UserName == Email
                   select obj).Count();
            tblAdmin Data = (from obj in DC.tblAdmins
                             where obj.EmailID == Email.ToLower() || obj.UserName == Email
                             select obj).SingleOrDefault();
            string userid = Encryptdata("user:admin:" + Data.AdminID);
            if (cnt > 0)
                SendMail(Data.EmailID, PageName + "?UserName=" + userid);
        }
        else if (userType == "admin1")
        {
            var DC = new DataClassesDataContext();
            cnt = (from obj in DC.tblAdmins
                   where obj.EmailID == Email.ToLower() || obj.UserName == Email
                   select obj).Count();
            tblAdmin Data = (from obj in DC.tblAdmins
                             where obj.EmailID == Email.ToLower() || obj.UserName == Email
                             select obj).SingleOrDefault();
            string userid = Encryptdata("user:admin:" + Data.AdminID);
            if (cnt > 0)
                SendMail(Data.EmailID, PageName + "?SetUserName=" + userid);
        }
        else if (userType == "user")
        {
            var DC = new DataClassesDataContext();
            cnt = (from obj in DC.tblStudents
                   where obj.EmailID == Email.ToLower() || obj.DAID == Email || obj.UserName == Email
                   select obj).Count();
            tblStudent Data = (from obj in DC.tblStudents
                               where obj.EmailID == Email.ToLower() || obj.DAID == Email || obj.UserName == Email
                               select obj).SingleOrDefault();
            string userid = Encryptdata("user:user:" + Data.StudentID);
            if (cnt > 0)
                SendMail(Data.EmailID, PageName + "?UserName=" + userid);
        }
        return cnt;
    }

    public string SetAdminUserName(string userid, string UserName, string Pwd)
    {
        var DC = new DataClassesDataContext();
        int cnt = (from obj in DC.tblAdmins
                   where obj.UserName == UserName
                   select obj).Count();
        if (cnt > 0)
        {
            return "Exiest";
        }
        else
        {
            var userID = Decryptdata(userid);
            List<String> UserDataList = new List<String>(Decryptdata(userid).Split(':'));

            var check = (from user in DC.tblAdmins
                         where user.AdminID == Convert.ToInt32(UserDataList[2])
                         select user.AdminID).Count();
            var AdminData = (from user in DC.tblAdmins
                             where user.AdminID == Convert.ToInt32(UserDataList[2])
                             select user).FirstOrDefault();
            if (check > 0)
            {
                tblAdmin result = (from u in DC.tblAdmins
                                   where u.AdminID == AdminData.AdminID
                                   select u).Single();
                result.UserName = UserName;
                result.Password = Encryptdata(Pwd);
                DC.SubmitChanges();
                return AdminData.AdminID.ToString();
            }
            else
            {
                return null;
            }

        }
    }


    public string ChangePwd(string userid, string Pwd, string userType)
    {
        if (userType == "admin")
        {
            var DC = new DataClassesDataContext();
            var userID = Decryptdata(userid);
            List<String> UserDataList = new List<String>(Decryptdata(userid).Split(':'));
            if (UserDataList[1] == "admin")
            {
                var check = (from user in DC.tblAdmins
                             where user.AdminID == Convert.ToInt32(UserDataList[2])
                             select user.AdminID).Count();
                var AdminData = (from user in DC.tblAdmins
                                 where user.AdminID == Convert.ToInt32(UserDataList[2])
                                 select user).FirstOrDefault();
                if (check > 0)
                {
                    tblAdmin result = (from u in DC.tblAdmins
                                       where u.AdminID == AdminData.AdminID
                                       select u).Single();
                    result.Password = Encryptdata(Pwd);
                    DC.SubmitChanges();
                    return AdminData.AdminID.ToString();
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }
        }
        else if (userType == "user")
        {
            var DC = new DataClassesDataContext();
            var userID = Decryptdata(userid);
            List<String> UserDataList = new List<String>(Decryptdata(userid).Split(':'));
            if (UserDataList[1] == "user")
            {
                int check = (from user in DC.tblStudents
                             where user.StudentID == Convert.ToInt32(UserDataList[2])
                             select user.StudentID).Count();
                tblStudent AdminData = (from user in DC.tblStudents
                                        where user.StudentID == Convert.ToInt32(UserDataList[2])
                                        select user).FirstOrDefault();
                if (check > 0)
                {
                    tblStudent result = (from u in DC.tblStudents
                                         where u.StudentID == AdminData.StudentID
                                         select u).Single();
                    result.Password = Encryptdata(Pwd);
                    DC.SubmitChanges();
                    return AdminData.StudentID.ToString();
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }
        }
        else
        {
            return null;
        }

        //if()

    }

    public IQueryable<tblCompany> BindCompanyGrid()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblCompany> CompanyData = from obj in DC.tblCompanies
                                             where obj.IsActive == true
                                             select obj;

        DC.SubmitChanges();
        return CompanyData;
    }

    public IQueryable<tblCompany> BindCompanyDeactiveGrid()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblCompany> CompanyData = from obj in DC.tblCompanies
                                             where obj.IsActive == false
                                             select obj;

        DC.SubmitChanges();
        return CompanyData;
    }

    public void ChangeActivation(int ID, string TableName)
    {
        var DC = new DataClassesDataContext();
        if (TableName == "tblCompany")
        {
            tblCompany result = (from u in DC.tblCompanies
                                 where u.CompanyID == ID
                                 select u).Single();
            if (result.IsActive)
            {
                result.IsActive = false;
            }
            else
            {
                result.IsActive = true;
            }
        }
        if (TableName == "tblAdmin")
        {
            tblAdmin result = (from u in DC.tblAdmins
                               where u.AdminID == ID
                               select u).Single();
            if (result.IsActive)
            {
                result.IsActive = false;
            }
            else
            {
                result.IsActive = true;
            }
        }
        if (TableName == "tblDesignation")
        {
            tblDesignation result = (from u in DC.tblDesignations
                                     where u.DesignationID == ID
                                     select u).Single();
            if (result.IsDeleted)
            {
                result.IsDeleted = false;
            }
            else
            {
                result.IsDeleted = true;
            }
        }
        DC.SubmitChanges();
    }

    // \Admin Login.aspx


    // AddCompany.aspx

    public Boolean AddCompany(string CompanyName, string CompanyWebsite, string Filename, string CompanyDescription, int AdminID)
    {
        try
        {
            var DC = new DataClassesDataContext();
            tblCompany CompanyData = new tblCompany();
            CompanyData.Name = CompanyName;
            CompanyData.Website = CompanyWebsite;
            CompanyData.ProfilePic = Filename;
            CompanyData.Description = CompanyDescription;
            CompanyData.IsActive = true;
            CompanyData.CreatedBy = AdminID;
            CompanyData.CreatedOn = DateTime.Now;
            DC.tblCompanies.InsertOnSubmit(CompanyData);
            DC.SubmitChanges();
            return true;
        }
        catch (Exception e)
        {
            return false;
        }
    }

    // \AddCompany.aspx

    // AddCompanyCity.aspx

    public IQueryable<CountryMaster> GetCountryList()
    {
        var DC = new DataClassesDataContext();
        IQueryable<CountryMaster> Data = from obj in DC.CountryMasters
                                         select obj;
        return Data;

    }

    public IQueryable<StateMaster> GetStateList(int CountryID)
    {
        var DC = new DataClassesDataContext();
        IQueryable<StateMaster> Data = from obj in DC.StateMasters
                                       where obj.ID == CountryID
                                       select obj;
        return Data;
    }

    public IQueryable<CityMaster> GetCityList(int StateID)
    {
        var DC = new DataClassesDataContext();
        IQueryable<CityMaster> Data = from obj in DC.CityMasters
                                      where obj.ID == StateID
                                      select obj;
        return Data;
    }

    public IQueryable<tblCompanyCity> GetCompanyCityList()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblCompanyCity> Data = from obj in DC.tblCompanyCities
                                          select obj;
        return Data;
    }

    // AddCompanyCity.aspx

    // AddAdmin.aspx

    public void AddAdmin(string FirstName, string LastName, string EmailID, string ContactNumber, int AdminID, string PageName)
    {
        var DC = new DataClassesDataContext();
        tblAdmin AdminData = new tblAdmin();
        AdminData.FirstName = FirstName;
        AdminData.LastName = LastName;
        AdminData.EmailID = EmailID;
        AdminData.ContactNo = ContactNumber;
        AdminData.IsActive = true;
        AdminData.CreatedBy = AdminID;
        AdminData.CreatedOn = DateTime.Now;
        DC.tblAdmins.InsertOnSubmit(AdminData);
        DC.SubmitChanges();

        SendLink(EmailID, PageName + "Login.aspx", "admin1");
    }

    public IQueryable<tblAdmin> BindAdminGrid(int AdminID)
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblAdmin> AdminData = from obj in DC.tblAdmins
                                         where obj.IsActive == true && obj.AdminID != AdminID
                                         select obj;

        DC.SubmitChanges();
        return AdminData;
    }

    public IQueryable<tblAdmin> BindAdminDeactiveGrid()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblAdmin> AdminData = from obj in DC.tblAdmins
                                         where obj.IsActive == false
                                         select obj;

        DC.SubmitChanges();
        return AdminData;
    }

    // \AddAdmin.aspx

    // AddDesignation.aspx

    public Boolean AddDesignation(string Designation, int AdminID)
    {
        var DC = new DataClassesDataContext();
        int cnt = (from obj in DC.tblDesignations
                   where obj.Name == Designation && obj.IsDeleted == false
                   select obj).Count();
        if (cnt > 0)
        {
            return false;
        }
        int cnt2 = (from obj in DC.tblDesignations
                    where obj.Name == Designation && obj.IsDeleted == true
                    select obj).Count();
        if (cnt2 > 0)
        {
            tblDesignation DesignationData = DC.tblDesignations.SingleOrDefault(ob => ob.Name == Designation);
            DesignationData.IsDeleted = false;
            DesignationData.UpdatedBy = AdminID;
            DesignationData.UpdatedOn = DateTime.Now;
        }
        else
        {
            tblDesignation DesignationData = new tblDesignation();
            DesignationData.Name = Designation;
            DesignationData.IsDeleted = false;
            DesignationData.CreatedBy = AdminID;
            DesignationData.CreatedOn = DateTime.Now;
            DC.tblDesignations.InsertOnSubmit(DesignationData);
        }
        DC.SubmitChanges();
        return true;
    }

    public IQueryable<tblDesignation> BindDesignationGrid()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblDesignation> DesignationData = from obj in DC.tblDesignations
                                                     where obj.IsDeleted == false
                                                     select obj;

        DC.SubmitChanges();
        return DesignationData;
    }

    public IQueryable<tblDesignation> BindDesignationDeletedGrid()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblDesignation> DesignationData = from obj in DC.tblDesignations
                                                     where obj.IsDeleted == true
                                                     select obj;

        DC.SubmitChanges();
        return DesignationData;
    }

    // \AddDesignation.aspx

    // ViewStudent.aspx

    public IQueryable<tblProgram> GetProgramList()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblProgram> ProgramData = (from obj in DC.tblPrograms
                                              where obj.IsActive == true
                                              orderby obj.ProgramName ascending
                                              select obj);
        return ProgramData;
    }

    public String GetProgramFirst()
    {
        var DC = new DataClassesDataContext();
        String ProgramData = (from obj in DC.tblPrograms
                              where obj.IsActive == true
                              orderby obj.ProgramName ascending
                              select obj.ProgramCode).FirstOrDefault();
        return ProgramData;
    }

    public List<string> YearListByCode(string Code)
    {
        var DC = new DataClassesDataContext();
        List<String> Data = (from obj in DC.tblDAIICTStudentDatas
                             where obj.StudentID.Substring(4, 2) == Code
                             select obj.StudentID.Substring(0, 4)).Distinct().ToList();
        return Data;
    }

    public String GetYearFirst(string Code)
    {
        var DC = new DataClassesDataContext();
        String Data = (from obj in DC.tblDAIICTStudentDatas
                       where obj.StudentID.Substring(4, 2) == Code
                       select obj.StudentID.Substring(0, 4)).Distinct().FirstOrDefault();
        return Data;
    }

    public IQueryable<tblStudent> GetStudentListByProgramYear(string Program, string Year)
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblStudent> Data = from obj in DC.tblStudents
                                      where obj.DAID.Substring(0, 4) == Year && obj.DAID.Substring(4, 2) == Program
                                      select obj;
        return Data;
    }

    public IList<string> GetStudentDetail(int StudentID)
    {
        var DC = new DataClassesDataContext();
        tblStudent Data = DC.tblStudents.SingleOrDefault(ob => ob.StudentID == StudentID);
        IList<string> list = new string[] { Data.DAID, Data.FirstName, Data.LastName, Data.UserName, Data.EmailID, Data.Gender.ToString(), Data.ContactNo, Data.Resume, Data.LinkedIn, Data.GitHub, Data.StackOverflow, Data.HeakerEarth, Data.HeakerRank, Data.Codechef, Data.Codeforce };
        return list;
    }

    public IQueryable<tblExperience> GetStudentExpereinceByID(int StudentID)
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblExperience> Data = from obj in DC.tblExperiences
                                         where obj.CreatedBy == StudentID
                                         select obj;
        return Data;
    }

    // \ViewStudent.aspx

    // AddRecruitment.aspx

    public IQueryable<tblCompany> getCompanyList()
    {
        var DC = new DataClassesDataContext();
        var Data = from obj in DC.tblCompanies
                   where obj.IsActive == true
                   select obj;
        return Data;
    }

    public void AddRecruitment(int CompanyID, int ProgramID, int SelectedStudents, int AppearedStudents, string Year, int Package, int DesignationID, int AdminID)
    {
        var DC = new DataClassesDataContext();
        tblRecruitment recruitment = new tblRecruitment();
        recruitment.CompanyID = CompanyID;
        recruitment.ProgramID = ProgramID;
        recruitment.NoOfSelectedStudent = SelectedStudents;
        recruitment.NoOfAppearedStudent = AppearedStudents;
        recruitment.Year = Year;
        recruitment.Package = Package;
        recruitment.DesignationID = DesignationID;
        recruitment.CreatedBy = AdminID;
        recruitment.CreatedOn = DateTime.Now;
        DC.tblRecruitments.InsertOnSubmit(recruitment);
        DC.SubmitChanges();
    }

    public IQueryable<tblDesignation> getDesignationList()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblDesignation> Data = from obj in DC.tblDesignations
                                          where obj.IsDeleted == false
                                          select obj;
        return Data;
    }



    // \AddRecruitment.aspx

    // ViewExperiences.aspx

    public IQueryable<tblExperience> GetActiveExperienceList()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblExperience> Data = from obj in DC.tblExperiences
                                         where obj.IsActive == true
                                         select obj;
        return Data;
    }

    public IList<string> GetExperienceDetail(int ExeperienecesID)
    {
        var DC = new DataClassesDataContext();
        tblExperience Data = (from obj in DC.tblExperiences
                              where obj.ExeperienecesID == ExeperienecesID
                              select obj).SingleOrDefault();
        IList<string> list = new string[] { Data.CreatedBy.ToString(), Data.CompanyID.ToString(), Data.DesignationID.ToString(), Data.Year, Data.JobTypeID.ToString(), Data.IsSelected.ToString(), Data.CTC.ToString(), Data.InCamp.ToString() };
        return list;
    }

    public IQueryable<tblExperience> GetDeactiveExperienceList()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblExperience> Data = from obj in DC.tblExperiences
                                         where obj.IsActive == false
                                         select obj;
        return Data;
    }

    // ViewExperiences.aspx


    // ViewQuestionAnswer.aspx


    public IQueryable<tblQuestion> GetQuestionList()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblQuestion> Data = from obj in DC.tblQuestions
                                       orderby obj.QuestionID descending
                                       select obj;
        return Data;
    }

    public string GetQuestionByID(int QuestionID)
    {
        var DC = new DataClassesDataContext();
        string question = (from obj in DC.tblQuestions
                           where obj.QuestionID == QuestionID
                           select obj.Question).SingleOrDefault();
        return question;
    }

    public IQueryable<tblAnswer> GetAnswerByQuestionID(int QuestionID)
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblAnswer> Data = from obj in DC.tblAnswers
                                     where obj.QuestionID == QuestionID
                                     select obj;
        return Data;
    }

    // \ViewQuestionAnswer.aspx


    // Client Side

    // Login.aspx

    public IList<int> UserLogin(string Email, string Pwd)
    {
        var DC = new DataClassesDataContext();
        var st = (from ob in DC.tblStudents
                  where ((ob.EmailID == Email.ToLower() || ob.DAID == Email || ob.UserName == Email) && ob.Password == Encryptdata(Pwd))
                  select ob).Count();

        var st1 = (from ob in DC.tblStudents
                   where ((ob.EmailID == Email.ToLower() || ob.DAID == Email || ob.UserName == Email) && ob.Password == Encryptdata(Pwd))
                   select ob).FirstOrDefault();
        IList<int> Login = new int[] { st, st1.StudentID };

        return Login;
    }

    public string UserRegistration(string DAID, int Gender, string UserName, string Password)
    {

        var DC = new DataClassesDataContext();
        int cnt = (from obj in DC.tblPrograms
                   where obj.ProgramCode == DAID.Substring(4, 2)
                   select obj).Count();

        if (cnt > 0)
        {
            int cnt1 = (from obj in DC.tblDAIICTStudentDatas
                        where obj.StudentID == DAID
                        select obj).Count();
            if (cnt1 > 0)
            {
                int cnt2 = (from obj in DC.tblStudents
                            where obj.DAID == DAID
                            select obj).Count();
                if (cnt2 > 0)
                {
                    return "Already Exist";
                }
                else
                {
                    tblDAIICTStudentData Data = (from obj in DC.tblDAIICTStudentDatas
                                                 where obj.StudentID == DAID
                                                 select obj).SingleOrDefault();
                    tblStudent student = new tblStudent();
                    student.DAID = Data.StudentID;
                    student.FirstName = Data.FirstName;
                    student.LastName = Data.LastName;
                    student.EmailID = Data.EmailID;
                    student.ContactNo = Data.ContactNo;
                    student.Gender = Gender;
                    student.UserName = UserName;
                    student.Password = Encryptdata(Password);
                    student.IsVerify = false;
                    student.IsBlocked = false;
                    student.CreatedOn = DateTime.Now;
                    student.LastLogin = DateTime.Now;
                    DC.tblStudents.InsertOnSubmit(student);
                    DC.SubmitChanges();
                    SendLink(Data.EmailID, "http://localhost:49818/Default.aspx", "user");
                    return "Available";
                }
            }
            else
            {
                return "Your Detail Not Available, Please Contact to Admin.";
            }
        }
        else
        {
            return "Invalied Progarm";
        }
    }

    public string CheckDAID(string DAID)
    {
        var DC = new DataClassesDataContext();
        int cnt = (from obj in DC.tblPrograms
                   where obj.ProgramCode == DAID.Substring(4, 2)
                   select obj).Count();

        if (cnt > 0)
        {
            int cnt1 = (from obj in DC.tblDAIICTStudentDatas
                        where obj.StudentID == DAID
                        select obj).Count();
            if (cnt1 > 0)
            {
                int cnt2 = (from obj in DC.tblStudents
                            where obj.DAID == DAID
                            select obj).Count();
                if (cnt2 > 0)
                {
                    return "Already Exist";
                }
                else
                {
                    return "Available";
                }
            }
            else
            {
                return "Your Detail Not Available, Please Contact to Admin.";
            }
        }
        else
        {
            return "Invalied Progarm";
        }
    }

    // \Login.aspx

    // Default.aspx

    public IQueryable<tblExperience> GetExperienceFeedList(int UserID)
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblExperience> Data = from obj in DC.tblExperiences
                                         join obj1 in DC.tblInteresteds
                                         on obj.CompanyID equals obj1.CompanyID
                                         //where obj1.StudentID == UserID || obj.CreatedBy == UserID
                                         orderby obj.CreatedBy descending
                                         select obj;
        return Data;
    }

    public IQueryable<tblExperienceRound> GetExperienceRoundFeedList(int ExperienceID)
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblExperienceRound> Data = from obj in DC.tblExperienceRounds
                                              where obj.ExperiencesID == ExperienceID
                                              select obj;
        return Data;
    }

    public IQueryable<tblExperiencesQuestion> GetExperienceQuestionFeedList(int ExperienceRoundID)
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblExperiencesQuestion> Data = from obj in DC.tblExperiencesQuestions
                                                  where obj.ExperiencesRoundID == ExperienceRoundID
                                                  select obj;
        return Data;
    }

    public IList<string> GetCompanyName(int CompanyID)
    {
        var DC = new DataClassesDataContext();
        tblCompany company = DC.tblCompanies.SingleOrDefault(ob => ob.CompanyID == CompanyID);
        IList<string> Data = new string[] { company.Name, company.ProfilePic };
        return Data;
    }

    public string GetDesignationName(int DesignationID)
    {
        var DC = new DataClassesDataContext();
        return DC.tblDesignations.SingleOrDefault(ob => ob.DesignationID == DesignationID).Name;
    }

    public string GetJobTypeName(int JobTypeID)
    {
        var DC = new DataClassesDataContext();
        return DC.tblJobTypes.SingleOrDefault(ob => ob.JobTypeID == JobTypeID).JobType;
    }

    public string GetRoundName(int RoundID)
    {
        var DC = new DataClassesDataContext();
        return DC.tblRounds.SingleOrDefault(ob => ob.RoundID == RoundID).RoundName;
    }

    public string GetUserUserName(int UserID)
    {
        var DC = new DataClassesDataContext();
        return DC.tblStudents.SingleOrDefault(ob => ob.StudentID == UserID).DAID.ToString();
    }

    public void AddInterestedCompany(String CompanyID, int UserID)
    {
        var DC = new DataClassesDataContext();
        String str = "";
        CompanyID = CompanyID.Remove(CompanyID.Length - 1);
        List<String> CompanyList = new List<String>(CompanyID.Split(','));
        foreach (String ID in CompanyList)
        {
            int cnt = (from obj in DC.tblInteresteds
                       where obj.StudentID == UserID && obj.CompanyID == Convert.ToInt32(ID)
                       select obj).Count();
            if (cnt > 0)
            {
                tblInterested interested = DC.tblInteresteds.Single(ob => ob.StudentID == UserID && ob.CompanyID == Convert.ToInt32(ID));
                interested.IsActive = true;
                DC.SubmitChanges();
            }
            else
            {
                tblInterested interested = new tblInterested();
                interested.CompanyID = Convert.ToInt32(ID);
                interested.StudentID = UserID;
                interested.IsActive = true;
                interested.CreatedOn = DateTime.Now;
                DC.tblInteresteds.InsertOnSubmit(interested);
                DC.SubmitChanges();
            }
        }
    }

    // \Default.aspx

    // AddExperience.aspx

    public IQueryable<tblJobType> GetJobType()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblJobType> Data = from obj in DC.tblJobTypes
                                      select obj;
        return Data;
    }

    public IQueryable<CityMaster> GetCompanyCity(int CompanyID)
    {
        var DC = new DataClassesDataContext();
        IQueryable<CityMaster> Data = from obj in DC.tblCompanyCities
                                      join obj1 in DC.CityMasters
                                      on obj.CityID equals obj1.ID
                                      where obj.CompanyID == CompanyID
                                      select obj1;
        return Data;
    }

    public int AddExperience(int CompanyID, int DesignationID, string Year, bool InCamp, int JobTypeID, int IsSelected, int CTC, int NoOfRound, int OverallExperienceRate, string Summary, int UserID)
    {
        var DC = new DataClassesDataContext();
        tblExperience experience = new tblExperience();
        experience.CompanyID = CompanyID;
        experience.DesignationID = DesignationID;
        experience.Year = Year;
        experience.InCamp = InCamp;
        experience.JobTypeID = JobTypeID;
        if (IsSelected == 1)
            experience.IsSelected = true;
        else
            experience.IsSelected = false;
        experience.CTC = CTC;
        //experience.CityID = CityID;
        experience.NoOfRound = NoOfRound;
        experience.OverallExperienceRate = OverallExperienceRate;
        experience.Summary = Summary;
        experience.IsActive = true;
        experience.CreatedBy = UserID;
        experience.CreatedOn = DateTime.Now;
        DC.tblExperiences.InsertOnSubmit(experience);
        DC.SubmitChanges();
        int ID = (from obj in DC.tblExperiences
                  orderby obj.ExeperienecesID descending
                  select obj.ExeperienecesID).FirstOrDefault();
        return ID;
    }

    public int AddExperienceRound(int ExperienceID, int RoundID, int NoOfQuestions, int LevelOfDifficulty)
    {
        var DC = new DataClassesDataContext();
        tblExperienceRound round = new tblExperienceRound();
        round.ExperiencesID = ExperienceID;
        round.RoundID = RoundID;
        round.NoOfQuestions = NoOfQuestions;
        round.LevelOfDifficulty = LevelOfDifficulty;
        round.CretaedOn = DateTime.Now;
        DC.tblExperienceRounds.InsertOnSubmit(round);
        DC.SubmitChanges();
        int ID = (from obj in DC.tblExperienceRounds
                  orderby obj.ExperiencesRoundID descending
                  select obj.ExperiencesRoundID).FirstOrDefault();
        return ID;
    }

    public void AddExperienceRoundQA(int ExperienceRoundID, String Question, String Answer)
    {
        var DC = new DataClassesDataContext();
        tblExperiencesQuestion question = new tblExperiencesQuestion();
        question.ExperiencesRoundID = ExperienceRoundID;
        question.Question = Question;
        question.Answer = Answer;
        question.CreatedOn = DateTime.Now;
        DC.tblExperiencesQuestions.InsertOnSubmit(question);
        DC.SubmitChanges();
    }

    public IQueryable<tblRound> GetRoundList()
    {
        var DC = new DataClassesDataContext();
        IQueryable<tblRound> Data = from obj in DC.tblRounds
                                    select obj;
        return Data;
    }

    // \AddExperience.aspx

    // ForumFeed.aspx

    public void AddForumAnswer(int QID, String Answer, int UserID)
    {
        var DC = new DataClassesDataContext();
        tblAnswer answer = new tblAnswer();
        answer.QuestionID = QID;
        answer.Answer = Answer;
        answer.CreatedBy = UserID;
        answer.CreatedOn = DateTime.Now;
        DC.tblAnswers.InsertOnSubmit(answer);
        DC.SubmitChanges();
    }

    public void AddForumQuestion(String Question, int UserID)
    {
        var DC = new DataClassesDataContext();
        tblQuestion question = new tblQuestion();
        question.Question = Question;
        question.CreatedBy = UserID;
        question.CreatedOn = DateTime.Now;
        DC.tblQuestions.InsertOnSubmit(question);
        DC.SubmitChanges();
    }

    // \ForumFeed.aspx

    // \Client Side

}
