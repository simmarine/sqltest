# low_fats y,n 열거형 y는 저지방, n은 저지방 아님
# 재활용 도 열거형이며 y는 가능, n 은 불가능
# 저지방이면서 재활용 가능한 제품 ID
import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    result = products[(products['low_fats'] == 'Y') & (products['recyclable'] == 'Y')]
    return result[['product_id']] 