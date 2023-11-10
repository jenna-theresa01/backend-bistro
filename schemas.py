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
    category_id: int | None
    cuisine_id: int | None


class Config:
    from_menu = True

