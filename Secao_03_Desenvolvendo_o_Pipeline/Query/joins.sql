
SELECT
    categories.category_name
  , suppliers.company_name AS supplier
  , products.product_name
  , products.unit_price
  , products.product_id
FROM
    {{ source('sources', 'products') }} AS products
LEFT JOIN
    {{ source('sources', 'suppliers') }} AS suppliers
ON
    products.supplier_id = suppliers.supplier_id
LEFT JOIN
    {{ source('sources', 'categories') }} AS categories
ON
    products.category_id = categories.category_id
