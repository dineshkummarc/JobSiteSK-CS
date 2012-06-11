Type.registerNamespace("JSSK");

JSSK.ProgressMessage=function(id)
{
    this._elementId=id;
    var element=$get(this._elementId);
    element.className="waitmessage";
    element.style.position="absolute";
    element.style.left=0;
    element.style.top=0;
}

JSSK.ProgressMessage.prototype=
{
    ShowMessage:function(message)
    {
        var element=$get(this._elementId);
        if(element.innerText)
        {
            element.innerText=message;
        }
        else
        {
            element.textContent=message;
        }    
        element.style.visibility="visible";
    },
    HideMessage:function()
    {
        var element=$get(this._elementId);
        element.style.visibility="hidden";
    }
}

JSSK.ProgressMessage.registerClass("JSSK.ProgressMessage");