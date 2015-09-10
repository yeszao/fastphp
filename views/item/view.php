<form action="../../../item/update" method="post">
    <input type="text" value="<?php echo $todo['Item']['item_name'] ?>" name="value">
    <input type="hidden" value="<?php echo $todo['Item']['id'] ?>" name="id">
    <input type="submit" value="修改">
</form>

<a class="big" href="../../../item/">返回</a>