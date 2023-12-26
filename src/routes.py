from fastapi import APIRouter, Depends
from .main import (index, create_dict, get_dicts, get_dict, 
                   update_dict, delete_dict, translate_word, get_db)
from .params import TradParams, DictParams, UpdateDict
from .response import IndexResponse, postTradResponse, DictResponse, DictWithLinesResponse
from typing import List

router = APIRouter()

@router.get("/", response_model=IndexResponse)
def read_index():
    return index()

@router.post('/dict', response_model=DictResponse)
def create_dictionary(params: DictParams, db: Session = Depends(get_db)):
    return create_dict(params, db)

@router.get('/dicts/all', response_model=List[DictWithLinesResponse])
def read_dicts(db: Session = Depends(get_db)):
    return get_dicts(db)

@router.get('/dict/{dict_id}', response_model=DictWithLinesResponse)
def read_dict(dict_id: int, db: Session = Depends(get_db)):
    return get_dict(dict_id, db)

@router.put('/dict/{dict_id}/update', response_model=DictWithLinesResponse)
def update_a_dict(dict_id: int, params: UpdateDict, db: Session = Depends(get_db)):
    return update_dict(dict_id, params, db)

@router.delete('/dict/{dict_id}', response_model=DictResponse)
def delete_a_dict(dict_id: int, db: Session = Depends(get_db)):
    return delete_dict(dict_id, db)

@router.post('/translate', response_model=postTradResponse)
def translate_a_word(params: TradParams, db: Session = Depends(get_db)):
    return translate_word(params, db)
