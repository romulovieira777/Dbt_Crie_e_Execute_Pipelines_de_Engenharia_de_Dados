-- Tabela categories
COPY
  categories (
    category_id
  , category_name
  , description
)
FROM
  'caminho_do_arquivo\categories.csv'
DELIMITER
    ';'
CSV
    HEADER;


-- Tabela customers
COPY
  customers (
    customer_id
  , company_name
  , contact_name
  , contact_title
  , address
  , city
  , region
  , postal_code
  , country
  , phone
  )
FROM
  'caminho_do_arquivo\customers.csv'
DELIMITER
    ';'
CSV
    HEADER;


-- Tabela employees
COPY
  employees
FROM
  'caminho_do_arquivo\employees.csv'
DELIMITER
    ';'
CSV
    HEADER;


-- Tabela orderdetails
COPY
  order_details
FROM
  'caminho_do_arquivo\orderdetails.csv'
DELIMITER
    ';'
CSV
    HEADER;


-- orders
COPY
  orders
FROM
  'caminho_do_arquivo\Arquivos\orders.csv'
DELIMITER
    ';'
CSV HEADER
NULL '';


-- Tabela products
COPY
  products
FROM
  'caminho_do_arquivo\products.csv'
DELIMITER
    ';'
CSV
    HEADER;


-- Tabela shippers
COPY
  shippers
FROM
  'caminho_do_arquivo\products.csv'
DELIMITER
    ';'
CSV
    HEADER;


-- Tabela suppliers
COPY
  suppliers
FROM
    'caminho_do_arquivo\suppliers.csv'
DELIMITER
    ';'
CSV
    HEADER;
