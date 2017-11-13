<?php 

$query['pavmegamenu'][]  = "DELETE FROM `".DB_PREFIX ."setting` WHERE `code`='pavmegamenu' and `key` = 'pavmegamenu_module'";

$query['pavmegamenu'][]  = "DELETE FROM `".DB_PREFIX ."setting` WHERE `code`='pavmegamenu_params' and `key` = 'params'";
$query['pavmegamenu'][] =  " 
INSERT INTO `".DB_PREFIX ."setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(0, 0, 'pavmegamenu_params', 'pavmegamenu_params', '[{\"align\":\"aligned-left\",\"submenu\":1,\"subwidth\":700,\"cols\":1,\"group\":0,\"id\":90,\"rows\":[{\"cols\":[{\"widgets\":\"wid-26\",\"colwidth\":3},{\"widgets\":\"wid-27\",\"colwidth\":4},{\"widgets\":\"wid-28\",\"colwidth\":5}]}]},{\"submenu\":\"1\",\"id\":87,\"align\":\"aligned-left\",\"subwidth\":400,\"cols\":1,\"group\":0,\"rows\":[{\"cols\":[{\"colwidth\":12,\"widgets\":\"wid-29\"}]}]},{\"align\":\"aligned-left\",\"submenu\":1,\"cols\":1,\"group\":0,\"id\":84,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]},{\"align\":\"aligned-left\",\"submenu\":1,\"cols\":1,\"group\":0,\"id\":97,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]}]', 0);
";

$query['pavverticalmenu'][]  = "DELETE FROM `".DB_PREFIX ."setting` WHERE `code`='pavverticalmenu_params' and `key` = 'params'";
$query['pavverticalmenu'][] =  " 
INSERT INTO `".DB_PREFIX ."setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(0, 0, 'pavverticalmenu_params', 'params', '[{\"submenu\":1,\"subwidth\":300,\"id\":43,\"cols\":1,\"group\":0,\"rows\":[{\"cols\":[{\"widgets\":\"wid-8\",\"colwidth\":\"12\"}]},{\"cols\":[{\"widgets\":\"wid-11\",\"colwidth\":\"12\",\"colclass\":\"hidden-class\"}]}]},{\"submenu\":1,\"subwidth\":500,\"cols\":1,\"group\":0,\"id\":44,\"rows\":[{\"cols\":[{\"widgets\":\"wid-12\",\"colwidth\":12}]}]},{\"submenu\":1,\"cols\":1,\"group\":0,\"id\":46,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]},{\"submenu\":1,\"cols\":1,\"group\":0,\"id\":49,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]},{\"submenu\":1,\"cols\":1,\"group\":0,\"id\":52,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]}]', 0);
";

$query['pavblog'][] ="
INSERT INTO `".DB_PREFIX ."layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(0, 14, 0, 'pavblog/%');
";
$query['pavblog'][] ="
INSERT INTO `".DB_PREFIX ."layout` (`layout_id`, `name`) VALUES
(0, 'Pav Blog');
";
?>

