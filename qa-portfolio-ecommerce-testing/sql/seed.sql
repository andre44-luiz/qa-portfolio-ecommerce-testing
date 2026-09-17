PRAGMA foreign_keys = ON;

INSERT INTO users (user_id, name, email, status, created_at) VALUES
(1, 'Ana Silva', 'ana@example.com', 'ACTIVE', '2026-07-01'),
(2, 'Bruno Souza', 'bruno@example.com', 'ACTIVE', '2026-07-02'),
(3, 'Carla Lima', 'carla@example.com', 'INACTIVE', '2026-07-03'),
(4, 'Ana Duplicada', 'ANA@example.com', 'ACTIVE', '2026-07-04'),
(5, 'Diego Santos', 'diego@example.com', 'ACTIVE', '2026-07-05');

INSERT INTO products (product_id, name, category, price, stock, active) VALUES
(1, 'Mochila de Testes', 'Acessórios', 129.90, 10, 1),
(2, 'Camiseta QA', 'Vestuário', 79.90, 2, 1),
(3, 'Caneca Bug Hunter', 'Acessórios', 39.90, 0, 1),
(4, 'Teclado Compacto', 'Eletrônicos', 249.90, 5, 1),
(5, 'Produto Descontinuado', 'Outros', 19.90, 20, 0);

INSERT INTO orders (order_id, user_id, order_date, status, stored_total) VALUES
(1, 1, '2026-07-10', 'PAID', 209.80),
(2, 2, '2026-07-11', 'PAID', 199.90),
(3, 1, '2026-07-12', 'PENDING', 39.90),
(4, 3, '2026-07-13', 'CANCELLED', 249.90);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1, 129.90),
(2, 1, 2, 1, 79.90),
(3, 2, 2, 2, 79.90),
(4, 3, 3, 1, 39.90),
(5, 4, 4, 1, 249.90);
