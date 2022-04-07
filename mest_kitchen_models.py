class User():
    id = int()
    fname = ''
    lname = ''
    allergy = []
    role = ''
    status = True


class UserRole():
    role_id  = int()
    name = ''
    description = ''

class Allergy():
    allergy_id = int()
    name = ''
    description  = ''

class MenuItemType():
    name = ''
    begin_time_of_serve = ''
    end_time_of_serve = ''

class MenuItem():
    menuItemType = MenuItemType()
    id = int()
    name = ''
    description = ''
    price = float()



class Order(MenuItem):
    item = MenuItem.id
    orderId = int()
    quantity = int()

    total = MenuItem.price * quantity

    recipient = User().fname





