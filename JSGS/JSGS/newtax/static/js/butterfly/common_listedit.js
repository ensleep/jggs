

function onkeydowns()
{
    try {
        if (event.keyCode == 13)
        {

            if (document.activeElement.type == "password" || document.activeElement.type == "text" || document.activeElement.type == "select-one" || document.activeElement.type == "checkbox" || document.activeElement.type == "radio")

            {
                event.keyCode = 9;
                //changeElementColor();
            }

        }
    }
    catch(Exception)
    {
    }
}

function checkit(checkbox, list, checkmode) {
    if (checkbox.checked) {

        if(list.length==0) return;
        var checks=document.getElementsByName(document.getElementById(list[0]).name);
        var first;
        var last;
        if(checks!=null){
            for(var i=0;i<checks.length;i++){
               if(!checks[i].disabled){
                  break;
               }
               else{
                   first=checks[i];
               }

            }
            for(var i=checks.length-1;i>=0;i--){
               if(!checks[i].disabled){
                  break;
               }
               else{
                   last=checks[i];
               }
            }
        }
         if(checkmode==1){
             if(document.getElementById(list[0])==last){
                 for (var i = 0; i < list.length; ++i) {
                    var obj = document.getElementById(list[i]);
                    obj.disabled = false;
                 }
             }
             else{
                 alert("这一行不能还原，必须先还原先删除的行次")
                 checkbox.checked = false;
             }
         }
         else if(checkmode==2){
             if(document.getElementById(list[0])==first){
                 for (var i = 0; i < list.length; ++i) {
                    var obj = document.getElementById(list[i]);
                    obj.disabled = false;
                  }
             }
              else{
                 alert("这一行不能还原，必须先还原先删除的行次")
                 checkbox.checked = false;
             }
         }
         else if(checkmode==3){
              if(document.getElementById(list[0])==last||document.getElementById(list[0])==first){
                  for (var i = 0; i < list.length; ++i) {
                    var obj = document.getElementById(list[i]);
                    obj.disabled = false;
                 }
             }
              else{
                 alert("这一行不能还原，必须先还原先删除的行次")
                 checkbox.checked= false;;
             }
         }
         else{
            for (var i = 0; i < list.length; ++i) {
                var obj = document.getElementById(list[i]);
                obj.disabled = false;
             }
         }
    }
    else {
        if(list.length==0) return;
        var checks=document.getElementsByName(document.getElementById(list[0]).name);
        var first;
        var last;
        if(checks!=null){
            for(var i=0;i<checks.length;i++){
               if(!checks[i].disabled){
                  first=checks[i];
                  break;
               }
            }
            for(var i=checks.length-1;i>=0;i--){
               if(!checks[i].disabled){
                  last=checks[i];
                  break;
               }
            }
        }
         if(checkmode==1){
             if(document.getElementById(list[0])==last){
                 for (var i = 0; i < list.length; ++i) {
                    var obj = document.getElementById(list[i]);
                    obj.disabled = true;
                 }
             }
             else{
                 alert("这一行不能删除，必须先删除新加的行次")
                 checkbox.checked = true;
             }
         }
         else if(checkmode==2){
             if(document.getElementById(list[0])==first){
                 for (var i = 0; i < list.length; ++i) {
                    var obj = document.getElementById(list[i]);
                    obj.disabled = true;
                  }
             }
              else{
                 alert("这一行不能删除，必须先删除新加的行次")
                 checkbox.checked = true;
             }
         }
         else if(checkmode==3){
              if(document.getElementById(list[0])==last||document.getElementById(list[0])==first){
                  for (var i = 0; i < list.length; ++i) {
                    var obj = document.getElementById(list[i]);
                    obj.disabled = true;
                 }
             }
              else{
                 alert("这一行不能删除，必须先删除新加的行次")
                 checkbox.checked=true;;
             }
         }
         else{
            for (var i = 0; i < list.length; ++i) {
                var obj = document.getElementById(list[i]);
                obj.disabled = true;
            }
         }
    }
}

