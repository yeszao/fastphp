/**
 * 添加心情
 * @return {[type]}         [description]
 */

function sendMood(){
    var data = {};
    data.mood = $("#mood").val();    //正在输入的心情mood

    // 测试信息展示
    $('#debug-info').append("<br> 发送数据：" + JSON.stringify(data) );

    $.ajax({
        type: "POST",
        url: "/wall/sendmood",
        cache: false,
        // contentType: "application/json;charset=utf-8",    //发送数据类型
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(msg){

            // 测试信息展示
            $('#debug-info').append("<br> 返回数据：" + JSON.stringify(msg) );

            // 状态码，获取块数据成功
            if(msg.status == 200) {
                // 添加成功模态框
                showInfoModal( msg.status, msg.info, msg.url);
            } else {
                // 模态框显示状态码和提示信息
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
 * 展示心情列表
 * @param  {[type]} moodList [description]
 * @return {[type]}         [description]
 */

//生成数据html,append到div中
function showMoodList(moodList) {
    var $testDiv = $(".testDiv");    //选中整个外层div
    var html = '';
    for (var i = 0; i < moodList.length; i++) {
        // 时间戳转日期显示
        var createTime =new Date(parseInt(moodList[i].create_time) * 1000).toLocaleString().replace(/:\d{1,2}$/,' ');
        var updateTime =new Date(parseInt(moodList[i].update_time) * 1000).toLocaleString().replace(/:\d{1,2}$/,' ');
        html += '<div class="alert alert-warning">'
            html += '<div class="row list_emotion" >';
                // html += ' <div class="col-xs-3 list_date">' + createTime + '</div>';
                html += ' <div class="col-xs-3 col-offset-3 list_user_id">' + moodList[i].user_name + '</div>';
            html += '</div>';
            html += '<div class="row list_emotion ">';
                html += '<div class="col-xs-6 col-offset-2 list_content">' + moodList[i].content + '</div>';
                html += '<div class="col-xs-2 col-offset-2 list_date">'+ updateTime + '</div>';
            html += '</div>';
        html += '</div>';
    }
    // $('#debug-info').append("html:"+ html +"<br></br>");
    $testDiv.append(html);
}


/**
 * 获取心情数据
 * @return {[type]} [description]
 */
function acceptMoodList(){
    var data = {};

    // 测试信息展示
    $('#debug-info').append("<br><br> acceptMoodList() ");
    $('#debug-info').append("<br> 发送数据：" + JSON.stringify(data) );

    $.ajax({
        type: "POST",
        url: "/wall/acceptMoodList",
        // contentType: "application/json;charset=utf-8",    //发送数据类型
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(msg){

            // 测试信息展示
            $('#debug-info').append("<br> 返回数据：" + JSON.stringify(msg) );

            // 获取返回数据
            returnMoodList = msg.moodList;

            // 状态码，获取块数据成功
            if(msg.status == 200) {

                //加载展示心情函数
                showMoodList(returnMoodList);
            } else {
                // 模态框显示状态码和提示信息
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
 * 自动加载
 * @return {[type]} [description]
 */
window.onload = function(){

    acceptMoodList();

}
