// 将点击事项的坐标加入 全局数组
var blockCodeArray = [];
// 返回的块信息列表
var returnBlockList;

/**
 * 自动加载
 */
window.onload = function(){

    // 初始化日期
    initStartAndEndDate();

    // 初始化块和标签数据
    acceptBlockAndTag();

    // 查询块列表
    $("#applyTemplate").click(function () {
        applyTemplate();
    });
};


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

    // 测试信息展示
    $('#debug-info').append("<br>设置默认开始截止日期");
}


/**
 * 获取块和标签 json 数据
 */
function acceptBlockAndTag(){

    var data = {};
    // 测试信息展示
    $('#debug-info').append("<br><br> acceptBlockAndTag() ");
    $('#debug-info').append("<br> 发送数据：" + JSON.stringify(data) );

    $.ajax({
        type: "POST",
        url: "/batchadd/acceptBlockAndTag",
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(msg){

            // 测试信息展示
            $('#debug-info').append("<br> 返回数据：" + JSON.stringify(msg) );
            // 全局变量，用于刷新反复选中后的块颜色
            returnBlockList = msg.blockList;  //块信息

            // 状态码
            if(msg.status == 200) {
                // 展示块信息
                showBlock(returnBlockList);
                // 展示标签信息
                showTag(msg.tagList);
            } else {
                // 模态框显示状态码、提示信息、跳转链接
                showInfoModal( msg.status, msg.info, msg.url);
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            // 模态框显示状态码、提示信息、跳转链接
            showInfoModal( '404', 'ajax 请求错误！', '#');
        },
    });
}


/**
 * 发送事项
 */
function sendItem(tagId){

    var data = {};
    data.tagId = tagId;
    // 选中块的坐标数组
    data.blockCodeArray = blockCodeArray;
    //清空点击事项的坐标全局数组
    blockCodeArray = [];

    // 测试信息展示
    $('#debug-info').append("<br><br> sendItem(tagId)");
    $('#debug-info').append("<br> 发送数据 ：" + JSON.stringify(data) );

    $.ajax({
        type: "POST",
        url:  "/batchadd/sendTemplate",
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(msg){

            // 测试信息展示
            $('#debug-info').append("<br> 返回数据 ：" + JSON.stringify(msg) );

            // 状态码
            if(msg.status == 200){
                // 添加成功,刷新当前页面
                acceptBlockAndTag();
            }else{
                // 模态框显示状态码、提示信息、跳转链接
                showInfoModal( msg.status, msg.info, msg.url);
            }
        },
        error:  function(XMLHttpRequest, textStatus, errorThrown) {
            // 模态框显示状态码、提示信息、跳转链接
            showInfoModal( '404', 'ajax 请求错误！', '#');
        },
    });
}


/**
 * 应用模板
 */
function applyTemplate() {
    // 获取开始日期，默认当前日期前一周
    var data = {};
    data.startDate = $("#startDate").val();
    data.endDate = $("#endDate").val();

    // 测试信息展示
    $('#debug-info').append("<br><br> applyTemplate()");
    $('#debug-info').append("<br> 发送数据 ：" + JSON.stringify(data) );

    $.ajax({
        type: "POST",
        url: "/batchadd/applyTemplate",
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(msg){

            // 测试信息展示
            $('#debug-info').append("<br> 返回数据 ：" + JSON.stringify(msg) );

            // 状态码，应用模板成功
            if(msg.status == 200){
                // 模态框显示状态码、提示信息、跳转链接
                showInfoModal( msg.status, msg.info, msg.url);

            }else{
                // 模态框显示状态码、提示信息、跳转链接
                showInfoModal( msg.status, msg.info, msg.url);
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            // 模态框显示状态码、提示信息、跳转链接
            showInfoModal( '404', 'ajax 请求错误！', '#');
        },
    });
}
