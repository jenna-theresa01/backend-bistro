from typing import Optional

from pydantic import BaseModel

class CategoryModel(BaseModel):
    id: int
    name: str

class CuisineModel(BaseModel):
    id: int
    name: str

class MenuItemModel(BaseModel):
    id: int
    title: str | None
    description: str | None
    price: int | None
    spicy_level: int | None
    # category_id: int | None
    # cuisine_id: int | None

    # def __init__(self, **data):
    #     super().__init__(**data)
    #     self.menu = self.menu or []

class Config:
    from_menu = True

