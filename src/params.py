from pydantic import BaseModel
from typing import List, Optional

class TradParams(BaseModel):
    word: str
    dict_id: int

class DictLineParams(BaseModel):
    id: Optional[int] = None
    key: str
    value: str
    dict_id: Optional[int] = None

class DictParams(BaseModel):
    name: str
    lines: List[DictLineParams] = []


class UpdateDictAndLinesParams(BaseModel):
    name: str
    lines: List[DictLineParams] = []
