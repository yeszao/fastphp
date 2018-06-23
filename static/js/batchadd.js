// 将点击事项的坐标加入 全局数组
var blockCodeArray = new Array();
// 返回的块信息列表
var returnBlockList;

/**
 * 自动加载
 */
window.onload = function(){

    // 初始化日期
    initStartAndEndDate();

    // 初始化块和标签数据
    getBlockAndTag();

    // 查询块列表
    $("#applyTemplate").click(function () {
        applyTemplate();
    });
}


/**
 * 初始化日期
 * @return {[type]} [description]
 */
function initStartAndEndDate() {
    // 为开始日期的 date 类型设置默认值
    Date.prototype.toStartDateInputValue = (function() {
        var local = new Date(this);
        local.setMinutes(this.getMinutes() - this.getTimezoneOffset() - 6*24*60);
        return local.toJSON().slice(0,10);
    });
    document.getElementById("startDate").value=new Date().toStartDateInputValue();

    // 为结束日期的 date 类型设置默认值
    Date.prototype.toEndDateInputValue = (function() {
        var local = new Date(this);
        local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
        return local.toJSON().slice(0,10);
    });
    document.getElementById("endDate").value=new Date().toEndDateInputValue();
}


/**
 * 获取块和标签 json 数据
 */
function getBlockAndTag(){

    var data = {};

    // 测试信息展示
    $('#debug-info').append("发送数据：" + JSON.stringify(data) + "<br></br>");

    $.ajax({
        type: "POST",
        url: "/batchadd/getBlockAndTag",
        // contentType: "application/json;charset=utf-8",    //发送数据类型
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(response){

            // 测试信息展示
            $('#debug-info').append("返回块和标签数据：" + JSON.stringify(response) + "<br></br>");

            // 获取返回数据
            var status = response['status'];    //状态码
            var info = response['info'];  //提示信息
            // 全局变量，用于刷新反复选中后的块颜色
            returnBlockList = response['blockList'];  //块信息
            var tagList = response['tagList'];  //标签信息

            // 状态码，获取块数据成功
            if(status == 200){
                // 设置块颜色
                showBlock(returnBlockList);
                showTag(tagList);
            }else{
                // 模态框显示状态码和提示信息
                showInfoModal("状态码："+ status +"<br><br>提示信息："+ info);
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert("getBlockAndTag() 错误！"
                + "\ntextStatus = " + textStatus
                + "\n错误原因： " + errorThrown);
        },
    });
}


/**
 * 发送事项
 */
function sendItem(tagId){

    var data = {};
    data['tagId'] = tagId;
    // 选中块的坐标数组
    data['blockCodeArray'] = blockCodeArray;
    //清空点击事项的坐标全局数组
    blockCodeArray = [];

    // 测试信息展示
    $('#debug-info').append("发送数据：" + JSON.stringify(data) + "<br></br>");

    $.ajax({
        type: "POST",
        url:  "/batchadd/sendTemplate",
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(response){

            // 测试信息展示
            $('#debug-info').append("返回数据："
                + JSON.stringify(response) + "<br></br>");

            // 获取返回数据
            var status = response['status'];    //状态码
            var info = response['info'];  //提示信息

            // 状态码
            if(status == 200){
                // 添加成功,刷新当前页面
                getBlockAndTag();
            }else{
                // 模态框显示状态码和提示信息
                showInfoModal("状态码："+ status +"<br><br>提示信息："+ info);
            }
        },
        error:  function(XMLHttpRequest, textStatus, errorThrown) {
            alert("sendItem error！"
                // + "\nXMLHttpRequest = " + JSON.stringify(XMLHttpRequest)
                + "\ntextStatus = " + textStatus
                + "\n错误原因： " + errorThrown);
        },
    });
}


/**
 * 应用模板
 */
function applyTemplate() {
    // 获取开始日期，默认当前日期前一周
    var data = {};
    data['startDate'] = $("#startDate").val();
    data['endDate'] = $("#endDate").val();

    // 测试信息展示
    $('#debug-info').append("应用模板发送数据：" + JSON.stringify(data) + "<br></br>");

    $.ajax({
        type: "POST",
        url: "/batchadd/applyTemplate",
        // contentType: "application/json;charset=utf-8",    //发送数据类型
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(response){

            // 测试信息展示
            $('#debug-info').append("返回块和标签数据：" + JSON.stringify(response) + "<br></br>");

            // 获取返回数据
            var status = response['status'];    //状态码
            var info = response['info'];  //提示信息

            // 状态码，应用模板成功
            if(status == 200){
                // 模态框显示状态码和提示信息
                showInfoModal("状态码："+ status +"<br><br>提示信息："+ info);

            }else{
                // 模态框显示状态码和提示信息
                showInfoModal("状态码："+ status +"<br><br>提示信息："+ info);
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert("applyTemplate() 错误！"
                + "\ntextStatus = " + textStatus
                + "\n错误原因： " + errorThrown);
        },
    });
}