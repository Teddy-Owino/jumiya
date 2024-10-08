from flask import *
import pymysql
import re
from werkzeug.security import generate_password_hash
from mpesa import *


app = Flask(__name__)

# session key
app.secret_key = "qq@%^&*()"

@app.route("/")
def Homepage():
    # establish to your db
    connection= pymysql.connect(host= 'localhost', user='root', password='', database= 'jumiya')
    sql = "SELECT * FROM `products` WHERE `product_category` = 'phones'"
    sql1 = "SELECT * FROM `products` WHERE `product_category` = 'electronics'"
    sql2 = "SELECT * FROM `products` WHERE `product_category` = 'beauty'"
    sql3 = "SELECT * FROM `products` WHERE `product_category` = 'fashion'"
    sql4 = "SELECT * FROM `products` WHERE `product_category` = 'shoes'"
    sql5 = "SELECT * FROM `products` WHERE `product_category` = 'television'"


    
    # you need cursor to execute

    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    cursor3 = connection.cursor()
    cursor4 = connection.cursor()
    cursor5 = connection.cursor()

    # execute

    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)
    cursor5.execute(sql5)


    # get all the phones

    phones = cursor.fetchall()
    electronics = cursor1.fetchall()
    beauty = cursor2.fetchall()
    fashion = cursor3.fetchall()
    shoes = cursor4.fetchall()
    television = cursor5.fetchall()

    return render_template("index.html", allphones = phones, electronics = electronics, beauty = beauty, 
                           shoes = shoes, fashion = fashion, television = television)




@app.route("/about")
def Aboutpage():
    return "This is my about page"


@app.route("/single/<product_id>")
def singleP(product_id):
    # connection to db
    connection= pymysql.connect(host= 'localhost', user='root', password='', database= 'jumiya')
    # create sql query
    sql = "SELECT * FROM `products` WHERE `product_id` = %s "

    # cursor

    cursor = connection.cursor()
# execute
    cursor.execute(sql, product_id)
# get thye single product
    phone = cursor.fetchone()

    return render_template("single.html", phone = phone)


def is_valid_password(password):
    # Password should be at least 8 characters long and contain:
    # - At least one uppercase letter
    # - At least one lowercase letter
    # - At least one digit
    # - At least one special character
    if (len(password) < 6 or
        re.search(r"[A-Z]", password) or
        re.search(r"[a-z]", password) or
        re.search(r"[!@#$%^&*(),.?\":{}|<>]", password) or
        re.search(r"[0-9]", password)):
        return True
    return False


@app.route("/register", methods =['POST','GET'])
def register():
    if request.method == 'POST':
        # user can add the products
        
        username = request.form['username']
        email = request.form['email']
        gender = request.form['gender']
        phone = request.form['phone']
        password = request.form['password']

#         hashed_password = generate_password_hash(password)


#         response = is_valid_password(password)
#         if response ==True:
#             # password met all the condition
        
#         else:
#             # password did not meet all cond
#             return render_template("register.html", message = "registrstin successful")
#     else:


#         # Validate password
#         if not is_valid_password(password):
#             return render_template("register.html", error='Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, one digit, and one special character.')
     
# # conn to db
        connection= pymysql.connect(host= 'localhost', user='root', password='', database= 'jumiya')
# create  a cursor
        cursor = connection.cursor()
        sql = "insert into users (username, email, gender, phone, password) values (%s, %s, %s, %s, %s)"
        
        data = (username, email, gender, phone, password)
     #execute 
        cursor.execute(sql, data)
        
        # save changes 
        connection.commit()

        return redirect("/login")

    else:
        return render_template("register.html", error = 'Please register')

@app.route("/login", methods =['POST', 'GET'])
def login():
     if request.method == 'POST':
        # user can add the products
        email = request.form['email']
        password = request.form['password']

        connection = pymysql.connect(host='localhost', user = 'root', password='', database="jumiya")
        cursor = connection.cursor()
        sql = "Select * from users where email = %s and password = %s"
        data = (email, password)

        cursor.execute(sql, data)

        if cursor.rowcount == 0:
            return render_template("login.html", error = "invalid login credentials")
        else:
            session['key'] = email
            return redirect("/")
     else:
        return render_template("login.html")
            


# fashion route helps you see all the fashions

@app.route("/fashion")
def fashion():
     connection= pymysql.connect(host= 'localhost', user='root', password='', database= 'jumiya')
     sql = "SELECT * FROM `products` WHERE `product_category` = 'dresses'"
     sql1 = "SELECT * FROM `products` WHERE `product_category` = 'handbags'"
     sql2 = "SELECT * FROM `products` WHERE `product_category` = 'socks'"
     sql3 = "SELECT * FROM `products` WHERE `product_category` = 'caps'"
     sql4 = "SELECT * FROM `products` WHERE `product_category` = 'belt'"
  
    
    # you need cursor to execute

     cursor = connection.cursor()
     cursor1 = connection.cursor()
     cursor2 = connection.cursor()
     cursor3 = connection.cursor()
     cursor4 = connection.cursor()
   

    # execute

     cursor.execute(sql)
     cursor1.execute(sql1)
     cursor2.execute(sql2)
     cursor3.execute(sql3)
     cursor4.execute(sql4)
     

    # get all the phones

     dresses = cursor.fetchall()
     handbags = cursor1.fetchall()
     socks = cursor2.fetchall()
     caps = cursor3.fetchall()
     belt = cursor4.fetchall()
   

     return render_template("fashion.html", dresses = dresses, handbags = handbags, socks = socks, caps = caps, belt = belt)


# To  upload fashion

@app.route("/uploadfashion", methods =['POST', 'GET'])
def uploadFashion():
    if request.method == 'POST':
        # user can add the products
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)
# conn to db
        connection= pymysql.connect(host= 'localhost', user='root', password='', database= 'jumiya')
# create  a cursor
        cursor = connection.cursor()
        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values (%s, %s, %s, %s, %s)"
        
        data = (product_name, product_desc, product_cost, product_category,product_image_name.filename)
     #execute 
        cursor.execute(sql, data)
        
        # save changes
        connection.commit()

        return render_template("uploadfashion.html", message = 'Fashion added successfully')

    else:
        return render_template("uploadfashion.html", error = 'Please add a fashion')
    

# mpesa
# implement STK PUSH
@app.route("/mpesa", methods=['POST'])
def mpesa():
    phone = request.form["phone"]
    amount = request.form["amount"]

    # use mpesa_payment function from mpesa.py
    #  it accepts the phone and amount as arguments
    mpesa_payment(amount, phone)
    return '<h1> Please Complete Payment in your phone </h1>'\
    ' <a href="/" class="btn btn-dark btn-sm" >Go Back to products</a> '



@app.route("/logout")
def logout():
    session.clear()  
  
    return redirect("/login")


@app.route("/upload", methods =['POST', 'GET'])
def upload():
    if request.method == 'POST':
        # user can add the products
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)
# conn to db
        connection= pymysql.connect(host= 'localhost', user='root', password='', database= 'jumiya')
# create  a cursor
        cursor = connection.cursor()
        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values (%s, %s, %s, %s, %s)"
        
        data = (product_name, product_desc, product_cost, product_category,product_image_name.filename)
     #execute 
        cursor.execute(sql, data)
        
        # save changes
        connection.commit()

        return render_template("upload.html", message = 'Product added successfully')

    else:
        return render_template("upload.html", error = 'Please add a product')



if __name__== "__main__":
    app.run(debug=True, port=4001)

