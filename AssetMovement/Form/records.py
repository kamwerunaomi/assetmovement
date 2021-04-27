import mysql.connector

mydb=mysql.connector.connect(
	host='localhost',
	user='root',
	passwd='',
	database='assetmovement'
	)

mycursor=mydb.cursor();

mycursor.execute("select * from form_form")
result=mycursor.fetchall();
for i in result:
	print()