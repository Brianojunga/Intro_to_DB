import mysql.connector

connection = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "7066"
        database = "alx_book_store"
)

cursor = connection.connector()

sql = "INSERT INTO Customers (customer_id, customer_name, email, address) VALUES (%s, %s, %s, %s)"

values = (1, "Cole Baidoo", "cbaidoo@sandtech.com", "123 Happiness Ave.")

cursor.execute(sql, values)
connection.commit()