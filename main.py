import asyncio
import sys
from googletrans import Translator


def extra_conditions(str: str) -> bool:
    return str.lstrip()[0] != "#"


async def translate_cv(file_name: str):
    fp = open(file_name)
    contents = fp.read()

    delimiter = None
    min_pos = None
    delimiters = [('"', '"'), ("[", "]")]
    # delimiters = [("[", "]")]
    # delimiters = [('"', '"')]
    delimiter = None
    min_pos = None
    delimiters = [('"', '"'), ("[", "]")]
    with open(f"translated.{file_name.split('.')[1]}", "w") as f:
        async with Translator() as translator:
            while not min_pos or min_pos >= 0:
                for cur_delim in delimiters:
                    pos = contents.find(cur_delim[0])
                    if not min_pos or min_pos == -1 or (pos >= 0 and pos < min_pos):
                        min_pos = pos
                        delimiter = cur_delim

                if min_pos and min_pos >= 0 and delimiter:
                    before = contents[: min_pos + 1]
                    after = contents[min_pos + 1 :]
                    min_pos = after.find(delimiter[1])
                    to_translate = after[:min_pos]

                    # print(f"{before}", end="")
                    f.write(before)
                    if len(to_translate) > 0 and extra_conditions(to_translate):
                        contents = after[min_pos + 1 :]
                        # print(f"{to_translate}{delimiter[1]}", end="")
                        translated = await translator.translate(to_translate)
                        f.write(f"{translated.text}{delimiter[1]}")
                    else:
                        contents = after

                    min_pos = None
                    delimiter = None
                else:
                    # print(contents, end="")
                    f.write(contents)


file_name = sys.argv[1]
asyncio.run(translate_cv(file_name))
