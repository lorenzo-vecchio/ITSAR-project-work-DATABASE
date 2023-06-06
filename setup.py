import json
import mysql.connector

# Load the JSON file
with open('italy_cities.json') as f:
    data = json.load(f)

# Connect to the MySQL database
cnx = mysql.connector.connect(user='root', password='Lollipoplollipop02', host='localhost', port='3306', database='project_work')
cursor = cnx.cursor()
i = 0
for row in data:
    i = i + 1
    print(f'{i} - provincia : {row["provincia"]}, nome località: {row["comune"]}')
    # Get the ID of the province
    query = "SELECT id FROM province WHERE sigla = %s"
    values = (row['provincia'],)
    cursor.execute(query, values)
    provincia_id = cursor.fetchone()[0]

    # Insert the località (if it doesn't already exist)
    query = "INSERT IGNORE INTO localita (nomeLocalita, id_provincia) VALUES (%s, %s)"
    values = (row['comune'].replace("Ã¨", "è").replace("Ã¬", "ì").replace("Ã ", "à").replace("Ã¹", "ùàò-.lwq    w+w "), provincia_id)
    cursor.execute(query, values)
    cnx.commit()
    
cursor.close()
cnx.close()