function deleteit(checkboxid, list, trid) {
    for (var i = 0; i < list.length; ++i) {
        var obj = document.getElementById(list[i]);
        obj.disabled = true;
    }
    var objTr = document.getElementById(trid);
    if (objTr != null) {
        objTr.style.display = 'none';
    }
}




function changed(select, value, obj1, obj2) {
    var obj_select = document.getElementById(select);
    var obj_1 = document.getElementById(obj1);
    var obj_2 = document.getElementById(obj2);
    if (obj_select != null && obj1 != null && obj2 != null) {
        if (obj_select.value == value) {
            obj_1.style.display = 'block';
            obj_2.style.display = 'none';
            obj_1.disabled = false;
            obj_2.disabled = true;
        }
        else {
            obj_1.style.display = 'none';
            obj_2.style.display = 'block';
            obj_1.disabled = true;
            obj_2.disabled = false;
        }
    }
}

function clearData(first, last, checkname, trname, list) {
    for (var i = first; i <= last; ++i) {
        var objCheck = document.getElementById(checkname + i);
        if (objCheck != null && objCheck.type == 'checkbox') {
            objCheck.checked = false;
            objCheck.disabled = true;
        }
        for (var j = 0; j < list.length; ++j) {
            var obj = document.getElementById(list[j] + i);
            if (obj != null) {
                obj.disabled = true;
            }
        }
        var objTr = document.getElementById(trname + i);
        if (objTr != null) {
            objTr.style.display = 'none';
        }
    }
}


String.prototype.trim = function() {
    return this.replace(/^\s+|\s+$/g, "");
}
String.prototype.ltrim = function() {
    return this.replace(/^\s+/g, "");
}
String.prototype.rtrim = function() {
    return this.replace(/\s+$/g, "");
}


/*********************************************************************************
 *	FUNCTION:		isDate checks a valid date
 *	PARAMETERS:		theStr		AS String
 *	CALLS:			isBetween, isInt
 *	RETURNS:		TRUE if theStr is a valid date otherwise false.
 **********************************************************************************/
function isSssq(theStr) {
    if (theStr == null || theStr.length != 6) {
        return(false);
    }
    else {
        var y = theStr.substring(0, 4);
        var m = theStr.substring(4, 6);
        if (isInt(m) == false || isInt(y) == false) {
            return(false);
        }
        else if (!isBetween(m, 1, 12)) {
            return(false);
        }
        return(true);
    }
}


/*********************************************************************************
 *	FUNCTION:		isBetween
 *	PARAMETERS:		val		AS any value
 *					lo		AS Lower limit to check
 *					hi		AS Higher limit to check
 *	CALLS:			NOTHING
 *	RETURNS:		TRUE if val is between lo and hi both inclusive, otherwise false.
 **********************************************************************************/
function isBetween(val, lo, hi) {
    if ((val < lo) || (val > hi)) {
        return(false);
    }
    else {
        return(true);
    }
}

/*********************************************************************************
 *	FUNCTION:		isDate checks a valid date
 *	PARAMETERS:		theStr		AS String
 *	CALLS:			isBetween, isInt
 *	RETURNS:		TRUE if theStr is a valid date otherwise false.
 **********************************************************************************/
function isDateStr(theStr) {
    var the1st = theStr.indexOf('-');
    var the2nd = theStr.lastIndexOf('-');
    if (the1st == the2nd) {
        return(false);
    }
    else {
        var y = theStr.substring(0, the1st);
        var m = theStr.substring(the1st + 1, the2nd);
        var d = theStr.substring(the2nd + 1, theStr.length);
        var maxDays = 31;
        if (isInt(m) == false || isInt(d) == false || isInt(y) == false) {
            return(false);
        }
        else if (y.length < 4) {
            return(false);
        }
        else if (!isBetween(m, 1, 12)) {
            return(false);
        }
        else if (m == 4 || m == 6 || m == 9 || m == 11) maxDays = 30;
        else if (m == 2) {
            if (y % 4 > 0) maxDays = 28;
            else if (y % 100 == 0 && y % 400 > 0) maxDays = 28;
            else maxDays = 29;
        }
        if (isBetween(d, 1, maxDays) == false) {
            return(false);
        }
        else {
            return(true);
        }
    }
}
/********************************************************************************
 *   FUNCTION:       Compare Date! Which is the latest!
 *   PARAMETERS:     lessDate,moreDate AS String
 *   CALLS:          isDate,isBetween
 *   RETURNS:        TRUE if lessDate<moreDate
 *********************************************************************************/
