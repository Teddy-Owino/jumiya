from flask import *
import pymysql

app = Flask(__name__)

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



@app.route("/register")
def register():
    return "This is register page"

@app.route("/login")
def login():
    return "This is login page"

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


@app.route("/logout")
def logout():
    return "This is logout page"


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