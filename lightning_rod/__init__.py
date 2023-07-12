__version__ = "0.2.4"


from beet import Context
from beet.contrib.load import load


def beet_default(ctx: Context):
    ctx.require(
        load(
            data_pack={
                "data/lightning_rod/modules": "@lightning_rod/modules",
            },
        ),
        "wicked_expressions",
    )
