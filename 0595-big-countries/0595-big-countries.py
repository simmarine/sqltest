# 면적이 최소 300만 이상
# 나라 인구는 최소 2천5백만명
# 큰 나라 들의 이름, 인구, 면적을 찾는 풀이 작성

import pandas as pd

def big_countries(world: pd.DataFrame) -> pd.DataFrame:
    result = world[(world['area'] >= 3000000) | (world['population'] >= 25000000)]
    return result[['name','population','area']]