function isComdate(lessDate, moreDate)
{
    if (!isDate(lessDate)) {
        return(false);
    }
    if (!isDate(moreDate)) {
        return(false);
    }
    var less1st = lessDate.indexOf('-');
    var less2nd = lessDate.lastIndexOf('-');
    var more1st = moreDate.indexOf('-');
    var more2nd = moreDate.lastIndexOf('-');
    var lessy = lessDate.substring(0, less1st);
    var lessm = lessDate.substring(less1st + 1, less2nd);
    var lessd = lessDate.substring(less2nd + 1, lessDate.length);
    var morey = moreDate.substring(0, more1st);
    var morem = moreDate.substring(more1st + 1, more2nd);
    var mored = moreDate.substring(more2nd + 1, moreDate.length);
    var Date1 = new Date(lessy, lessm, lessd);
    var Date2 = new Date(morey, morem, mored);
    if (Date1 > Date2) {
        return(false);
    }
    return(true);

}

/*********************************************************************************
 *	FUNCTION	isEmpty checks if the parameter is empty or null
 *	PARAMETER	str		AS String
 **********************************************************************************/
function isEmpty(str) {
    if ((str == null) || (str.length == 0)) return true;
    else return(false);
}


/*********************************************************************************
 *	FUNCTION	isAllEmpty checks if all the character is empty or null
 *	PARAMETER	str		AS String
 **********************************************************************************/
function isAllEmpty(str)
{
    if ((str == null) || (str.length == 0)) return true;
    else
    {
        for (var i = 0; i < str.length; i++)
        {
            if (str.substring(i, i + 1) != " ") return false;
        }
        return true
    }
}

/*********************************************************************************
 *	FUNCTION:		isInt
 *	PARAMETER:		theStr	AS String
 *	RETURNS:		TRUE if the passed parameter is an integer, otherwise FALSE
 *	CALLS:			isDigit
 **********************************************************************************/
function isInt(theStr) {
    var flag = true;
    if (isEmpty(theStr)) {
        flag = false;
    }
    else
    {
        for (var i = 0; i < theStr.length; i++) {
            if (i == 0) {
                if (!isDigit(theStr.substring(i, i + 1)) && '-' != theStr.substring(i, i + 1)) {
                    flag = false;
                    break;
                }
            }
            else if (isDigit(theStr.substring(i, i + 1)) == false) {
                flag = false;
                break;
            }
        }
    }
    return(flag);
}

/*********************************************************************************
 *	FUNCTION:		isReal
 *	PARAMETER:	heStr	AS String
 decLen	AS Integer (how many digits after period)
 *	RETURNS:		TRUE if theStr is a float, otherwise FALSE
 *	CALLS:			isInt
 **********************************************************************************/
function isReal(theStr, decLen) {
    var dot1st = theStr.indexOf('.');
    var dot2nd = theStr.lastIndexOf('.');
    var OK = true;
    if (isEmpty(theStr)) return false;

    if (dot1st == -1) {
        if (!isInt(theStr)) return(false);
        else return(true);
    }
    else if (dot1st != dot2nd) return (false);
    else if (dot1st == 0) return (false);
    else {
        var intPart = theStr.substring(0, dot1st);
        var decPart = theStr.substring(dot2nd + 1);

        if (decPart.length > decLen) return(false);
        else if (!isInt(intPart) || !isInt(decPart)) return (false);
        else if (isEmpty(decPart)) return (false);
        else return(true);
    }
}

