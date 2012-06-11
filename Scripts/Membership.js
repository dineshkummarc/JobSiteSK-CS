Type.registerNamespace("JSSK");


JSSK.Membership=function()
{
    this._waitId="";
    this._waitmsg=null;
}

JSSK.Membership.prototype=
{
    get_WaitLabelId:function()
    {
        return this._waitId;
    },
    set_WaitLabelId:function(value)
    {
        this._waitId=value;
    },
    BeginLogin:function(uid,pwd,rememberme)
    {
        this._waitmsg=new JSSK.ProgressMessage(this._waitId);
        this._waitmsg.ShowMessage("Signing in...");
        Sys.Services.AuthenticationService.login(uid,pwd,rememberme,null,null,Function.createDelegate(this,this.EndLogin),Function.createDelegate(this,this.OnError),null);
    },
    EndLogin:function(result,context,methodname)
    {
        if(result)
        {
            this.BeginRoleLoad();
        }
        else
        {
            this._waitmsg.HideMessage();
            alert("Invalid User ID or Password!");
        }
    },
    BeginLogout:function()
    {
    },
    EndLogout:function(result,context,methodname)
    {
    },
    BeginRoleLoad:function()
    {
        Sys.Services.RoleService.load(Function.createDelegate(this,this.EndRoleLoad),Function.createDelegate(this,this.OnError));
    },
    EndRoleLoad:function(result)
    {
        if(this.IsUserInRole("jobseeker"))
        {
            window.location.href="jobseeker/jobsearch.aspx";
        }
        if(this.IsUserInRole("employer"))
        {
            window.location.href="employer/addeditposting.aspx";
        }
        if(this.IsUserInRole("admin"))
        {
            window.location.href="admin/default.aspx";
        }
    },
    IsUserInRole:function(roleName)
    {
        return Sys.Services.RoleService.isUserInRole(roleName);
    },
    OnError:function(result,context,methodname)
    {
        waitmsg.HideMessage();
        alert(err.get_message());
    }
}

JSSK.Membership.registerClass("JSSK.Membership");

