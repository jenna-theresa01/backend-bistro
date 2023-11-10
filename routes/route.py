from typing import List
from sqlalchemy.orm import Session
from fastapi import APIRouter, Depends, HTTPException, status
from database import SessionLocal, engine
import schemas
import crud
from models import Menu, Category, Cuisine
from schemas import CategoryModel, CuisineModel, MenuItemModel
from pydantic import BaseModel

router = APIRouter(
    prefix="/menu"
)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally: 
        db.close()

@router.get("/all", response_model=List[schemas.MenuItemModel])
def get_menu(db: Session = Depends(get_db)):
# use .join to connect each sub table to the main table
# for loop to get the data from the database and change the format ? 
    result = db.query(Menu, Category, Cuisine).join(Category, Menu.category_id == Category.id).join(Cuisine, Menu.cuisine_id == Cuisine.id).all()
    pydantic_result = []

    # for loop goes here 
    for menu, category, cuisine in result:
        category_model = CategoryModel(id=category.id, name=category.name)
        cuisine_model = CuisineModel(id=cuisine.id, name=cuisine.name)

        menu_item_model = MenuItemModel(
            id=menu.id,
            title=menu.title,
            description=menu.description,
            price=menu.price,
            spicy_level=menu.spicy_level,
            category=category_model,
            cuisine=cuisine_model
        )

        pydantic_result.append(menu_item_model)

    return pydantic_result
    # menu = crud.get_menus(db)
    # return menu
