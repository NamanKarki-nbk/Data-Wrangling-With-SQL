select *
from customers
where state is not Null
	and country ="USA"
    and creditLimit between 100000 and 200000;