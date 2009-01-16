<?xml version="1.0" encoding="UTF-8"?>

    <sql:execute-query xmlns:sql="http://apache.org/cocoon/SQL/2.0"> 
     <sql:query name="map">
       select distinct l.age_urn as pub_value,b.epoch as priv_value
from lk_iugs_age l, cls_iugs c, bedrock b
where b.gid = c.gid and c.age_id = l.age_id and b.epoch &lt;&gt; ''
     </sql:query>
    </sql:execute-query>

