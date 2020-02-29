/**
 * 重写Jquery中Ajax方法,主要用于ajax请求时,出现加载效果
 * 当mobj未赋值时,加载效果全屏显示,当mobj绑定有Id.class等时，出现在id或class效果上
 * @author hl.yuan
 调用模板
 $.mAjax(
 {
                    url: '${path}/sirmproduct/broker/LeadResearchReportAction/getReportTypeRate.action',
                    type: 'post', //请求方式
                    dataType:'JSON', //返回格式
                    mobj:"#reportTypeDiv", //给哪里加动画
                    data: {'periods': periods}, //传递参数
                    beforeSend:function(){ // 调用前
                        var myChart2 = echarts.init(document.getElementById('sirm-echartsYJ2'),'macarons');
                        myChart2.clear();
                        var myChart1 = echarts.init(document.getElementById('sirm-echartsYJ1'),'macarons');
                        myChart1.clear();
                    },
                    success: function(data) { //请求成功后
                        if(data.success==0){
                            initMyChar(data);
                        }
                    }
                }
 );
 */
$.mAjax=function(options){
    $(options.mobj).children(".sirm-table,#pageinfo").css({
        visibility: 'visible',
    });
    var mhide=$("<div class='mloading'>" +
        "<div style='display: inline-block;width:99px;' class='mimg'>"+
        "<img src='/images/loading.gif'/>"+
        "</div>" +
        "<div>");
    mhide.css({
        "position": "absolute",
        "top":"0px",
        "left":"0px",
        "width":"100%",
        "height":"100%",
        "background-color": "#f1f1f1",
        "opacity": "0.9",
        "text-align": "center",
        "display": "none"
    });
    if (options.mobj != null && options.mobj != "" && options.mobj != undefined) { //相对于单个元素定位
        if($(options.mobj).find(".mloading")){
            $(options.mobj).find(".mloading").remove();
        }
        if($(options.mobj).css("position")=="absolute"){
            $(options.mobj).css("position", "absolute").append(mhide);
        }else{
            $(options.mobj).css("position", "relative").append(mhide);
        }

    }
    else {
        mhide.css({"position":"fixed"});//相对于body定位
        if($("body").find(".mloading")){
            $("body").find(".mloading").remove();
        }
        $("body").append(mhide);
    }

    var h=0;
    if(!mhide.height()){
        mhide.css({"text-align": "left"});
    }else{
        if(mhide.height()>=20){
            h=mhide.height()/2-10;
        }
    }
    mhide.find(".mimg").css({
        "margin-top":h
    });
    options.dataType="JSON";
    var beforeSend = options.beforeSend;
    options.beforeSend = function (httpRequest) {
        mhide.show();
        if (beforeSend) {
            beforeSend(httpRequest);
        }
    };
    var complete = options.complete;
    options.complete = function (httpRequest, status) {
        if(options.errorMsg=="errorMsg"){

        }else{
            mhide.hide();
        }
        if (complete) {
            complete(httpRequest, status);
        }
    };
    $.ajax(options);
}