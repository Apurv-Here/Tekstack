select count(customer.first_name)  as customer_count from customer, address 
where address.city = 'Bangalore' and (customer.phone_number like '7%' or customer.phone_number like '8%') and (customer.address_id = address.id)
GO 
