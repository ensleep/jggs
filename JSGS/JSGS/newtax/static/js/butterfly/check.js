
var ifsigol=new Array(
            '==',
            '>=',
            '<=',
            '>',
            '<'
        ) ;

function CheckDetailObject(object,type,note){
    var result="";
    var obj = document.getElementsByName(object);
    if(obj==null){
        return "";
    }
    for(var i=0;i<obj.length;i++){
        if(type=='CheckObjAny'){
            if(!obj[i].disabled&&isEmpty(obj[i].value)){
                 result=result+'\''+(note==null||''==note?object:note)+(obj.length<2?'':'[第'+(i+1)+'行]')+'\'不能为空\r\n';
            }
        }
        else if(type=='CheckObjDate'){
            if(!obj[i].disabled&&!isDateStr(obj[i].value)){
                 result=result+'\''+(note==null||''==note?object:note)+(obj.length<2?'':'[第'+(i+1)+'行]')+'\'必须为日期型\r\n';
            }
        }
        else if(type=='CheckObjInt'){
              if(!obj[i].disabled&&!isInt(obj[i].value)){
                 result=result+'\''+(note==null||''==note?object:note)+(obj.length<2?'':'[第'+(i+1)+'行]')+'\'必须为整数\r\n';
            }
        }
        else if(type=='CheckObjFloat'){
              if(!obj[i].disabled&&!isFloat(obj[i].value)){
                 result=result+'\''+(note==null||''==note?object:note)+(obj.length<2?'':'[第'+(i+1)+'行]')+'\'必须为数字\r\n';
            }
        }
    }
    return result;
}

function CheckObject(checkobjectlist) {
    var result="" ;
    for(var i=0;i<checkobjectlist.length;i++){
      result=result+CheckDetailObject(checkobjectlist[i][0],checkobjectlist[i][1],checkobjectlist[i][2]);
    }
   return result;
}

