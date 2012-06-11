Type.registerNamespace("JSSK");

JSSK.HoverButton=function(imgId,anchorId,baseImage,navigateUrl)
{

    this._elementId=imgId;
    this._baseImage=baseImage;
    
    $get(anchorId).href=navigateUrl;

    var element=$get(this._elementId);    
    element.border=0;
    
    element.onmouseover=Function.createDelegate(this,this.SetHover);
    element.onmouseout=Function.createDelegate(this,this.SetNormal);
    element.onmousedown=Function.createDelegate(this,this.SetPressed);
    element.onmouseup=Function.createDelegate(this,this.SetNormal);

    this.SetNormal();    
    
}

JSSK.HoverButton.prototype=
{
    SetNormal:function()
    {
        var element=$get(this._elementId);
        element.src=this._baseImage + "N.jpg"
    },
    SetPressed:function()
    {
        var element=$get(this._elementId);
        element.src=this._baseImage + "P.jpg"
    },
    SetHover:function()
    {
        var element=$get(this._elementId);
        element.src=this._baseImage + "H.jpg"
    }
}

JSSK.HoverButton.registerClass("JSSK.HoverButton");

