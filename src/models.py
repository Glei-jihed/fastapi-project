from sqlalchemy import Column, Integer, String, ForeignKey
from .database import Base

class DictLine(Base):
    __tablename__ = "dictline"

    id = Column(Integer, primary_key=True, index=True)
    key = Column(String(40))
    value = Column(String(40))
    dict_id = Column(Integer, ForeignKey('dicts.id'))

class Dicts(Base):
    __tablename__ = "dicts"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(40))


class Trad(Base):
    __tablename__ = "trads"

    id = Column(Integer, primary_key=True, index=True)
    word = Column(String(40))
    trad = Column(String(40))
    dict_id = Column(Integer, ForeignKey('dicts.id'))

