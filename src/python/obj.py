from dataclasses import dataclass
from typing import List

@dataclass
class BenchObj:
    prop_str:str = None
    prop_int:int = None
    prop_float:float = None
    prop_list:List[str] = None