
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
 * 获取事件数据
 */
function acceptEventList(){

    // 获取开始日期，默认当前日期前一周
    var data = {};
    data['startDate'] = $("#startDate").val();
    data['endDate'] = $("#endDate").val();

    // 测试信息展示
    $('#debug-info').append("发送查询数据：" + JSON.stringify(data) + "<br></br>");

    $.ajax({
        type: "POST",
        url: "/statistics/acceptEventList",
        cache : false,    //禁用缓存
        // contentType: "application/json;charset=utf-8",    //发送数据类型
        data: data,  //提交到后台的数据
        dataType: "json",   //回调函数接收数据的数据格式
        success: function(response){
            // 测试信息展示
            $('#debug-info').append("返回事件数据：" + JSON.stringify(response) + "<br></br>");

            var status = response['status'];    //状态码
            var info = response['info'];  //提示信息

            // 状态码，获取事件成功
            if(status == 200){

                var eventList = response['eventList'];
                // DOM 展示事件列表
                showEventList_DOM(eventList);

                // bootstrap table  展示事件列表
                // showEventList_bootstrap(eventList);

            } else {
                // 模态框显示状态码和提示信息
                showInfoModal("状态码："+ status +"<br><br>提示信息："+ info);
            }
        },
       //  success: function(result) {
       //      var names=[];//定义两个数组
       //      var nums=[];
       //      $.each(result,function(key,values){ //此处我返回的是list<String,map<String,String>>循环map
       //          names.push(values.province_name);
       //          var obj = new Object();
       //          obj.name = values.province_name;
       //          obj.value = values.count;
       //          nums.push(obj);
       //      });
       //      myChart.setOption({ //加载数据图表
       //          legend: {
       //              data: names
       //          },
       //          series: {
       //              // 根据名字对应到相应的系列
       //              name: ['数量'],
       //              data: nums
       //          }
       //      });
       // },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert("acceptEventList() 错误！"
                + "\ntextStatus = " + textStatus
                + "\n错误原因： " + errorThrown);
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
    $('#debug-info').append("事件表格数据：" + JSON.stringify(objList) + "<br></br>");

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
        // url 返回的是 response 对象，不是 eventList 对象数组
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