using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService" in both code and config file together.
[ServiceContract]
public interface IService
{

    [OperationContract]
    string BindCBy(int AdminID);

    [OperationContract]
    string BindCByUser(int StudentID);

    [OperationContract]
    IList<string> GetAdminDetail(int AdminID);
    


    // Admin Login.aspx
    [OperationContract]
    IList<int> AdminLogin(string Email, string Pwd);
    [OperationContract]
    int SendLink(string Email, string PageName, string usertype);
    [OperationContract]
    string ChangePwd(string Email, string Pwd, string userType);

    [OperationContract]
    string SetAdminUserName(string userid, string UserName, string Pwd);
    // \Admin Login.aspx

    // ViewCompany.aspx
    [OperationContract]
    IQueryable<tblCompany> BindCompanyGrid();
    [OperationContract]
    IQueryable<tblCompany> BindCompanyDeactiveGrid();
    
    [OperationContract]
    void ChangeActivation(int ID, string TableName);


    // AddCompany.aspx
    [OperationContract]
    Boolean AddCompany(string CompanyName, string CompanyWebsite, string Filename, string CompanyDescription, int AdminID);
    // \AddCompany.aspx

    // AddCompanyCity.aspx
    [OperationContract]
    IQueryable<CountryMaster> GetCountryList();

    [OperationContract]
    IQueryable<StateMaster> GetStateList(int CountryID);

    [OperationContract]
    IQueryable<CityMaster> GetCityList(int StateID);

    [OperationContract]
    IQueryable<tblCompanyCity> GetCompanyCityList();

    // AddCompanyCity.aspx

    // AddAdmin.aspx
    [OperationContract]
    void AddAdmin(string FirstName, string LastName, string EmailID, string ContactNumber, int AdminID, string PageName);
    [OperationContract]
    IQueryable<tblAdmin> BindAdminGrid(int AdminID);
    [OperationContract]
    IQueryable<tblAdmin> BindAdminDeactiveGrid();

    // \AddAdmin.aspx


    // AddDesignation.aspx

    [OperationContract]
    Boolean AddDesignation(string Designation, int AdminID);
    [OperationContract]
    IQueryable<tblDesignation> BindDesignationGrid();
    [OperationContract]
    IQueryable<tblDesignation> BindDesignationDeletedGrid();

    // \AddDesignation.aspx


    // ViewStudent.aspx

    [OperationContract]
    IQueryable<tblProgram> GetProgramList();

    [OperationContract]
    String GetProgramFirst();

    [OperationContract]
    List<String> YearListByCode(String Code);

    [OperationContract]
    String GetYearFirst(String Code);

    [OperationContract]
    IQueryable<tblStudent> GetStudentListByProgramYear(string Program, string Year);

    [OperationContract]
    IList<string> GetStudentDetail(int StudentID);

    [OperationContract]
    IQueryable<tblExperience> GetStudentExpereinceByID(int StudentID);

    // \ViewStudent.aspx

    // AddRecruitment.aspx

    [OperationContract]
    IQueryable<tblCompany> getCompanyList();

    [OperationContract]
    void AddRecruitment(int CompanyID, int ProgramID, int SelectedStudents, int AppearedStudents, String Year, int Package, int DesignationID, int AdminID);

    [OperationContract]
    IQueryable<tblDesignation> getDesignationList();

    // \AddRecruitment.aspx

    // ViewExperiences.aspx

    [OperationContract]
    IQueryable<tblExperience> GetActiveExperienceList();

    [OperationContract]
    IList<string> GetExperienceDetail(int ExeperienecesID);

    [OperationContract]
    IQueryable<tblExperience> GetDeactiveExperienceList();

    // ViewExperiences.aspx

    // ViewQuestionAnswer.aspx

    [OperationContract]
    IQueryable<tblQuestion> GetQuestionList();

    [OperationContract]
    string GetQuestionByID(int QuestionID);

    [OperationContract]
    IQueryable<tblAnswer> GetAnswerByQuestionID(int QuestionID);

    // \ViewQuestionAnswer.aspx



    // Client Side

    // Login.aspx

    [OperationContract]
    IList<int> UserLogin(string Email, string Pwd);

    [OperationContract]
    string CheckDAID(string DAID);

    [OperationContract]
    string UserRegistration(string DAID, int Gender, string UserName, string Password);

    // \Login.aspx

    // Default.aspx

    [OperationContract]
    IQueryable<tblExperience> GetExperienceFeedList(int UserID);

    [OperationContract]
    IQueryable<tblExperienceRound> GetExperienceRoundFeedList(int ExperienceID);

    [OperationContract]
    IQueryable<tblExperiencesQuestion> GetExperienceQuestionFeedList(int ExperienceRoundID);

    [OperationContract]
    IList<string> GetCompanyName(int CompanyID);

    [OperationContract]
    string GetDesignationName(int DesignationID);

    [OperationContract]
    string GetJobTypeName(int JobTypeID);

    [OperationContract]
    string GetRoundName(int RoundID);

    [OperationContract]
    string GetUserUserName(int UserID);

    [OperationContract]
    void AddInterestedCompany(String CompanyID, int UserID);

    // \Default.aspx

    // AddExperience.aspx

    [OperationContract]
    IQueryable<tblJobType> GetJobType();

    [OperationContract]
    IQueryable<CityMaster> GetCompanyCity(int CompanyID);

    [OperationContract]
    int AddExperience(int CompanyID, int DesignationID, string Year, Boolean InCamp, int JobTypeID, int IsSelected, int CTC, int NoOfRound, int OverallExperienceRate, string Summary, int UserID);

    [OperationContract]
    int AddExperienceRound(int ExperienceID, int RoundID, int NoOfQuestions, int LevelOfDifficulty);

    [OperationContract]
    void AddExperienceRoundQA(int ExperienceRoundID, String Question, String Answer);

    [OperationContract]
    IQueryable<tblRound> GetRoundList();

    // \AddExperience.aspx

    // ForumFeed.aspx

    [OperationContract]
    void AddForumAnswer(int QID, String Answer, int UserID);

    [OperationContract]
    void AddForumQuestion(String Question, int UserID);

    // \ForumFeed.aspx

    // \Client Side

}