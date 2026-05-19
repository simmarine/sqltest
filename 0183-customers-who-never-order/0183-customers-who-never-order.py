# 한번도 주문하지 않은 고객을 모두 찾는 솔루션

import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    result = customers.merge(orders, left_on='id', right_on='customerId', how='left')
    
    return result[result['customerId'].isnull()][['name']].rename(columns={'name': 'Customers'})