function Checkall(checkobjectlist,Auditing_rules,pageid) {
    var msg;
    msg = '';
    var err_msg = "************************数 据 提 交 审 核 信 息************************\r\n\r\n";
    msg=msg+CheckObject(checkobjectlist);
    //审核调查内容
    for (var i = 0; i < Auditing_rules.length; i++) {
        var rule = Auditing_rules[i][0];
        rule = getRuleSum(rule);
        var rules = rule.split(":=");
        var count = getCount(rule);
        if (rules.length == 2) {
            if (count > 1) {
                for (var j = 0; j < count; j++) {
                    var rulestr1=getRuleArrayValue(rules[0],pageid);
                    rulestr1=getOtherRuleValue(rulestr1,j,pageid);
                    rulestr1=getRuleValue(rulestr1,j,pageid);
                    var rulestr2=getRuleArrayValue(rules[1],pageid);
                    rulestr2=getOtherRuleValue(rulestr2,j,pageid);
                    rulestr2=getRuleValue(rulestr2,j,pageid);
                    if(rulestr1!=null&&rulestr2!=null){
                        eval('if(!(FormatNumber(' +rulestr1 + ','+Auditing_rules[i][2]+')==FormatNumber(' + rulestr2 + ','+Auditing_rules[i][2]+'))){msg=msg+\'第\'+(j+1)+\'行不符合：\'+Auditing_rules[i][1]+\'\\r\\n\'}');
                    }
                }
            }
            else {
                    var rulestr1=getRuleArrayValue(rules[0],pageid);
                    rulestr1=getOtherRuleValue(rulestr1,0,pageid);
                    rulestr1=getRuleValue(rulestr1,0,pageid);
                    var rulestr2=getRuleArrayValue(rules[1],pageid);
                    rulestr2=getOtherRuleValue(rulestr2,0,pageid);
                    rulestr2=getRuleValue(rulestr2,0,pageid);
                if(rulestr1!=null&&rulestr2!=null){
                eval('if(!(FormatNumber(' + rulestr1 + ','+Auditing_rules[i][2]+')==FormatNumber(' + rulestr2 + ','+Auditing_rules[i][2]+'))){msg=msg+\'不符合：\'+Auditing_rules[i][1]+\'\\r\\n\'}');
                }
            }
        }
        else {
            var ishavedo=false;
            for(var m=0;m<ifsigol.length;m++){
                var erules=rule.split(ifsigol[m]);
                if(erules.length == 2 && erules[1].indexOf("?")<0 && erules[1].indexOf("&&")<0 && erules[0].indexOf("&&")<0 && erules[1].indexOf("||")<0 && erules[0].indexOf("||")<0){
                    if (count > 1) {
                        for (var j = 0; j < count; j++) {
                            var rulestr1=getRuleArrayValue(erules[0],pageid);
                            rulestr1=getOtherRuleValue(rulestr1,j,pageid);
                            rulestr1=getRuleValue(rulestr1,j,pageid);
                            var rulestr2=getRuleArrayValue(erules[1],pageid);
                            rulestr2=getOtherRuleValue(rulestr2,j,pageid);
                            rulestr2=getRuleValue(rulestr2,j,pageid);
                           if(rulestr1!=null&&rulestr2!=null){
                            eval('if(!(FormatNumber(' + rulestr1 + ','+Auditing_rules[i][2]+')-0'+ifsigol[m]+'FormatNumber(' + rulestr2 + ','+Auditing_rules[i][2]+')-0)){msg=msg+\'第\'+(j+1)+\'行不符合：\'+Auditing_rules[i][1]+\'\\r\\n\'}');
                           }
                        }
                    }
                    else {
                         var rulestr1=getRuleArrayValue(erules[0],pageid);
                            rulestr1=getOtherRuleValue(rulestr1,0,pageid);
                            rulestr1=getRuleValue(rulestr1,0,pageid);
                            var rulestr2=getRuleArrayValue(erules[1],pageid);
                            rulestr2=getOtherRuleValue(rulestr2,0,pageid);
                            rulestr2=getRuleValue(rulestr2,0,pageid);
                        if(rulestr1!=null&&rulestr2!=null){
                            eval('if(!(FormatNumber(' + rulestr1 + ','+Auditing_rules[i][2]+')-0'+ifsigol[m]+'FormatNumber(' + rulestr2 + ','+Auditing_rules[i][2]+')-0)){msg=msg+\'不符合：\'+Auditing_rules[i][1]+\'\\r\\n\'}');
                        }
                    }
                    ishavedo=true;
                    break;
                }
            }
             if(!ishavedo){
                if (count > 1) {
                    for (var j = 0; j < count; j++) {
                        var rulestr1=getRuleArrayValue(rule,pageid);
                        rulestr1=getOtherRuleValue(rulestr1,j,pageid);
                        rulestr1=getRuleValue(rulestr1,j,pageid);
                        if(rulestr1!=null){
                        eval('if(!(' + rulestr1 + ')){msg=msg+\'第\'+(j+1)+\'行不符合：\'+Auditing_rules[i][1]+\'\\r\\n\'}');
                       }
                    }
                }
                else {
                        var rulestr1=getRuleArrayValue(rule,pageid);
                        rulestr1=getOtherRuleValue(rulestr1,0,pageid);
                        rulestr1=getRuleValue(rulestr1,0,pageid);
                       if(rulestr1!=null){
                       eval('if(!(' + rulestr1 + ')){msg=msg+\'不符合：\'+Auditing_rules[i][1]+\'\\r\\n\'}');
                       }
                    //  msn=msg+("不符合"+Auditing_rules[i][1]+"\r\n")
                }
             }
        }
        //        var rules = rule.split("==");
        //        if (rules.length == 2) {
        //            if (count > 1) {
        //                for (var j = 0; j < count; j++) {
        //                    eval('var left=' + getRuleValue(rules[0], j));
        //                    eval('var right=' + getRuleValue(rules[1], j));
        //                    if (!(left == right)) {
        //                        msg = msg + ('第' + (j + 1) + '行不符合' + Auditing_rules[i][1] + '\r\n');
        //
        //                    }
        //                }
        //            }
        //            else {
        //                eval('var left=' + getRuleValue(rules[0], 0));
        //                eval('var right=' + getRuleValue(rules[1], 0));
        //                if (!(left == right)) {
        //                    msg = msg + ('不符合' + Auditing_rules[i][1] + '\r\n');
        //                }
        //            }
        //        }
        //        else if (rule.split("<=").length == 2) {
        //
        //        }
        //        else if (rule.split(">=").length == 2) {
        //
        //        }
        //        else if (rule.split("=").length == 2) {
        //
        //        }
        //        else if (rule.split(">").length == 2) {
        //
        //        }
        //        else if (rule.split("<").length == 2) {
        //
        //        }
    }
    if (msg.length > 1) {
        msg = err_msg + msg;
        alert(msg);
        return false;
    }
    return true;
}