function isFloat(theStr) {
    var dot1st = theStr.indexOf('.');
    var dot2nd = theStr.lastIndexOf('.');
    var OK = true;
    if (isEmpty(theStr)) return false;

    if (dot1st == -1) {
        if (!isInt(theStr)) return(false);
        else return(true);
    }
    else if (dot1st != dot2nd) return (false);
    //else if (dot1st == 0) return (false);
    else {
        var intPart = theStr.substring(0, dot1st);
        var decPart = theStr.substring(dot2nd + 1);

        //if (decPart.length > decLen) return(false);
        if (!isInt(intPart) && !isEmpty(intPart) || !isInt(decPart)) return (false);
        else if (isEmpty(decPart)) return (false);
        else return(true);
    }
}

/*********************************************************************************
 *	FUNCTION:		isEmail
 *	PARAMETER:		String (Email Address)
 *	RETURNS:		TRUE if the String is a valid Email address
 *					FALSE if the passed string is not a valid Email Address
 *	EMAIL FORMAT:	AnyName@EmailServer e.g; webmaster@hotmail.com
 *					@ sign can appear only once in the email address.
 *********************************************************************************/
function isEmail(theStr) {
    var atIndex = theStr.indexOf('@');
    var dotIndex = theStr.indexOf('.', atIndex);
    var flag = true;
    theSub = theStr.substring(0, dotIndex + 1)

    if ((atIndex < 1) || (atIndex != theStr.lastIndexOf('@')) || (dotIndex < atIndex + 2) || (theStr.length <= theSub.length))
    {
        return(false);
    }
    else {
        return(true);
    }
}
/*********************************************************************************
 *	FUNCTION:		newWindow
 *	PARAMETERS:		doc	 	->	Document to open in the new window
 hite 	->	Height of the new window
 wide 	->	Width of the new window
 bars	->	1-Scroll bars = YES 0-Scroll Bars = NO
 resize 	->	1-Resizable = YES 0-Resizable = NO
 *	CALLS:			NONE
 *	RETURNS:		New window instance
 **********************************************************************************/
function newWindow(doc, wide, hite, bars, resize) {
    var opt = "toolbar=0,location=0,directories=0,status=0,menubar=0,";
    var l = Math.floor((screen.width - wide) / 2);
    var t = Math.floor((screen.height - hite) / 2);
    opt += ("scrollbars=" + bars + ",");
    opt += ("resizable=" + resize + ",");
    opt += ("width=" + wide + ",");
    opt += ("height=" + hite + ",");
    opt += ("top=" + t + ",");
    opt += ("left=" + l);
    winHandle = window.open(doc, '', opt);
    return;
}


function isDigit(s)
{
    var patrn = /^[0-9]{1,20}$/;
    if (!patrn.exec(s)) return false
    return true
}

function isCorporationCode(s) {
    var patrn = /^(\d){15}$/;
    if (!patrn.exec(s)) return false
    return true
}


function isRegisterUserName(s)
{
    var patrn = /^[a-zA-Z]{1}([a-zA-Z0-9._]){4,19}$/;
    if (!patrn.exec(s)) return false
    return true
}


function isPasswd(s)
{
    var patrn = /^[a-zA-Z0-9]{6,15}$/;
    if (!patrn.exec(s)) return false
    return true
}

function isAvoirdupois(s)
{
    var patrn = /^[1-9]{1}[0-9]{0,2}$/;
    var patrn2 = /^[1-9]{1}$/;
    var intPart = s.indexOf('.');
    var decPart = s.lastIndexOf('.');
    if (intPart == -1 && patrn.exec(s) && eval(s) >= 2 && eval(s) <= 200) return true
    if (intPart != decPart || intPart == 0 || intPart + 2 != s.length) return false
    if (!patrn.exec(s.substring(0, intPart)) || !patrn2.exec(s.substring(decPart + 1))) return false
    if (eval(s) < 2 || eval(s) > 200) return false
    return true
}


function isTel(s)
{
    var patrn = /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
    if (!patrn.exec(s)) return false
    return true
}


