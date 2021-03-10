CREATE TABLE bikes(
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    model_code VARCHAR(10) UNIQUE NOT NULL,
    price_in_$ INT NOT NULL
);

CREATE TABLE order(
    id SERIAL PRIMARY KEY,
    bike_id INT NOT NULL REFERENCES bikes,
    date_order TIMESTAMP NOT NULL DEFAULT current_timestamp,
    note TEXT 
)

CREATE TABLE ordered_bikes(
    order_id INT NOT NULL REFERENCES order,
    price_upon_order INT DEFAULT bikes.price_in_$
)