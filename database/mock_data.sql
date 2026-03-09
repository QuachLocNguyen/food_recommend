-- Thêm users mẫu
INSERT INTO users (name, district, budget) VALUES
('Minh', 'Quận 1', 50000),
('Lan', 'Quận 3', 80000),
('Hùng', 'Bình Thạnh', 60000),
('Trang', 'Quận 7', 70000),
('Nam', 'Quận 1', 45000);

-- Thêm quán mẫu
INSERT INTO restaurants (name, district, food_type, avg_price, open_time, close_time, rating) VALUES
('Bún Bò Huế Cô Hoa',   'Quận 1',       'bún bò',   45000, '06:00', '14:00', 4.5),
('Cơm Tấm Bà Năm',      'Quận 1',       'cơm tấm',  55000, '07:00', '21:00', 4.2),
('Phở 24',              'Quận 3',       'phở',      65000, '06:00', '22:00', 4.0),
('Bánh Mì Huỳnh Hoa',   'Quận 3',       'bánh mì',  35000, '07:00', '20:00', 4.8),
('Bún Đậu Mắm Tôm',     'Bình Thạnh',   'bún đậu',  70000, '10:00', '21:00', 4.3),
('Hủ Tiếu Nam Vang',    'Quận 7',       'hủ tiếu',  50000, '06:00', '14:00', 4.1),
('Cháo Lòng Bà Ba',     'Quận 1',       'cháo',     40000, '06:00', '11:00', 4.4),
('Bún Riêu Cua',        'Quận 3',       'bún riêu', 45000, '07:00', '14:00', 4.2);

-- Thêm sở thích mẫu
INSERT INTO user_preferences (user_id, food_type, preference_score) VALUES
(1, 'bún bò',   0.9),
(1, 'cơm tấm',  0.6),
(2, 'phở',      0.8),
(2, 'bánh mì',  0.7),
(3, 'bún đậu',  0.9),
(4, 'hủ tiếu',  0.8),
(5, 'cháo',     0.7);

-- Thêm ratings mẫu
INSERT INTO ratings (user_id, restaurant_id, score) VALUES
(1, 1, 5.0),
(1, 2, 4.0),
(2, 3, 4.5),
(2, 4, 5.0),
(3, 5, 4.0),
(4, 6, 4.5),
(5, 7, 4.0);