import mysql.connector

# Establish the database connection
try:
    conn = mysql.connector.connect(
        host="localhost",
        user="username",
        password="password",
        database="database_name"
    )

    # Create a cursor object to execute SQL queries
    cursor = conn.cursor()

    # Execute a SELECT query
    query = "SELECT * FROM expenses"
    cursor.execute(query)

    # Fetch all the rows returned by the query
    rows = cursor.fetchall()

    # Process the retrieved data
    for row in rows:
        print(row)

    # Execute an INSERT query
    insert_query = "INSERT INTO expenses (expense_name, amount, category, date) VALUES (%s, %s, %s, %s)"
    data = ("Groceries", 50.00, "Food", "2023-06-15")
    cursor.execute(insert_query, data)
    conn.commit()
    print("Expense inserted successfully!")

    # Execute an UPDATE query
    update_query = "UPDATE expenses SET amount = %s WHERE id = %s"
    data = (60.00, 1)
    cursor.execute(update_query, data)
    conn.commit()
    print("Expense updated successfully!")

    # Execute a DELETE query
    delete_query = "DELETE FROM expenses WHERE id = %s"
    data = (1,)
    cursor.execute(delete_query, data)
    conn.commit()
    print("Expense deleted successfully!")

    # Close the cursor and the database connection
    cursor.close()
    conn.close()

except mysql.connector.Error as error:
    print("Error while connecting to MySQL:", error)
      