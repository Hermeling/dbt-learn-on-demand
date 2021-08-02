{% docs order_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet been delivered   |
| completed      | Order has been received by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}

{% docs payment_method %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| credit_card    | Paid per credit_card                             |
| bank_transfer  | Paid per bank_transfer                           |
| coupon         | Paid per coupon                                  |
| gift_card      | Paid per gift_card                               |

{% enddocs %}

   