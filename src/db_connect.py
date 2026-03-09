import pandas as pd
from sqlalchemy import create_engine

def get_engine():
    engine = create_engine(
        "postgresql://postgres:postgres@localhost:5432/food_recommend"
    )
    return engine

def get_restaurants(district=None, food_type=None, max_price=None):
    engine = get_engine()
    
    query = "SELECT * FROM restaurants WHERE 1=1"
    
    if district:
        query += f" AND district = '{district}'"
    if food_type:
        query += f" AND food_type = '{food_type}'"
    if max_price:
        query += f" AND avg_price <= {max_price}"
    
    query += " ORDER BY rating DESC"
    
    df = pd.read_sql(query, engine)
    return df

# Test thử
if __name__ == "__main__":
    print("=== Test lấy tất cả quán ===")
    result = get_restaurants()
    print(result)
    
    print("\n=== Test lọc theo quận ===")
    result2 = get_restaurants(district="Quận 1")
    print(result2)
    
    print("\n=== Test lọc theo giá ===")
    result3 = get_restaurants(max_price=50000)
    print(result3)