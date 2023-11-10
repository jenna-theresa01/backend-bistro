from sqlalchemy.orm import Session, aliased
from models import Menu, Category, Cuisine
from schemas import MenuItemModel

def get_menu(db: Session):
    # set variable to store the query info
    menu_query = (
        db.query(Menu).all()
    )
    return menu_query