function isMobile(s)
{
    var patrn = /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
    if (!patrn.exec(s)) return false
    return true
}


function isAreaCode(s)
{
    var patrn = /^(\d){6}$/;
    if (!patrn.exec(s)) return false
    return true
}


function isPostalCode(s)
{
    var patrn = /^[1-9]{1}(\d){5}$/;
    if (!patrn.exec(s)) return false
    return true
}


function isIP(s)
{
    var patrn = /^[0-9.]{1,20}$/;
    if (!patrn.exec(s)) return false
    return true
}

function isPage(s)
{
    var patrn = /^[1-9]{1}[0-9]{0,2}$/;
    if (!patrn.exec(s)) return false
    return true
}


function vErr(o, s) {
    alert(s);
    if (o) o.focus();
    return false;
}

function chkRadio(o) {
    for (i = 0; i < o.length; i++) {
        if (o[i].checked) return true;
    }
    return false;
}


function isChinese(s) {
    if (s.trim() == "")return true;
    var reg = /[^\u4E00-\u9FA5]/g;
    if (reg.test(s)) {
        return false;
    }
    return true;
}


function isNoChinese(s) {
    if (s.trim() == "")return true;
    var reg = /[\u4E00-\u9FA5]|[\uFE30-\uFFA0]/gi;
    if (reg.test(s)) {
        return false;
    }
    return true;
}





function getconfirm(str, url) {
    if (confirm(str)) {
        location = url;
    }
}

function confirm_check(str, action, is, form) {
    if (is) {
        form.action = action;
        if (confirm(str))  form.submit()
    }
}


function radio_check(radio_id) {
    var radioobj = eval("document.all." + radio_id);
    var flag = false;
    for (var i = 0; i < radioobj.length; i++) {
        if (radioobj[i].checked) {
            flag = true;
            break;
        }
    }
    if (!flag && radioobj.length > 0) {
        radioobj[0].checked = true;
    }
}


function radio_select(radio_id, input_enable, input_disable) {
    var radio_obj = eval("document.all." + radio_id);
    var input_enable_obj = eval("document.all." + input_enable);
    var input_disable_obj = eval("document.all." + input_disable);
    if (radio_obj != undefined && radio_obj.type == "radio") {
        if (radio_obj.checked == true) {
            if (input_enable_obj != undefined)input_enable_obj.disabled = false;
            if (input_disable_obj != undefined)input_disable_obj.disabled = true;
        }
    }
}
function check_select(check_id, input_enable, input_disable) {
    var check_obj = eval("document.all." + check_id);
    var input_enable_obj = eval("document.all." + input_enable);
    var input_disable_obj = eval("document.all." + input_disable);
    if (check_obj != undefined && check_obj.type == "checkbox") {
        if (check_obj.checked == false) {
            if (input_enable_obj != undefined) {
                if (input_enable == "txt_fdl_begin") {
                    input_enable_obj.value = -10000;
                }
                else {
                    input_enable_obj.value = 0;
                }
                input_enable_obj.disabled = true;
            }
            if (input_disable_obj != undefined) {
                input_disable_obj.value = 0;
                input_disable_obj.disabled = true;
            }
        }
        else
        {
            if (input_enable_obj != undefined)input_enable_obj.disabled = false;
            if (input_disable_obj != undefined)input_disable_obj.disabled = false;
        }
    }
}

function select_all(formName, elementName) {
    var obj = eval("document." + formName + "." + elementName);
    if (obj != null) {
        obj.checked = true;
        //   if (obj.length){
        for (var i = 0; i < obj.length; i++)  obj[i].checked = true;
        //  }else{
        //    obj.checked=true;
        //   }
    }
}

function unselect_all(formName, elementName) {
    var obj = eval("document." + formName + "." + elementName);
    if (obj != null) {
        obj.checked = false;
        //      if (obj.length){
        for (var i = 0; i < obj.length; i++)  obj[i].checked = false;
        //      }else{
        //      obj.checked.checked=false;
        //     }
    }
}


