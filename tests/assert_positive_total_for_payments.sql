/* 
singular test are for custom test

"dbt test"                                to run all tests in your project.
"dbt test --select stg_orders"            to run all tests on the stg_orders model .
"dbt test --select test_type:generic"     to run only generic tests in your project.
"dbt test --select test_type:singular"    to run only singular tests in your project.
*/

with payments as (
    select * from {{ ref('stg_payments')}}
)

select
    order_id,
    sum(amount) as total_amount
from payments
group by 1
having total_amount < 0