using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Data;

namespace BusinessLayer
{
    public partial class SessionData
    {
        public void Clear()
        {
            HttpContext.Current.Session.Clear();
        }

        public void AddToSession(string key, object value)
        {
            HttpContext.Current.Session[key] = value;
        }

        public object GetFromSession(string key)
        {
            return HttpContext.Current.Session[key];
        }

    }

    public class CurrentUser
    {
        private string key_currentUserId = "currentUserId";
        private string key_currentUsername = "currentUserName";
        private string key_currentName = "currentName";

        public int CurrentUserId
        {
            get
            {
                if (HttpContext.Current.Session[key_currentUserId] != null)
                    return (int)HttpContext.Current.Session[key_currentUserId];
                return 0;
            }
            set
            {
                HttpContext.Current.Session[key_currentUserId] = value;
            }
        }

        public string CurrentUsername
        {
            get
            {
                return (string)HttpContext.Current.Session[key_currentUsername];
            }
            set
            {
                HttpContext.Current.Session[key_currentUsername] = value;
            }
        }

        public string CurrentName
        {
            get
            {
                return (string)HttpContext.Current.Session[key_currentName];
            }
            set
            {
                HttpContext.Current.Session[key_currentName] = value;
            }
        }

        
    }
}
