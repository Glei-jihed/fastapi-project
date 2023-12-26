from pydantic import BaseModel
from typing import List

class postTradResponse(BaseModel):
    word: str
    dict_id: int
    trad: str

class DictLineResponse(BaseModel):
    id: int
    key: str
    value: str

class DictResponse(BaseModel):
    id: int
    name: str

class DictWithLinesResponse(BaseModel):
    id: int
    name: str
    lines: List[DictLineResponse]

class AllDictsResponse(BaseModel):
    dicts: List[DictResponse]

class IndexResponse(BaseModel):
    msg: str
