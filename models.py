from typing import List
from typing import Optional

from sqlalchemy import Boolean, Column, ForeignKey, Integer, String
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, relationship

from database import Base

class Base(DeclarativeBase):
    pass

class Category(Base):
    __tablename__ = "category"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    name: Mapped[str] = mapped_column(ForeignKey("category.id"))

    def __repr__(self) -> str:
        return f"Category(id={self.id!r}, name={self.id!r})"


class Cuisine(Base):
    __tablename__ = "cuisine"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    name: Mapped[str] = mapped_column(ForeignKey("cuisine.id"))

    def __repr__(self) -> str:
        return f"Cuisine(id={self.id!r}, name={self.id!r})"

class Menu(Base):
    __tablename__ = "menu"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    title: Mapped[str] = Column(String, default="Title")
    description: Mapped[str] = Column(String, default="Description")
    price: Mapped[int] = Column(Integer, default="Price")
    spicy_level: Mapped[int] = Column(Integer, default="Spicy Level")

    # is this where I need to put the foreign keys for cuisine and category?
    category_id: Mapped[int] = Column(ForeignKey("category.id"))
    cuisine_id: Mapped[int] = Column(ForeignKey("cuisine.id"))



    def __repr__(self) -> str:
        return f"Menu(id={self.id!r}, title={self.id!r}, description={self.id!r}, price={self.id!r}, spicy_level={self.id!r}, category_id={self.id!r}, cuisine_id={self.id!r})"
