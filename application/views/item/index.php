<form action="<?php echo APP_URL ?>/item/add" method="post">
    <input type="text" value="I have to..." onclick="this.value=''" name="value">
    <input type="submit" value="添加">
</form>
<br/><br/>

<?php $number = 0?>
 
<?php foreach ($todo as $todoitem):?>
    <a class="big" href="<?php echo APP_URL ?>/item/view/<?php echo $todoitem['Item']['id']?>/<?php echo strtolower(str_replace(" ","-",$todoitem['Item']['item_name']))?>" title="点击修改">
        <span class="item">
            <?php echo ++$number?>
            <?php echo $todoitem['Item']['item_name']?>
        </span>
    </a>
    ----
    <a class="big" href="<?php echo APP_URL ?>/item/delete/<?php echo $todoitem['Item']['id']?>">删除</a>
<br/>
<?php endforeach?>