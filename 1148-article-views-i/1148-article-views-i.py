# 자신의 논문을 최소 한 편 이상 조회한 모든 저자 찾는 방법
# id 오름차순 정렬
import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    result = views[views['author_id'] == views['viewer_id']]
    
    result = result.drop_duplicates(subset=['author_id'])

    return result[['author_id']].rename(columns={'author_id': 'id'}).sort_values(by='id',ascending=True)

    # 중복 제거 함수 drop_duplicates(subset=['컬럼명'])
    # 정렬 함수 df.sort_values(by='컬럼명',ascending=(내림차순 False, 오름차순 True))