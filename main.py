from fastapi import FastAPI
from sqlalchemy import Select
import crud

from routes import route

app = FastAPI()
app.include_router(route.router)


@app.get("/")
async def root():
    return {"message": "Hello World"}

# @app.get("/menu/{menu_id}")
# async def get_menu(menu_id: int):
#     menu_items = crud.get_menu_by_id(menu_id)
#     return menu_items