function equal_form(left_list, compare, right_list, nAfterDot) {
    if (compare == "=") {
        if (getListValue(left_list, nAfterDot) == getListValue(right_list, nAfterDot)) {
            return true
        }
        else {
            return false
        }
    }
    else if (compare == ">") {
        if (getListValue(left_list, nAfterDot) > getListValue(right_list, nAfterDot)) {
            return true
        }
        else {
            return false
        }
    }
    else if (compare == ">=") {
        if (getListValue(left_list, nAfterDot) >= getListValue(right_list, nAfterDot)) {
            return true
        }
        else {
            return false
        }
    }
    else if (compare == "<") {
        if (getListValue(left_list, nAfterDot) < getListValue(right_list, nAfterDot)) {
            return true
        }
        else {
            return false
        }
    }
    else if (compare == "<=") {
        if (getListValue(left_list, nAfterDot) <= getListValue(right_list, nAfterDot)) {
            return true
        }
        else {
            return false
        }
    }
    else if (compare == "<>") {
        if (getListValue(left_list, nAfterDot) != getListValue(right_list, nAfterDot)) {
            return true
        }
        else {
            return false
        }
    }
    return false
}

function getListValue(list, nAfterDot) {
    var result = 0.00;
    for (var i = 0; i < list.length; i++) {
        if (i == 0) {
            result = parseFloat(list[i]);
        }
        else if (i % 2 == 0) {
            if (list[i - 1] == "+") {
                result = result + parseFloat(list[i]);
            }
            else if (list[i - 1] == "-") {
                result = result - parseFloat(list[i]);
            }
            else if (list[i - 1] == "*") {
                result = result * parseFloat(list[i]);
            }
            else if (list[i - 1] == "/") {
                result = result / parseFloat(list[i]);
            }
        }
    }
    return parseFloat(FormatNumber(result, nAfterDot));
}

function setObjValue(obj, list, nAfterDot) {
    var obj = document.getElementById(obj);
    if (obj != null) {
        obj.value = getListValue(list, nAfterDot);
    }
}

function strformat(object) {
//    if (isEmpty(object.value)) {
//        alert("这个输入框不能为空值");
//        object.value = " ";
//    }
}

function intformat(object) {
    if (!isInt(object.value)) {
        alert("这个输入框必须为整数");
        object.value = "0";
    }
}

function floatformat(object) {
    if (!isFloat(object.value)) {
        alert("这个输入框必须为数字");
        object.value = "0";
    }
}

function dateformat(object) {
//    if (!isDateStr(object.value)) {
//        alert("这个输入框必须为日期型yyyy-mm-dd");
//        object.value = "1990-01-01";
//    }
}

function FormatNumber(srcStr, nAfterDot) {
    var resultStr,nTen;
    if ("NaN" == srcStr || "" == srcStr) return "0"
    try {
        srcStr = "" + srcStr + "";
        strLen = srcStr.length;
        dotPos = srcStr.indexOf(".", 0);
        if (dotPos == -1) {
            resultStr = srcStr + ".";
            for (i = 0; i < nAfterDot; i++) {
                resultStr = resultStr + "0";
            }
        }
        else {
            if ((strLen - dotPos - 1) >= nAfterDot) {
                nAfter = dotPos + nAfterDot + 1;
                nTen = 1;
                for (j = 0; j < nAfterDot; j++) {
                    nTen = nTen * 10;
                }
                resultStr = Math.round(parseFloat(srcStr) * nTen) / nTen;
            }
            else {
                resultStr = srcStr;
                for (i = 0; i < (nAfterDot - strLen + dotPos + 1); i++) {
                    resultStr = resultStr + "0";
                }

            }
        }
    }
    catch(Exception) {
        return "0";
    }
    return resultStr;
}


function replaceAll(streng, soeg, erstat)
{
    var st = streng;
    if (soeg.length == 0)
        return st;
    var idx = st.indexOf(soeg);
    while (idx >= 0)
    {
        st = st.substring(0, idx) + erstat + st.substr(idx + soeg.length);
        idx = st.indexOf(soeg);
    }
    return st;
}


