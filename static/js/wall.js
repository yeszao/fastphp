/**
 * 添加心情
 * @return {[type]}         [description]
 */

function addMood(){
    var data = {};
    data['mood'] = $("#mood").val();    //正在输入的心情mood

    // 测试信息展示
    $('#debug-info').append("添加心情发送的数据："+  JSON.stringify(data) +"<br></br>");

    $.ajax({
        type: "POST",
        url: "/wall/addmood",
        cache: false,
        // contentType: "application/json;charset=utf-8",    //发送数据类型
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(response){

            // 测试信息展示
            $('#debug-info').append("添加心情后返回数据："+ JSON.stringify(response) +"<br></br>");

            // 获取返回数据
            var status = response['status'];    //状态码
            var info = response['info'];  //提示信息

            // 状态码，获取块数据成功
            if(status == 200) {
                // 添加成功模态框
                showInfoModal("状态码："+ status +"<br><br>提示信息："+ info);
            } else {
                // 模态框显示状态码和提示信息
                showInfoModal("状态码："+ status +"<br><br>提示信息："+ info);
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert("addMood 错误！"
                + "\ntextStatus = " + textStatus
                + "\n错误原因： " + errorThrown);
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
function getMoodList(){
    $.ajax({
        type: "POST",
        url: "/wall/getMoodList",
        contentType: "application/json;charset=utf-8",    //发送数据类型
        data: {"title":"test", "sub":[1,2,3]},  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(response){

            // 测试信息展示
            $('#debug-info').append("添加心情后返回数据："+ JSON.stringify(response) +"<br></br>");

            // 获取返回数据
            var status = response['status'];    //状态码
            var info = response['info'];  //提示信息
            var moodList = response['moodList'];

            // 状态码，获取块数据成功
            if(status == 200) {

                //加载展示心情函数
                showMoodList(moodList);
            } else {
                // 模态框显示状态码和提示信息
                showInfoModal("状态码："+ status +"<br><br>提示信息："+ info);
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert("getEmotionList 错误！"
                + "\nXMLHttpRequest = " + JSON.stringify(XMLHttpRequest)
                + "\ntextStatus = " + textStatus
                + "\n错误原因： " + errorThrown);
        },
    });
}



/**
 * 自动加载
 * @return {[type]} [description]
 */
window.onload = function(){

    getMoodList();

}
