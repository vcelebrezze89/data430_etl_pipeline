CREATE TABLE IF NOT EXISTS customers (
  customer_id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone TEXT,
  address TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT,
  date_of_birth DATE,
  registration_date DATE
);

CREATE TABLE IF NOT EXISTS suppliers (
  supplier_id INTEGER PRIMARY KEY,
  company_name TEXT,
  contact_name TEXT,
  email TEXT,
  phone TEXT,
  address TEXT,
  city TEXT,
  state TEXT,
  country TEXT,
  industry TEXT,
  rating NUMERIC(2,1),
  contract_start_date DATE
);

CREATE TABLE IF NOT EXISTS products (
  product_id INTEGER PRIMARY KEY,
  product_name TEXT,
  category TEXT,
  price NUMERIC(10,2),
  cost NUMERIC(10,2),
  sku TEXT,
  weight_kg NUMERIC(10,3),
  stock_quantity INTEGER,
  supplier_id INTEGER REFERENCES suppliers(supplier_id),
  created_date DATE
);

CREATE TABLE IF NOT EXISTS daily_sales (
  sale_id INTEGER PRIMARY KEY,
  sale_date DATE,
  customer_id INTEGER REFERENCES customers(customer_id),
  product_id INTEGER REFERENCES products(product_id),
  quantity INTEGER,
  unit_price NUMERIC(10,2),
  total_amount NUMERIC(10,2),
  discount_pct NUMERIC(5,2),
  payment_method TEXT,
  channel TEXT,
  region TEXT
);