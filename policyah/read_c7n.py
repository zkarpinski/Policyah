import json

from c7n.resources import load_available
from c7n import schema
from c7n.registry import PluginRegistry


clouds = PluginRegistry("c7n.providers")


def get_resources():
    print("Getting resources")
    provider = None
    load_available()
    outline = schema.resource_outline(provider)
    print(json.dumps(outline, indent=2))


get_resources()
