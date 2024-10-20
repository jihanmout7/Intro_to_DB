import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Attempt to connect to the MySQL server
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='Jihan@2020@2020'
        )

        if connection.is_connected():
            cursor = connection.cursor()
            # Create the database if it does not exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
    
    except mysql.connector.Error:
        # Handle any errors that occur during connection or execution
        print(f"Error: {e}")
    
    finally:
        # Ensure that resources are cleaned up
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
