<form action="<?php echo APP_URL ?>/item/update" method="post">
    <input type="text" name="value" value="<?php echo $item['item_name'] ?>">
    <input type="hidden" name="id" value="<?php echo $item['id'] ?>">
    <input type="submit" value="修改">
</form>

<a class="big" href="<?php echo APP_URL ?>/item/index">返回</a>