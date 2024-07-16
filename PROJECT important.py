import pymysql

obj = pymysql.connect(host="localhost", user="root", password="karan", database="main_project", charset="utf8")
curobj = obj.cursor()

def category():
    print("**********Categories available are:**********\n")
    a = "select distinct CATEGORY from main_table"
    curobj.execute(a)
    fetch = curobj.fetchall()
    for i in fetch:
        print(i[0])
    print("\n")
    inpCategory = input("Enter your category:")
    print("\n")
    print("We have the following", inpCategory, ":")
    print("\n")
    b = "select PRODUCT_NAME, PRICE from main_table where CATEGORY='{}'".format(inpCategory)
    curobj.execute(b)
    fetch1 = curobj.fetchall()
    for i in fetch1:
        print(i[0], "~~~~~~~~~", "PRICE:", i[1])
    print("~~~~~~~~~~X~~~~~~~~~~")

def product():
    a = "select PRODUCT_NAME, PRICE from main_table"
    curobj.execute(a)
    fetch = curobj.fetchall()
    for i in fetch:
        print(i[0], "~~~~~~~~~~", "PRICE:", i[1])
    print("~~~~~~~~~~X~~~~~~~~~~")

def brand():
    print("**********Brands available are:**********\n")
    a = "select distinct BRAND_NAME from main_table"
    curobj.execute(a)
    fetch = curobj.fetchall()
    for i in fetch:
        print(i[0])
    print("\n")
    inpBrand = input("Enter your brand:")  # Added user input for brand
    print("\n")
    print("We have the following available products from", inpBrand, ":")
    print("\n")
    b = "select PRODUCT_NAME, PRICE from main_table where BRAND_NAME='{}'".format(inpBrand)
    curobj.execute(b)
    fetch1 = curobj.fetchall()
    for i in fetch1:
        print(i[0], " ~~~~~~ ", "PRICE:", i[1])
    print("~~~~~~~~~~~X~~~~~~~~~~~")

def order():
    try:
        inpContact = input("Enter your contact number:")
        inpOrder = input("What do you want to order?")

        # Check if the product exists
        qty_query = "SELECT QUANTITY FROM main_table WHERE PRODUCT_NAME=%s"
        curobj.execute(qty_query, (inpOrder,))
        fetch = curobj.fetchone()

        if fetch is None:
            print("Product not found!")
            return
        
        if fetch[0] == 0:
            print("OUT OF STOCK!!!!!!")
        else:
            product_id_query = "SELECT PRODUCT_ID FROM main_table WHERE PRODUCT_NAME=%s"
            curobj.execute(product_id_query, (inpOrder,))
            fetch1 = curobj.fetchone()

            # Check if product ID was found
            if fetch1 is None:
                print("Product ID not found for the given product name!")
                return

            # Subtract from main_table
            update_quantity_query = "UPDATE main_table SET QUANTITY=QUANTITY-1 WHERE PRODUCT_NAME=%s"
            curobj.execute(update_quantity_query, (inpOrder,))
            obj.commit()

            # Add details into order_table
            insert_order_query = """
            INSERT INTO order_table (PRODUCT_ID, PRODUCT_NAME, DATE_OF_DISPATCH, CONTACT_DETAILS_OF_CUSTOMER)
            VALUES (%s, %s, CURDATE(), %s)
            """
            curobj.execute(insert_order_query, (fetch1[0], inpOrder, inpContact))
            obj.commit()

            print("Your order has been placed.")
    except pymysql.MySQLError as e:
        print(f"Error: {e}")
        obj.rollback()
    except Exception as e:
        print(f"Unexpected error: {e}")


while True:
    print("WELCOME TO E-SHOP:)\n")
    print("Press 1 if you are looking for a category.")
    print("Press 2 if you are looking for a product.")
    print("Press 3 if you are looking for a brand.")
    print("Press 4 if you want to place an order.\n")

    inpint = int(input("Enter your number:"))
    print("\n")

    if inpint==1:
        category()
    elif inpint==2:
        product()
    elif inpint==3:
        brand()
    elif inpint==4:
        order()
        break  # Exit the loop
    else:
        print("ERROR!!!")
        print("Check your number.")

