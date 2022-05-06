from dataclasses import dataclass
from grongier.pex import Message
from typing import List

from obj import BenchObj
@dataclass
class BenchMsgStr(Message):
    prop1: str = None
    prop2: str = None
    prop3: str = None
    prop4: str = None
    prop5: str = None
    prop6: str = None
    prop7: str = None
    prop8: str = None
    prop9: str = None
    prop10: str = None

@dataclass
class BenchMsgObj(Message):
    prop1: BenchObj = None
    prop2: BenchObj = None
    prop3: BenchObj = None
    prop4: BenchObj = None
    prop5: BenchObj = None
    prop6: BenchObj = None
    prop7: BenchObj = None
    prop8: BenchObj = None
    prop9: BenchObj = None
    prop10: BenchObj = None

