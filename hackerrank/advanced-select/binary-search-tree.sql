select distinct parent.n, case 
    when child.p is null then "Leaf"
    when parent.p is null then "Root"
    else "Inner"
    end as ntype
from bst as parent
left join bst as child on parent.n = child.p order by parent.n asc
