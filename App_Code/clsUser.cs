using System;
using System.Collections;
using System.Collections.Generic;
using System.Web;

namespace BusinessLayer
{
    public class clsUser
    {
        DataLayer.clsUserData DBLayer;

        private int _StatusId;
        private string _Mobile;
        private int _BranchId;
        private string _BranchName;
        private string _Userstatus;
        private int _SNo;
        private string _keywords;
        private int? _UserId;
        private string _Username;
        private string _Pwd;
        private string _NewPwd;
        private string _Fullname;
        private string _Userlogintype;
        private string _Activestatus;
        private int _RoleId;
        private string _Rolename;
        private bool _IsActive;
        private bool _IsDeleted;
        private DateTime _CreatedOn;
        private int _CreatedBy;

        public int StatusId
        {
            get { return _StatusId; }
            set { _StatusId = value; }
        }

        public string Mobile
        {
            get { return _Mobile; }
            set { _Mobile = value; }
        }

        public int BranchId
        {
            get { return _BranchId; }
            set { _BranchId = value; }
        }

        public string BranchName
        {
            get { return _BranchName; }
            set { _BranchName = value; }
        }

        public string Userstatus
        {
            get { return _Userstatus; }
            set { _Userstatus = value; }
        }

        public int SNo
        {
            get { return _SNo; }
            set { _SNo = value; }
        }
        public string keywords
        {
            get { return _keywords; }
            set { _keywords = value; }
        }
        public int? UserId
        {
            get { return _UserId; }
            set { _UserId = value; }
        }
        public string Username
        {
            get { return _Username; }
            set { _Username = value; }
        }

        public string Userlogintype
        {
            get { return _Userlogintype; }
            set { _Userlogintype = value; }
        }

        public string Activestatus
        {
            get { return _Activestatus; }
            set { _Activestatus = value; }
        }

        public string Pwd
        {
            get { return _Pwd; }
            set { _Pwd = value; }
        }
        public string NewPwd
        {
            get { return _NewPwd; }
            set { _NewPwd = value; }
        }
        public string Fullname
        {
            get { return _Fullname; }
            set { _Fullname = value; }
        }
        public int RoleId
        {
            get { return _RoleId; }
            set { _RoleId = value; }
        }

        public string Rolename
        {
            get { return _Rolename; }
            set { _Rolename = value; }
        }
        public bool IsActive
        {
            get { return _IsActive; }
            set { _IsActive = value; }
        }
        public bool IsDeleted
        {
            get { return _IsDeleted; }
            set { _IsDeleted = value; }
        }
        public DateTime CreatedOn
        {
            get { return _CreatedOn; }
            set { _CreatedOn = value; }
        }
        public int CreatedBy
        {
            get { return _CreatedBy; }
            set { _CreatedBy = value; }
        }

        public clsUser()
        {
            DBLayer = new DataLayer.clsUserData();
        }

        public void Add(clsUser obj)
        {
            DBLayer.Add(obj);
        }

        public clsUser Get(int Id)
        {
            return DBLayer.Get(Id);
        }

        public List<clsUser> GetAll(clsUser obj)
        {
            return DBLayer.GetAll(obj);
        }

        public void Remove(int Id)
        {
            DBLayer.Remove(Id);
        }

        public clsUser CheckExist(string username)
        {
            return DBLayer.CheckExist(username);
        }

        public clsUser CheckValidate(clsUser obj)
        {
            return DBLayer.CheckValidate(obj);
        }

        public string ChangePassword(clsUser obj)
        {
            return DBLayer.ChangePassword(obj);
        }
    }
}
