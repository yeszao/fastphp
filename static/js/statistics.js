
/**
 * 自动加载
 */
window.onload = function(){

    // 初始化日期
    initStartAndEndDate();

    // 获取事件
    acceptEventList();

    // 查询事件
    $("#selectEvent").click(function () {
        acceptEventList();
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
 * 获取事件数据
 */
function acceptEventList(){

    // 获取开始日期，默认当前日期前一周
    var data = {};
    data.startDate = $("#startDate").val();
    data.endDate = $("#endDate").val();

    // 测试信息展示
    $('#debug-info').append("<br><br> acceptEventList() ");
    $('#debug-info').append("<br> 发送数据：" + JSON.stringify(data) );

    $.ajax({
        type: "POST",
        url: "/statistics/acceptEventList",
        cache : false,    //禁用缓存
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(msg){

            // 测试信息展示
            $('#debug-info').append("<br> 返回数据：" + JSON.stringify(msg) );

            // 状态码，获取事件成功
            if(msg.status == 200){

                // DOM 展示事件列表
                showEventList_DOM(msg.eventList);

                // bootstrap table  展示事件列表
                // showEventList_bootstrap(eventList);

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


/**
 * 展示饼状图
 */
function showPieChart() {
    //饼图模板

}


/**
 * DOM 展示列表
 * @param  {[type]} objList [description]
 * @return {[type]}         [description]
 */
function showEventList_DOM(objList)
{
    // 测试信息展示
    $('#debug-info').append("<br><br> showEventList_DOM() ");
    $('#debug-info').append("<br> 数据：" + JSON.stringify(objList) );

    // 清空表格旧数据
    $("#event-list-table-1 tr:not(:first)").html("");
    // 获取表格 id
    var table = document.getElementById("event-list-table-1");

    for(var i=0; i<objList.length; ++i)
    {
        var row = table.insertRow(-1);
        var obj = objList[i];
        for(var key in obj){
            var cell = row.insertCell(-1);
            cell.innerHTML=obj[key];
        }
    }
}


/**
 * bootstrap table  展示列表
 * @param  {[type]} objList [description]
 * @return {[type]}         [description]
 */
function showEventList_bootstrap(objList)
{
    $('#event-list-table-2').bootstrapTable({
        // url 返回的是 msg 对象，不是 eventList 对象数组
        url: '/statistics/acceptEventList',
        columns: [{
            field: 'statebox',
            checkbox: true
        },{
            field: 'tag_name',
            title: '事件'
        }, {
            field: 'time_length',
            title: '共计'
        }, {
            field: 'date_length',
            title: '天数'
        }, {
            field: 'time_length_per_day',
            title: '平均/天'
        }],
        striped:true,
        // 行操作
        // onClickRow: function(row, $element,field){
        //     var i = $element.data('index');//可通过此参数获取当前行号
        //     alert(i+"，"+row.owner_id+"，"+field);
        // }

        onClickCell: function(field, value, row, $element){
            // field：点击列的 field 名称
            // value：点击列的 value 值; 当前点击列所在行的内容，可以直接理解为单元格的内容
            // row：点击列的整行数据; 当前点击列所在行的所有数据
            // $element：td 元素
            // 测试信息展示
            // if(DEBUG){
            //     $('#debug-info').append("field="+ field +"，");
            //     $('#debug-info').append("value="+ value +"，");
            //     $('#debug-info').append("row.tag_name="+ row.tag_name +"，");
            //     $('#debug-info').append("$element="+ $element);
            //     $('#debug-info').append("<br></br>");
            // }
        }
    });
}
