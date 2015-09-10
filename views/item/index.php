<form action="../items/add" method="post">
<input type="text" value="I have to..." onclick="this.value=''" name="todo"> <input type="submit" value="add">
</form>
<br/><br/>
<?php $number = 0?>
 
<?php foreach ($todo as $todoitem):?>
    <a class="big" href="../item/view/<?php echo $todoitem['Item']['id']?>/<?php echo strtolower(str_replace(" ","-",$todoitem['Item']['item_name']))?>">
    <span class="item">
    <?php echo ++$number?>
    <?php echo $todoitem['Item']['item_name']?>
    </span>
    </a><br/>
<?php endforeach?>