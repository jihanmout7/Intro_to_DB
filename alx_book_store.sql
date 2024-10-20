import mysql.connector

# Database connection details (replace with your own)
hostname = "localhost"
username = "root"
password = "Jihan@2020@2020"

def create_database(db_name):
  """Creates the alx_book_store database if it doesn't exist.

  Args:
      db_name: The name of the database to create.
  """
  try:
    # Connect to MySQL server without specifying a database
    cnx = mysql.connector.connect(user=username, password=password, host=hostname)
    cursor = cnx.cursor()

    # Create database statement (IF NOT EXISTS avoids errors if it exists)
    create_db_query = f"CREATE DATABASE IF NOT EXISTS {db_name}"
    cursor.execute(create_db_query)

    print(f"Database '{db_name}' created successfully!")

  except mysql.connector.Error as err:
    print(f"Error creating database: {err}")

  finally:
    if cnx:
      cnx.cursor().close()
      cnx.close()

if __name__ == "__main__":
  create_database("alx_book_store")
