// 将点击事项的坐标加入 全局数组
var blockCodeArray = [];
// 返回的快信息列表
var returnBlockList;

/**
 * 自动加载
 */
window.onload = function(){

    // 初始化日期
    initBelongDate();

    // 初始化块和标签数据
    acceptBlockAndTag();

    // 查询块列表
    $("#selectDate").click(function () {
        acceptBlockAndTag();
    });
};


/**
 * 初始化日期
 * @return {[type]} [description]
 */
function initBelongDate() {
    // 为日期设置默认值
    Date.prototype.toDateInputValue = (function() {
        var local = new Date(this);
        local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
        return local.toJSON().slice(0,10);
    });
    document.getElementById("belongDate").value=new Date().toDateInputValue();

    // 测试信息展示
    $('#debug-info').append("设置默认时间<br></br>");
}


/**
 * 获取块和标签 json 数据
 */
function acceptBlockAndTag(){

    var data = {};
    // 获取输入日期，默认当前日期
    data.belongDate = $("#belongDate").val();
    // 测试信息展示
    $('#debug-info').append("acceptBlockAndTag() 发送数据：" + JSON.stringify(data) + "<br></br>");

    $.ajax({
        type: "POST",
        url: "/schedule/acceptBlockAndTag",
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(msg){

            // 测试信息展示
            $('#debug-info').append("返回块和标签数据：" + JSON.stringify(msg) + "<br></br>");
            // 获取返回数据
            returnBlockList = msg.blockList;  //块信息,全局变量，用于刷新反复选中后的块颜色

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
    // 获取输入日期，默认当前日期
    data.belongDate = $("#belongDate").val();
    // 选中块的坐标数组
    data.blockCodeArray = blockCodeArray;
    //清空点击事项的坐标全局数组
    blockCodeArray = [];

    // 测试信息展示
    $('#debug-info').append("发送数据：" + JSON.stringify(data) + "<br></br>");

    $.ajax({
        type: "POST",
        url:  "/schedule/sendItem",
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(msg){

            // 测试信息展示
            $('#debug-info').append("返回数据：" + JSON.stringify(msg) + "<br></br>");

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
